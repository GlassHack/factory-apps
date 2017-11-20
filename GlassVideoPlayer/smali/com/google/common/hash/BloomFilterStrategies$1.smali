.class final enum Lcom/google/common/hash/BloomFilterStrategies$1;
.super Lcom/google/common/hash/BloomFilterStrategies;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/hash/BloomFilterStrategies;-><init>(Ljava/lang/String;ILcom/google/common/hash/BloomFilterStrategies$1;)V

    return-void
.end method


# virtual methods
.method public final mightContain(Ljava/lang/Object;Lcom/google/common/hash/Funnel;ILcom/google/common/hash/f;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 60
    invoke-static {}, Lcom/google/common/hash/Hashing;->a()Lcom/google/common/hash/k;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/hash/k;->hashObject(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/hash/j;->asLong()J

    move-result-wide v2

    .line 61
    long-to-int v4, v2

    .line 62
    const/16 v0, 0x20

    ushr-long/2addr v2, v0

    long-to-int v3, v2

    move v2, v1

    .line 63
    :goto_0
    if-gt v2, p3, :cond_2

    .line 64
    mul-int v0, v2, v3

    add-int/2addr v0, v4

    .line 65
    if-gez v0, :cond_0

    .line 66
    xor-int/lit8 v0, v0, -0x1

    .line 68
    :cond_0
    invoke-virtual {p4}, Lcom/google/common/hash/f;->a()I

    move-result v5

    rem-int/2addr v0, v5

    invoke-virtual {p4, v0}, Lcom/google/common/hash/f;->b(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    const/4 v0, 0x0

    .line 72
    :goto_1
    return v0

    .line 63
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 72
    goto :goto_1
.end method

.method public final put(Ljava/lang/Object;Lcom/google/common/hash/Funnel;ILcom/google/common/hash/f;)Z
    .locals 6

    .prologue
    .line 44
    invoke-static {}, Lcom/google/common/hash/Hashing;->a()Lcom/google/common/hash/k;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/hash/k;->hashObject(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/hash/j;->asLong()J

    move-result-wide v0

    .line 45
    long-to-int v3, v0

    .line 46
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v4, v0

    .line 47
    const/4 v1, 0x0

    .line 48
    const/4 v0, 0x1

    move v2, v1

    move v1, v0

    :goto_0
    if-gt v1, p3, :cond_1

    .line 49
    mul-int v0, v1, v4

    add-int/2addr v0, v3

    .line 50
    if-gez v0, :cond_0

    .line 51
    xor-int/lit8 v0, v0, -0x1

    .line 53
    :cond_0
    invoke-virtual {p4}, Lcom/google/common/hash/f;->a()I

    move-result v5

    rem-int/2addr v0, v5

    invoke-virtual {p4, v0}, Lcom/google/common/hash/f;->a(I)Z

    move-result v0

    or-int/2addr v2, v0

    .line 48
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 55
    :cond_1
    return v2
.end method
