.class public final Lcom/google/maps/api/android/lib6/gmm6/h/g;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/google/maps/api/android/lib6/gmm6/h/r;


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/h/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/h/g;->a:Lcom/google/maps/api/android/lib6/gmm6/h/r;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/maps/api/android/lib6/gmm6/h/g;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/h/g;

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/h/g;->a:Lcom/google/maps/api/android/lib6/gmm6/h/r;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/h/g;->a:Lcom/google/maps/api/android/lib6/gmm6/h/r;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/g;->a:Lcom/google/maps/api/android/lib6/gmm6/h/r;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/h/g;->a:Lcom/google/maps/api/android/lib6/gmm6/h/r;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
