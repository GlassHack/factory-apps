.class public final Lcom/google/maps/api/android/lib6/gmm6/l/bs;
.super Ljava/lang/Object;


# instance fields
.field public a:F

.field public b:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a:F

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->b:F

    return-void
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/bs;Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;
    .locals 3

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget v2, p1, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->b:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->d(II)V

    return-object p2
.end method


# virtual methods
.method public final a()F
    .locals 1

    invoke-virtual {p0, p0}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->b(Lcom/google/maps/api/android/lib6/gmm6/l/bs;)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public final a(F)Lcom/google/maps/api/android/lib6/gmm6/l/bs;
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a:F

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->b:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->b:F

    return-object p0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/bs;)Lcom/google/maps/api/android/lib6/gmm6/l/bs;
    .locals 1

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a:F

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a:F

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->b:F

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->b:F

    return-object p0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/bs;
    .locals 2

    iget v0, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a:F

    iget v0, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->b:F

    return-object p0
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/l/bs;)F
    .locals 3

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a:F

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->b:F

    iget v2, p1, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->b:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public final b()Lcom/google/maps/api/android/lib6/gmm6/l/bs;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a()F

    move-result v0

    cmpl-float v1, v0, v2

    if-nez v1, :cond_0

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a:F

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->b:F

    :goto_0
    return-object p0

    :cond_0
    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a:F

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->b:F

    div-float v0, v1, v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->b:F

    goto :goto_0
.end method

.method public final c()Lcom/google/maps/api/android/lib6/gmm6/l/bs;
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a:F

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->b:F

    neg-float v1, v1

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a:F

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->b:F

    return-object p0
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
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a:F

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->b:F

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->b:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->b:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
