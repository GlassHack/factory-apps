.class public final Lcom/google/common/math/PairedStats;
.super Ljava/lang/Object;
.source "PairedStats.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation


# static fields
.field private static final BYTES:I = 0x58

.field private static final serialVersionUID:J


# instance fields
.field private final sumOfProductsOfDeltas:D

.field private final xStats:Lcom/google/common/math/Stats;

.field private final yStats:Lcom/google/common/math/Stats;


# direct methods
.method constructor <init>(Lcom/google/common/math/Stats;Lcom/google/common/math/Stats;D)V
    .locals 1
    .param p1, "xStats"    # Lcom/google/common/math/Stats;
    .param p2, "yStats"    # Lcom/google/common/math/Stats;
    .param p3, "sumOfProductsOfDeltas"    # D

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/google/common/math/PairedStats;->xStats:Lcom/google/common/math/Stats;

    .line 62
    iput-object p2, p0, Lcom/google/common/math/PairedStats;->yStats:Lcom/google/common/math/Stats;

    .line 63
    iput-wide p3, p0, Lcom/google/common/math/PairedStats;->sumOfProductsOfDeltas:D

    .line 64
    return-void
.end method

.method private static ensureInUnitRange(D)D
    .locals 6
    .param p0, "value"    # D

    .prologue
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 270
    cmpl-double v4, p0, v0

    if-ltz v4, :cond_1

    move-wide p0, v0

    .line 276
    .end local p0    # "value":D
    :cond_0
    :goto_0
    return-wide p0

    .line 273
    .restart local p0    # "value":D
    :cond_1
    cmpg-double v0, p0, v2

    if-gtz v0, :cond_0

    move-wide p0, v2

    .line 274
    goto :goto_0
.end method

.method private static ensurePositive(D)D
    .locals 2
    .param p0, "value"    # D

    .prologue
    .line 262
    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-lez v0, :cond_0

    .line 265
    .end local p0    # "value":D
    :goto_0
    return-wide p0

    .restart local p0    # "value":D
    :cond_0
    const-wide/16 p0, 0x1

    goto :goto_0
.end method

.method public static fromByteArray([B)Lcom/google/common/math/PairedStats;
    .locals 9
    .param p0, "byteArray"    # [B

    .prologue
    const/16 v8, 0x58

    .line 308
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    array-length v5, p0

    if-ne v5, v8, :cond_0

    const/4 v5, 0x1

    :goto_0
    const-string v6, "Expected PairedStats.BYTES = %s, got %s"

    array-length v7, p0

    invoke-static {v5, v6, v8, v7}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    .line 314
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 315
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {v0}, Lcom/google/common/math/Stats;->readFrom(Ljava/nio/ByteBuffer;)Lcom/google/common/math/Stats;

    move-result-object v1

    .line 316
    .local v1, "xStats":Lcom/google/common/math/Stats;
    invoke-static {v0}, Lcom/google/common/math/Stats;->readFrom(Ljava/nio/ByteBuffer;)Lcom/google/common/math/Stats;

    move-result-object v4

    .line 317
    .local v4, "yStats":Lcom/google/common/math/Stats;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v2

    .line 318
    .local v2, "sumOfProductsOfDeltas":D
    new-instance v5, Lcom/google/common/math/PairedStats;

    invoke-direct {v5, v1, v4, v2, v3}, Lcom/google/common/math/PairedStats;-><init>(Lcom/google/common/math/Stats;Lcom/google/common/math/Stats;D)V

    return-object v5

    .line 309
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v1    # "xStats":Lcom/google/common/math/Stats;
    .end local v2    # "sumOfProductsOfDeltas":D
    .end local v4    # "yStats":Lcom/google/common/math/Stats;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public count()J
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/common/math/PairedStats;->xStats:Lcom/google/common/math/Stats;

    invoke-virtual {v0}, Lcom/google/common/math/Stats;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 217
    if-nez p1, :cond_1

    .line 224
    :cond_0
    :goto_0
    return v1

    .line 220
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 223
    check-cast v0, Lcom/google/common/math/PairedStats;

    .line 224
    .local v0, "other":Lcom/google/common/math/PairedStats;
    iget-object v2, p0, Lcom/google/common/math/PairedStats;->xStats:Lcom/google/common/math/Stats;

    iget-object v3, v0, Lcom/google/common/math/PairedStats;->xStats:Lcom/google/common/math/Stats;

    invoke-virtual {v2, v3}, Lcom/google/common/math/Stats;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/common/math/PairedStats;->yStats:Lcom/google/common/math/Stats;

    iget-object v3, v0, Lcom/google/common/math/PairedStats;->yStats:Lcom/google/common/math/Stats;

    .line 225
    invoke-virtual {v2, v3}, Lcom/google/common/math/Stats;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/common/math/PairedStats;->sumOfProductsOfDeltas:D

    .line 226
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, v0, Lcom/google/common/math/PairedStats;->sumOfProductsOfDeltas:D

    .line 227
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 238
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/common/math/PairedStats;->xStats:Lcom/google/common/math/Stats;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/math/PairedStats;->yStats:Lcom/google/common/math/Stats;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/common/math/PairedStats;->sumOfProductsOfDeltas:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public leastSquaresFit()Lcom/google/common/math/LinearTransformation;
    .locals 12

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide/16 v10, 0x0

    .line 188
    invoke-virtual {p0}, Lcom/google/common/math/PairedStats;->count()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    cmp-long v2, v6, v8

    if-lez v2, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 189
    iget-wide v6, p0, Lcom/google/common/math/PairedStats;->sumOfProductsOfDeltas:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    invoke-static {}, Lcom/google/common/math/LinearTransformation;->forNaN()Lcom/google/common/math/LinearTransformation;

    move-result-object v2

    .line 202
    :goto_1
    return-object v2

    :cond_0
    move v2, v4

    .line 188
    goto :goto_0

    .line 192
    :cond_1
    iget-object v2, p0, Lcom/google/common/math/PairedStats;->xStats:Lcom/google/common/math/Stats;

    invoke-virtual {v2}, Lcom/google/common/math/Stats;->sumOfSquaresOfDeltas()D

    move-result-wide v0

    .line 193
    .local v0, "xSumOfSquaresOfDeltas":D
    cmpl-double v2, v0, v10

    if-lez v2, :cond_3

    .line 194
    iget-object v2, p0, Lcom/google/common/math/PairedStats;->yStats:Lcom/google/common/math/Stats;

    invoke-virtual {v2}, Lcom/google/common/math/Stats;->sumOfSquaresOfDeltas()D

    move-result-wide v2

    cmpl-double v2, v2, v10

    if-lez v2, :cond_2

    .line 195
    iget-object v2, p0, Lcom/google/common/math/PairedStats;->xStats:Lcom/google/common/math/Stats;

    invoke-virtual {v2}, Lcom/google/common/math/Stats;->mean()D

    move-result-wide v2

    iget-object v4, p0, Lcom/google/common/math/PairedStats;->yStats:Lcom/google/common/math/Stats;

    invoke-virtual {v4}, Lcom/google/common/math/Stats;->mean()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/google/common/math/LinearTransformation;->mapping(DD)Lcom/google/common/math/LinearTransformation$LinearTransformationBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/google/common/math/PairedStats;->sumOfProductsOfDeltas:D

    div-double/2addr v4, v0

    .line 196
    invoke-virtual {v2, v4, v5}, Lcom/google/common/math/LinearTransformation$LinearTransformationBuilder;->withSlope(D)Lcom/google/common/math/LinearTransformation;

    move-result-object v2

    goto :goto_1

    .line 198
    :cond_2
    iget-object v2, p0, Lcom/google/common/math/PairedStats;->yStats:Lcom/google/common/math/Stats;

    invoke-virtual {v2}, Lcom/google/common/math/Stats;->mean()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/common/math/LinearTransformation;->horizontal(D)Lcom/google/common/math/LinearTransformation;

    move-result-object v2

    goto :goto_1

    .line 201
    :cond_3
    iget-object v2, p0, Lcom/google/common/math/PairedStats;->yStats:Lcom/google/common/math/Stats;

    invoke-virtual {v2}, Lcom/google/common/math/Stats;->sumOfSquaresOfDeltas()D

    move-result-wide v6

    cmpl-double v2, v6, v10

    if-lez v2, :cond_4

    :goto_2
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 202
    iget-object v2, p0, Lcom/google/common/math/PairedStats;->xStats:Lcom/google/common/math/Stats;

    invoke-virtual {v2}, Lcom/google/common/math/Stats;->mean()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/common/math/LinearTransformation;->vertical(D)Lcom/google/common/math/LinearTransformation;

    move-result-object v2

    goto :goto_1

    :cond_4
    move v3, v4

    .line 201
    goto :goto_2
.end method

.method public pearsonsCorrelationCoefficient()D
    .locals 10

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/google/common/math/PairedStats;->count()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 142
    iget-wide v6, p0, Lcom/google/common/math/PairedStats;->sumOfProductsOfDeltas:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 143
    const-wide/high16 v6, 0x7ff8000000000000L    # NaN

    .line 153
    :goto_1
    return-wide v6

    .line 141
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 145
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/math/PairedStats;->xStats()Lcom/google/common/math/Stats;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/common/math/Stats;->sumOfSquaresOfDeltas()D

    move-result-wide v2

    .line 146
    .local v2, "xSumOfSquaresOfDeltas":D
    invoke-virtual {p0}, Lcom/google/common/math/PairedStats;->yStats()Lcom/google/common/math/Stats;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/common/math/Stats;->sumOfSquaresOfDeltas()D

    move-result-wide v4

    .line 147
    .local v4, "ySumOfSquaresOfDeltas":D
    const-wide/16 v6, 0x0

    cmpl-double v6, v2, v6

    if-lez v6, :cond_2

    const/4 v6, 0x1

    :goto_2
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 148
    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    if-lez v6, :cond_3

    const/4 v6, 0x1

    :goto_3
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 151
    mul-double v6, v2, v4

    .line 152
    invoke-static {v6, v7}, Lcom/google/common/math/PairedStats;->ensurePositive(D)D

    move-result-wide v0

    .line 153
    .local v0, "productOfSumsOfSquaresOfDeltas":D
    iget-wide v6, p0, Lcom/google/common/math/PairedStats;->sumOfProductsOfDeltas:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Lcom/google/common/math/PairedStats;->ensureInUnitRange(D)D

    move-result-wide v6

    goto :goto_1

    .line 147
    .end local v0    # "productOfSumsOfSquaresOfDeltas":D
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 148
    :cond_3
    const/4 v6, 0x0

    goto :goto_3
.end method

.method public populationCovariance()D
    .locals 4

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/google/common/math/PairedStats;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 103
    iget-wide v0, p0, Lcom/google/common/math/PairedStats;->sumOfProductsOfDeltas:D

    invoke-virtual {p0}, Lcom/google/common/math/PairedStats;->count()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0

    .line 102
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sampleCovariance()D
    .locals 6

    .prologue
    const-wide/16 v4, 0x1

    .line 120
    invoke-virtual {p0}, Lcom/google/common/math/PairedStats;->count()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 121
    iget-wide v0, p0, Lcom/google/common/math/PairedStats;->sumOfProductsOfDeltas:D

    invoke-virtual {p0}, Lcom/google/common/math/PairedStats;->count()J

    move-result-wide v2

    sub-long/2addr v2, v4

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0

    .line 120
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method sumOfProductsOfDeltas()D
    .locals 2

    .prologue
    .line 258
    iget-wide v0, p0, Lcom/google/common/math/PairedStats;->sumOfProductsOfDeltas:D

    return-wide v0
.end method

.method public toByteArray()[B
    .locals 4

    .prologue
    .line 293
    const/16 v1, 0x58

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 294
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/google/common/math/PairedStats;->xStats:Lcom/google/common/math/Stats;

    invoke-virtual {v1, v0}, Lcom/google/common/math/Stats;->writeTo(Ljava/nio/ByteBuffer;)V

    .line 295
    iget-object v1, p0, Lcom/google/common/math/PairedStats;->yStats:Lcom/google/common/math/Stats;

    invoke-virtual {v1, v0}, Lcom/google/common/math/Stats;->writeTo(Ljava/nio/ByteBuffer;)V

    .line 296
    iget-wide v2, p0, Lcom/google/common/math/PairedStats;->sumOfProductsOfDeltas:D

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 297
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/google/common/math/PairedStats;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 244
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "xStats"

    iget-object v2, p0, Lcom/google/common/math/PairedStats;->xStats:Lcom/google/common/math/Stats;

    .line 245
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "yStats"

    iget-object v2, p0, Lcom/google/common/math/PairedStats;->yStats:Lcom/google/common/math/Stats;

    .line 246
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "populationCovariance"

    .line 247
    invoke-virtual {p0}, Lcom/google/common/math/PairedStats;->populationCovariance()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;D)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 250
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "xStats"

    iget-object v2, p0, Lcom/google/common/math/PairedStats;->xStats:Lcom/google/common/math/Stats;

    .line 251
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "yStats"

    iget-object v2, p0, Lcom/google/common/math/PairedStats;->yStats:Lcom/google/common/math/Stats;

    .line 252
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public xStats()Lcom/google/common/math/Stats;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/common/math/PairedStats;->xStats:Lcom/google/common/math/Stats;

    return-object v0
.end method

.method public yStats()Lcom/google/common/math/Stats;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/common/math/PairedStats;->yStats:Lcom/google/common/math/Stats;

    return-object v0
.end method
