.class final Lcom/google/maps/api/android/lib6/gmm6/streetview/au;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/String;

.field final b:I

.field final c:I

.field final d:I

.field final e:I

.field private final f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;->a:Ljava/lang/String;

    add-int/lit8 v0, p5, 0x1

    shl-int v0, p3, v0

    or-int/2addr v0, p2

    add-int/lit8 v1, p5, 0x2

    shl-int v1, p4, v1

    or-int/2addr v0, v1

    xor-int/2addr v0, p5

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;->f:I

    iput p2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;->b:I

    iput p3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;->c:I

    iput p4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;->d:I

    iput p5, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;->e:I

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
    instance-of v2, p1, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;

    iget v2, p1, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;->b:I

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;->b:I

    if-ne v2, v3, :cond_3

    iget v2, p1, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;->c:I

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;->c:I

    if-ne v2, v3, :cond_3

    iget v2, p1, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;->d:I

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;->d:I

    if-ne v2, v3, :cond_3

    iget v2, p1, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;->e:I

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;->e:I

    if-ne v2, v3, :cond_3

    iget-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;->f:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "panoid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&zoom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&face="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
