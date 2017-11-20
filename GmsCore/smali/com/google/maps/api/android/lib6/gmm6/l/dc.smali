.class public final Lcom/google/maps/api/android/lib6/gmm6/l/dc;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:F

.field public final d:Ljava/lang/String;

.field public final e:Lcom/google/maps/api/android/lib6/gmm6/l/x;

.field final f:Ljava/lang/String;

.field public final g:F

.field private final h:I


# direct methods
.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;Lcom/google/maps/api/android/lib6/gmm6/l/x;Ljava/lang/String;F)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->a:I

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->b:Ljava/lang/String;

    iput p3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->h:I

    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float v1, p3

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->c:F

    iput-object p4, p0, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->e:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    iput-object p6, p0, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->f:Ljava/lang/String;

    iput p7, p0, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->g:F

    return-void
.end method

.method public static a(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->a:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->a:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->a:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->a:I

    const/16 v1, 0x8

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
    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/l/dc;

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->a:I

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->a:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->g:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->g:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->b:Ljava/lang/String;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->b:Ljava/lang/String;

    if-eqz v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->e:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    if-nez v2, :cond_8

    iget-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->e:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    if-eqz v2, :cond_9

    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->e:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    iget-object v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->e:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    invoke-virtual {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->f:Ljava/lang/String;

    if-nez v2, :cond_a

    iget-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->f:Ljava/lang/String;

    if-eqz v2, :cond_b

    move v0, v1

    goto :goto_0

    :cond_a
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_0

    :cond_b
    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->h:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->h:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_c

    move v0, v1

    goto :goto_0

    :cond_c
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->d:Ljava/lang/String;

    if-nez v2, :cond_d

    iget-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->d:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->a:I

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->g:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->e:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->f:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->h:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->d:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_3
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->e:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3
.end method
