.class public final Lcom/google/maps/api/android/lib6/gmm6/m/s;
.super Lcom/google/maps/api/android/lib6/gmm6/l/ah;


# instance fields
.field private final h:Lcom/google/maps/api/android/lib6/gmm6/l/dd;


# direct methods
.method private constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/l/dd;)V
    .locals 4

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->a:I

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b:I

    iget v2, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->c:I

    iget-object v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->d:Lcom/google/maps/api/android/lib6/gmm6/l/at;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;-><init>(IIILcom/google/maps/api/android/lib6/gmm6/l/at;)V

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/s;->h:Lcom/google/maps/api/android/lib6/gmm6/l/dd;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/at;)Lcom/google/maps/api/android/lib6/gmm6/l/ah;
    .locals 3

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/m/s;

    invoke-super {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->a(Lcom/google/maps/api/android/lib6/gmm6/l/at;)Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/s;->h:Lcom/google/maps/api/android/lib6/gmm6/l/dd;

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/s;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/l/dd;)V

    return-object v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/m/s;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/s;->h:Lcom/google/maps/api/android/lib6/gmm6/l/dd;

    iget-object v1, p1, Lcom/google/maps/api/android/lib6/gmm6/m/s;->h:Lcom/google/maps/api/android/lib6/gmm6/l/dd;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/google/maps/api/android/lib6/gmm6/m/s;

    if-eqz v1, :cond_2

    invoke-super {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/m/s;

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/m/s;->a(Lcom/google/maps/api/android/lib6/gmm6/m/s;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    invoke-super {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/s;->h:Lcom/google/maps/api/android/lib6/gmm6/l/dd;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final k()Lcom/google/maps/api/android/lib6/gmm6/l/dd;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/s;->h:Lcom/google/maps/api/android/lib6/gmm6/l/dd;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[layer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/s;->h:Lcom/google/maps/api/android/lib6/gmm6/l/dd;

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/gmm6/l/dd;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v0, " params: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/s;->h:Lcom/google/maps/api/android/lib6/gmm6/l/dd;

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/l/dd;->b:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    const-string v0, " coords: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
