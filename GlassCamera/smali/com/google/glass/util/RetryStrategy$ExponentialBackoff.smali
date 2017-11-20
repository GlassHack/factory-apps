.class Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;
.super Lcom/google/glass/util/RetryStrategy;
.source "RetryStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/RetryStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExponentialBackoff"
.end annotation


# instance fields
.field final firstDelayMs:I

.field final multiplier:D

.field final numAttempts:I

.field final random:Ljava/util/Random;


# direct methods
.method constructor <init>(IDI)V
    .locals 6
    .param p1, "firstDelayMs"    # I
    .param p2, "multiplier"    # D
    .param p4, "numAttempts"    # I

    .prologue
    .line 98
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;-><init>(IDILjava/util/Random;)V

    .line 99
    return-void
.end method

.method constructor <init>(IDILjava/util/Random;)V
    .locals 2
    .param p1, "firstDelayMs"    # I
    .param p2, "multiplier"    # D
    .param p4, "numAttempts"    # I
    .param p5, "random"    # Ljava/util/Random;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/google/glass/util/RetryStrategy;-><init>()V

    .line 102
    iput p4, p0, Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;->numAttempts:I

    .line 103
    invoke-static {p1}, Lcom/google/glass/util/RetryStrategy;->access$000(I)I

    move-result v0

    iput v0, p0, Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;->firstDelayMs:I

    .line 104
    invoke-static {p2, p3}, Lcom/google/glass/util/RetryStrategy;->access$100(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;->multiplier:D

    .line 105
    iput-object p5, p0, Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;->random:Ljava/util/Random;

    .line 106
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 137
    instance-of v2, p1, Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 138
    check-cast v0, Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;

    .line 139
    .local v0, "other":Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;
    iget v2, p0, Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;->firstDelayMs:I

    iget v3, v0, Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;->firstDelayMs:I

    if-ne v2, v3, :cond_0

    iget-wide v2, p0, Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;->multiplier:D

    iget-wide v4, v0, Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;->multiplier:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    iget v2, p0, Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;->numAttempts:I

    iget v3, v0, Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;->numAttempts:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 143
    .end local v0    # "other":Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;
    :cond_0
    return v1
.end method

.method public getDelayMillis(I)I
    .locals 7
    .param p1, "tries"    # I

    .prologue
    const/4 v2, 0x0

    .line 118
    if-ltz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 120
    if-nez p1, :cond_1

    .line 131
    :goto_1
    return v2

    :cond_0
    move v1, v2

    .line 118
    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;->tryAgain(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 124
    const/4 v2, -0x1

    goto :goto_1

    .line 127
    :cond_2
    iget v1, p0, Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;->firstDelayMs:I

    int-to-double v1, v1

    iget-wide v3, p0, Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;->multiplier:D

    add-int/lit8 v5, p1, -0x1

    int-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Lcom/google/glass/util/RetryStrategy;->access$300(D)I

    move-result v0

    .line 128
    .local v0, "nominalDelay":I
    iget-object v1, p0, Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;->random:Ljava/util/Random;

    if-nez v1, :cond_3

    move v2, v0

    .line 129
    goto :goto_1

    .line 131
    :cond_3
    iget-object v1, p0, Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;->random:Ljava/util/Random;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    goto :goto_1
.end method

.method getNumAttempts()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;->numAttempts:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 148
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;->numAttempts:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;->firstDelayMs:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;->multiplier:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public tryAgain(I)Z
    .locals 2
    .param p1, "tries"    # I

    .prologue
    .line 114
    const/4 v0, -0x1

    iget v1, p0, Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;->numAttempts:I

    if-eq v0, v1, :cond_0

    invoke-static {p1}, Lcom/google/glass/util/RetryStrategy;->access$200(I)I

    move-result v0

    iget v1, p0, Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;->numAttempts:I

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
