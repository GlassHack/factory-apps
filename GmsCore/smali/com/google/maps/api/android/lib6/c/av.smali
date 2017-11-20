.class public final Lcom/google/maps/api/android/lib6/c/av;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/av;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/c/av;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/g/a/b/b/h;)Lcom/google/g/a/b/b/f;
    .locals 5

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/av;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/c/av;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_1
    new-instance v2, Lcom/google/g/a/b/b/f;

    invoke-direct {v2, p1}, Lcom/google/g/a/b/b/f;-><init>(Lcom/google/g/a/b/b/h;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {v1}, Lcom/google/g/a/b/v;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/g/a/b/b/f;->a([B)Lcom/google/g/a/b/b/f;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v0, v2

    :cond_0
    :try_start_3
    invoke-static {v1}, Lcom/google/g/a/b/v;->b(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_1
    :try_start_4
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/c/av;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/c/av;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-static {v1}, Lcom/google/g/a/b/v;->b(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_2
    :try_start_6
    invoke-static {v1}, Lcom/google/g/a/b/v;->b(Ljava/io/InputStream;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_2
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v0, v2

    goto :goto_1
.end method

.method public final declared-synchronized a(Lcom/google/g/a/b/b/f;)V
    .locals 5

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/av;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/av;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/av;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/c/av;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    :try_start_2
    invoke-virtual {p1}, Lcom/google/g/a/b/b/f;->d()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-static {v0}, Lcom/google/g/a/b/v;->a(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v1

    :try_start_4
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/av;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/c/av;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-static {v0}, Lcom/google/g/a/b/v;->a(Ljava/io/OutputStream;)V

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    invoke-static {v1}, Lcom/google/g/a/b/v;->a(Ljava/io/OutputStream;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_2
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1
.end method
