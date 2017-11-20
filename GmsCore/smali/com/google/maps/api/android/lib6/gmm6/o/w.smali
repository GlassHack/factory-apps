.class final Lcom/google/maps/api/android/lib6/gmm6/o/w;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/maps/api/android/lib6/gmm6/o/v;

.field private final c:Lcom/google/maps/api/android/lib6/gmm6/l/ad;

.field private final d:F

.field private final e:I

.field private final f:I

.field private final g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/maps/api/android/lib6/gmm6/o/v;Lcom/google/maps/api/android/lib6/gmm6/l/ad;FIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/w;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/w;->b:Lcom/google/maps/api/android/lib6/gmm6/o/v;

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/w;->c:Lcom/google/maps/api/android/lib6/gmm6/l/ad;

    iput p4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/w;->d:F

    iput p5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/w;->e:I

    iput p6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/w;->f:I

    iput p7, p0, Lcom/google/maps/api/android/lib6/gmm6/o/w;->g:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/maps/api/android/lib6/gmm6/o/w;

    if-eqz v2, :cond_4

    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/o/w;

    iget v2, p1, Lcom/google/maps/api/android/lib6/gmm6/o/w;->d:F

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/w;->d:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p1, Lcom/google/maps/api/android/lib6/gmm6/o/w;->e:I

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/w;->e:I

    if-ne v2, v3, :cond_3

    iget v2, p1, Lcom/google/maps/api/android/lib6/gmm6/o/w;->f:I

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/w;->f:I

    if-ne v2, v3, :cond_3

    iget v2, p1, Lcom/google/maps/api/android/lib6/gmm6/o/w;->g:I

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/w;->g:I

    if-ne v2, v3, :cond_3

    iget-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/o/w;->b:Lcom/google/maps/api/android/lib6/gmm6/o/v;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/w;->b:Lcom/google/maps/api/android/lib6/gmm6/o/v;

    if-ne v2, v3, :cond_3

    iget-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/o/w;->c:Lcom/google/maps/api/android/lib6/gmm6/l/ad;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/w;->c:Lcom/google/maps/api/android/lib6/gmm6/l/ad;

    if-eq v2, v3, :cond_2

    iget-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/o/w;->c:Lcom/google/maps/api/android/lib6/gmm6/l/ad;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/o/w;->c:Lcom/google/maps/api/android/lib6/gmm6/l/ad;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/w;->c:Lcom/google/maps/api/android/lib6/gmm6/l/ad;

    invoke-virtual {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/ad;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/o/w;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/w;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/w;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/w;->b:Lcom/google/maps/api/android/lib6/gmm6/o/v;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/w;->c:Lcom/google/maps/api/android/lib6/gmm6/l/ad;

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/w;->c:Lcom/google/maps/api/android/lib6/gmm6/l/ad;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/ad;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/w;->d:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/w;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/w;->f:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/w;->g:I

    add-int/2addr v0, v1

    return v0
.end method
