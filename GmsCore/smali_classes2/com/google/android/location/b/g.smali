.class final Lcom/google/android/location/b/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/google/android/location/f/aw;

.field final synthetic c:Lcom/google/android/location/b/f;


# direct methods
.method constructor <init>(Lcom/google/android/location/b/f;Ljava/lang/Object;Lcom/google/android/location/f/aw;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/google/android/location/b/g;->c:Lcom/google/android/location/b/f;

    iput-object p2, p0, Lcom/google/android/location/b/g;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/location/b/g;->b:Lcom/google/android/location/f/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 325
    monitor-enter p0

    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/b/g;->c:Lcom/google/android/location/b/f;

    iget-object v0, v0, Lcom/google/android/location/b/f;->e:Lcom/google/android/location/b/ap;

    iget-object v1, p0, Lcom/google/android/location/b/g;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/location/b/ap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    :goto_0
    return-void

    .line 329
    :cond_0
    monitor-exit p0

    .line 334
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/google/android/location/b/g;->c:Lcom/google/android/location/b/f;

    iget-object v2, v0, Lcom/google/android/location/b/f;->a:Ljava/io/File;

    iget-object v0, p0, Lcom/google/android/location/b/g;->b:Lcom/google/android/location/f/aw;

    iget-object v0, v0, Lcom/google/android/location/f/aw;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 335
    :try_start_1
    new-instance v0, Lcom/google/android/location/b/ad;

    iget-object v2, p0, Lcom/google/android/location/b/g;->c:Lcom/google/android/location/b/f;

    iget-short v2, v2, Lcom/google/android/location/b/f;->d:S

    iget-object v3, p0, Lcom/google/android/location/b/g;->c:Lcom/google/android/location/b/f;

    iget-object v3, v3, Lcom/google/android/location/b/f;->b:Lcom/google/android/location/f/a;

    invoke-direct {v0, v2, v1, v3}, Lcom/google/android/location/b/ad;-><init>(ILjava/io/File;Lcom/google/android/location/f/a;)V

    .line 338
    iget-object v2, v0, Lcom/google/android/location/b/ad;->a:Landroid/support/v4/f/c;

    invoke-virtual {v2}, Landroid/support/v4/f/c;->b()Ljava/io/FileInputStream;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/location/b/ad;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 339
    new-instance v2, Lcom/google/android/location/f/aw;

    iget-object v3, p0, Lcom/google/android/location/b/g;->c:Lcom/google/android/location/b/f;

    iget-object v3, v3, Lcom/google/android/location/b/f;->g:Lcom/google/android/location/b/i;

    invoke-interface {v3, v0}, Lcom/google/android/location/b/i;->a([B)Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/location/b/g;->b:Lcom/google/android/location/f/aw;

    iget-wide v4, v3, Lcom/google/android/location/f/aw;->b:J

    invoke-direct {v2, v0, v4, v5}, Lcom/google/android/location/f/aw;-><init>(Ljava/lang/Object;J)V

    .line 343
    monitor-enter p0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 344
    :try_start_2
    iget-object v0, p0, Lcom/google/android/location/b/g;->c:Lcom/google/android/location/b/f;

    iget-object v0, v0, Lcom/google/android/location/b/f;->e:Lcom/google/android/location/b/ap;

    iget-object v3, p0, Lcom/google/android/location/b/g;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, v2}, Lcom/google/android/location/b/ap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 364
    invoke-static {v6}, Lcom/google/android/location/b/f;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 345
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0

    throw v0
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 350
    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 351
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 352
    :try_start_5
    iget-object v0, p0, Lcom/google/android/location/b/g;->c:Lcom/google/android/location/b/f;

    iget-object v0, v0, Lcom/google/android/location/b/f;->e:Lcom/google/android/location/b/ap;

    iget-object v1, p0, Lcom/google/android/location/b/g;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/location/b/ap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    iget-object v0, p0, Lcom/google/android/location/b/g;->c:Lcom/google/android/location/b/f;

    iget-object v0, v0, Lcom/google/android/location/b/f;->f:Lcom/google/android/location/b/j;

    iget-object v1, p0, Lcom/google/android/location/b/g;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/location/b/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 364
    invoke-static {v6}, Lcom/google/android/location/b/f;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 354
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit p0

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 364
    :catchall_3
    move-exception v0

    invoke-static {v6}, Lcom/google/android/location/b/f;->a(Ljava/io/Closeable;)V

    throw v0

    .line 358
    :catch_1
    move-exception v0

    :try_start_7
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 359
    monitor-enter p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 360
    :try_start_8
    iget-object v0, p0, Lcom/google/android/location/b/g;->c:Lcom/google/android/location/b/f;

    iget-object v0, v0, Lcom/google/android/location/b/f;->e:Lcom/google/android/location/b/ap;

    iget-object v1, p0, Lcom/google/android/location/b/g;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/location/b/ap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    iget-object v0, p0, Lcom/google/android/location/b/g;->c:Lcom/google/android/location/b/f;

    iget-object v0, v0, Lcom/google/android/location/b/f;->f:Lcom/google/android/location/b/j;

    iget-object v1, p0, Lcom/google/android/location/b/g;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/location/b/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 364
    invoke-static {v6}, Lcom/google/android/location/b/f;->a(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 362
    :catchall_4
    move-exception v0

    :try_start_9
    monitor-exit p0

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3
.end method
