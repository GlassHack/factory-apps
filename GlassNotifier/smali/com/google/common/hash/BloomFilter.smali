.class public final Lcom/google/common/hash/BloomFilter;
.super Ljava/lang/Object;
.source "BloomFilter.java"

# interfaces
.implements Lcom/google/common/base/Predicate;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/BloomFilter$SerialForm;,
        Lcom/google/common/hash/BloomFilter$Strategy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final bits:Lcom/google/common/hash/BloomFilterStrategies$BitArray;

.field private final funnel:Lcom/google/common/hash/Funnel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/hash/Funnel",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private final numHashFunctions:I

.field private final strategy:Lcom/google/common/hash/BloomFilter$Strategy;


# direct methods
.method private constructor <init>(Lcom/google/common/hash/BloomFilterStrategies$BitArray;ILcom/google/common/hash/Funnel;Lcom/google/common/hash/BloomFilter$Strategy;)V
    .locals 4
    .param p1, "bits"    # Lcom/google/common/hash/BloomFilterStrategies$BitArray;
    .param p2, "numHashFunctions"    # I
    .param p4, "strategy"    # Lcom/google/common/hash/BloomFilter$Strategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/hash/BloomFilterStrategies$BitArray;",
            "I",
            "Lcom/google/common/hash/Funnel",
            "<-TT;>;",
            "Lcom/google/common/hash/BloomFilter$Strategy;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/hash/BloomFilter;, "Lcom/google/common/hash/BloomFilter<TT;>;"
    .local p3, "funnel":Lcom/google/common/hash/Funnel;, "Lcom/google/common/hash/Funnel<-TT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    if-lez p2, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "numHashFunctions (%s) must be > 0"

    invoke-static {v0, v3, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 115
    const/16 v0, 0xff

    if-gt p2, v0, :cond_1

    :goto_1
    const-string v0, "numHashFunctions (%s) must be <= 255"

    invoke-static {v1, v0, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 117
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    iput-object v0, p0, Lcom/google/common/hash/BloomFilter;->bits:Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    .line 118
    iput p2, p0, Lcom/google/common/hash/BloomFilter;->numHashFunctions:I

    .line 119
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/hash/Funnel;

    iput-object v0, p0, Lcom/google/common/hash/BloomFilter;->funnel:Lcom/google/common/hash/Funnel;

    .line 120
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/hash/BloomFilter$Strategy;

    iput-object v0, p0, Lcom/google/common/hash/BloomFilter;->strategy:Lcom/google/common/hash/BloomFilter$Strategy;

    .line 121
    return-void

    :cond_0
    move v0, v2

    .line 114
    goto :goto_0

    :cond_1
    move v1, v2

    .line 115
    goto :goto_1
.end method

.method synthetic constructor <init>(Lcom/google/common/hash/BloomFilterStrategies$BitArray;ILcom/google/common/hash/Funnel;Lcom/google/common/hash/BloomFilter$Strategy;Lcom/google/common/hash/BloomFilter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/hash/BloomFilterStrategies$BitArray;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/google/common/hash/Funnel;
    .param p4, "x3"    # Lcom/google/common/hash/BloomFilter$Strategy;
    .param p5, "x4"    # Lcom/google/common/hash/BloomFilter$1;

    .prologue
    .line 63
    .local p0, "this":Lcom/google/common/hash/BloomFilter;, "Lcom/google/common/hash/BloomFilter<TT;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/hash/BloomFilter;-><init>(Lcom/google/common/hash/BloomFilterStrategies$BitArray;ILcom/google/common/hash/Funnel;Lcom/google/common/hash/BloomFilter$Strategy;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/common/hash/BloomFilter;)Lcom/google/common/hash/BloomFilterStrategies$BitArray;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/hash/BloomFilter;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/common/hash/BloomFilter;->bits:Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/common/hash/BloomFilter;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/common/hash/BloomFilter;

    .prologue
    .line 63
    iget v0, p0, Lcom/google/common/hash/BloomFilter;->numHashFunctions:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/common/hash/BloomFilter;)Lcom/google/common/hash/Funnel;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/hash/BloomFilter;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/common/hash/BloomFilter;->funnel:Lcom/google/common/hash/Funnel;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/common/hash/BloomFilter;)Lcom/google/common/hash/BloomFilter$Strategy;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/hash/BloomFilter;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/common/hash/BloomFilter;->strategy:Lcom/google/common/hash/BloomFilter$Strategy;

    return-object v0
.end method

.method public static create(Lcom/google/common/hash/Funnel;I)Lcom/google/common/hash/BloomFilter;
    .locals 2
    .param p1, "expectedInsertions"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/hash/Funnel",
            "<-TT;>;I)",
            "Lcom/google/common/hash/BloomFilter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 390
    .local p0, "funnel":Lcom/google/common/hash/Funnel;, "Lcom/google/common/hash/Funnel<-TT;>;"
    int-to-long v0, p1

    invoke-static {p0, v0, v1}, Lcom/google/common/hash/BloomFilter;->create(Lcom/google/common/hash/Funnel;J)Lcom/google/common/hash/BloomFilter;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lcom/google/common/hash/Funnel;ID)Lcom/google/common/hash/BloomFilter;
    .locals 2
    .param p1, "expectedInsertions"    # I
    .param p2, "fpp"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/hash/Funnel",
            "<-TT;>;ID)",
            "Lcom/google/common/hash/BloomFilter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 314
    .local p0, "funnel":Lcom/google/common/hash/Funnel;, "Lcom/google/common/hash/Funnel<-TT;>;"
    int-to-long v0, p1

    invoke-static {p0, v0, v1, p2, p3}, Lcom/google/common/hash/BloomFilter;->create(Lcom/google/common/hash/Funnel;JD)Lcom/google/common/hash/BloomFilter;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lcom/google/common/hash/Funnel;J)Lcom/google/common/hash/BloomFilter;
    .locals 3
    .param p1, "expectedInsertions"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/hash/Funnel",
            "<-TT;>;J)",
            "Lcom/google/common/hash/BloomFilter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 414
    .local p0, "funnel":Lcom/google/common/hash/Funnel;, "Lcom/google/common/hash/Funnel<-TT;>;"
    const-wide v0, 0x3f9eb851eb851eb8L    # 0.03

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/common/hash/BloomFilter;->create(Lcom/google/common/hash/Funnel;JD)Lcom/google/common/hash/BloomFilter;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lcom/google/common/hash/Funnel;JD)Lcom/google/common/hash/BloomFilter;
    .locals 7
    .param p1, "expectedInsertions"    # J
    .param p3, "fpp"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/hash/Funnel",
            "<-TT;>;JD)",
            "Lcom/google/common/hash/BloomFilter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 340
    .local p0, "funnel":Lcom/google/common/hash/Funnel;, "Lcom/google/common/hash/Funnel<-TT;>;"
    sget-object v6, Lcom/google/common/hash/BloomFilterStrategies;->MURMUR128_MITZ_64:Lcom/google/common/hash/BloomFilterStrategies;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v1 .. v6}, Lcom/google/common/hash/BloomFilter;->create(Lcom/google/common/hash/Funnel;JDLcom/google/common/hash/BloomFilter$Strategy;)Lcom/google/common/hash/BloomFilter;

    move-result-object v0

    return-object v0
.end method

.method static create(Lcom/google/common/hash/Funnel;JDLcom/google/common/hash/BloomFilter$Strategy;)Lcom/google/common/hash/BloomFilter;
    .locals 7
    .param p1, "expectedInsertions"    # J
    .param p3, "fpp"    # D
    .param p5, "strategy"    # Lcom/google/common/hash/BloomFilter$Strategy;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/hash/Funnel",
            "<-TT;>;JD",
            "Lcom/google/common/hash/BloomFilter$Strategy;",
            ")",
            "Lcom/google/common/hash/BloomFilter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 346
    .local p0, "funnel":Lcom/google/common/hash/Funnel;, "Lcom/google/common/hash/Funnel<-TT;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-ltz v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    const-string v5, "Expected insertions (%s) must be >= 0"

    invoke-static {v4, v5, p1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 349
    const-wide/16 v4, 0x0

    cmpl-double v4, p3, v4

    if-lez v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    const-string v5, "False positive probability (%s) must be > 0.0"

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 350
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, p3, v4

    if-gez v4, :cond_3

    const/4 v4, 0x1

    :goto_2
    const-string v5, "False positive probability (%s) must be < 1.0"

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 351
    invoke-static {p5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-nez v4, :cond_0

    .line 354
    const-wide/16 p1, 0x1

    .line 361
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/google/common/hash/BloomFilter;->optimalNumOfBits(JD)J

    move-result-wide v2

    .line 362
    .local v2, "numBits":J
    invoke-static {p1, p2, v2, v3}, Lcom/google/common/hash/BloomFilter;->optimalNumOfHashFunctions(JJ)I

    move-result v1

    .line 364
    .local v1, "numHashFunctions":I
    :try_start_0
    new-instance v4, Lcom/google/common/hash/BloomFilter;

    new-instance v5, Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    invoke-direct {v5, v2, v3}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;-><init>(J)V

    invoke-direct {v4, v5, v1, p0, p5}, Lcom/google/common/hash/BloomFilter;-><init>(Lcom/google/common/hash/BloomFilterStrategies$BitArray;ILcom/google/common/hash/Funnel;Lcom/google/common/hash/BloomFilter$Strategy;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 347
    .end local v1    # "numHashFunctions":I
    .end local v2    # "numBits":J
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 349
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 350
    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 365
    .restart local v1    # "numHashFunctions":I
    .restart local v2    # "numBits":J
    :catch_0
    move-exception v0

    .line 366
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const/16 v5, 0x39

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Could not create BloomFilter of "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bits"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method static optimalNumOfBits(JD)J
    .locals 6
    .param p0, "n"    # J
    .param p2, "p"    # D
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 455
    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-nez v0, :cond_0

    .line 456
    const-wide/16 p2, 0x1

    .line 458
    :cond_0
    neg-long v0, p0

    long-to-double v0, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method static optimalNumOfHashFunctions(JJ)I
    .locals 6
    .param p0, "n"    # J
    .param p2, "m"    # J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 441
    const/4 v0, 0x1

    long-to-double v2, p2

    long-to-double v4, p0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static readFrom(Ljava/io/InputStream;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/BloomFilter;
    .locals 12
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Lcom/google/common/hash/Funnel",
            "<-TT;>;)",
            "Lcom/google/common/hash/BloomFilter",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 520
    .local p1, "funnel":Lcom/google/common/hash/Funnel;, "Lcom/google/common/hash/Funnel<-TT;>;"
    const-string v9, "InputStream"

    invoke-static {p0, v9}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    const-string v9, "Funnel"

    invoke-static {p1, v9}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    const/4 v8, -0x1

    .line 523
    .local v8, "strategyOrdinal":I
    const/4 v6, -0x1

    .line 524
    .local v6, "numHashFunctions":I
    const/4 v1, -0x1

    .line 526
    .local v1, "dataLength":I
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 530
    .local v2, "din":Ljava/io/DataInputStream;
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    .line 531
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    invoke-static {v9}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v6

    .line 532
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 534
    invoke-static {}, Lcom/google/common/hash/BloomFilterStrategies;->values()[Lcom/google/common/hash/BloomFilterStrategies;

    move-result-object v9

    aget-object v7, v9, v8

    .line 535
    .local v7, "strategy":Lcom/google/common/hash/BloomFilter$Strategy;
    new-array v0, v1, [J

    .line 536
    .local v0, "data":[J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v9, v0

    if-ge v4, v9, :cond_0

    .line 537
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v10

    aput-wide v10, v0, v4

    .line 536
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 539
    :cond_0
    new-instance v9, Lcom/google/common/hash/BloomFilter;

    new-instance v10, Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    invoke-direct {v10, v0}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;-><init>([J)V

    invoke-direct {v9, v10, v6, p1, v7}, Lcom/google/common/hash/BloomFilter;-><init>(Lcom/google/common/hash/BloomFilterStrategies$BitArray;ILcom/google/common/hash/Funnel;Lcom/google/common/hash/BloomFilter$Strategy;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v9

    .line 540
    .end local v0    # "data":[J
    .end local v2    # "din":Ljava/io/DataInputStream;
    .end local v4    # "i":I
    .end local v7    # "strategy":Lcom/google/common/hash/BloomFilter$Strategy;
    :catch_0
    move-exception v3

    .line 541
    .local v3, "e":Ljava/lang/RuntimeException;
    const/16 v9, 0x86

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "Unable to deserialize BloomFilter from InputStream. strategyOrdinal: "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " numHashFunctions: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " dataLength: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 549
    .local v5, "message":Ljava/lang/String;
    new-instance v9, Ljava/io/IOException;

    invoke-direct {v9, v5, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 462
    .local p0, "this":Lcom/google/common/hash/BloomFilter;, "Lcom/google/common/hash/BloomFilter<TT;>;"
    new-instance v0, Lcom/google/common/hash/BloomFilter$SerialForm;

    invoke-direct {v0, p0}, Lcom/google/common/hash/BloomFilter$SerialForm;-><init>(Lcom/google/common/hash/BloomFilter;)V

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 148
    .local p0, "this":Lcom/google/common/hash/BloomFilter;, "Lcom/google/common/hash/BloomFilter<TT;>;"
    .local p1, "input":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lcom/google/common/hash/BloomFilter;->mightContain(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public approximateElementCount()J
    .locals 10

    .prologue
    .line 191
    .local p0, "this":Lcom/google/common/hash/BloomFilter;, "Lcom/google/common/hash/BloomFilter<TT;>;"
    iget-object v6, p0, Lcom/google/common/hash/BloomFilter;->bits:Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    invoke-virtual {v6}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->bitSize()J

    move-result-wide v2

    .line 192
    .local v2, "bitSize":J
    iget-object v6, p0, Lcom/google/common/hash/BloomFilter;->bits:Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    invoke-virtual {v6}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->bitCount()J

    move-result-wide v0

    .line 200
    .local v0, "bitCount":J
    long-to-double v6, v0

    long-to-double v8, v2

    div-double v4, v6, v8

    .line 201
    .local v4, "fractionOfBitsSet":D
    neg-double v6, v4

    .line 202
    invoke-static {v6, v7}, Ljava/lang/Math;->log1p(D)D

    move-result-wide v6

    neg-double v6, v6

    long-to-double v8, v2

    mul-double/2addr v6, v8

    iget v8, p0, Lcom/google/common/hash/BloomFilter;->numHashFunctions:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    sget-object v8, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 201
    invoke-static {v6, v7, v8}, Lcom/google/common/math/DoubleMath;->roundToLong(DLjava/math/RoundingMode;)J

    move-result-wide v6

    return-wide v6
.end method

.method bitSize()J
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 210
    .local p0, "this":Lcom/google/common/hash/BloomFilter;, "Lcom/google/common/hash/BloomFilter<TT;>;"
    iget-object v0, p0, Lcom/google/common/hash/BloomFilter;->bits:Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    invoke-virtual {v0}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->bitSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public copy()Lcom/google/common/hash/BloomFilter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/hash/BloomFilter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lcom/google/common/hash/BloomFilter;, "Lcom/google/common/hash/BloomFilter<TT;>;"
    new-instance v0, Lcom/google/common/hash/BloomFilter;

    iget-object v1, p0, Lcom/google/common/hash/BloomFilter;->bits:Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    invoke-virtual {v1}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->copy()Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    move-result-object v1

    iget v2, p0, Lcom/google/common/hash/BloomFilter;->numHashFunctions:I

    iget-object v3, p0, Lcom/google/common/hash/BloomFilter;->funnel:Lcom/google/common/hash/Funnel;

    iget-object v4, p0, Lcom/google/common/hash/BloomFilter;->strategy:Lcom/google/common/hash/BloomFilter$Strategy;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/common/hash/BloomFilter;-><init>(Lcom/google/common/hash/BloomFilterStrategies$BitArray;ILcom/google/common/hash/Funnel;Lcom/google/common/hash/BloomFilter$Strategy;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/google/common/hash/BloomFilter;, "Lcom/google/common/hash/BloomFilter<TT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 274
    if-ne p1, p0, :cond_1

    .line 284
    :cond_0
    :goto_0
    return v1

    .line 277
    :cond_1
    instance-of v3, p1, Lcom/google/common/hash/BloomFilter;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 278
    check-cast v0, Lcom/google/common/hash/BloomFilter;

    .line 279
    .local v0, "that":Lcom/google/common/hash/BloomFilter;, "Lcom/google/common/hash/BloomFilter<*>;"
    iget v3, p0, Lcom/google/common/hash/BloomFilter;->numHashFunctions:I

    iget v4, v0, Lcom/google/common/hash/BloomFilter;->numHashFunctions:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/google/common/hash/BloomFilter;->funnel:Lcom/google/common/hash/Funnel;

    iget-object v4, v0, Lcom/google/common/hash/BloomFilter;->funnel:Lcom/google/common/hash/Funnel;

    .line 280
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/common/hash/BloomFilter;->bits:Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    iget-object v4, v0, Lcom/google/common/hash/BloomFilter;->bits:Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    .line 281
    invoke-virtual {v3, v4}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/common/hash/BloomFilter;->strategy:Lcom/google/common/hash/BloomFilter$Strategy;

    iget-object v4, v0, Lcom/google/common/hash/BloomFilter;->strategy:Lcom/google/common/hash/BloomFilter$Strategy;

    .line 282
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "that":Lcom/google/common/hash/BloomFilter;, "Lcom/google/common/hash/BloomFilter<*>;"
    :cond_3
    move v1, v2

    .line 284
    goto :goto_0
.end method

.method public expectedFpp()D
    .locals 4

    .prologue
    .line 180
    .local p0, "this":Lcom/google/common/hash/BloomFilter;, "Lcom/google/common/hash/BloomFilter<TT;>;"
    iget-object v0, p0, Lcom/google/common/hash/BloomFilter;->bits:Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    invoke-virtual {v0}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->bitCount()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p0}, Lcom/google/common/hash/BloomFilter;->bitSize()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    iget v2, p0, Lcom/google/common/hash/BloomFilter;->numHashFunctions:I

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 289
    .local p0, "this":Lcom/google/common/hash/BloomFilter;, "Lcom/google/common/hash/BloomFilter<TT;>;"
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/common/hash/BloomFilter;->numHashFunctions:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/hash/BloomFilter;->funnel:Lcom/google/common/hash/Funnel;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/hash/BloomFilter;->strategy:Lcom/google/common/hash/BloomFilter$Strategy;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/hash/BloomFilter;->bits:Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isCompatible(Lcom/google/common/hash/BloomFilter;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/hash/BloomFilter",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 229
    .local p0, "this":Lcom/google/common/hash/BloomFilter;, "Lcom/google/common/hash/BloomFilter<TT;>;"
    .local p1, "that":Lcom/google/common/hash/BloomFilter;, "Lcom/google/common/hash/BloomFilter<TT;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    if-eq p0, p1, :cond_0

    iget v0, p0, Lcom/google/common/hash/BloomFilter;->numHashFunctions:I

    iget v1, p1, Lcom/google/common/hash/BloomFilter;->numHashFunctions:I

    if-ne v0, v1, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/google/common/hash/BloomFilter;->bitSize()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/common/hash/BloomFilter;->bitSize()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/hash/BloomFilter;->strategy:Lcom/google/common/hash/BloomFilter$Strategy;

    iget-object v1, p1, Lcom/google/common/hash/BloomFilter;->strategy:Lcom/google/common/hash/BloomFilter$Strategy;

    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/hash/BloomFilter;->funnel:Lcom/google/common/hash/Funnel;

    iget-object v1, p1, Lcom/google/common/hash/BloomFilter;->funnel:Lcom/google/common/hash/Funnel;

    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 230
    :goto_0
    return v0

    .line 234
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mightContain(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lcom/google/common/hash/BloomFilter;, "Lcom/google/common/hash/BloomFilter<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/google/common/hash/BloomFilter;->strategy:Lcom/google/common/hash/BloomFilter$Strategy;

    iget-object v1, p0, Lcom/google/common/hash/BloomFilter;->funnel:Lcom/google/common/hash/Funnel;

    iget v2, p0, Lcom/google/common/hash/BloomFilter;->numHashFunctions:I

    iget-object v3, p0, Lcom/google/common/hash/BloomFilter;->bits:Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/google/common/hash/BloomFilter$Strategy;->mightContain(Ljava/lang/Object;Lcom/google/common/hash/Funnel;ILcom/google/common/hash/BloomFilterStrategies$BitArray;)Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/Object;)Z
    .locals 4
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, "this":Lcom/google/common/hash/BloomFilter;, "Lcom/google/common/hash/BloomFilter<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/google/common/hash/BloomFilter;->strategy:Lcom/google/common/hash/BloomFilter$Strategy;

    iget-object v1, p0, Lcom/google/common/hash/BloomFilter;->funnel:Lcom/google/common/hash/Funnel;

    iget v2, p0, Lcom/google/common/hash/BloomFilter;->numHashFunctions:I

    iget-object v3, p0, Lcom/google/common/hash/BloomFilter;->bits:Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/google/common/hash/BloomFilter$Strategy;->put(Ljava/lang/Object;Lcom/google/common/hash/Funnel;ILcom/google/common/hash/BloomFilterStrategies$BitArray;)Z

    move-result v0

    return v0
.end method

.method public putAll(Lcom/google/common/hash/BloomFilter;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/hash/BloomFilter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/hash/BloomFilter;, "Lcom/google/common/hash/BloomFilter<TT;>;"
    .local p1, "that":Lcom/google/common/hash/BloomFilter;, "Lcom/google/common/hash/BloomFilter<TT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 247
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    if-eq p0, p1, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Cannot combine a BloomFilter with itself."

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 249
    iget v0, p0, Lcom/google/common/hash/BloomFilter;->numHashFunctions:I

    iget v3, p1, Lcom/google/common/hash/BloomFilter;->numHashFunctions:I

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "BloomFilters must have the same number of hash functions (%s != %s)"

    iget v4, p0, Lcom/google/common/hash/BloomFilter;->numHashFunctions:I

    iget v5, p1, Lcom/google/common/hash/BloomFilter;->numHashFunctions:I

    invoke-static {v0, v3, v4, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    .line 255
    invoke-virtual {p0}, Lcom/google/common/hash/BloomFilter;->bitSize()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/google/common/hash/BloomFilter;->bitSize()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    const-string v1, "BloomFilters must have the same size underlying bit arrays (%s != %s)"

    .line 257
    invoke-virtual {p0}, Lcom/google/common/hash/BloomFilter;->bitSize()J

    move-result-wide v2

    .line 258
    invoke-virtual {p1}, Lcom/google/common/hash/BloomFilter;->bitSize()J

    move-result-wide v4

    .line 254
    invoke-static/range {v0 .. v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;JJ)V

    .line 259
    iget-object v0, p0, Lcom/google/common/hash/BloomFilter;->strategy:Lcom/google/common/hash/BloomFilter$Strategy;

    iget-object v1, p1, Lcom/google/common/hash/BloomFilter;->strategy:Lcom/google/common/hash/BloomFilter$Strategy;

    .line 260
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "BloomFilters must have equal strategies (%s != %s)"

    iget-object v2, p0, Lcom/google/common/hash/BloomFilter;->strategy:Lcom/google/common/hash/BloomFilter$Strategy;

    iget-object v3, p1, Lcom/google/common/hash/BloomFilter;->strategy:Lcom/google/common/hash/BloomFilter$Strategy;

    .line 259
    invoke-static {v0, v1, v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 264
    iget-object v0, p0, Lcom/google/common/hash/BloomFilter;->funnel:Lcom/google/common/hash/Funnel;

    iget-object v1, p1, Lcom/google/common/hash/BloomFilter;->funnel:Lcom/google/common/hash/Funnel;

    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "BloomFilters must have equal funnels (%s != %s)"

    iget-object v2, p0, Lcom/google/common/hash/BloomFilter;->funnel:Lcom/google/common/hash/Funnel;

    iget-object v3, p1, Lcom/google/common/hash/BloomFilter;->funnel:Lcom/google/common/hash/Funnel;

    .line 264
    invoke-static {v0, v1, v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 269
    iget-object v0, p0, Lcom/google/common/hash/BloomFilter;->bits:Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    iget-object v1, p1, Lcom/google/common/hash/BloomFilter;->bits:Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    invoke-virtual {v0, v1}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->putAll(Lcom/google/common/hash/BloomFilterStrategies$BitArray;)V

    .line 270
    return-void

    :cond_0
    move v0, v2

    .line 248
    goto :goto_0

    :cond_1
    move v0, v2

    .line 249
    goto :goto_1

    :cond_2
    move v0, v2

    .line 255
    goto :goto_2
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 498
    .local p0, "this":Lcom/google/common/hash/BloomFilter;, "Lcom/google/common/hash/BloomFilter<TT;>;"
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 499
    .local v0, "dout":Ljava/io/DataOutputStream;
    iget-object v1, p0, Lcom/google/common/hash/BloomFilter;->strategy:Lcom/google/common/hash/BloomFilter$Strategy;

    invoke-interface {v1}, Lcom/google/common/hash/BloomFilter$Strategy;->ordinal()I

    move-result v1

    int-to-long v4, v1

    invoke-static {v4, v5}, Lcom/google/common/primitives/SignedBytes;->checkedCast(J)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 500
    iget v1, p0, Lcom/google/common/hash/BloomFilter;->numHashFunctions:I

    int-to-long v4, v1

    invoke-static {v4, v5}, Lcom/google/common/primitives/UnsignedBytes;->checkedCast(J)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 501
    iget-object v1, p0, Lcom/google/common/hash/BloomFilter;->bits:Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    iget-object v1, v1, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 502
    iget-object v1, p0, Lcom/google/common/hash/BloomFilter;->bits:Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    iget-object v4, v1, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    array-length v5, v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_0

    aget-wide v2, v4, v1

    .line 503
    .local v2, "value":J
    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 502
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 505
    .end local v2    # "value":J
    :cond_0
    return-void
.end method
