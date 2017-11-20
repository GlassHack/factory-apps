.class public final Lcom/google/maps/api/android/lib6/gmm6/o/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/o/b/d;


# instance fields
.field public final a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/a/a/f;FFFF)V
    .locals 6

    iget v0, p1, Lcom/google/maps/api/android/lib6/a/a/f;->a:I

    iget v1, p1, Lcom/google/maps/api/android/lib6/a/a/f;->b:I

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(II)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;FFFF)V

    return-void
.end method

.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;FFFF)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const/high16 v0, 0x41a80000    # 21.0f

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->b:F

    iput p3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->c:F

    iput p4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->d:F

    iput p5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->e:F

    return-void
.end method

.method public static a(F)F
    .locals 4

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    float-to-double v0, p0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    neg-double v0, v0

    const-wide v2, 0x3ff7154760000000L    # 1.4426950216293335

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x42000000    # 32.0f

    goto :goto_0
.end method

.method public static b(F)F
    .locals 6

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    float-to-double v4, p0

    sub-double/2addr v2, v4

    const-wide v4, 0x3ff7154760000000L    # 1.4426950216293335

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;)Lcom/google/maps/api/android/lib6/gmm6/o/b/c;
    .locals 6

    const/high16 v3, 0x40000000    # 2.0f

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v0

    iget-object v1, p1, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v1

    sub-int/2addr v0, v1

    const/high16 v1, 0x20000000

    if-le v0, v1, :cond_0

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v2

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->b:F

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->c:F

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->d:F

    iget v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->e:F

    invoke-direct/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;FFFF)V

    :goto_0
    return-object v0

    :cond_0
    const/high16 v1, -0x20000000

    if-ge v0, v1, :cond_1

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v2

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->b:F

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->c:F

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->d:F

    iget v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->e:F

    invoke-direct/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;FFFF)V

    goto :goto_0

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method public final b()Lcom/google/maps/api/android/lib6/gmm6/o/b/c;
    .locals 0

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
    instance-of v2, p1, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v3, p1, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->b:F

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->b:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->c:F

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->c:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->d:F

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->d:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->e:F

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->e:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->b:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit8 v0, v0, 0x25

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->d:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->c:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->e:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x25

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[target:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " zoom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " viewingAngle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bearing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lookAhead:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
