.class public final Lcom/google/maps/api/android/lib6/gmm6/l/a;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field public final b:F

.field final c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private final d:I

.field private final e:F

.field private final f:F

.field private final g:F


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;IFLcom/google/maps/api/android/lib6/gmm6/l/h;FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iput p2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a;->d:I

    iput p3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a;->b:F

    iput-object p4, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iput p5, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a;->e:F

    iput p6, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a;->f:F

    iput p7, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a;->g:F

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a;->d:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

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
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/l/a;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/l/a;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/a;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a;->f:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/a;->f:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a;->e:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/a;->e:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a;->g:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/a;->g:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a;->d:I

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/a;->d:I

    if-eq v2, v3, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    if-nez v2, :cond_a

    iget-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/l/a;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    if-eqz v2, :cond_b

    move v0, v1

    goto :goto_0

    :cond_a
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/a;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_0

    :cond_b
    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a;->b:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/a;->b:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a;->f:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a;->e:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a;->g:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a;->d:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a;->b:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->hashCode()I

    move-result v1

    goto :goto_1
.end method
