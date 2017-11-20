.class final Lcom/google/common/hash/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:[J

.field b:I


# direct methods
.method constructor <init>(J)V
    .locals 3

    .prologue
    .line 82
    const-wide/16 v0, 0x40

    sget-object v2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {p1, p2, v0, v1, v2}, Lcom/google/common/b/c;->a(JJLjava/math/RoundingMode;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->a(J)I

    move-result v0

    new-array v0, v0, [J

    invoke-direct {p0, v0}, Lcom/google/common/hash/f;-><init>([J)V

    .line 83
    return-void
.end method

.method constructor <init>([J)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "data length is zero!"

    invoke-static {v0, v2}, Lcom/google/common/base/ah;->a(ZLjava/lang/Object;)V

    .line 88
    iput-object p1, p0, Lcom/google/common/hash/f;->a:[J

    .line 90
    array-length v2, p1

    move v0, v1

    :goto_1
    if-ge v1, v2, :cond_1

    aget-wide v3, p1, v1

    .line 91
    invoke-static {v3, v4}, Ljava/lang/Long;->bitCount(J)I

    move-result v3

    add-int/2addr v0, v3

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    .line 87
    goto :goto_0

    .line 93
    :cond_1
    iput v0, p0, Lcom/google/common/hash/f;->b:I

    .line 94
    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/common/hash/f;->a:[J

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x40

    return v0
.end method

.method final a(I)Z
    .locals 6

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/google/common/hash/f;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/google/common/hash/f;->a:[J

    shr-int/lit8 v1, p1, 0x6

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p1

    or-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 100
    iget v0, p0, Lcom/google/common/hash/f;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/hash/f;->b:I

    .line 101
    const/4 v0, 0x1

    .line 103
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/google/common/hash/f;->b:I

    return v0
.end method

.method final b(I)Z
    .locals 4

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/common/hash/f;->a:[J

    shr-int/lit8 v1, p1, 0x6

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final c()Lcom/google/common/hash/f;
    .locals 2

    .prologue
    .line 121
    new-instance v1, Lcom/google/common/hash/f;

    iget-object v0, p0, Lcom/google/common/hash/f;->a:[J

    invoke-virtual {v0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    invoke-direct {v1, v0}, Lcom/google/common/hash/f;-><init>([J)V

    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 126
    instance-of v0, p1, Lcom/google/common/hash/f;

    if-eqz v0, :cond_0

    .line 127
    check-cast p1, Lcom/google/common/hash/f;

    .line 128
    iget-object v0, p0, Lcom/google/common/hash/f;->a:[J

    iget-object v1, p1, Lcom/google/common/hash/f;->a:[J

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    .line 130
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/common/hash/f;->a:[J

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    return v0
.end method
