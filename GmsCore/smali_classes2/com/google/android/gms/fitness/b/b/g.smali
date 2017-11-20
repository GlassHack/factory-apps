.class final Lcom/google/android/gms/fitness/b/b/g;
.super Lcom/google/android/gms/fitness/b/b/e;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/Comparable;)V
    .locals 1

    .prologue
    .line 299
    invoke-static {p1}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/b/b/e;-><init>(Ljava/lang/Comparable;)V

    .line 300
    return-void
.end method


# virtual methods
.method final a()Lcom/google/c/c/aj;
    .locals 1

    .prologue
    .line 306
    sget-object v0, Lcom/google/c/c/aj;->a:Lcom/google/c/c/aj;

    return-object v0
.end method

.method final a(Ljava/lang/StringBuilder;)V
    .locals 2

    .prologue
    .line 334
    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/b/b/g;->a:Ljava/lang/Comparable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 335
    return-void
.end method

.method final a(Ljava/lang/Comparable;)Z
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/g;->a:Ljava/lang/Comparable;

    invoke-static {v0, p1}, Lcom/google/android/gms/fitness/b/b/u;->b(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b()Lcom/google/c/c/aj;
    .locals 1

    .prologue
    .line 309
    sget-object v0, Lcom/google/c/c/aj;->b:Lcom/google/c/c/aj;

    return-object v0
.end method

.method final b(Ljava/lang/StringBuilder;)V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/g;->a:Ljava/lang/Comparable;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 338
    return-void
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 297
    check-cast p1, Lcom/google/android/gms/fitness/b/b/e;

    invoke-super {p0, p1}, Lcom/google/android/gms/fitness/b/b/e;->a(Lcom/google/android/gms/fitness/b/b/e;)I

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/g;->a:Ljava/lang/Comparable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/fitness/b/b/g;->a:Ljava/lang/Comparable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
