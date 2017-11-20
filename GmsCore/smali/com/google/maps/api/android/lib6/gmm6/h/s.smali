.class final Lcom/google/maps/api/android/lib6/gmm6/h/s;
.super Lcom/google/maps/api/android/lib6/gmm6/h/r;


# instance fields
.field private b:[I


# direct methods
.method protected constructor <init>([D[I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/h/r;-><init>([D)V

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/h/s;->b:[I

    return-void
.end method

.method private c(II)Z
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/s;->b:[I

    aget v0, v0, p2

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/s;->b:[I

    add-int/lit8 v1, p2, 0x1

    aget v0, v0, v1

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/h/s;->b:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    const-string v2, "\nHole "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/h/s;->b:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/h/s;->b:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/h/s;->b(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/s;->b:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x2

    return v0
.end method

.method protected final a(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/maps/api/android/lib6/gmm6/h/s;

    return v0
.end method

.method public final c(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/h/s;->f(I)I

    move-result v0

    add-int/lit8 v1, p1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/s;->c(II)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, p1, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/h/s;->b:[I

    add-int/lit8 v0, v0, 0x1

    aget v0, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public final d(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/h/s;->f(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/s;->c(II)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, p1, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/h/s;->b:[I

    aget v0, v1, v0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/maps/api/android/lib6/gmm6/h/s;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/h/s;

    instance-of v3, p0, Lcom/google/maps/api/android/lib6/gmm6/h/s;

    if-eqz v3, :cond_2

    invoke-super {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/h/s;->b:[I

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/h/s;->b:[I

    invoke-static {v3, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final f(I)I
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/s;->a:I

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/h/s;->b:[I

    aget v1, v1, v0

    if-lt p1, v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final g(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/s;->b:[I

    aget v0, v0, p1

    return v0
.end method

.method public final hashCode()I
    .locals 2

    invoke-super {p0}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/h/s;->b:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/h/s;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
