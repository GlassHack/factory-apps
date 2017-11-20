.class Lcom/google/common/hash/BloomFilter$SerialForm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final data:[J

.field final funnel:Lcom/google/common/hash/Funnel;

.field final numHashFunctions:I

.field final strategy:Lcom/google/common/hash/BloomFilter$Strategy;


# direct methods
.method constructor <init>(Lcom/google/common/hash/BloomFilter;)V
    .locals 1

    .prologue
    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    invoke-static {p1}, Lcom/google/common/hash/BloomFilter;->access$000(Lcom/google/common/hash/BloomFilter;)Lcom/google/common/hash/f;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/hash/f;->a:[J

    iput-object v0, p0, Lcom/google/common/hash/BloomFilter$SerialForm;->data:[J

    .line 317
    invoke-static {p1}, Lcom/google/common/hash/BloomFilter;->access$100(Lcom/google/common/hash/BloomFilter;)I

    move-result v0

    iput v0, p0, Lcom/google/common/hash/BloomFilter$SerialForm;->numHashFunctions:I

    .line 318
    invoke-static {p1}, Lcom/google/common/hash/BloomFilter;->access$200(Lcom/google/common/hash/BloomFilter;)Lcom/google/common/hash/Funnel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/hash/BloomFilter$SerialForm;->funnel:Lcom/google/common/hash/Funnel;

    .line 319
    invoke-static {p1}, Lcom/google/common/hash/BloomFilter;->access$300(Lcom/google/common/hash/BloomFilter;)Lcom/google/common/hash/BloomFilter$Strategy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/hash/BloomFilter$SerialForm;->strategy:Lcom/google/common/hash/BloomFilter$Strategy;

    .line 320
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 323
    new-instance v0, Lcom/google/common/hash/BloomFilter;

    new-instance v1, Lcom/google/common/hash/f;

    iget-object v2, p0, Lcom/google/common/hash/BloomFilter$SerialForm;->data:[J

    invoke-direct {v1, v2}, Lcom/google/common/hash/f;-><init>([J)V

    iget v2, p0, Lcom/google/common/hash/BloomFilter$SerialForm;->numHashFunctions:I

    iget-object v3, p0, Lcom/google/common/hash/BloomFilter$SerialForm;->funnel:Lcom/google/common/hash/Funnel;

    iget-object v4, p0, Lcom/google/common/hash/BloomFilter$SerialForm;->strategy:Lcom/google/common/hash/BloomFilter$Strategy;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/common/hash/BloomFilter;-><init>(Lcom/google/common/hash/f;ILcom/google/common/hash/Funnel;Lcom/google/common/hash/BloomFilter$Strategy;Lcom/google/common/hash/e;)V

    return-object v0
.end method
