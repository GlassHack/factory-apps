.class final Lcom/google/android/b/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# instance fields
.field final synthetic a:Lcom/google/android/b/d;


# direct methods
.method constructor <init>(Lcom/google/android/b/d;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/google/android/b/f;->a:Lcom/google/android/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 271
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 276
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/android/b/f;->a:Lcom/google/android/b/d;

    invoke-virtual {v0}, Lcom/google/android/b/d;->c()V

    .line 282
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/android/b/f;->a:Lcom/google/android/b/d;

    invoke-virtual {v0, p1}, Lcom/google/android/b/d;->a(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/android/b/f;->a:Lcom/google/android/b/d;

    invoke-virtual {v0}, Lcom/google/android/b/d;->b()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/b/d;->a(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 341
    invoke-static {p0, p1}, Lcom/google/android/b/d;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 346
    .line 347
    iget-object v0, p0, Lcom/google/android/b/f;->a:Lcom/google/android/b/d;

    invoke-virtual {v0}, Lcom/google/android/b/d;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    move v3, v1

    :goto_0
    if-ltz v2, :cond_1

    .line 348
    iget-object v0, p0, Lcom/google/android/b/f;->a:Lcom/google/android/b/d;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/b/d;->a(II)Ljava/lang/Object;

    move-result-object v0

    .line 349
    if-nez v0, :cond_0

    move v0, v1

    :goto_1
    add-int/2addr v3, v0

    .line 347
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    .line 349
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    .line 351
    :cond_1
    return v3
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/google/android/b/f;->a:Lcom/google/android/b/d;

    invoke-virtual {v0}, Lcom/google/android/b/d;->a()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 301
    new-instance v0, Lcom/google/android/b/e;

    iget-object v1, p0, Lcom/google/android/b/f;->a:Lcom/google/android/b/d;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/b/e;-><init>(Lcom/google/android/b/d;I)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/android/b/f;->a:Lcom/google/android/b/d;

    invoke-virtual {v0, p1}, Lcom/google/android/b/d;->a(Ljava/lang/Object;)I

    move-result v0

    .line 307
    if-ltz v0, :cond_0

    .line 308
    iget-object v1, p0, Lcom/google/android/b/f;->a:Lcom/google/android/b/d;

    invoke-virtual {v1, v0}, Lcom/google/android/b/d;->a(I)V

    .line 309
    const/4 v0, 0x1

    .line 311
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/google/android/b/f;->a:Lcom/google/android/b/d;

    invoke-virtual {v0}, Lcom/google/android/b/d;->b()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/b/d;->b(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/android/b/f;->a:Lcom/google/android/b/d;

    invoke-virtual {v0}, Lcom/google/android/b/d;->b()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/b/d;->c(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/google/android/b/f;->a:Lcom/google/android/b/d;

    invoke-virtual {v0}, Lcom/google/android/b/d;->a()I

    move-result v0

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/google/android/b/f;->a:Lcom/google/android/b/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/b/d;->b(I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/android/b/f;->a:Lcom/google/android/b/d;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/b/d;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
