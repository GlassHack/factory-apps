.class public final Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;
.super Ljava/lang/Object;


# instance fields
.field final a:[F

.field b:I

.field final c:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x200

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->a:[F

    const/16 v0, 0x20

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->c:[F

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->a:[F

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->b:I

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method public final a(FFF)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->a:[F

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->b:I

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    return-void
.end method

.method public final a(FFFF)V
    .locals 8

    const/4 v1, 0x0

    const/16 v7, 0x10

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->c:[F

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->a:[F

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->b:I

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->c:[F

    invoke-static {v0, v2, v3, v7, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->a:[F

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->b:I

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->c:[F

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->c:[F

    move v5, v7

    move v7, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    return-void
.end method

.method public final a(FFFFFF)V
    .locals 8

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->a:[F

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->b:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    return-void
.end method

.method final a(I)V
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->b:I

    mul-int/lit8 v1, p1, 0x10

    add-int/2addr v0, v1

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "stack underflow"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v0, v0, 0x10

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->a:[F

    array-length v1, v1

    if-le v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "stack overflow"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public final a([FI)V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->a:[F

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->b:I

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->c:[F

    const/16 v4, 0x10

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->a:[F

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->b:I

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->c:[F

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    return-void
.end method

.method public final b(FFF)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->a:[F

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->b:I

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    return-void
.end method

.method public final b(FFFFFF)V
    .locals 8

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->a:[F

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->b:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    return-void
.end method

.method final b(I)V
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->b:I

    mul-int/lit8 v1, p1, 0x10

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->b:I

    return-void
.end method
