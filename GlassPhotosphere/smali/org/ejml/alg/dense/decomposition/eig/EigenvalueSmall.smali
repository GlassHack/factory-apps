.class public Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;
.super Ljava/lang/Object;


# instance fields
.field public value0:Lorg/ejml/data/Complex64F;

.field public value1:Lorg/ejml/data/Complex64F;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/ejml/data/Complex64F;

    invoke-direct {v0}, Lorg/ejml/data/Complex64F;-><init>()V

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->value0:Lorg/ejml/data/Complex64F;

    new-instance v0, Lorg/ejml/data/Complex64F;

    invoke-direct {v0}, Lorg/ejml/data/Complex64F;-><init>()V

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->value1:Lorg/ejml/data/Complex64F;

    return-void
.end method


# virtual methods
.method public symm2x2_fast(DDD)V
    .locals 7

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double v0, p1, p5

    mul-double/2addr v0, v4

    sub-double v2, p1, p5

    mul-double/2addr v2, v4

    mul-double/2addr v2, v2

    mul-double v4, p3, p3

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iget-object v4, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->value0:Lorg/ejml/data/Complex64F;

    add-double v5, v0, v2

    iput-wide v5, v4, Lorg/ejml/data/Complex64F;->real:D

    iget-object v4, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->value1:Lorg/ejml/data/Complex64F;

    sub-double/2addr v0, v2

    iput-wide v0, v4, Lorg/ejml/data/Complex64F;->real:D

    return-void
.end method

.method public value2x2(DDDD)V
    .locals 12

    add-double v0, p3, p5

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    move-wide v2, v0

    :goto_0
    mul-double v4, v2, v2

    mul-double v6, v0, v0

    mul-double/2addr v0, v2

    mul-double v2, v4, p1

    mul-double v8, v6, p7

    add-double/2addr v2, v8

    add-double v8, p3, p5

    mul-double/2addr v8, v0

    sub-double v8, v2, v8

    mul-double v2, v4, p3

    mul-double v10, v6, p5

    sub-double/2addr v2, v10

    sub-double v10, p1, p7

    mul-double/2addr v10, v0

    add-double/2addr v10, v2

    mul-double v2, v4, p5

    mul-double v4, v6, p3

    sub-double/2addr v2, v4

    sub-double v4, p1, p7

    mul-double/2addr v0, v4

    add-double v4, v2, v0

    mul-double v0, v4, v10

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_2

    const-wide/16 v0, 0x0

    cmpl-double v0, v10, v0

    if-nez v0, :cond_1

    const-wide/16 v2, 0x0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_1
    mul-double/2addr v0, v2

    add-double v2, v10, v4

    mul-double/2addr v2, v0

    sub-double v2, v8, v2

    add-double/2addr v4, v10

    mul-double/2addr v0, v4

    add-double/2addr v0, v8

    iget-object v4, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->value0:Lorg/ejml/data/Complex64F;

    iput-wide v2, v4, Lorg/ejml/data/Complex64F;->real:D

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->value1:Lorg/ejml/data/Complex64F;

    iput-wide v0, v2, Lorg/ejml/data/Complex64F;->real:D

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->value0:Lorg/ejml/data/Complex64F;

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->value1:Lorg/ejml/data/Complex64F;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lorg/ejml/data/Complex64F;->imaginary:D

    iput-wide v2, v0, Lorg/ejml/data/Complex64F;->imaginary:D

    :goto_2
    return-void

    :cond_0
    sub-double v0, p1, p7

    add-double v2, p3, p5

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double v6, v0, v0

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double v6, v0, v0

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    goto :goto_0

    :cond_1
    add-double v0, v10, v4

    div-double v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    add-double v2, v10, v4

    div-double v2, v10, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->value0:Lorg/ejml/data/Complex64F;

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->value1:Lorg/ejml/data/Complex64F;

    iput-wide v8, v1, Lorg/ejml/data/Complex64F;->real:D

    iput-wide v8, v0, Lorg/ejml/data/Complex64F;->real:D

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->value0:Lorg/ejml/data/Complex64F;

    neg-double v1, v4

    mul-double/2addr v1, v10

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/ejml/data/Complex64F;->imaginary:D

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->value1:Lorg/ejml/data/Complex64F;

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->value0:Lorg/ejml/data/Complex64F;

    iget-wide v1, v1, Lorg/ejml/data/Complex64F;->imaginary:D

    neg-double v1, v1

    iput-wide v1, v0, Lorg/ejml/data/Complex64F;->imaginary:D

    goto :goto_2
.end method

.method public value2x2_fast(DDDD)V
    .locals 8

    add-double v0, p1, p7

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double/2addr v2, p3

    mul-double/2addr v2, p5

    sub-double v4, p1, p7

    sub-double v6, p1, p7

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide/16 v4, 0x0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_0

    iget-object v4, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->value0:Lorg/ejml/data/Complex64F;

    iget-object v5, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->value1:Lorg/ejml/data/Complex64F;

    iput-wide v0, v5, Lorg/ejml/data/Complex64F;->real:D

    iput-wide v0, v4, Lorg/ejml/data/Complex64F;->real:D

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->value0:Lorg/ejml/data/Complex64F;

    neg-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    iput-wide v1, v0, Lorg/ejml/data/Complex64F;->imaginary:D

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->value1:Lorg/ejml/data/Complex64F;

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->value0:Lorg/ejml/data/Complex64F;

    iget-wide v1, v1, Lorg/ejml/data/Complex64F;->imaginary:D

    neg-double v1, v1

    iput-wide v1, v0, Lorg/ejml/data/Complex64F;->imaginary:D

    :goto_0
    return-void

    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    iget-object v4, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->value0:Lorg/ejml/data/Complex64F;

    add-double v5, v0, v2

    iput-wide v5, v4, Lorg/ejml/data/Complex64F;->real:D

    iget-object v4, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->value1:Lorg/ejml/data/Complex64F;

    sub-double/2addr v0, v2

    iput-wide v0, v4, Lorg/ejml/data/Complex64F;->real:D

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->value0:Lorg/ejml/data/Complex64F;

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->value1:Lorg/ejml/data/Complex64F;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lorg/ejml/data/Complex64F;->imaginary:D

    iput-wide v2, v0, Lorg/ejml/data/Complex64F;->imaginary:D

    goto :goto_0
.end method
