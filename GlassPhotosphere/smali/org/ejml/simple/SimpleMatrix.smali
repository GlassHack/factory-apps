.class public Lorg/ejml/simple/SimpleMatrix;
.super Lorg/ejml/simple/SimpleBase;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ejml/simple/SimpleBase",
        "<",
        "Lorg/ejml/simple/SimpleMatrix;",
        ">;"
    }
.end annotation


# static fields
.field public static final END:I = 0x7fffffff


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/ejml/simple/SimpleBase;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Lorg/ejml/simple/SimpleBase;-><init>()V

    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v0, p1, p2}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/simple/SimpleMatrix;->mat:Lorg/ejml/data/DenseMatrix64F;

    return-void
.end method

.method public varargs constructor <init>(IIZ[D)V
    .locals 1

    invoke-direct {p0}, Lorg/ejml/simple/SimpleBase;-><init>()V

    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/ejml/data/DenseMatrix64F;-><init>(IIZ[D)V

    iput-object v0, p0, Lorg/ejml/simple/SimpleMatrix;->mat:Lorg/ejml/data/DenseMatrix64F;

    return-void
.end method

.method public constructor <init>(Lorg/ejml/data/DenseMatrix64F;)V
    .locals 1

    invoke-direct {p0}, Lorg/ejml/simple/SimpleBase;-><init>()V

    invoke-virtual {p1}, Lorg/ejml/data/DenseMatrix64F;->copy()Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/simple/SimpleMatrix;->mat:Lorg/ejml/data/DenseMatrix64F;

    return-void
.end method

.method public constructor <init>(Lorg/ejml/data/Matrix64F;)V
    .locals 3

    invoke-direct {p0}, Lorg/ejml/simple/SimpleBase;-><init>()V

    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    iget v1, p1, Lorg/ejml/data/Matrix64F;->numRows:I

    iget v2, p1, Lorg/ejml/data/Matrix64F;->numCols:I

    invoke-direct {v0, v1, v2}, Lorg/ejml/data/DenseMatrix64F;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/simple/SimpleMatrix;->mat:Lorg/ejml/data/DenseMatrix64F;

    iget-object v0, p0, Lorg/ejml/simple/SimpleMatrix;->mat:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {p1, v0}, Lorg/ejml/alg/generic/GenericMatrixOps;->copy(Lorg/ejml/data/Matrix64F;Lorg/ejml/data/Matrix64F;)V

    return-void
.end method

.method public constructor <init>(Lorg/ejml/simple/SimpleMatrix;)V
    .locals 1

    invoke-direct {p0}, Lorg/ejml/simple/SimpleBase;-><init>()V

    iget-object v0, p1, Lorg/ejml/simple/SimpleMatrix;->mat:Lorg/ejml/data/DenseMatrix64F;

    invoke-virtual {v0}, Lorg/ejml/data/DenseMatrix64F;->copy()Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/simple/SimpleMatrix;->mat:Lorg/ejml/data/DenseMatrix64F;

    return-void
.end method

.method public constructor <init>([[D)V
    .locals 1

    invoke-direct {p0}, Lorg/ejml/simple/SimpleBase;-><init>()V

    new-instance v0, Lorg/ejml/data/DenseMatrix64F;

    invoke-direct {v0, p1}, Lorg/ejml/data/DenseMatrix64F;-><init>([[D)V

    iput-object v0, p0, Lorg/ejml/simple/SimpleMatrix;->mat:Lorg/ejml/data/DenseMatrix64F;

    return-void
.end method

.method public static varargs diag([D)Lorg/ejml/simple/SimpleMatrix;
    .locals 1

    invoke-static {p0}, Lorg/ejml/ops/CommonOps;->diag([D)Lorg/ejml/data/DenseMatrix64F;

    move-result-object v0

    invoke-static {v0}, Lorg/ejml/simple/SimpleMatrix;->wrap(Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/simple/SimpleMatrix;

    move-result-object v0

    return-object v0
.end method

.method public static identity(I)Lorg/ejml/simple/SimpleMatrix;
    .locals 2

    new-instance v0, Lorg/ejml/simple/SimpleMatrix;

    invoke-direct {v0, p0, p0}, Lorg/ejml/simple/SimpleMatrix;-><init>(II)V

    iget-object v1, v0, Lorg/ejml/simple/SimpleMatrix;->mat:Lorg/ejml/data/DenseMatrix64F;

    invoke-static {v1}, Lorg/ejml/ops/CommonOps;->setIdentity(Lorg/ejml/data/RowD1Matrix64F;)V

    return-object v0
.end method

.method public static random(IIDDLjava/util/Random;)Lorg/ejml/simple/SimpleMatrix;
    .locals 7

    new-instance v6, Lorg/ejml/simple/SimpleMatrix;

    invoke-direct {v6, p0, p1}, Lorg/ejml/simple/SimpleMatrix;-><init>(II)V

    iget-object v0, v6, Lorg/ejml/simple/SimpleMatrix;->mat:Lorg/ejml/data/DenseMatrix64F;

    move-wide v1, p2

    move-wide v3, p4

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lorg/ejml/ops/RandomMatrices;->setRandom(Lorg/ejml/data/D1Matrix64F;DDLjava/util/Random;)V

    return-object v6
.end method

.method public static wrap(Lorg/ejml/data/DenseMatrix64F;)Lorg/ejml/simple/SimpleMatrix;
    .locals 1

    new-instance v0, Lorg/ejml/simple/SimpleMatrix;

    invoke-direct {v0}, Lorg/ejml/simple/SimpleMatrix;-><init>()V

    iput-object p0, v0, Lorg/ejml/simple/SimpleMatrix;->mat:Lorg/ejml/data/DenseMatrix64F;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic createMatrix(II)Lorg/ejml/simple/SimpleBase;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/ejml/simple/SimpleMatrix;->createMatrix(II)Lorg/ejml/simple/SimpleMatrix;

    move-result-object v0

    return-object v0
.end method

.method protected createMatrix(II)Lorg/ejml/simple/SimpleMatrix;
    .locals 1

    new-instance v0, Lorg/ejml/simple/SimpleMatrix;

    invoke-direct {v0, p1, p2}, Lorg/ejml/simple/SimpleMatrix;-><init>(II)V

    return-object v0
.end method
