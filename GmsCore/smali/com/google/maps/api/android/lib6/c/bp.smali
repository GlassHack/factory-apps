.class public final Lcom/google/maps/api/android/lib6/c/bp;
.super Ljava/lang/Object;


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field private final d:[F

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/google/maps/api/android/lib6/c/bp;->b:F

    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/bp;->d:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(FFF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/google/maps/api/android/lib6/c/bp;->b:F

    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/bp;->d:[F

    iput p1, p0, Lcom/google/maps/api/android/lib6/c/bp;->a:F

    iput p2, p0, Lcom/google/maps/api/android/lib6/c/bp;->b:F

    iput p3, p0, Lcom/google/maps/api/android/lib6/c/bp;->c:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/bp;->e:Z

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Lcom/google/maps/api/android/lib6/c/bp;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/google/maps/api/android/lib6/c/bp;->b:F

    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/bp;->d:[F

    iget v0, p1, Lcom/google/maps/api/android/lib6/c/bp;->a:F

    iput v0, p0, Lcom/google/maps/api/android/lib6/c/bp;->a:F

    iget v0, p1, Lcom/google/maps/api/android/lib6/c/bp;->b:F

    iput v0, p0, Lcom/google/maps/api/android/lib6/c/bp;->b:F

    iget v0, p1, Lcom/google/maps/api/android/lib6/c/bp;->c:F

    iput v0, p0, Lcom/google/maps/api/android/lib6/c/bp;->c:F

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/c/bp;->d:[F

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/bp;->d:[F

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/c/bp;->d:[F

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v0, p1, Lcom/google/maps/api/android/lib6/c/bp;->e:Z

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/bp;->e:Z

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final a(F)V
    .locals 1

    iput p1, p0, Lcom/google/maps/api/android/lib6/c/bp;->a:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/bp;->e:Z

    return-void
.end method

.method public final a()[F
    .locals 11

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/bp;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bp;->d:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bp;->d:[F

    const/high16 v2, 0x42b40000    # 90.0f

    iget v5, p0, Lcom/google/maps/api/android/lib6/c/bp;->b:F

    const/high16 v6, 0x43340000    # 180.0f

    mul-float/2addr v5, v6

    sub-float/2addr v2, v5

    move v5, v4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/c/bp;->d:[F

    iget v7, p0, Lcom/google/maps/api/android/lib6/c/bp;->a:F

    move v6, v1

    move v8, v4

    move v9, v3

    move v10, v4

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/bp;->e:Z

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bp;->d:[F

    return-object v0
.end method

.method public final b()F
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/c/bp;->b:F

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v0, v1

    const/high16 v1, 0x43340000    # 180.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public final b(F)V
    .locals 1

    iput p1, p0, Lcom/google/maps/api/android/lib6/c/bp;->b:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/bp;->e:Z

    return-void
.end method

.method public final c()F
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/c/bp;->c:F

    neg-float v0, v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/bb;->f(F)F

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/maps/api/android/lib6/c/bp;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/maps/api/android/lib6/c/bp;

    iget v2, p0, Lcom/google/maps/api/android/lib6/c/bp;->a:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/google/maps/api/android/lib6/c/bp;->a:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/maps/api/android/lib6/c/bp;->b:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/google/maps/api/android/lib6/c/bp;->b:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/maps/api/android/lib6/c/bp;->c:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/google/maps/api/android/lib6/c/bp;->c:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "pitch"

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/bp;->b()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "yaw"

    iget v2, p0, Lcom/google/maps/api/android/lib6/c/bp;->a:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "zoom"

    iget v2, p0, Lcom/google/maps/api/android/lib6/c/bp;->c:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ah;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
