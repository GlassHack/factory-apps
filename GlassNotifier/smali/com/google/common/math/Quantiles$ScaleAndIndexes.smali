.class public final Lcom/google/common/math/Quantiles$ScaleAndIndexes;
.super Ljava/lang/Object;
.source "Quantiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/Quantiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScaleAndIndexes"
.end annotation


# instance fields
.field private final indexes:[I

.field private final scale:I


# direct methods
.method private constructor <init>(I[I)V
    .locals 3
    .param p1, "scale"    # I
    .param p2, "indexes"    # [I

    .prologue
    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    array-length v2, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v0, p2, v1

    .line 316
    .local v0, "index":I
    invoke-static {v0, p1}, Lcom/google/common/math/Quantiles;->access$300(II)V

    .line 315
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 318
    .end local v0    # "index":I
    :cond_0
    iput p1, p0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->scale:I

    .line 319
    iput-object p2, p0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->indexes:[I

    .line 320
    return-void
.end method

.method synthetic constructor <init>(I[ILcom/google/common/math/Quantiles$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # [I
    .param p3, "x2"    # Lcom/google/common/math/Quantiles$1;

    .prologue
    .line 309
    invoke-direct {p0, p1, p2}, Lcom/google/common/math/Quantiles$ScaleAndIndexes;-><init>(I[I)V

    return-void
.end method


# virtual methods
.method public compute(Ljava/util/Collection;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Number;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 332
    .local p1, "dataset":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    invoke-static {p1}, Lcom/google/common/primitives/Doubles;->toArray(Ljava/util/Collection;)[D

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->computeInPlace([D)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public varargs compute([D)Ljava/util/Map;
    .locals 1
    .param p1, "dataset"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 344
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    invoke-virtual {p0, v0}, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->computeInPlace([D)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public varargs compute([I)Ljava/util/Map;
    .locals 1
    .param p1, "dataset"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 369
    invoke-static {p1}, Lcom/google/common/math/Quantiles;->access$500([I)[D

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->computeInPlace([D)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public varargs compute([J)Ljava/util/Map;
    .locals 1
    .param p1, "dataset"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 357
    invoke-static {p1}, Lcom/google/common/math/Quantiles;->access$400([J)[D

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->computeInPlace([D)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public varargs computeInPlace([D)Ljava/util/Map;
    .locals 23
    .param p1, "dataset"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 381
    move-object/from16 v0, p1

    array-length v3, v0

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    const-string v4, "Cannot calculate quantiles of an empty dataset"

    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 382
    invoke-static/range {p1 .. p1}, Lcom/google/common/math/Quantiles;->access$600([D)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 383
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 384
    .local v14, "nanMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Double;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->indexes:[I

    array-length v5, v4

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_1

    aget v13, v4, v3

    .line 385
    .local v13, "index":I
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-wide/high16 v8, 0x7ff8000000000000L    # NaN

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v14, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 381
    .end local v13    # "index":I
    .end local v14    # "nanMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Double;>;"
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 387
    .restart local v14    # "nanMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Double;>;"
    :cond_1
    invoke-static {v14}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 433
    .end local v14    # "nanMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Double;>;"
    :goto_2
    return-object v3

    .line 395
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->indexes:[I

    array-length v3, v3

    new-array v0, v3, [I

    move-object/from16 v18, v0

    .line 396
    .local v18, "quotients":[I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->indexes:[I

    array-length v3, v3

    new-array v0, v3, [I

    move-object/from16 v20, v0

    .line 398
    .local v20, "remainders":[I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->indexes:[I

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    new-array v2, v3, [I

    .line 399
    .local v2, "requiredSelections":[I
    const/16 v21, 0x0

    .line 400
    .local v21, "requiredSelectionsCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->indexes:[I

    array-length v3, v3

    if-ge v12, v3, :cond_4

    .line 403
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->indexes:[I

    aget v3, v3, v12

    int-to-long v4, v3

    move-object/from16 v0, p1

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    int-to-long v6, v3

    mul-long v16, v4, v6

    .line 408
    .local v16, "numerator":J
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->scale:I

    int-to-long v4, v3

    sget-object v3, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v4, v5, v3}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v4

    long-to-int v15, v4

    .line 409
    .local v15, "quotient":I
    int-to-long v4, v15

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->scale:I

    int-to-long v6, v3

    mul-long/2addr v4, v6

    sub-long v4, v16, v4

    long-to-int v0, v4

    move/from16 v19, v0

    .line 410
    .local v19, "remainder":I
    aput v15, v18, v12

    .line 411
    aput v19, v20, v12

    .line 412
    aput v15, v2, v21

    .line 413
    add-int/lit8 v21, v21, 0x1

    .line 414
    if-eqz v19, :cond_3

    .line 415
    add-int/lit8 v3, v15, 0x1

    aput v3, v2, v21

    .line 416
    add-int/lit8 v21, v21, 0x1

    .line 400
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 419
    .end local v15    # "quotient":I
    .end local v16    # "numerator":J
    .end local v19    # "remainder":I
    :cond_4
    const/4 v3, 0x0

    move/from16 v0, v21

    invoke-static {v2, v3, v0}, Ljava/util/Arrays;->sort([III)V

    .line 420
    const/4 v3, 0x0

    add-int/lit8 v4, v21, -0x1

    const/4 v6, 0x0

    move-object/from16 v0, p1

    array-length v5, v0

    add-int/lit8 v7, v5, -0x1

    move-object/from16 v5, p1

    invoke-static/range {v2 .. v7}, Lcom/google/common/math/Quantiles;->access$900([III[DII)V

    .line 422
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .line 423
    .local v22, "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Double;>;"
    const/4 v12, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->indexes:[I

    array-length v3, v3

    if-ge v12, v3, :cond_6

    .line 424
    aget v15, v18, v12

    .line 425
    .restart local v15    # "quotient":I
    aget v19, v20, v12

    .line 426
    .restart local v19    # "remainder":I
    if-nez v19, :cond_5

    .line 427
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->indexes:[I

    aget v3, v3, v12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget-wide v4, p1, v15

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 429
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->indexes:[I

    aget v3, v3, v12

    .line 430
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget-wide v4, p1, v15

    add-int/lit8 v6, v15, 0x1

    aget-wide v6, p1, v6

    move/from16 v0, v19

    int-to-double v8, v0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->scale:I

    int-to-double v10, v10

    invoke-static/range {v4 .. v11}, Lcom/google/common/math/Quantiles;->access$800(DDDD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 429
    move-object/from16 v0, v22

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 433
    .end local v15    # "quotient":I
    .end local v19    # "remainder":I
    :cond_6
    invoke-static/range {v22 .. v22}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    goto/16 :goto_2
.end method
