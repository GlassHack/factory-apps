.class public Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;
.super Ljava/lang/Object;


# instance fields
.field A:Lorg/ejml/data/DenseMatrix64F;

.field private N:I

.field public Q:Lorg/ejml/data/DenseMatrix64F;

.field private _temp:Lorg/ejml/data/DenseMatrix64F;

.field checkHessenberg:Z

.field private checkOrthogonal:Z

.field private checkUncountable:Z

.field public createR:Z

.field eigenvalues:[Lorg/ejml/data/Complex64F;

.field exceptionalThreshold:I

.field private gamma:D

.field lastExceptional:I

.field maxIterations:I

.field private normalize:Z

.field numEigen:I

.field numExceptional:I

.field numStepsFind:[I

.field private printHumps:Z

.field private rand:Ljava/util/Random;

.field steps:I

.field private temp:[D

.field private u:Lorg/ejml/data/DenseMatrix64F;

.field private useCareful2x2:Z

.field private useStandardEq:Z

.field private valueSmall:Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    const-wide/16 v1, 0x2342

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->rand:Ljava/util/Random;

    new-instance v0, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;

    invoke-direct {v0}, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;-><init>()V

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->valueSmall:Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;

    const/16 v0, 0x9

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->temp:[D

    iput-boolean v3, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->printHumps:Z

    iput-boolean v3, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->checkHessenberg:Z

    iput-boolean v3, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->checkOrthogonal:Z

    iput-boolean v3, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->checkUncountable:Z

    iput-boolean v3, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->useStandardEq:Z

    iput-boolean v4, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->useCareful2x2:Z

    iput-boolean v4, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->normalize:Z

    const/16 v0, 0x14

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->exceptionalThreshold:I

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->exceptionalThreshold:I

    mul-int/lit8 v0, v0, 0x14

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->maxIterations:I

    iput-boolean v4, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->createR:Z

    return-void
.end method

.method private addEigenvalue(D)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->numStepsFind:[I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->numEigen:I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->steps:I

    aput v2, v0, v1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->eigenvalues:[Lorg/ejml/data/Complex64F;

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->numEigen:I

    aget-object v0, v0, v1

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lorg/ejml/data/Complex64F;->set(DD)V

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->numEigen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->numEigen:I

    iput v3, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->steps:I

    iput v3, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->lastExceptional:I

    return-void
.end method

.method private addEigenvalue(DD)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->numStepsFind:[I

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->numEigen:I

    iget v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->steps:I

    aput v2, v0, v1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->eigenvalues:[Lorg/ejml/data/Complex64F;

    iget v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->numEigen:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/ejml/data/Complex64F;->set(DD)V

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->numEigen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->numEigen:I

    iput v3, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->steps:I

    iput v3, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->lastExceptional:I

    return-void
.end method

.method private performImplicitDoubleStep(IIDDD)V
    .locals 11

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p3

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    invoke-virtual/range {v0 .. v10}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->bulgeDoubleStepQn(IDDDDZ)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->Q:Lorg/ejml/data/DenseMatrix64F;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->Q:Lorg/ejml/data/DenseMatrix64F;

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->u:Lorg/ejml/data/DenseMatrix64F;

    iget-object v1, v1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget-wide v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->gamma:D

    const/4 v4, 0x0

    add-int/lit8 v6, p1, 0x3

    iget-object v5, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->_temp:Lorg/ejml/data/DenseMatrix64F;

    iget-object v7, v5, Lorg/ejml/data/DenseMatrix64F;->data:[D

    move v5, p1

    invoke-static/range {v0 .. v7}, Lorg/ejml/alg/dense/decomposition/qr/QrHelperFunctions;->rank1UpdateMultR(Lorg/ejml/data/DenseMatrix64F;[DDIII[D)V

    iget-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->checkOrthogonal:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->Q:Lorg/ejml/data/DenseMatrix64F;

    const-wide v1, 0x3e45798ee2308c3aL    # 1.0E-8

    invoke-static {v0, v1, v2}, Lorg/ejml/ops/MatrixFeatures;->isOrthogonal(Lorg/ejml/data/DenseMatrix64F;D)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->u:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v0}, Lorg/ejml/data/DenseMatrix64F;->print()V

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->Q:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v0}, Lorg/ejml/data/DenseMatrix64F;->print()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Bad"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->printHumps:Z

    if-eqz v0, :cond_3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Applied first Q matrix, it should be humped now. A = "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    const-string v1, "%12.3e"

    invoke-virtual {v0, v1}, Lorg/ejml/data/DenseMatrix64F;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Pushing the hump off the matrix."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    :goto_0
    add-int/lit8 v0, p2, -0x2

    if-ge p1, v0, :cond_6

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->bulgeDoubleStepQn(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->Q:Lorg/ejml/data/DenseMatrix64F;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->Q:Lorg/ejml/data/DenseMatrix64F;

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->u:Lorg/ejml/data/DenseMatrix64F;

    iget-object v1, v1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget-wide v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->gamma:D

    const/4 v4, 0x0

    add-int/lit8 v5, p1, 0x1

    add-int/lit8 v6, p1, 0x4

    iget-object v7, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->_temp:Lorg/ejml/data/DenseMatrix64F;

    iget-object v7, v7, Lorg/ejml/data/DenseMatrix64F;->data:[D

    invoke-static/range {v0 .. v7}, Lorg/ejml/alg/dense/decomposition/qr/QrHelperFunctions;->rank1UpdateMultR(Lorg/ejml/data/DenseMatrix64F;[DDIII[D)V

    iget-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->checkOrthogonal:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->Q:Lorg/ejml/data/DenseMatrix64F;

    const-wide v1, 0x3e45798ee2308c3aL    # 1.0E-8

    invoke-static {v0, v1, v2}, Lorg/ejml/ops/MatrixFeatures;->isOrthogonal(Lorg/ejml/data/DenseMatrix64F;D)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Bad"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->printHumps:Z

    if-eqz v0, :cond_5

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "i = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " A = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    const-string v1, "%12.3e"

    invoke-virtual {v0, v1}, Lorg/ejml/data/DenseMatrix64F;->print(Ljava/lang/String;)V

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_6
    iget-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->printHumps:Z

    if-eqz v0, :cond_7

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "removing last bump"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_7
    add-int/lit8 v0, p2, -0x2

    if-ltz v0, :cond_8

    add-int/lit8 v0, p2, -0x2

    invoke-virtual {p0, v0}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->bulgeSingleStepQn(I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->Q:Lorg/ejml/data/DenseMatrix64F;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->Q:Lorg/ejml/data/DenseMatrix64F;

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->u:Lorg/ejml/data/DenseMatrix64F;

    iget-object v1, v1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget-wide v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->gamma:D

    const/4 v4, 0x0

    add-int/lit8 v5, p2, -0x1

    add-int/lit8 v6, p2, 0x1

    iget-object v7, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->_temp:Lorg/ejml/data/DenseMatrix64F;

    iget-object v7, v7, Lorg/ejml/data/DenseMatrix64F;->data:[D

    invoke-static/range {v0 .. v7}, Lorg/ejml/alg/dense/decomposition/qr/QrHelperFunctions;->rank1UpdateMultR(Lorg/ejml/data/DenseMatrix64F;[DDIII[D)V

    iget-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->checkOrthogonal:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->Q:Lorg/ejml/data/DenseMatrix64F;

    const-wide v1, 0x3e45798ee2308c3aL    # 1.0E-8

    invoke-static {v0, v1, v2}, Lorg/ejml/ops/MatrixFeatures;->isOrthogonal(Lorg/ejml/data/DenseMatrix64F;D)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Bad"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->printHumps:Z

    if-eqz v0, :cond_9

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " A = "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    const-string v1, "%12.3e"

    invoke-virtual {v0, v1}, Lorg/ejml/data/DenseMatrix64F;->print(Ljava/lang/String;)V

    :cond_9
    iget-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->checkHessenberg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    const/4 v1, 0x1

    const-wide v2, 0x3d719799812dea11L    # 1.0E-12

    invoke-static {v0, v1, v2, v3}, Lorg/ejml/ops/MatrixFeatures;->isUpperTriangle(Lorg/ejml/data/DenseMatrix64F;ID)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    const-string v1, "%12.3e"

    invoke-virtual {v0, v1}, Lorg/ejml/data/DenseMatrix64F;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Bad matrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addComputedEigen2x2(II)V
    .locals 9

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v0, p1, p1}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v0, p1, p2}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v3

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v0, p2, p1}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v5

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v0, p2, p2}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->eigen2by2_scale(DDDD)V

    iget-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->checkUncountable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->valueSmall:Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;

    iget-object v0, v0, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->value0:Lorg/ejml/data/Complex64F;

    iget-wide v0, v0, Lorg/ejml/data/Complex64F;->real:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->valueSmall:Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;

    iget-object v0, v0, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->value1:Lorg/ejml/data/Complex64F;

    iget-wide v0, v0, Lorg/ejml/data/Complex64F;->real:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Uncountable"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->valueSmall:Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;

    iget-object v0, v0, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->value0:Lorg/ejml/data/Complex64F;

    iget-wide v0, v0, Lorg/ejml/data/Complex64F;->real:D

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->valueSmall:Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;

    iget-object v2, v2, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->value0:Lorg/ejml/data/Complex64F;

    iget-wide v2, v2, Lorg/ejml/data/Complex64F;->imaginary:D

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->addEigenvalue(DD)V

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->valueSmall:Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;

    iget-object v0, v0, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->value1:Lorg/ejml/data/Complex64F;

    iget-wide v0, v0, Lorg/ejml/data/Complex64F;->real:D

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->valueSmall:Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;

    iget-object v2, v2, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->value1:Lorg/ejml/data/Complex64F;

    iget-wide v2, v2, Lorg/ejml/data/Complex64F;->imaginary:D

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->addEigenvalue(DD)V

    return-void
.end method

.method public addEigenAt(I)V
    .locals 2

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v0, p1, p1}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->addEigenvalue(D)V

    return-void
.end method

.method public bulgeDoubleStepQn(I)Z
    .locals 11

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v2

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1, p1}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v4

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    add-int/lit8 v1, p1, 0x3

    invoke-virtual {v0, v1, p1}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v6

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v0, p1, p1}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    sget-wide v8, Lorg/ejml/UtilEjml;->EPS:D

    mul-double/2addr v8, v0

    add-int/lit8 v1, p1, 0x1

    const/4 v10, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->bulgeDoubleStepQn(IDDDDZ)Z

    move-result v0

    return v0
.end method

.method public bulgeDoubleStepQn(IDDDDZ)Z
    .locals 12

    iget-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->normalize:Z

    if-eqz v0, :cond_5

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static/range {p6 .. p7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double v6, v2, v4

    if-lez v6, :cond_1

    :goto_0
    cmpl-double v4, v0, v2

    if-lez v4, :cond_8

    :goto_1
    cmpg-double v2, v0, p8

    if-gtz v2, :cond_2

    if-eqz p10, :cond_0

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    add-int/lit8 v1, p1, -0x1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    add-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, p1, -0x1

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    add-int/lit8 v1, p1, 0x2

    add-int/lit8 v2, p1, -0x1

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    :cond_0
    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_1
    move-wide v2, v4

    goto :goto_0

    :cond_2
    div-double/2addr p2, v0

    div-double p4, p4, v0

    div-double p6, p6, v0

    move-wide v8, v0

    :goto_3
    mul-double v0, p2, p2

    mul-double v2, p4, p4

    add-double/2addr v0, v2

    mul-double v2, p6, p6

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v2, p2, v2

    if-gez v2, :cond_7

    neg-double v0, v0

    move-wide v10, v0

    :goto_4
    add-double v0, p2, v10

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->u:Lorg/ejml/data/DenseMatrix64F;

    const/4 v3, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v2, p1, v3, v4, v5}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->u:Lorg/ejml/data/DenseMatrix64F;

    add-int/lit8 v3, p1, 0x1

    const/4 v4, 0x0

    div-double v5, p4, v0

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->u:Lorg/ejml/data/DenseMatrix64F;

    add-int/lit8 v3, p1, 0x2

    const/4 v4, 0x0

    div-double v5, p6, v0

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    div-double/2addr v0, v10

    iput-wide v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->gamma:D

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->u:Lorg/ejml/data/DenseMatrix64F;

    iget-object v1, v1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget-wide v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->gamma:D

    const/4 v4, 0x0

    add-int/lit8 v6, p1, 0x3

    iget-object v5, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->_temp:Lorg/ejml/data/DenseMatrix64F;

    iget-object v7, v5, Lorg/ejml/data/DenseMatrix64F;->data:[D

    move v5, p1

    invoke-static/range {v0 .. v7}, Lorg/ejml/alg/dense/decomposition/qr/QrHelperFunctions;->rank1UpdateMultR(Lorg/ejml/data/DenseMatrix64F;[DDIII[D)V

    if-eqz p10, :cond_3

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    add-int/lit8 v1, p1, -0x1

    neg-double v2, v8

    mul-double/2addr v2, v10

    invoke-virtual {v0, p1, v1, v2, v3}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    add-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, p1, -0x1

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    add-int/lit8 v1, p1, 0x2

    add-int/lit8 v2, p1, -0x1

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    :cond_3
    iget-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->printHumps:Z

    if-eqz v0, :cond_4

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  After Q.   A ="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v0}, Lorg/ejml/data/DenseMatrix64F;->print()V

    :cond_4
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->u:Lorg/ejml/data/DenseMatrix64F;

    iget-object v1, v1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget-wide v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->gamma:D

    const/4 v4, 0x0

    add-int/lit8 v6, p1, 0x3

    move v5, p1

    invoke-static/range {v0 .. v6}, Lorg/ejml/alg/dense/decomposition/qr/QrHelperFunctions;->rank1UpdateMultL(Lorg/ejml/data/DenseMatrix64F;[DDIII)V

    iget-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->checkUncountable:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v0}, Lorg/ejml/ops/MatrixFeatures;->hasUncountable(Lorg/ejml/data/D1Matrix64F;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "bad matrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    move-wide v8, v0

    goto/16 :goto_3

    :cond_6
    const/4 v0, 0x1

    goto/16 :goto_2

    :cond_7
    move-wide v10, v0

    goto/16 :goto_4

    :cond_8
    move-wide v0, v2

    goto/16 :goto_1
.end method

.method public bulgeSingleStepQn(I)Z
    .locals 9

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v2

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1, p1}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v4

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v0, p1, p1}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    sget-wide v6, Lorg/ejml/UtilEjml;->EPS:D

    mul-double/2addr v6, v0

    add-int/lit8 v1, p1, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->bulgeSingleStepQn(IDDDZ)Z

    move-result v0

    return v0
.end method

.method public bulgeSingleStepQn(IDDDZ)Z
    .locals 12

    iget-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->normalize:Z

    if-eqz v0, :cond_4

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    :cond_0
    cmpg-double v2, v0, p6

    if-gtz v2, :cond_2

    if-eqz p8, :cond_1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    add-int/lit8 v1, p1, -0x1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    add-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, p1, -0x1

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    div-double/2addr p2, v0

    div-double p4, p4, v0

    move-wide v8, v0

    :goto_1
    mul-double v0, p2, p2

    mul-double v2, p4, p4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v2, p2, v2

    if-gez v2, :cond_6

    neg-double v0, v0

    move-wide v10, v0

    :goto_2
    add-double v0, p2, v10

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->u:Lorg/ejml/data/DenseMatrix64F;

    const/4 v3, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v2, p1, v3, v4, v5}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->u:Lorg/ejml/data/DenseMatrix64F;

    add-int/lit8 v3, p1, 0x1

    const/4 v4, 0x0

    div-double v5, p4, v0

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    div-double/2addr v0, v10

    iput-wide v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->gamma:D

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->u:Lorg/ejml/data/DenseMatrix64F;

    iget-object v1, v1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget-wide v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->gamma:D

    const/4 v4, 0x0

    add-int/lit8 v6, p1, 0x2

    iget-object v5, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->_temp:Lorg/ejml/data/DenseMatrix64F;

    iget-object v7, v5, Lorg/ejml/data/DenseMatrix64F;->data:[D

    move v5, p1

    invoke-static/range {v0 .. v7}, Lorg/ejml/alg/dense/decomposition/qr/QrHelperFunctions;->rank1UpdateMultR(Lorg/ejml/data/DenseMatrix64F;[DDIII[D)V

    if-eqz p8, :cond_3

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    add-int/lit8 v1, p1, -0x1

    neg-double v2, v8

    mul-double/2addr v2, v10

    invoke-virtual {v0, p1, v1, v2, v3}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    add-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, p1, -0x1

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    :cond_3
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->u:Lorg/ejml/data/DenseMatrix64F;

    iget-object v1, v1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget-wide v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->gamma:D

    const/4 v4, 0x0

    add-int/lit8 v6, p1, 0x2

    move v5, p1

    invoke-static/range {v0 .. v6}, Lorg/ejml/alg/dense/decomposition/qr/QrHelperFunctions;->rank1UpdateMultL(Lorg/ejml/data/DenseMatrix64F;[DDIII)V

    iget-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->checkUncountable:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v0}, Lorg/ejml/ops/MatrixFeatures;->hasUncountable(Lorg/ejml/data/D1Matrix64F;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "bad matrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    move-wide v8, v0

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    move-wide v10, v0

    goto :goto_2
.end method

.method public createBulgeSingleStep(ID)Z
    .locals 9

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v0, p1, p1}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v0

    sub-double v2, v0, p2

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v4

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v0, p1, p1}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    sget-wide v6, Lorg/ejml/UtilEjml;->EPS:D

    mul-double/2addr v6, v0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v8}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->bulgeSingleStepQn(IDDDZ)Z

    move-result v0

    return v0
.end method

.method public eigen2by2_scale(DDDD)V
    .locals 11

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static/range {p7 .. p8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double v8, v4, v6

    if-lez v8, :cond_0

    :goto_0
    cmpg-double v6, v4, v2

    if-gez v6, :cond_4

    :goto_1
    cmpg-double v4, v2, v0

    if-gez v4, :cond_3

    move-wide v9, v0

    :goto_2
    const-wide/16 v0, 0x0

    cmpl-double v0, v9, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->valueSmall:Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;

    iget-object v0, v0, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->value0:Lorg/ejml/data/Complex64F;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lorg/ejml/data/Complex64F;->real:D

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->valueSmall:Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;

    iget-object v0, v0, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->value0:Lorg/ejml/data/Complex64F;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lorg/ejml/data/Complex64F;->imaginary:D

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->valueSmall:Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;

    iget-object v0, v0, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->value1:Lorg/ejml/data/Complex64F;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lorg/ejml/data/Complex64F;->real:D

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->valueSmall:Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;

    iget-object v0, v0, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->value1:Lorg/ejml/data/Complex64F;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lorg/ejml/data/Complex64F;->imaginary:D

    :goto_3
    return-void

    :cond_0
    move-wide v4, v6

    goto :goto_0

    :cond_1
    div-double v3, p3, v9

    div-double v5, p5, v9

    div-double v1, p1, v9

    div-double v7, p7, v9

    iget-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->useCareful2x2:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->valueSmall:Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;

    invoke-virtual/range {v0 .. v8}, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->value2x2(DDDD)V

    :goto_4
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->valueSmall:Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;

    iget-object v0, v0, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->value0:Lorg/ejml/data/Complex64F;

    iget-wide v1, v0, Lorg/ejml/data/Complex64F;->real:D

    mul-double/2addr v1, v9

    iput-wide v1, v0, Lorg/ejml/data/Complex64F;->real:D

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->valueSmall:Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;

    iget-object v0, v0, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->value0:Lorg/ejml/data/Complex64F;

    iget-wide v1, v0, Lorg/ejml/data/Complex64F;->imaginary:D

    mul-double/2addr v1, v9

    iput-wide v1, v0, Lorg/ejml/data/Complex64F;->imaginary:D

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->valueSmall:Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;

    iget-object v0, v0, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->value1:Lorg/ejml/data/Complex64F;

    iget-wide v1, v0, Lorg/ejml/data/Complex64F;->real:D

    mul-double/2addr v1, v9

    iput-wide v1, v0, Lorg/ejml/data/Complex64F;->real:D

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->valueSmall:Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;

    iget-object v0, v0, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->value1:Lorg/ejml/data/Complex64F;

    iget-wide v1, v0, Lorg/ejml/data/Complex64F;->imaginary:D

    mul-double/2addr v1, v9

    iput-wide v1, v0, Lorg/ejml/data/Complex64F;->imaginary:D

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->valueSmall:Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;

    invoke-virtual/range {v0 .. v8}, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->value2x2_fast(DDDD)V

    goto :goto_4

    :cond_3
    move-wide v9, v2

    goto :goto_2

    :cond_4
    move-wide v2, v4

    goto :goto_1
.end method

.method public exceptionalShift(II)V
    .locals 10

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->printHumps:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Performing exceptional implicit double step"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v0, p2, p2}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmpl-double v4, v0, v4

    if-nez v4, :cond_1

    move-wide v0, v2

    :cond_1
    iget v4, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->numExceptional:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->numExceptional:I

    const-wide v4, 0x3fb999999999999aL    # 0.1

    iget v6, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->numExceptional:I

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-double v4, v2, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    sub-double/2addr v2, v4

    mul-double/2addr v2, v6

    iget-object v6, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->rand:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextDouble()D

    move-result-wide v6

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v6, v8

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    mul-double/2addr v0, v2

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->rand:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextBoolean()Z

    move-result v2

    if-eqz v2, :cond_2

    neg-double v0, v0

    :cond_2
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->performImplicitSingleStep(IID)V

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->steps:I

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->lastExceptional:I

    return-void
.end method

.method public getEigenvalues()[Lorg/ejml/data/Complex64F;
    .locals 1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->eigenvalues:[Lorg/ejml/data/Complex64F;

    return-object v0
.end method

.method public getNumberOfEigenvalues()I
    .locals 1

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->numEigen:I

    return v0
.end method

.method public implicitDoubleStep(II)V
    .locals 29

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->printHumps:Z

    if-eqz v2, :cond_0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Performing implicit double step"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p2, -0x1

    invoke-virtual {v2, v3, v4}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v21

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    add-int/lit8 v3, p2, -0x1

    move/from16 v0, p2

    invoke-virtual {v2, v3, v0}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    add-int/lit8 v3, p2, -0x1

    move/from16 v0, p2

    invoke-virtual {v2, v0, v3}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    move/from16 v0, p2

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    move/from16 v0, p1

    move/from16 v1, p1

    invoke-virtual {v2, v0, v1}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    add-int/lit8 v3, p1, 0x1

    move/from16 v0, p1

    invoke-virtual {v2, v3, v0}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    add-int/lit8 v3, p1, 0x1

    move/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    add-int/lit8 v3, p1, 0x2

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->normalize:Z

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->temp:[D

    const/4 v3, 0x0

    aput-wide v13, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->temp:[D

    const/4 v3, 0x1

    aput-wide v11, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->temp:[D

    const/4 v3, 0x2

    aput-wide v9, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->temp:[D

    const/4 v3, 0x3

    aput-wide v7, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->temp:[D

    const/4 v3, 0x4

    aput-wide v5, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->temp:[D

    const/4 v3, 0x5

    aput-wide v21, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->temp:[D

    const/4 v3, 0x6

    aput-wide v15, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->temp:[D

    const/4 v3, 0x7

    aput-wide v19, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->temp:[D

    const/16 v3, 0x8

    aput-wide v17, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->temp:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->temp:[D

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v2, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->temp:[D

    move-object/from16 v23, v0

    aget-wide v23, v23, v2

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->abs(D)D

    move-result-wide v23

    cmpl-double v23, v23, v3

    if-lez v23, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->temp:[D

    aget-wide v3, v3, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    div-double/2addr v13, v3

    div-double/2addr v11, v3

    div-double/2addr v9, v3

    div-double/2addr v7, v3

    div-double/2addr v5, v3

    div-double v21, v21, v3

    div-double/2addr v15, v3

    div-double v19, v19, v3

    div-double v2, v17, v3

    move-wide/from16 v25, v5

    move-wide v4, v7

    move-wide v6, v9

    move-wide v8, v11

    move-wide v10, v13

    move-wide v12, v15

    move-wide v14, v2

    move-wide/from16 v16, v19

    move-wide/from16 v2, v25

    move-wide/from16 v18, v21

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->useStandardEq:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    sub-double v20, v10, v18

    sub-double v22, v10, v12

    mul-double v20, v20, v22

    mul-double v14, v14, v16

    sub-double v14, v20, v14

    div-double v8, v14, v8

    add-double v14, v8, v6

    add-double/2addr v4, v10

    sub-double v4, v4, v18

    sub-double v7, v4, v12

    move-wide v9, v2

    move-wide v5, v14

    :goto_2
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-direct/range {v2 .. v10}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->performImplicitDoubleStep(IIDDD)V

    return-void

    :cond_3
    sub-double v20, v10, v18

    sub-double v22, v10, v12

    mul-double v20, v20, v22

    mul-double v14, v14, v16

    sub-double v14, v20, v14

    mul-double/2addr v6, v8

    add-double/2addr v6, v14

    add-double/2addr v4, v10

    sub-double v4, v4, v18

    sub-double/2addr v4, v12

    mul-double/2addr v4, v8

    mul-double v9, v2, v8

    move-wide/from16 v25, v4

    move-wide/from16 v27, v6

    move-wide/from16 v5, v27

    move-wide/from16 v7, v25

    goto :goto_2

    :cond_4
    move-wide v2, v5

    move-wide v4, v7

    move-wide v6, v9

    move-wide v8, v11

    move-wide v10, v13

    move-wide v12, v15

    move-wide/from16 v14, v17

    move-wide/from16 v16, v19

    move-wide/from16 v18, v21

    goto :goto_1
.end method

.method public incrementSteps()V
    .locals 1

    iget v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->steps:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->steps:I

    return-void
.end method

.method public isReal2x2(II)Z
    .locals 9

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v0, p1, p1}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v1

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v0, p1, p2}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v3

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v0, p2, p1}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v5

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v0, p2, p2}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->eigen2by2_scale(DDDD)V

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->valueSmall:Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;

    iget-object v0, v0, Lorg/ejml/alg/dense/decomposition/eig/EigenvalueSmall;->value0:Lorg/ejml/data/Complex64F;

    invoke-virtual {v0}, Lorg/ejml/data/Complex64F;->isReal()Z

    move-result v0

    return v0
.end method

.method public isZero(II)Z
    .locals 10

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v0, p1, p2}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3, p2}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    iget-object v4, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    add-int/lit8 v5, p2, 0x1

    invoke-virtual {v4, p1, v5}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    sget-wide v8, Lorg/ejml/UtilEjml;->EPS:D

    mul-double/2addr v6, v8

    add-double/2addr v2, v4

    mul-double/2addr v2, v6

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performImplicitDoubleStep(IIDD)V
    .locals 21

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    move/from16 v0, p1

    move/from16 v1, p1

    invoke-virtual {v2, v0, v1}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    add-int/lit8 v5, p1, 0x1

    move/from16 v0, p1

    invoke-virtual {v4, v5, v0}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v11

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    add-int/lit8 v5, p1, 0x1

    move/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    add-int/lit8 v7, p1, 0x1

    add-int/lit8 v8, p1, 0x1

    invoke-virtual {v6, v7, v8}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    add-int/lit8 v9, p1, 0x2

    add-int/lit8 v10, p1, 0x1

    invoke-virtual {v6, v9, v10}, Lorg/ejml/data/DenseMatrix64F;->get(II)D

    move-result-wide v9

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    mul-double v13, v13, p3

    mul-double v15, p3, p3

    mul-double v17, p5, p5

    add-double v15, v15, v17

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->useStandardEq:Z

    if-eqz v6, :cond_0

    mul-double v17, v2, v2

    mul-double v19, v13, v2

    sub-double v17, v17, v19

    add-double v15, v15, v17

    div-double v11, v15, v11

    add-double v5, v11, v4

    add-double/2addr v2, v7

    sub-double v7, v2, v13

    :goto_0
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-direct/range {v2 .. v10}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->performImplicitDoubleStep(IIDDD)V

    return-void

    :cond_0
    mul-double v17, v2, v2

    mul-double v19, v13, v2

    sub-double v17, v17, v19

    add-double v15, v15, v17

    mul-double/2addr v4, v11

    add-double v5, v15, v4

    add-double/2addr v2, v7

    sub-double/2addr v2, v13

    mul-double v7, v2, v11

    mul-double/2addr v9, v11

    goto :goto_0
.end method

.method public performImplicitSingleStep(IID)V
    .locals 10

    const/4 v4, 0x0

    const-wide v8, 0x3e45798ee2308c3aL    # 1.0E-8

    invoke-virtual {p0, p1, p3, p4}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->createBulgeSingleStep(ID)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->Q:Lorg/ejml/data/DenseMatrix64F;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->Q:Lorg/ejml/data/DenseMatrix64F;

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->u:Lorg/ejml/data/DenseMatrix64F;

    iget-object v1, v1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget-wide v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->gamma:D

    add-int/lit8 v6, p1, 0x2

    iget-object v5, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->_temp:Lorg/ejml/data/DenseMatrix64F;

    iget-object v7, v5, Lorg/ejml/data/DenseMatrix64F;->data:[D

    move v5, p1

    invoke-static/range {v0 .. v7}, Lorg/ejml/alg/dense/decomposition/qr/QrHelperFunctions;->rank1UpdateMultR(Lorg/ejml/data/DenseMatrix64F;[DDIII[D)V

    iget-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->checkOrthogonal:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->Q:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v0, v8, v9}, Lorg/ejml/ops/MatrixFeatures;->isOrthogonal(Lorg/ejml/data/DenseMatrix64F;D)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Bad"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->printHumps:Z

    if-eqz v0, :cond_3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Applied first Q matrix, it should be humped now. A = "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    const-string v1, "%12.3e"

    invoke-virtual {v0, v1}, Lorg/ejml/data/DenseMatrix64F;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Pushing the hump off the matrix."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    :goto_0
    add-int/lit8 v0, p2, -0x1

    if-ge p1, v0, :cond_6

    invoke-virtual {p0, p1}, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->bulgeSingleStepQn(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->Q:Lorg/ejml/data/DenseMatrix64F;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->Q:Lorg/ejml/data/DenseMatrix64F;

    iget-object v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->u:Lorg/ejml/data/DenseMatrix64F;

    iget-object v1, v1, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget-wide v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->gamma:D

    add-int/lit8 v5, p1, 0x1

    add-int/lit8 v6, p1, 0x3

    iget-object v7, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->_temp:Lorg/ejml/data/DenseMatrix64F;

    iget-object v7, v7, Lorg/ejml/data/DenseMatrix64F;->data:[D

    invoke-static/range {v0 .. v7}, Lorg/ejml/alg/dense/decomposition/qr/QrHelperFunctions;->rank1UpdateMultR(Lorg/ejml/data/DenseMatrix64F;[DDIII[D)V

    iget-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->checkOrthogonal:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->Q:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v0, v8, v9}, Lorg/ejml/ops/MatrixFeatures;->isOrthogonal(Lorg/ejml/data/DenseMatrix64F;D)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Bad"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->printHumps:Z

    if-eqz v0, :cond_5

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "i = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " A = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    const-string v1, "%12.3e"

    invoke-virtual {v0, v1}, Lorg/ejml/data/DenseMatrix64F;->print(Ljava/lang/String;)V

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_6
    iget-boolean v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->checkHessenberg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    const/4 v1, 0x1

    const-wide v2, 0x3d719799812dea11L    # 1.0E-12

    invoke-static {v0, v1, v2, v3}, Lorg/ejml/ops/MatrixFeatures;->isUpperTriangle(Lorg/ejml/data/DenseMatrix64F;ID)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    const-string v1, "%12.3e"

    invoke-virtual {v0, v1}, Lorg/ejml/data/DenseMatrix64F;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Bad matrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public printSteps()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->N:I

    if-ge v0, v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Step["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->numStepsFind:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setChecks(ZZZ)V
    .locals 0

    iput-boolean p1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->checkHessenberg:Z

    iput-boolean p2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->checkOrthogonal:Z

    iput-boolean p3, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->checkUncountable:Z

    return-void
.end method

.method public setQ(Lorg/ejml/data/DenseMatrix64F;)V
    .locals 0

    iput-object p1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->Q:Lorg/ejml/data/DenseMatrix64F;

    return-void
.end method

.method public setup(Lorg/ejml/data/DenseMatrix64F;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iget v2, p1, Lorg/ejml/data/DenseMatrix64F;->numCols:I

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must be square"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->N:I

    iget v2, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    if-eq v0, v2, :cond_1

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    iput v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->N:I

    invoke-virtual {p1}, Lorg/ejml/data/DenseMatrix64F;->copy()Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    iget v2, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    invoke-direct {v0, v2, v3}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->u:Lorg/ejml/data/DenseMatrix64F;

    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    iget v2, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    invoke-direct {v0, v2, v3}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->_temp:Lorg/ejml/data/DenseMatrix64F;

    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->numStepsFind:[I

    :goto_0
    const/4 v0, 0x2

    :goto_1
    iget v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->N:I

    if-ge v0, v2, :cond_3

    move v2, v1

    :goto_2
    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v0, v2, v4, v5}, Lorg/ejml/data/DenseMatrix64F;->set(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->A:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v0, p1}, Lorg/ejml/data/DenseMatrix64F;->set(Lorg/ejml/data/D1Matrix64F;)V

    iget-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->numStepsFind:[I

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->numStepsFind:[I

    array-length v2, v2

    invoke-static {v0, v1, v2}, Lorg/ejml/UtilEjml;->memset([III)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget v0, p1, Lorg/ejml/data/DenseMatrix64F;->numRows:I

    new-array v0, v0, [Lorg/ejml/data/Complex64F;

    iput-object v0, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->eigenvalues:[Lorg/ejml/data/Complex64F;

    move v0, v1

    :goto_3
    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->eigenvalues:[Lorg/ejml/data/Complex64F;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->eigenvalues:[Lorg/ejml/data/Complex64F;

    new-instance v3, Lorg/ejml/data/Complex64F;

    invoke-direct {v3}, Lorg/ejml/data/Complex64F;-><init>()V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    iput v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->numEigen:I

    iput v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->lastExceptional:I

    iput v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->numExceptional:I

    iput v1, p0, Lorg/ejml/alg/dense/decomposition/eig/watched/WatchedDoubleStepQREigen;->steps:I

    return-void
.end method
