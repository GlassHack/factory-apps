.class public final Lcom/google/maps/api/android/lib6/gmm6/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/b/ad;


# instance fields
.field private a:Lcom/google/g/a/b/b/f;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/a/c;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/a/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_2

    :cond_0
    const-string v0, ""

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "event_store_v2"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/a/c;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "event_store"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    return-void

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, ""

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v1, :cond_0

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized c()V
    .locals 3

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/a/c;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/a/c;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/a/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/google/g/a/b/b/f;

    sget-object v2, Lcom/google/n/c/a/a/f;->a:Lcom/google/g/a/b/b/h;

    invoke-direct {v1, v2}, Lcom/google/g/a/b/b/f;-><init>(Lcom/google/g/a/b/b/h;)V

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/a/c;->a:Lcom/google/g/a/b/b/f;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/a/c;->a:Lcom/google/g/a/b/b/f;

    invoke-static {v0}, Lcom/google/g/a/b/v;->a(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/g/a/b/b/f;->a([B)Lcom/google/g/a/b/b/f;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/a/c;->b:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/a/c;->a:Lcom/google/g/a/b/b/f;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/a/c;->a:Lcom/google/g/a/b/b/f;

    invoke-static {v0}, Lcom/google/g/a/b/v;->b(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/a/c;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/a/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/google/g/a/b/b/f;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/a/c;->b:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/a/c;->c()V

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/a/c;->a:Lcom/google/g/a/b/b/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/g/a/b/b/f;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/a/c;->a:Lcom/google/g/a/b/b/f;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/a/c;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/a/c;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/a/c;->a:Lcom/google/g/a/b/b/f;

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/a/c;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/a/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/a/c;->a:Lcom/google/g/a/b/b/f;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/a/c;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/a/c;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/a/c;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/a/c;->a:Lcom/google/g/a/b/b/f;

    invoke-virtual {v1}, Lcom/google/g/a/b/b/f;->d()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v0}, Lcom/google/g/a/b/v;->a(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/a/c;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/a/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
