.class public Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;
.super Ljava/lang/Object;


# static fields
.field private static final giveUpOnKnown:I = 0xa


# instance fields
.field protected N:I

.field protected Ut:Lorg/ejml/data/DenseMatrix64F;

.field protected Vt:Lorg/ejml/data/DenseMatrix64F;

.field bulge:D

.field c:D

.field protected diag:[D

.field protected eigenSmall:Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;

.field private exceptionalThresh:I

.field private fastValues:Z

.field private findingZeros:Z

.field followScript:Z

.field private maxIterations:I

.field protected maxValue:D

.field protected nextExceptional:I

.field protected numExceptional:I

.field protected numSplits:I

.field protected off:[D

.field protected rand:Ljava/util/Random;

.field s:D

.field protected splits:[I

.field steps:I

.field protected totalSteps:I

.field private values:[D

.field protected x1:I

.field protected x2:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    const-wide/32 v1, 0x34671e

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->rand:Ljava/util/Random;

    new-instance v0, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;

    invoke-direct {v0}, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;-><init>()V

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->eigenSmall:Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;

    const/16 v0, 0xf

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->exceptionalThresh:I

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->exceptionalThresh:I

    mul-int/lit8 v0, v0, 0x64

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->maxIterations:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->fastValues:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    const-wide/32 v1, 0x34671e

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->rand:Ljava/util/Random;

    new-instance v0, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;

    invoke-direct {v0}, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;-><init>()V

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->eigenSmall:Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;

    const/16 v0, 0xf

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->exceptionalThresh:I

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->exceptionalThresh:I

    mul-int/lit8 v0, v0, 0x64

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->maxIterations:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->fastValues:Z

    iput-boolean p1, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->fastValues:Z

    return-void
.end method

.method private computeBulgeScale()D
    .locals 4

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->diag:[D

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->x1:I

    aget-wide v0, v0, v1

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->off:[D

    iget v3, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->x1:I

    aget-wide v2, v2, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private createB()Lorg/ejml/simple/SimpleMatrix;
    .locals 5

    new-instance v1, Lorg/ejml/simple/SimpleMatrix;

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->N:I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->N:I

    invoke-direct {v1, v0, v2}, Lorg/ejml/simple/SimpleMatrix;-><init>(II)V

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->N:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->diag:[D

    aget-wide v2, v2, v0

    invoke-virtual {v1, v0, v0, v2, v3}, Lorg/ejml/simple/SimpleMatrix;->set(IID)V

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->off:[D

    aget-wide v3, v3, v0

    invoke-virtual {v1, v0, v2, v3, v4}, Lorg/ejml/simple/SimpleMatrix;->set(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->N:I

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->N:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->diag:[D

    iget v4, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->N:I

    add-int/lit8 v4, v4, -0x1

    aget-wide v3, v3, v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lorg/ejml/simple/SimpleMatrix;->set(IID)V

    return-object v1
.end method

.method private createQ(IDDZ)Lorg/ejml/simple/SimpleMatrix;
    .locals 8

    add-int/lit8 v2, p1, 0x1

    move-object v0, p0

    move v1, p1

    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->createQ(IIDDZ)Lorg/ejml/simple/SimpleMatrix;

    move-result-object v0

    return-object v0
.end method

.method private createQ(IIDDZ)Lorg/ejml/simple/SimpleMatrix;
    .locals 3

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->N:I

    invoke-static {v0}, Lorg/ejml/simple/SimpleMatrix;->identity(I)Lorg/ejml/simple/SimpleMatrix;

    move-result-object v0

    invoke-virtual {v0, p1, p1, p3, p4}, Lorg/ejml/simple/SimpleMatrix;->set(IID)V

    if-eqz p7, :cond_0

    invoke-virtual {v0, p1, p2, p5, p6}, Lorg/ejml/simple/SimpleMatrix;->set(IID)V

    neg-double v1, p5

    invoke-virtual {v0, p2, p1, v1, v2}, Lorg/ejml/simple/SimpleMatrix;->set(IID)V

    :goto_0
    invoke-virtual {v0, p2, p2, p3, p4}, Lorg/ejml/simple/SimpleMatrix;->set(IID)V

    return-object v0

    :cond_0
    neg-double v1, p5

    invoke-virtual {v0, p1, p2, v1, v2}, Lorg/ejml/simple/SimpleMatrix;->set(IID)V

    invoke-virtual {v0, p2, p1, p5, p6}, Lorg/ejml/simple/SimpleMatrix;->set(IID)V

    goto :goto_0
.end method

.method private performDynamicStep()V
    .locals 6

    const/4 v5, 0x0

    iget-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->findingZeros:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->steps:I

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    iput-boolean v5, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->findingZeros:Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->computeBulgeScale()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->performImplicitSingleStep(DDZ)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->computeBulgeScale()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->selectWilkinsonShift(D)D

    move-result-wide v3

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->performImplicitSingleStep(DDZ)V

    goto :goto_0
.end method

.method private performScriptedStep()V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->computeBulgeScale()D

    move-result-wide v1

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->steps:I

    const/16 v3, 0xa

    if-le v0, v3, :cond_0

    iput-boolean v5, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->followScript:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->values:[D

    iget v3, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->x2:I

    aget-wide v3, v0, v3

    div-double/2addr v3, v1

    mul-double/2addr v3, v3

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->performImplicitSingleStep(DDZ)V

    goto :goto_0
.end method

.method private pushRight(I)V
    .locals 6

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->isOffZero(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->rotatorPushRight(I)V

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->N:I

    add-int/lit8 v0, v0, -0x2

    sub-int v1, v0, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-wide v2, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->bulge:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_0

    add-int/lit8 v2, v0, 0x2

    invoke-direct {p0, p1, v2}, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->rotatorPushRight2(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private rotatorPushRight(I)V
    .locals 10

    const-wide/16 v8, 0x0

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->off:[D

    aget-wide v0, v0, p1

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->diag:[D

    add-int/lit8 v3, p1, 0x1

    aget-wide v2, v2, v3

    neg-double v4, v0

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->computeRotator(DD)V

    iget-object v4, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->off:[D

    aput-wide v8, v4, p1

    iget-object v4, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->diag:[D

    add-int/lit8 v5, p1, 0x1

    iget-wide v6, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->c:D

    mul-double/2addr v2, v6

    iget-wide v6, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->s:D

    mul-double/2addr v0, v6

    sub-double v0, v2, v0

    aput-wide v0, v4, v5

    add-int/lit8 v0, p1, 0x2

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->N:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->off:[D

    add-int/lit8 v1, p1, 0x1

    aget-wide v0, v0, v1

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->off:[D

    add-int/lit8 v3, p1, 0x1

    iget-wide v4, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->c:D

    mul-double/2addr v4, v0

    aput-wide v4, v2, v3

    iget-wide v2, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->s:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->bulge:D

    :goto_0
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->Ut:Lorg/ejml/data/DenseMatrix64F;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->Ut:Lorg/ejml/data/DenseMatrix64F;

    add-int/lit8 v3, p1, 0x1

    iget-wide v4, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->c:D

    iget-wide v6, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->s:D

    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v7}, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->updateRotator(Lorg/ejml/data/DenseMatrix64F;IIDD)V

    :cond_0
    return-void

    :cond_1
    iput-wide v8, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->bulge:D

    goto :goto_0
.end method

.method private rotatorPushRight2(II)V
    .locals 8

    iget-wide v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->bulge:D

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->diag:[D

    add-int v3, p1, p2

    aget-wide v2, v2, v3

    neg-double v4, v0

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->computeRotator(DD)V

    iget-object v4, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->diag:[D

    add-int v5, p1, p2

    iget-wide v6, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->c:D

    mul-double/2addr v2, v6

    iget-wide v6, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->s:D

    mul-double/2addr v0, v6

    sub-double v0, v2, v0

    aput-wide v0, v4, v5

    add-int v0, p1, p2

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->N:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->off:[D

    add-int v1, p1, p2

    aget-wide v0, v0, v1

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->off:[D

    add-int v3, p1, p2

    iget-wide v4, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->c:D

    mul-double/2addr v4, v0

    aput-wide v4, v2, v3

    iget-wide v2, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->s:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->bulge:D

    :cond_0
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->Ut:Lorg/ejml/data/DenseMatrix64F;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->Ut:Lorg/ejml/data/DenseMatrix64F;

    add-int v3, p1, p2

    iget-wide v4, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->c:D

    iget-wide v6, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->s:D

    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v7}, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->updateRotator(Lorg/ejml/data/DenseMatrix64F;IIDD)V

    :cond_1
    return-void
.end method


# virtual methods
.method public _process()Z
    .locals 5

    const/4 v0, 0x1

    iget-wide v1, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->maxValue:D

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->fastValues:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->x2:I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->x1:I

    sub-int/2addr v1, v2

    if-ne v1, v0, :cond_4

    invoke-virtual {p0}, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->resetSteps()V

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->x1:I

    invoke-virtual {p0, v1}, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->eigenBB_2x2(I)V

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->x2:I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->x2:I

    invoke-virtual {p0, v1, v2}, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->setSubmatrix(II)V

    :cond_2
    :goto_1
    iget v1, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->x2:I

    if-ltz v1, :cond_0

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->steps:I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->maxIterations:I

    if-le v1, v2, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget v1, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->x1:I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->x2:I

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->resetSteps()V

    invoke-virtual {p0}, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->nextSplit()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_4
    iget v1, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->steps:I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->nextExceptional:I

    if-lt v1, v2, :cond_5

    invoke-virtual {p0}, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->exceptionShift()V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->checkForAndHandleZeros()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->followScript:Z

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->performScriptedStep()V

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->performDynamicStep()V

    goto :goto_1
.end method

.method protected checkForAndHandleZeros()Z
    .locals 5

    const/4 v1, 0x1

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->x2:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->x1:I

    if-lt v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->isOffZero(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->resetSteps()V

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->splits:[I

    iget v3, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->numSplits:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->numSplits:I

    aput v0, v2, v3

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->x1:I

    move v0, v1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->x2:I

    add-int/lit8 v0, v0, -0x1

    :goto_2
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->x1:I

    if-lt v0, v2, :cond_3

    invoke-virtual {p0, v0}, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->isDiagonalZero(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v0}, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->pushRight(I)V

    invoke-virtual {p0}, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->resetSteps()V

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->splits:[I

    iget v3, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->numSplits:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->numSplits:I

    aput v0, v2, v3

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->x1:I

    move v0, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected computeRotator(DD)V
    .locals 6

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    div-double v0, p1, p3

    mul-double v2, v0, v0

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v4, v2

    iput-wide v4, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->s:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->c:D

    :goto_0
    return-void

    :cond_0
    div-double v0, p3, p1

    mul-double v2, v0, v0

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v4, v2

    iput-wide v4, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->c:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->s:D

    goto :goto_0
.end method

.method protected createBulge(IDDZ)V
    .locals 14

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->diag:[D

    aget-wide v0, v0, p1

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->off:[D

    aget-wide v2, v2, p1

    iget-object v4, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->diag:[D

    add-int/lit8 v5, p1, 0x1

    aget-wide v4, v4, v5

    if-eqz p6, :cond_1

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    iput-wide v6, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->c:D

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    iput-wide v6, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->s:D

    :goto_0
    iget-object v6, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->diag:[D

    iget-wide v7, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->c:D

    mul-double/2addr v7, v0

    iget-wide v9, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->s:D

    mul-double/2addr v9, v2

    add-double/2addr v7, v9

    aput-wide v7, v6, p1

    iget-object v6, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->off:[D

    iget-wide v7, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->c:D

    mul-double/2addr v2, v7

    iget-wide v7, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->s:D

    mul-double/2addr v0, v7

    sub-double v0, v2, v0

    aput-wide v0, v6, p1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->diag:[D

    add-int/lit8 v1, p1, 0x1

    iget-wide v2, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->c:D

    mul-double/2addr v2, v4

    aput-wide v2, v0, v1

    iget-wide v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->s:D

    mul-double/2addr v0, v4

    iput-wide v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->bulge:D

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->Vt:Lorg/ejml/data/DenseMatrix64F;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->Vt:Lorg/ejml/data/DenseMatrix64F;

    add-int/lit8 v3, p1, 0x1

    iget-wide v4, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->c:D

    iget-wide v6, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->s:D

    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v7}, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->updateRotator(Lorg/ejml/data/DenseMatrix64F;IIDD)V

    :cond_0
    return-void

    :cond_1
    div-double v6, v0, p4

    div-double v8, v0, p4

    mul-double/2addr v6, v8

    sub-double v6, v6, p2

    div-double v8, v2, p4

    div-double v10, v0, p4

    mul-double/2addr v8, v10

    mul-double v10, v6, v6

    mul-double v12, v8, v8

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    div-double/2addr v6, v10

    iput-wide v6, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->c:D

    div-double v6, v8, v10

    iput-wide v6, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->s:D

    goto :goto_0
.end method

.method protected eigenBB_2x2(I)V
    .locals 15

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->diag:[D

    aget-wide v9, v0, p1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->off:[D

    aget-wide v11, v0, p1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->diag:[D

    add-int/lit8 v1, p1, 0x1

    aget-wide v13, v0, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double v6, v2, v4

    if-lez v6, :cond_0

    :goto_0
    cmpl-double v4, v0, v2

    if-lez v4, :cond_2

    move-wide v7, v0

    :goto_1
    const-wide/16 v0, 0x0

    cmpl-double v0, v7, v0

    if-nez v0, :cond_1

    :goto_2
    return-void

    :cond_0
    move-wide v2, v4

    goto :goto_0

    :cond_1
    div-double v3, v9, v7

    div-double v5, v11, v7

    div-double v9, v13, v7

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->eigenSmall:Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;

    mul-double v1, v3, v3

    mul-double/2addr v3, v5

    mul-double/2addr v5, v5

    mul-double/2addr v9, v9

    add-double/2addr v5, v9

    invoke-virtual/range {v0 .. v6}, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->symm2x2_fast(DDD)V

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->off:[D

    const-wide/16 v1, 0x0

    aput-wide v1, v0, p1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->diag:[D

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->eigenSmall:Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;

    iget-object v1, v1, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->value0:Lorg/ejml/data/Complex64F;

    iget-wide v1, v1, Lorg/ejml/data/Complex64F;->real:D

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    mul-double/2addr v1, v7

    aput-wide v1, v0, p1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->eigenSmall:Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;

    iget-object v0, v0, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->value1:Lorg/ejml/data/Complex64F;

    iget-wide v0, v0, Lorg/ejml/data/Complex64F;->real:D

    invoke-static {v0, v1}, Ljava/lang/Math;->signum(D)D

    move-result-wide v0

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->diag:[D

    add-int/lit8 v3, p1, 0x1

    mul-double/2addr v0, v7

    iget-object v4, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->eigenSmall:Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;

    iget-object v4, v4, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->value1:Lorg/ejml/data/Complex64F;

    iget-wide v4, v4, Lorg/ejml/data/Complex64F;->real:D

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v0, v4

    aput-wide v0, v2, v3

    goto :goto_2

    :cond_2
    move-wide v7, v2

    goto :goto_1
.end method

.method public exceptionShift()V
    .locals 8

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->numExceptional:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->numExceptional:I

    const-wide v2, 0x3fa999999999999aL    # 0.05

    iget v4, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->numExceptional:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    cmpl-double v4, v2, v0

    if-lez v4, :cond_0

    :goto_0
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    iget-object v4, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->rand:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextDouble()D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    mul-double v3, v2, v0

    const-wide/16 v1, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->performImplicitSingleStep(DDZ)V

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->steps:I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->exceptionalThresh:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->nextExceptional:I

    return-void

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method public getDiag()[D
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->diag:[D

    return-object v0
.end method

.method public getMaxValue()D
    .locals 2

    iget-wide v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->maxValue:D

    return-wide v0
.end method

.method public getNumberOfSingularValues()I
    .locals 1

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->N:I

    return v0
.end method

.method public getOff()[D
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->off:[D

    return-object v0
.end method

.method public getSingularValue(I)D
    .locals 2

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->diag:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getSingularValues()[D
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->diag:[D

    return-object v0
.end method

.method public getUt()Lorg/ejml/data/DenseMatrix64F;
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->Ut:Lorg/ejml/data/DenseMatrix64F;

    return-object v0
.end method

.method public getVt()Lorg/ejml/data/DenseMatrix64F;
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->Vt:Lorg/ejml/data/DenseMatrix64F;

    return-object v0
.end method

.method public incrementSteps()V
    .locals 1

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->steps:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->steps:I

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->totalSteps:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->totalSteps:I

    return-void
.end method

.method public initParam(II)V
    .locals 2

    const/4 v1, 0x0

    if-le p2, p1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must be a square or tall matrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p2, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->N:I

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->splits:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->splits:[I

    array-length v0, v0

    if-ge v0, p2, :cond_2

    :cond_1
    new-array v0, p2, [I

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->splits:[I

    :cond_2
    iput v1, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->x1:I

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->N:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->x2:I

    iput v1, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->steps:I

    iput v1, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->totalSteps:I

    iput v1, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->numSplits:I

    iput v1, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->numExceptional:I

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->exceptionalThresh:I

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->nextExceptional:I

    return-void
.end method

.method public isDiagonalZero(I)Z
    .locals 6

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->diag:[D

    add-int/lit8 v1, p1, 0x1

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->off:[D

    aget-wide v2, v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->diag:[D

    aget-wide v2, v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    sget-wide v4, Lorg/ejml/UtilEjml;->EPS:D

    mul-double/2addr v0, v4

    cmpg-double v0, v2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOffZero(I)Z
    .locals 6

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->diag:[D

    aget-wide v0, v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->diag:[D

    add-int/lit8 v3, p1, 0x1

    aget-wide v2, v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->off:[D

    aget-wide v2, v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    sget-wide v4, Lorg/ejml/UtilEjml;->EPS:D

    mul-double/2addr v0, v4

    cmpg-double v0, v2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextSplit()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->numSplits:I

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->splits:[I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->numSplits:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->numSplits:I

    aget v1, v1, v2

    iput v1, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->x2:I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->numSplits:I

    if-lez v1, :cond_1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->splits:[I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->numSplits:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->x1:I

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iput v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->x1:I

    goto :goto_1
.end method

.method public performImplicitSingleStep(DDZ)V
    .locals 9

    const-wide/16 v7, 0x0

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->x1:I

    move-object v0, p0

    move-wide v2, p3

    move-wide v4, p1

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->createBulge(IDDZ)V

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->x1:I

    :goto_0
    iget v1, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->x2:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget-wide v1, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->bulge:D

    cmpl-double v1, v1, v7

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->removeBulgeLeft(IZ)V

    iget-wide v1, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->bulge:D

    cmpl-double v1, v1, v7

    if-nez v1, :cond_2

    :cond_0
    iget-wide v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->bulge:D

    cmpl-double v0, v0, v7

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->x2:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->removeBulgeLeft(IZ)V

    :cond_1
    invoke-virtual {p0}, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->incrementSteps()V

    return-void

    :cond_2
    invoke-virtual {p0, v0}, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->removeBulgeRight(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public printMatrix()V
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Off Diag[ "

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->N:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "%5.2f "

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->off:[D

    aget-wide v5, v5, v0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "    Diag[ "

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    move v0, v1

    :goto_1
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->N:I

    if-ge v0, v2, :cond_1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "%5.2f "

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->diag:[D

    aget-wide v5, v5, v0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method public process()Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->followScript:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->findingZeros:Z

    invoke-virtual {p0}, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->_process()Z

    move-result v0

    return v0
.end method

.method public process([D)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->followScript:Z

    iput-object p1, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->values:[D

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->findingZeros:Z

    invoke-virtual {p0}, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->_process()Z

    move-result v0

    return v0
.end method

.method protected removeBulgeLeft(IZ)V
    .locals 11

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->diag:[D

    aget-wide v0, v0, p1

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->off:[D

    aget-wide v2, v2, p1

    iget-object v4, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->diag:[D

    add-int/lit8 v5, p1, 0x1

    aget-wide v4, v4, v5

    iget-wide v6, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->bulge:D

    invoke-virtual {p0, v0, v1, v6, v7}, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->computeRotator(DD)V

    iget-object v6, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->diag:[D

    iget-wide v7, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->c:D

    mul-double/2addr v0, v7

    iget-wide v7, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->s:D

    iget-wide v9, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->bulge:D

    mul-double/2addr v7, v9

    add-double/2addr v0, v7

    aput-wide v0, v6, p1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->off:[D

    iget-wide v6, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->c:D

    mul-double/2addr v6, v2

    iget-wide v8, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->s:D

    mul-double/2addr v8, v4

    add-double/2addr v6, v8

    aput-wide v6, v0, p1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->diag:[D

    add-int/lit8 v1, p1, 0x1

    iget-wide v6, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->c:D

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->s:D

    mul-double/2addr v2, v6

    sub-double v2, v4, v2

    aput-wide v2, v0, v1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->off:[D

    add-int/lit8 v1, p1, 0x1

    aget-wide v0, v0, v1

    iget-wide v2, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->s:D

    mul-double/2addr v2, v0

    iput-wide v2, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->bulge:D

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->off:[D

    add-int/lit8 v3, p1, 0x1

    iget-wide v4, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->c:D

    mul-double/2addr v0, v4

    aput-wide v0, v2, v3

    :cond_0
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->Ut:Lorg/ejml/data/DenseMatrix64F;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->Ut:Lorg/ejml/data/DenseMatrix64F;

    add-int/lit8 v3, p1, 0x1

    iget-wide v4, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->c:D

    iget-wide v6, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->s:D

    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v7}, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->updateRotator(Lorg/ejml/data/DenseMatrix64F;IIDD)V

    :cond_1
    return-void
.end method

.method protected removeBulgeRight(I)V
    .locals 11

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->off:[D

    aget-wide v0, v0, p1

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->diag:[D

    add-int/lit8 v3, p1, 0x1

    aget-wide v2, v2, v3

    iget-object v4, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->off:[D

    add-int/lit8 v5, p1, 0x1

    aget-wide v4, v4, v5

    iget-wide v6, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->bulge:D

    invoke-virtual {p0, v0, v1, v6, v7}, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->computeRotator(DD)V

    iget-object v6, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->off:[D

    iget-wide v7, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->c:D

    mul-double/2addr v0, v7

    iget-wide v7, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->bulge:D

    iget-wide v9, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->s:D

    mul-double/2addr v7, v9

    add-double/2addr v0, v7

    aput-wide v0, v6, p1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->diag:[D

    add-int/lit8 v1, p1, 0x1

    iget-wide v6, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->c:D

    mul-double/2addr v6, v2

    iget-wide v8, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->s:D

    mul-double/2addr v8, v4

    add-double/2addr v6, v8

    aput-wide v6, v0, v1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->off:[D

    add-int/lit8 v1, p1, 0x1

    neg-double v2, v2

    iget-wide v6, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->s:D

    mul-double/2addr v2, v6

    iget-wide v6, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->c:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->diag:[D

    add-int/lit8 v1, p1, 0x2

    aget-wide v0, v0, v1

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->diag:[D

    add-int/lit8 v3, p1, 0x2

    iget-wide v4, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->c:D

    mul-double/2addr v4, v0

    aput-wide v4, v2, v3

    iget-wide v2, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->s:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->bulge:D

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->Vt:Lorg/ejml/data/DenseMatrix64F;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->Vt:Lorg/ejml/data/DenseMatrix64F;

    add-int/lit8 v2, p1, 0x1

    add-int/lit8 v3, p1, 0x2

    iget-wide v4, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->c:D

    iget-wide v6, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->s:D

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->updateRotator(Lorg/ejml/data/DenseMatrix64F;IIDD)V

    :cond_0
    return-void
.end method

.method public resetSteps()V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->steps:I

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->exceptionalThresh:I

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->nextExceptional:I

    iput v1, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->numExceptional:I

    return-void
.end method

.method public selectWilkinsonShift(D)D
    .locals 11

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->x2:I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->x1:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->diag:[D

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->x2:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    div-double v3, v0, p1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->off:[D

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->x2:I

    add-int/lit8 v1, v1, -0x2

    aget-wide v0, v0, v1

    div-double/2addr v0, p1

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->diag:[D

    iget v5, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->x2:I

    aget-wide v5, v2, v5

    div-double/2addr v5, p1

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->off:[D

    iget v7, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->x2:I

    add-int/lit8 v7, v7, -0x1

    aget-wide v7, v2, v7

    div-double/2addr v7, p1

    mul-double/2addr v0, v0

    mul-double v9, v3, v3

    add-double v1, v0, v9

    mul-double v9, v7, v7

    mul-double/2addr v5, v5

    add-double/2addr v5, v9

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->eigenSmall:Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;

    mul-double/2addr v3, v7

    invoke-virtual/range {v0 .. v6}, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->symm2x2_fast(DDD)V

    :goto_0
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->eigenSmall:Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;

    iget-object v0, v0, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->value0:Lorg/ejml/data/Complex64F;

    iget-wide v0, v0, Lorg/ejml/data/Complex64F;->real:D

    sub-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->eigenSmall:Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;

    iget-object v2, v2, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->value1:Lorg/ejml/data/Complex64F;

    iget-wide v2, v2, Lorg/ejml/data/Complex64F;->real:D

    sub-double/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->eigenSmall:Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;

    iget-object v0, v0, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->value0:Lorg/ejml/data/Complex64F;

    iget-wide v0, v0, Lorg/ejml/data/Complex64F;->real:D

    :goto_1
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->diag:[D

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->x2:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    div-double v3, v0, p1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->off:[D

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->x2:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    div-double v7, v0, p1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->diag:[D

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->x2:I

    aget-wide v0, v0, v1

    div-double v5, v0, p1

    mul-double v1, v3, v3

    mul-double v9, v7, v7

    mul-double/2addr v5, v5

    add-double/2addr v5, v9

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->eigenSmall:Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;

    mul-double/2addr v3, v7

    invoke-virtual/range {v0 .. v6}, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->symm2x2_fast(DDD)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->eigenSmall:Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;

    iget-object v0, v0, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->value1:Lorg/ejml/data/Complex64F;

    iget-wide v0, v0, Lorg/ejml/data/Complex64F;->real:D

    goto :goto_1
.end method

.method public setFastValues(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->fastValues:Z

    return-void
.end method

.method public setMatrix(II[D[D)V
    .locals 7

    invoke-virtual {p0, p1, p2}, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->initParam(II)V

    iput-object p3, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->diag:[D

    iput-object p4, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->off:[D

    const/4 v0, 0x0

    aget-wide v0, p3, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->maxValue:D

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->N:I

    if-ge v0, v1, :cond_2

    aget-wide v1, p3, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    add-int/lit8 v3, v0, -0x1

    aget-wide v3, p4, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    iget-wide v5, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->maxValue:D

    cmpl-double v5, v1, v5

    if-lez v5, :cond_0

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    iput-wide v1, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->maxValue:D

    :cond_0
    iget-wide v1, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->maxValue:D

    cmpl-double v1, v3, v1

    if-lez v1, :cond_1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    iput-wide v1, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->maxValue:D

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setMaxValue(D)V
    .locals 0

    iput-wide p1, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->maxValue:D

    return-void
.end method

.method public setSubmatrix(II)V
    .locals 0

    iput p1, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->x1:I

    iput p2, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->x2:I

    return-void
.end method

.method public setUt(Lorg/ejml/data/DenseMatrix64F;)V
    .locals 0

    iput-object p1, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->Ut:Lorg/ejml/data/DenseMatrix64F;

    return-void
.end method

.method public setVt(Lorg/ejml/data/DenseMatrix64F;)V
    .locals 0

    iput-object p1, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->Vt:Lorg/ejml/data/DenseMatrix64F;

    return-void
.end method

.method public swapDiag([D)[D
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->diag:[D

    iput-object p1, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->diag:[D

    return-object v0
.end method

.method public swapOff([D)[D
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->off:[D

    iput-object p1, p0, Lorg/ejml/alg/dense/decomposition/svd/implicitqr/SvdImplicitQrAlgorithm;->off:[D

    return-object v0
.end method

.method protected updateRotator(Lorg/ejml/data/DenseMatrix64F;IIDD)V
    .locals 13

    iget v2, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    mul-int v3, p2, v2

    iget v2, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    mul-int v2, v2, p3

    iget v4, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    add-int/2addr v4, v3

    :goto_0
    if-eq v3, v4, :cond_0

    invoke-virtual {p1, v3}, Lorg/ejml/data/DenseMatrix64F;->get(I)D

    move-result-wide v5

    invoke-virtual {p1, v2}, Lorg/ejml/data/DenseMatrix64F;->get(I)D

    move-result-wide v7

    mul-double v9, p4, v5

    mul-double v11, p6, v7

    add-double/2addr v9, v11

    invoke-virtual {p1, v3, v9, v10}, Lorg/ejml/data/DenseMatrix64F;->set(ID)D

    move-wide/from16 v0, p6

    neg-double v9, v0

    mul-double/2addr v5, v9

    mul-double v7, v7, p4

    add-double/2addr v5, v7

    invoke-virtual {p1, v2, v5, v6}, Lorg/ejml/data/DenseMatrix64F;->set(ID)D

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
