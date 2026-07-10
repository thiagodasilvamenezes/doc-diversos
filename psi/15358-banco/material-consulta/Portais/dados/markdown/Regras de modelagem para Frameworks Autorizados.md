# Regras de Modelagem para Frameworks Autorizados

> **Fonte**: Portal de Práticas para Desenvolvimento de Software - CAIXA  
> **Página original**: [Regras de modelagem para Frameworks Autorizados - PPDS SharePoint](https://caixa.sharepoint.com/sites/PPDS/SitePages/Regras-de-modelagem-para-Frameworks-Autorizados.aspx)

## Contexto

Este documento apresenta **regras específicas de modelagem de dados** para uso com **frameworks ORM (Object-Relational Mapping)** autorizados na CAIXA, garantindo **compatibilidade entre TE074 e convenções de frameworks** como Hibernate, Entity Framework e Spring Data JPA.

## Referências Normativas

- **TE074** - Modelagem de Dados para Sistemas CAIXA
- **TE079** - Desenvolvimento de Software na CAIXA
- **Hibernate ORM Documentation**
- **Microsoft Entity Framework Documentation**
- **Spring Data JPA Documentation**

## Frameworks ORM Autorizados

### Plataforma Java

1. **Hibernate** (JPA provider)
2. **Spring Data JPA** (abstração sobre Hibernate)
3. **EclipseLink** (JPA provider alternativo)

### Plataforma .NET

1. **Entity Framework Core** (EF Core)
2. **Entity Framework 6.x** (legacy)
3. **Dapper** (micro-ORM)

### Critérios de Autorização

- Frameworks listados na **TE079** (Tecnologias Autorizadas)
- Suporte oficial do fabricante
- Comunidade ativa
- Compatibilidade com SQL Server/Oracle/DB2

## Princípios de Integração TE074 + ORM

### Princípio 1: TE074 tem Precedência

**Regra**: Em caso de conflito entre convenções do framework e TE074, **TE074 prevalece**.

**Exemplo**:
- **Hibernate default**: tabelas `pessoa`, colunas `nome` (lowercase)
- **TE074**: tabelas `PES_PESSOA`, colunas `NOME_NM` (uppercase, sufixos)
- **Aplicado**: Configurar Hibernate para usar nomenclatura TE074

### Princípio 2: Nomenclatura TE074 Obrigatória

**Regra**: Frameworks **devem ser configurados** para gerar/mapear nomenclatura conforme TE074.

**Benefícios**:
- Conformidade com pré-validador
- Legibilidade para DBAs
- Integração com sistemas legados

### Princípio 3: Anotações Complementam, Não Substituem

**Regra**: Anotações de mapeamento (`@Table`, `@Column`, `[Table]`, etc.) **complementam** o modelo físico do PowerDesigner.

**Workflow**:
1. Modelo físico criado no PowerDesigner (conforme TE074)
2. DDL gerado e aplicado no banco
3. Classes de entidade criadas/anotadas para mapear estrutura existente

### Princípio 4: Frameworks Não Geram DDL em Produção

**Regra**: **Desabilitar auto-DDL** (`hibernate.hbm2ddl.auto`, `EnsureCreated()`) em **todos os ambientes**.

**Justificativa**:
- TE074 exige aprovação ABD para mudanças em produção
- Auto-DDL pode gerar nomenclatura não-conforme
- Risco de perda de dados

**Configuração**:
```properties
# Hibernate - application.properties
spring.jpa.hibernate.ddl-auto=none  # ✅ Produção
spring.jpa.hibernate.ddl-auto=validate  # ✅ Desenvolvimento (valida, não altera)
```

```csharp
// Entity Framework - Startup.cs
// ❌ NÃO usar em produção:
// dbContext.Database.EnsureCreated();
// dbContext.Database.Migrate();
```

## Hibernate / Spring Data JPA

### Nomenclatura de Tabelas

**TE074**: 3-char prefix + nome descritivo (e.g., `PES_PESSOA`, `CON_CONTRATO`)

**Hibernate Default**: `Person`, `Contract` (nome da classe)

**Solução - Anotação `@Table`**:

```java
@Entity
@Table(name = "PES_PESSOA", schema = "dbo")  // TE074 compliant
public class Pessoa {
    // ...
}

@Entity
@Table(name = "CON_CONTRATO", schema = "dbo")
public class Contrato {
    // ...
}
```

**Solução - Naming Strategy Global** (aplicável a todas entidades):

```java
// PhysicalNamingStrategyTE074.java
import org.hibernate.boot.model.naming.Identifier;
import org.hibernate.boot.model.naming.PhysicalNamingStrategy;
import org.hibernate.engine.jdbc.env.spi.JdbcEnvironment;

public class PhysicalNamingStrategyTE074 implements PhysicalNamingStrategy {
    
    private static final Map<String, String> TABLE_PREFIX_MAP = Map.of(
        "Pessoa", "PES",
        "Contrato", "CON",
        "Usuario", "USU"
        // ... adicionar outros mapeamentos
    );
    
    @Override
    public Identifier toPhysicalTableName(Identifier name, JdbcEnvironment context) {
        String className = name.getText();
        String prefix = TABLE_PREFIX_MAP.getOrDefault(className, "GEN");
        String tableName = prefix + "_" + className.toUpperCase();
        return Identifier.toIdentifier(tableName);
    }
    
    // Implementar outros métodos...
}
```

**Configuração**:
```properties
# application.properties
spring.jpa.hibernate.naming.physical-strategy=com.caixa.util.PhysicalNamingStrategyTE074
```

### Nomenclatura de Colunas

**TE074**: Sufixos obrigatórios (`_ID`, `_DT`, `_VL`, `_NM`, `_DS`, `_IN`)

**Hibernate Default**: `id`, `nome`, `dataNascimento` (camelCase)

**Solução - Anotação `@Column`**:

```java
@Entity
@Table(name = "PES_PESSOA", schema = "dbo")
public class Pessoa {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "PESSOA_ID")  // TE074: _ID suffix
    private Long id;
    
    @Column(name = "NOME_COMPLETO_NM", nullable = false, length = 200)  // TE074: _NM suffix
    private String nomeCompleto;
    
    @Column(name = "CPF_NR", nullable = false, length = 11)  // TE074: _NR suffix
    private String cpf;
    
    @Column(name = "DATA_NASCIMENTO_DT")  // TE074: _DT suffix
    private LocalDate dataNascimento;
    
    @Column(name = "SALARIO_VL", precision = 15, scale = 2)  // TE074: _VL suffix
    private BigDecimal salario;
    
    @Column(name = "STATUS_IN", nullable = false, length = 1)  // TE074: _IN suffix
    private String status;  // 'A' (ativo), 'I' (inativo)
    
    // Getters e Setters
}
```

**PhysicalNamingStrategy - Sufixos Automáticos**:

```java
@Override
public Identifier toPhysicalColumnName(Identifier name, JdbcEnvironment context) {
    String columnName = name.getText().toUpperCase();
    
    // Aplicar sufixo baseado em padrões
    if (columnName.endsWith("ID")) {
        return Identifier.toIdentifier(columnName);  // Já tem _ID
    } else if (columnName.matches(".*DATA.*|.*DATE.*")) {
        if (!columnName.endsWith("_DT")) columnName += "_DT";
    } else if (columnName.matches(".*NOME.*|.*NAME.*")) {
        if (!columnName.endsWith("_NM")) columnName += "_NM";
    } else if (columnName.matches(".*VALOR.*|.*VALUE.*")) {
        if (!columnName.endsWith("_VL")) columnName += "_VL";
    } else if (columnName.matches(".*STATUS.*|.*SITUACAO.*")) {
        if (!columnName.endsWith("_IN")) columnName += "_IN";
    }
    // ... outros padrões
    
    return Identifier.toIdentifier(columnName);
}
```

**Atenção**: Naming Strategies complexas podem dificultar manutenção. Preferir anotações explícitas.

### Primary Keys

**TE074**: Preferir surrogate keys (BIGINT IDENTITY), PK simples (`PK_<TABELA>`)

**Hibernate - Identity Generator**:

```java
@Entity
@Table(name = "PES_PESSOA")
public class Pessoa {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)  // SQL Server: IDENTITY(1,1)
    @Column(name = "PESSOA_ID")
    private Long id;
}
```

**Hibernate - Sequence (Oracle)**:

```java
@Entity
@Table(name = "PES_PESSOA")
@SequenceGenerator(name = "seq_pessoa", sequenceName = "SEQ_PES_PESSOA_ID", allocationSize = 1)
public class Pessoa {
    
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "seq_pessoa")
    @Column(name = "PESSOA_ID")
    private Long id;
}
```

**TE074**: Sequences devem ter nome `SEQ_<TABELA>_ID`.

**PKs Compostas** (usar classes `@Embeddable`):

```java
// Classe PK composta
@Embeddable
public class ContratoParcelaPK implements Serializable {
    
    @Column(name = "CONTRATO_ID")
    private Long contratoId;
    
    @Column(name = "PARCELA_NR")
    private Integer parcelaNr;
    
    // equals(), hashCode(), getters, setters
}

// Entidade com PK composta
@Entity
@Table(name = "CON_CONTRATO_PARCELA")
public class ContratoParcela {
    
    @EmbeddedId
    private ContratoParcelaPK id;
    
    @Column(name = "VALOR_PARCELA_VL")
    private BigDecimal valorParcela;
}
```

### Foreign Keys

**TE074**: FK constraints obrigatórias, nomenclatura `FK_<ORIGEM>_<DESTINO>`

**Hibernate - Relacionamentos**:

```java
@Entity
@Table(name = "CON_CONTRATO")
public class Contrato {
    
    @Id
    @Column(name = "CONTRATO_ID")
    private Long id;
    
    // Many-to-One (FK para PES_PESSOA)
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(
        name = "PESSOA_ID",  // Coluna FK em CON_CONTRATO
        foreignKey = @ForeignKey(name = "FK_CON_CONTRATO_PES_PESSOA"),  // ✅ TE074 naming
        nullable = false
    )
    private Pessoa titular;
}
```

**One-to-Many (lado inverso)**:

```java
@Entity
@Table(name = "PES_PESSOA")
public class Pessoa {
    
    @OneToMany(mappedBy = "titular", cascade = CascadeType.ALL)
    private List<Contrato> contratos = new ArrayList<>();
}
```

**TE074**: Hibernate **não cria FK constraints por padrão** (apenas no modo `hbm2ddl`). Garantir que FKs sejam criadas no DDL do PowerDesigner.

### Índices

**TE074**: Nomenclatura `IDX_<TABELA>_<COLUNAS>`

**Hibernate - Anotação `@Index`** (JPA 2.1+):

```java
@Entity
@Table(name = "PES_PESSOA", indexes = {
    @Index(name = "IDX_PES_PESSOA_CPF_NR", columnList = "CPF_NR", unique = true),
    @Index(name = "IDX_PES_PESSOA_STATUS_IN", columnList = "STATUS_IN")
})
public class Pessoa {
    // ...
}
```

**Atenção**: Índices devem ser criados no DDL (PowerDesigner), não via `hbm2ddl`.

### Auditoria (Colunas de Rastreamento)

**TE074**: Colunas `DT_CADASTRO`, `USUARIO_CADASTRO_NM`, `DT_ATUALIZACAO`, `USUARIO_ATUALIZACAO_NM`

**Spring Data JPA - `@CreatedDate`, `@CreatedBy`, `@LastModifiedDate`, `@LastModifiedBy`**:

```java
@Entity
@Table(name = "PES_PESSOA")
@EntityListeners(AuditingEntityListener.class)  // Habilita auditoria
public class Pessoa {
    
    @CreatedDate
    @Column(name = "DT_CADASTRO", nullable = false, updatable = false)
    private LocalDateTime dataCadastro;
    
    @CreatedBy
    @Column(name = "USUARIO_CADASTRO_NM", length = 50, updatable = false)
    private String usuarioCadastro;
    
    @LastModifiedDate
    @Column(name = "DT_ATUALIZACAO")
    private LocalDateTime dataAtualizacao;
    
    @LastModifiedBy
    @Column(name = "USUARIO_ATUALIZACAO_NM", length = 50)
    private String usuarioAtualizacao;
}
```

**Configuração - AuditorAware**:

```java
@Configuration
@EnableJpaAuditing(auditorAwareRef = "auditorProvider")
public class JpaAuditingConfig {
    
    @Bean
    public AuditorAware<String> auditorProvider() {
        return () -> Optional.of(SecurityContextHolder.getContext()
            .getAuthentication()
            .getName());  // Usuário logado
    }
}
```

### Soft Delete

**TE074**: Preferir soft delete (status 'I') a hard delete

**Implementação**:

```java
@Entity
@Table(name = "PES_PESSOA")
@SQLDelete(sql = "UPDATE PES_PESSOA SET STATUS_IN = 'I' WHERE PESSOA_ID = ?")  // Soft delete
@Where(clause = "STATUS_IN = 'A'")  // Queries ignoram inativos
public class Pessoa {
    
    @Column(name = "STATUS_IN", nullable = false, length = 1)
    private String status = "A";  // Default: ativo
    
    public void inativar() {
        this.status = "I";
    }
}
```

## Entity Framework Core (.NET)

### Nomenclatura de Tabelas e Colunas

**EF Core Default**: `Person`, `FullName` (PascalCase)

**TE074**: `PES_PESSOA`, `NOME_COMPLETO_NM` (uppercase, sufixos)

**Solução - Fluent API**:

```csharp
public class Pessoa
{
    public long PessoaId { get; set; }
    public string NomeCompleto { get; set; }
    public string Cpf { get; set; }
    public DateTime DataNascimento { get; set; }
    public decimal Salario { get; set; }
    public string Status { get; set; }
}

// Configuration
public class PessoaConfiguration : IEntityTypeConfiguration<Pessoa>
{
    public void Configure(EntityTypeBuilder<Pessoa> builder)
    {
        builder.ToTable("PES_PESSOA", schema: "dbo");  // TE074 table name
        
        builder.HasKey(p => p.PessoaId)
            .HasName("PK_PES_PESSOA");  // TE074 PK naming
        
        builder.Property(p => p.PessoaId)
            .HasColumnName("PESSOA_ID")
            .ValueGeneratedOnAdd();  // SQL Server IDENTITY
        
        builder.Property(p => p.NomeCompleto)
            .HasColumnName("NOME_COMPLETO_NM")  // TE074 suffix
            .HasMaxLength(200)
            .IsRequired();
        
        builder.Property(p => p.Cpf)
            .HasColumnName("CPF_NR")
            .HasMaxLength(11)
            .IsRequired();
        
        builder.Property(p => p.DataNascimento)
            .HasColumnName("DATA_NASCIMENTO_DT")
            .HasColumnType("date");
        
        builder.Property(p => p.Salario)
            .HasColumnName("SALARIO_VL")
            .HasColumnType("decimal(15,2)");
        
        builder.Property(p => p.Status)
            .HasColumnName("STATUS_IN")
            .HasMaxLength(1)
            .IsRequired()
            .HasDefaultValue("A");
    }
}

// DbContext
public class AppDbContext : DbContext
{
    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.ApplyConfiguration(new PessoaConfiguration());
        // ... outras configurações
    }
}
```

**Alternativa - Data Annotations**:

```csharp
[Table("PES_PESSOA", Schema = "dbo")]
public class Pessoa
{
    [Key]
    [Column("PESSOA_ID")]
    [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public long PessoaId { get; set; }
    
    [Column("NOME_COMPLETO_NM")]
    [MaxLength(200)]
    [Required]
    public string NomeCompleto { get; set; }
    
    [Column("CPF_NR")]
    [MaxLength(11)]
    [Required]
    public string Cpf { get; set; }
}
```

**Preferência**: **Fluent API** (mais flexível, separação de concerns).

### Foreign Keys

```csharp
public class Contrato
{
    public long ContratoId { get; set; }
    public long PessoaId { get; set; }  // FK
    
    public Pessoa Titular { get; set; }  // Navigation property
}

public class ContratoConfiguration : IEntityTypeConfiguration<Contrato>
{
    public void Configure(EntityTypeBuilder<Contrato> builder)
    {
        builder.ToTable("CON_CONTRATO", schema: "dbo");
        
        builder.HasKey(c => c.ContratoId)
            .HasName("PK_CON_CONTRATO");
        
        builder.Property(c => c.ContratoId)
            .HasColumnName("CONTRATO_ID");
        
        builder.Property(c => c.PessoaId)
            .HasColumnName("PESSOA_ID");
        
        // FK relationship (TE074 naming)
        builder.HasOne(c => c.Titular)
            .WithMany(p => p.Contratos)
            .HasForeignKey(c => c.PessoaId)
            .HasConstraintName("FK_CON_CONTRATO_PES_PESSOA")  // ✅ TE074
            .OnDelete(DeleteBehavior.Restrict);
    }
}
```

### Índices

```csharp
public class PessoaConfiguration : IEntityTypeConfiguration<Pessoa>
{
    public void Configure(EntityTypeBuilder<Pessoa> builder)
    {
        // Índice único (CPF)
        builder.HasIndex(p => p.Cpf)
            .HasDatabaseName("IDX_PES_PESSOA_CPF_NR")  // TE074 naming
            .IsUnique();
        
        // Índice não-único (Status)
        builder.HasIndex(p => p.Status)
            .HasDatabaseName("IDX_PES_PESSOA_STATUS_IN");
    }
}
```

### Auditoria

```csharp
public abstract class AuditableEntity
{
    [Column("DT_CADASTRO")]
    public DateTime DataCadastro { get; set; }
    
    [Column("USUARIO_CADASTRO_NM")]
    [MaxLength(50)]
    public string UsuarioCadastro { get; set; }
    
    [Column("DT_ATUALIZACAO")]
    public DateTime? DataAtualizacao { get; set; }
    
    [Column("USUARIO_ATUALIZACAO_NM")]
    [MaxLength(50)]
    public string UsuarioAtualizacao { get; set; }
}

[Table("PES_PESSOA")]
public class Pessoa : AuditableEntity
{
    // ... propriedades
}

// DbContext - preencher auditoria automaticamente
public class AppDbContext : DbContext
{
    private readonly IHttpContextAccessor _httpContextAccessor;
    
    public override int SaveChanges()
    {
        var entries = ChangeTracker.Entries()
            .Where(e => e.Entity is AuditableEntity && 
                       (e.State == EntityState.Added || e.State == EntityState.Modified));
        
        foreach (var entry in entries)
        {
            var entity = (AuditableEntity)entry.Entity;
            var userName = _httpContextAccessor.HttpContext?.User?.Identity?.Name ?? "SYSTEM";
            
            if (entry.State == EntityState.Added)
            {
                entity.DataCadastro = DateTime.Now;
                entity.UsuarioCadastro = userName;
            }
            else
            {
                entity.DataAtualizacao = DateTime.Now;
                entity.UsuarioAtualizacao = userName;
            }
        }
        
        return base.SaveChanges();
    }
}
```

## Regras Específicas por Tipo de Dado

### Datas

**TE074**: Sufixo `_DT`, tipo `DATE` (data) ou `DATETIME` (timestamp)

**Hibernate**:
```java
@Column(name = "DATA_NASCIMENTO_DT")
@Temporal(TemporalType.DATE)  // java.util.Date → SQL DATE
private Date dataNascimento;

// Ou usar Java 8+ LocalDate (preferido)
@Column(name = "DATA_NASCIMENTO_DT")
private LocalDate dataNascimento;

@Column(name = "DATA_HORA_TRANSACAO_DT")
private LocalDateTime dataHoraTransacao;
```

**EF Core**:
```csharp
builder.Property(p => p.DataNascimento)
    .HasColumnName("DATA_NASCIMENTO_DT")
    .HasColumnType("date");  // SQL Server DATE (não DATETIME)

builder.Property(p => p.DataHoraTransacao)
    .HasColumnName("DATA_HORA_TRANSACAO_DT")
    .HasColumnType("datetime2(0)");  // DATETIME2 sem frações
```

### Valores Monetários

**TE074**: Sufixo `_VL`, tipo `DECIMAL(15,2)` (nunca FLOAT)

**Hibernate**:
```java
@Column(name = "VALOR_CONTRATO_VL", precision = 15, scale = 2)
private BigDecimal valorContrato;
```

**EF Core**:
```csharp
builder.Property(c => c.ValorContrato)
    .HasColumnName("VALOR_CONTRATO_VL")
    .HasColumnType("decimal(15,2)");
```

### Booleanos / Indicadores

**TE074**: Sufixo `_IN`, tipo `CHAR(1)` com valores 'S'/'N' ou 'A'/'I'

**Hibernate** (converter boolean → CHAR):
```java
@Column(name = "ATIVO_IN", length = 1)
@Convert(converter = BooleanToCharConverter.class)
private Boolean ativo;

// Converter
@Converter
public class BooleanToCharConverter implements AttributeConverter<Boolean, String> {
    
    @Override
    public String convertToDatabaseColumn(Boolean attribute) {
        return (attribute != null && attribute) ? "S" : "N";
    }
    
    @Override
    public Boolean convertToEntityAttribute(String dbData) {
        return "S".equals(dbData);
    }
}
```

**EF Core**:
```csharp
builder.Property(p => p.Ativo)
    .HasColumnName("ATIVO_IN")
    .HasMaxLength(1)
    .HasConversion(
        v => v ? "S" : "N",  // Boolean → CHAR
        v => v == "S"         // CHAR → Boolean
    );
```

### Enumerações

**TE074**: Sufixo `_TP`, tipo `VARCHAR(20)` (armazenar string, não int)

**Hibernate**:
```java
public enum TipoContrato {
    HABITACIONAL, CREDITO_CONSIGNADO, FINANCIAMENTO
}

@Entity
@Table(name = "CON_CONTRATO")
public class Contrato {
    
    @Column(name = "TIPO_CONTRATO_TP", length = 20)
    @Enumerated(EnumType.STRING)  // ✅ Armazena "HABITACIONAL", não 0
    private TipoContrato tipoContrato;
}
```

**EF Core**:
```csharp
public enum TipoContrato
{
    Habitacional,
    CreditoConsignado,
    Financiamento
}

builder.Property(c => c.TipoContrato)
    .HasColumnName("TIPO_CONTRATO_TP")
    .HasMaxLength(20)
    .HasConversion<string>();  // Enum → VARCHAR
```

## Performance e Otimização

### Lazy Loading vs Eager Loading

**Regra**: Usar **Lazy Loading** por padrão, **Eager Loading** apenas quando necessário.

**Hibernate - Lazy Loading**:
```java
@ManyToOne(fetch = FetchType.LAZY)  // ✅ Default recomendado
@JoinColumn(name = "PESSOA_ID")
private Pessoa titular;
```

**Hibernate - Eager Loading Seletivo**:
```java
// Repository - query com JOIN FETCH
@Query("SELECT c FROM Contrato c JOIN FETCH c.titular WHERE c.id = :id")
Optional<Contrato> findByIdWithTitular(@Param("id") Long id);
```

**EF Core - Include**:
```csharp
var contrato = context.Contratos
    .Include(c => c.Titular)  // Eager load
    .FirstOrDefault(c => c.ContratoId == id);
```

### Paginação

**Hibernate - Spring Data JPA**:
```java
public interface ContratoRepository extends JpaRepository<Contrato, Long> {
    
    Page<Contrato> findByStatus(String status, Pageable pageable);
}

// Uso
Pageable pageable = PageRequest.of(0, 20, Sort.by("dataCadastro").descending());
Page<Contrato> contratos = repository.findByStatus("A", pageable);
```

**EF Core**:
```csharp
var contratos = context.Contratos
    .Where(c => c.Status == "A")
    .OrderByDescending(c => c.DataCadastro)
    .Skip(page * pageSize)
    .Take(pageSize)
    .ToList();
```

### Caching de Segundo Nível

**Hibernate - EhCache**:
```java
@Entity
@Table(name = "TAB_MUNICIPIO")  // Tabela de referência (baixa volatilidade)
@Cacheable
@org.hibernate.annotations.Cache(usage = CacheConcurrencyStrategy.READ_ONLY)
public class Municipio {
    // ...
}
```

**Configuração**:
```properties
spring.jpa.properties.hibernate.cache.use_second_level_cache=true
spring.jpa.properties.hibernate.cache.region.factory_class=org.hibernate.cache.jcache.JCacheRegionFactory
spring.cache.jcache.config=classpath:ehcache.xml
```

**TE074**: Aplicar caching apenas a **tabelas de referência** (TAB_, DOM_), não transacionais.

## Validações e Constraints

### Bean Validation (Java)

```java
@Entity
@Table(name = "PES_PESSOA")
public class Pessoa {
    
    @NotNull(message = "CPF obrigatório")
    @Pattern(regexp = "\\d{11}", message = "CPF deve ter 11 dígitos")
    @Column(name = "CPF_NR", length = 11, nullable = false)
    private String cpf;
    
    @NotBlank(message = "Nome obrigatório")
    @Size(min = 3, max = 200, message = "Nome entre 3 e 200 caracteres")
    @Column(name = "NOME_COMPLETO_NM", length = 200, nullable = false)
    private String nomeCompleto;
    
    @Email(message = "E-mail inválido")
    @Column(name = "EMAIL_DS", length = 100)
    private String email;
}
```

### Data Annotations (.NET)

```csharp
[Table("PES_PESSOA")]
public class Pessoa
{
    [Required(ErrorMessage = "CPF obrigatório")]
    [RegularExpression(@"\d{11}", ErrorMessage = "CPF deve ter 11 dígitos")]
    [Column("CPF_NR")]
    [MaxLength(11)]
    public string Cpf { get; set; }
    
    [Required(ErrorMessage = "Nome obrigatório")]
    [MinLength(3)]
    [MaxLength(200)]
    [Column("NOME_COMPLETO_NM")]
    public string NomeCompleto { get; set; }
    
    [EmailAddress(ErrorMessage = "E-mail inválido")]
    [Column("EMAIL_DS")]
    [MaxLength(100)]
    public string Email { get; set; }
}
```

**TE074**: Validações em aplicação **complementam**, não substituem, constraints de banco (CHECK).

## Checklist de Conformidade

### Nomenclatura
- [ ] Tabelas com 3-char prefix (PES_, CON_, etc.)
- [ ] Colunas com sufixos TE074 (_ID, _DT, _VL, _NM, _DS, _IN, _TP, _NR, _PC, _QT)
- [ ] PKs nomeadas `PK_<TABELA>`
- [ ] FKs nomeadas `FK_<ORIGEM>_<DESTINO>`
- [ ] Índices nomeados `IDX_<TABELA>_<COLUNAS>`
- [ ] Sequences nomeadas `SEQ_<TABELA>_ID` (Oracle)

### Mapeamento
- [ ] Anotações `@Table`/`[Table]` especificam nome físico da tabela
- [ ] Anotações `@Column`/`[Column]` especificam nome físico das colunas
- [ ] PKs mapeadas com `@Id`/`[Key]`
- [ ] FKs com `@JoinColumn`/`HasForeignKey` e constraint naming
- [ ] Índices com `@Index`/`HasIndex` e naming

### Auditoria e Lifecycle
- [ ] Colunas de auditoria (`DT_CADASTRO`, `USUARIO_CADASTRO_NM`, etc.)
- [ ] Soft delete via `STATUS_IN` (não hard delete)
- [ ] Defaults configurados (`STATUS_IN = 'A'`)

### Performance
- [ ] Lazy Loading habilitado por padrão
- [ ] Eager Loading apenas quando necessário (JOIN FETCH, Include)
- [ ] Paginação em listagens grandes
- [ ] Caching de segundo nível apenas em tabelas de referência

### Segurança
- [ ] Auto-DDL desabilitado (`ddl-auto=none`, sem `EnsureCreated()`)
- [ ] Sem SQL dinâmico (usar PreparedStatement, parametrized queries)
- [ ] Validações de entrada (Bean Validation, Data Annotations)

---

**Última atualização**: 2026-01-06  
**Status**: Documento base - requer preenchimento manual do conteúdo SharePoint  
**Normas relacionadas**: TE074, TE079
