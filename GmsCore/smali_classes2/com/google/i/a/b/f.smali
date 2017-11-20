.class final Lcom/google/i/a/b/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:I

.field final synthetic c:Lcom/google/i/a/b/a;


# direct methods
.method constructor <init>(Lcom/google/i/a/b/a;Ljava/io/File;I)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/google/i/a/b/f;->c:Lcom/google/i/a/b/a;

    iput-object p2, p0, Lcom/google/i/a/b/f;->a:Ljava/io/File;

    iput p3, p0, Lcom/google/i/a/b/f;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 331
    const/4 v1, 0x1

    .line 332
    :try_start_0
    iget-object v0, p0, Lcom/google/i/a/b/f;->c:Lcom/google/i/a/b/a;

    iget-object v2, p0, Lcom/google/i/a/b/f;->a:Ljava/io/File;

    invoke-virtual {v0, v2}, Lcom/google/i/a/b/a;->b(Ljava/io/File;)Lcom/google/i/a/b/q;

    move-result-object v2

    .line 336
    iget-object v0, p0, Lcom/google/i/a/b/f;->c:Lcom/google/i/a/b/a;

    iget v3, v0, Lcom/google/i/a/b/a;->j:I

    iget v4, p0, Lcom/google/i/a/b/f;->b:I

    iget-object v0, v2, Lcom/google/i/a/b/q;->a:Lcom/google/android/location/b/am;

    iget-object v0, v0, Lcom/google/android/location/b/am;->a:Lcom/google/android/location/b/an;

    invoke-virtual {v0}, Lcom/google/android/location/b/an;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/i/a/b/o;

    invoke-static {v0, v3}, Lcom/google/i/a/b/q;->a(Lcom/google/i/a/b/o;I)I

    move-result v0

    if-eq v0, v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 337
    :catch_0
    move-exception v0

    .line 339
    const-string v2, "GpwleDiskCache"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/location/p/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const-string v0, "GpwleDiskCache"

    const-string v2, "Initial read failed. Attempting chunk file purge."

    invoke-static {v0, v2}, Lcom/google/android/location/p/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    new-instance v0, Lcom/google/i/a/b/q;

    iget-object v2, p0, Lcom/google/i/a/b/f;->c:Lcom/google/i/a/b/a;

    iget-object v2, v2, Lcom/google/i/a/b/a;->i:Lcom/google/i/a/b/h;

    iget-object v3, p0, Lcom/google/i/a/b/f;->c:Lcom/google/i/a/b/a;

    iget-object v3, v3, Lcom/google/i/a/b/a;->h:Lcom/google/g/a/b/b/c;

    iget-object v4, p0, Lcom/google/i/a/b/f;->c:Lcom/google/i/a/b/a;

    iget v4, v4, Lcom/google/i/a/b/a;->k:I

    invoke-direct {v0, v2, v3, v4}, Lcom/google/i/a/b/q;-><init>(Lcom/google/i/a/b/r;Lcom/google/g/a/b/b/c;I)V

    .line 346
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/google/i/a/b/f;->c:Lcom/google/i/a/b/a;

    iget-object v3, p0, Lcom/google/i/a/b/f;->a:Ljava/io/File;

    invoke-static {v2, v3, v0}, Lcom/google/i/a/b/a;->a(Lcom/google/i/a/b/a;Ljava/io/File;Lcom/google/i/a/b/q;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    .line 353
    :goto_2
    iget-object v1, p0, Lcom/google/i/a/b/f;->c:Lcom/google/i/a/b/a;

    iget-object v2, v1, Lcom/google/i/a/b/a;->i:Lcom/google/i/a/b/h;

    invoke-interface {v2}, Lcom/google/i/a/b/h;->b()Lcom/google/android/location/k/j;

    move-result-object v2

    new-instance v3, Lcom/google/i/a/b/g;

    invoke-direct {v3, v1, v0}, Lcom/google/i/a/b/g;-><init>(Lcom/google/i/a/b/a;Z)V

    invoke-interface {v2, v3}, Lcom/google/android/location/k/j;->a(Ljava/lang/Runnable;)Z

    .line 354
    return-void

    :cond_1
    move-object v0, v2

    .line 342
    goto :goto_1

    .line 347
    :catch_1
    move-exception v0

    .line 349
    const-string v1, "GpwleDiskCache"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/location/p/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string v0, "GpwleDiskCache"

    const-string v1, "Initial write failed. Initialization terminated."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const/4 v0, 0x0

    goto :goto_2
.end method
