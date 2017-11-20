.class public final Lcom/google/maps/api/android/lib6/gmm6/o/e/a;
.super Lcom/google/maps/api/android/lib6/gmm6/o/e/b;


# instance fields
.field public final a:Ljava/lang/Object;

.field private final c:Lcom/google/maps/api/android/lib6/gmm6/o/e/b;


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/o/e/b;Ljava/lang/Object;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/e/b;-><init>(Ljava/lang/String;Z)V

    invoke-static {p2}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/a;->c:Lcom/google/maps/api/android/lib6/gmm6/o/e/b;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/a;->a:Ljava/lang/Object;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
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

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/o/e/a;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/a;->c:Lcom/google/maps/api/android/lib6/gmm6/o/e/b;

    iget-object v3, p1, Lcom/google/maps/api/android/lib6/gmm6/o/e/a;->c:Lcom/google/maps/api/android/lib6/gmm6/o/e/b;

    invoke-static {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/e/b;->a(Lcom/google/maps/api/android/lib6/gmm6/o/e/b;Lcom/google/maps/api/android/lib6/gmm6/o/e/b;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/a;->a:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/maps/api/android/lib6/gmm6/o/e/a;->a:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/a;->c:Lcom/google/maps/api/android/lib6/gmm6/o/e/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/a;->c:Lcom/google/maps/api/android/lib6/gmm6/o/e/b;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/a;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[KeyedLabelSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/a;->c:Lcom/google/maps/api/android/lib6/gmm6/o/e/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/a;->c:Lcom/google/maps/api/android/lib6/gmm6/o/e/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/e/a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
