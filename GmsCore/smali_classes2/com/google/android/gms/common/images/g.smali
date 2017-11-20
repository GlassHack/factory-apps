.class public final Lcom/google/android/gms/common/images/g;
.super Lcom/google/android/gms/common/images/e;
.source "SourceFile"


# instance fields
.field private e:Ljava/lang/ref/WeakReference;


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/google/android/gms/common/images/g;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/images/d;

    .line 425
    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/google/android/gms/common/images/g;->a:Lcom/google/android/gms/common/images/f;

    iget-object v0, v0, Lcom/google/android/gms/common/images/f;->a:Landroid/net/Uri;

    .line 430
    :cond_0
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 400
    instance-of v0, p1, Lcom/google/android/gms/common/images/g;

    if-nez v0, :cond_0

    move v0, v2

    .line 414
    :goto_0
    return v0

    .line 403
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v3

    .line 404
    goto :goto_0

    .line 407
    :cond_1
    check-cast p1, Lcom/google/android/gms/common/images/g;

    .line 408
    iget-object v0, p0, Lcom/google/android/gms/common/images/g;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/images/d;

    .line 409
    iget-object v1, p1, Lcom/google/android/gms/common/images/g;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/images/d;

    .line 414
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/common/images/g;->a:Lcom/google/android/gms/common/images/f;

    iget-object v1, p0, Lcom/google/android/gms/common/images/g;->a:Lcom/google/android/gms/common/images/f;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 395
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/common/images/g;->a:Lcom/google/android/gms/common/images/f;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
