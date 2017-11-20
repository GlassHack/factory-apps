.class final Lcom/google/android/location/b/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/location/f/aw;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/google/android/location/f/aw;

.field final synthetic d:Ljava/lang/Object;

.field final synthetic e:Lcom/google/android/location/b/f;


# direct methods
.method constructor <init>(Lcom/google/android/location/b/f;Lcom/google/android/location/f/aw;Ljava/lang/Object;Lcom/google/android/location/f/aw;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Lcom/google/android/location/b/h;->e:Lcom/google/android/location/b/f;

    iput-object p2, p0, Lcom/google/android/location/b/h;->a:Lcom/google/android/location/f/aw;

    iput-object p3, p0, Lcom/google/android/location/b/h;->b:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/location/b/h;->c:Lcom/google/android/location/f/aw;

    iput-object p5, p0, Lcom/google/android/location/b/h;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 422
    iget-object v0, p0, Lcom/google/android/location/b/h;->a:Lcom/google/android/location/f/aw;

    if-eqz v0, :cond_0

    .line 423
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/google/android/location/b/h;->e:Lcom/google/android/location/b/f;

    iget-object v2, v0, Lcom/google/android/location/b/f;->a:Ljava/io/File;

    iget-object v0, p0, Lcom/google/android/location/b/h;->a:Lcom/google/android/location/f/aw;

    iget-object v0, v0, Lcom/google/android/location/f/aw;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 424
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/b/h;->b:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 461
    :cond_1
    :goto_0
    return-void

    .line 432
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/b/h;->e:Lcom/google/android/location/b/f;

    iget-object v0, v0, Lcom/google/android/location/b/f;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 433
    iget-object v0, p0, Lcom/google/android/location/b/h;->e:Lcom/google/android/location/b/f;

    iget-object v0, v0, Lcom/google/android/location/b/f;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 439
    :cond_3
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/google/android/location/b/h;->e:Lcom/google/android/location/b/f;

    iget-object v2, v0, Lcom/google/android/location/b/f;->a:Ljava/io/File;

    iget-object v0, p0, Lcom/google/android/location/b/h;->c:Lcom/google/android/location/f/aw;

    iget-object v0, v0, Lcom/google/android/location/f/aw;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 442
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 443
    iget-object v0, p0, Lcom/google/android/location/b/h;->e:Lcom/google/android/location/b/f;

    iget-object v0, v0, Lcom/google/android/location/b/f;->c:Lcom/google/android/location/k/e;

    invoke-interface {v0, v1}, Lcom/google/android/location/k/e;->a(Ljava/io/File;)V

    .line 444
    new-instance v2, Lcom/google/android/location/b/ad;

    iget-object v0, p0, Lcom/google/android/location/b/h;->e:Lcom/google/android/location/b/f;

    iget-short v0, v0, Lcom/google/android/location/b/f;->d:S

    iget-object v3, p0, Lcom/google/android/location/b/h;->e:Lcom/google/android/location/b/f;

    iget-object v3, v3, Lcom/google/android/location/b/f;->b:Lcom/google/android/location/f/a;

    invoke-direct {v2, v0, v1, v3}, Lcom/google/android/location/b/ad;-><init>(ILjava/io/File;Lcom/google/android/location/f/a;)V

    .line 445
    iget-object v0, p0, Lcom/google/android/location/b/h;->e:Lcom/google/android/location/b/f;

    iget-object v0, v0, Lcom/google/android/location/b/f;->g:Lcom/google/android/location/b/i;

    iget-object v3, p0, Lcom/google/android/location/b/h;->b:Ljava/lang/Object;

    invoke-interface {v0, v3}, Lcom/google/android/location/b/i;->a(Ljava/lang/Object;)[B
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    const/4 v0, 0x0

    :try_start_1
    iget-object v4, v2, Lcom/google/android/location/b/ad;->a:Landroid/support/v4/f/c;

    invoke-virtual {v4}, Landroid/support/v4/f/c;->a()Ljava/io/FileOutputStream;

    move-result-object v0

    iget-object v4, v2, Lcom/google/android/location/b/ad;->c:Lcom/google/android/location/f/a;

    if-nez v4, :cond_4

    new-instance v3, Ljava/io/IOException;

    const-string v4, "No cipher specified."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    move-exception v3

    if-eqz v0, :cond_1

    :try_start_2
    iget-object v2, v2, Lcom/google/android/location/b/ad;->a:Landroid/support/v4/f/c;

    invoke-virtual {v2, v0}, Landroid/support/v4/f/c;->b(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 449
    :catch_1
    move-exception v0

    monitor-enter p0

    .line 450
    :try_start_3
    iget-object v0, p0, Lcom/google/android/location/b/h;->e:Lcom/google/android/location/b/f;

    iget-object v0, v0, Lcom/google/android/location/b/f;->e:Lcom/google/android/location/b/ap;

    iget-object v1, p0, Lcom/google/android/location/b/h;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/location/b/ap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    iget-object v0, p0, Lcom/google/android/location/b/h;->e:Lcom/google/android/location/b/f;

    iget-object v0, v0, Lcom/google/android/location/b/f;->f:Lcom/google/android/location/b/j;

    iget-object v1, p0, Lcom/google/android/location/b/h;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/location/b/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 445
    :cond_4
    :try_start_4
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget v5, v2, Lcom/google/android/location/b/ad;->b:I

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v5, v2, Lcom/google/android/location/b/ad;->c:Lcom/google/android/location/f/a;

    invoke-virtual {v5, v4, v3}, Lcom/google/android/location/f/a;->a(Ljava/io/DataOutputStream;[B)V

    iget-object v3, v2, Lcom/google/android/location/b/ad;->a:Landroid/support/v4/f/c;

    invoke-virtual {v3, v0}, Landroid/support/v4/f/c;->a(Ljava/io/FileOutputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 456
    :catch_2
    move-exception v0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 457
    monitor-enter p0

    .line 458
    :try_start_5
    iget-object v0, p0, Lcom/google/android/location/b/h;->e:Lcom/google/android/location/b/f;

    iget-object v0, v0, Lcom/google/android/location/b/f;->e:Lcom/google/android/location/b/ap;

    iget-object v1, p0, Lcom/google/android/location/b/h;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/location/b/ap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    iget-object v0, p0, Lcom/google/android/location/b/h;->e:Lcom/google/android/location/b/f;

    iget-object v0, v0, Lcom/google/android/location/b/f;->f:Lcom/google/android/location/b/j;

    iget-object v1, p0, Lcom/google/android/location/b/h;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/location/b/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
