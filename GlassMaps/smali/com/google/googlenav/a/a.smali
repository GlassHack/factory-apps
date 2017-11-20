.class public final Lcom/google/googlenav/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/common/i;


# instance fields
.field private a:[B

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Landroid/content/Context;

.field private e:B


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/googlenav/a/a;->d:Landroid/content/Context;

    .line 51
    invoke-static {p1}, Lcom/google/googlenav/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/a/a;->c:Ljava/lang/String;

    .line 52
    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 178
    const-string v0, "activity"

    .line 179
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 180
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 181
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

    .line 182
    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v1, :cond_0

    .line 183
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 189
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized d()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 103
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/googlenav/a/a;->e()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 104
    if-eqz v1, :cond_0

    .line 107
    :try_start_1
    iget-object v2, p0, Lcom/google/googlenav/a/a;->d:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_1

    .line 109
    invoke-static {v0}, Lcom/google/googlenav/common/io/k;->a(Ljava/io/InputStream;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlenav/a/a;->a:[B

    .line 110
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    :cond_0
    :goto_0
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/googlenav/a/a;->b:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    .line 112
    :cond_1
    const/4 v2, 0x0

    :try_start_3
    iput-object v2, p0, Lcom/google/googlenav/a/a;->a:[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v2

    const/4 v2, 0x0

    :try_start_4
    iput-object v2, p0, Lcom/google/googlenav/a/a;->a:[B

    .line 116
    invoke-static {v0}, Lcom/google/googlenav/common/io/k;->b(Ljava/io/InputStream;)V

    .line 119
    iget-object v0, p0, Lcom/google/googlenav/a/a;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private e()Ljava/lang/String;
    .locals 5

    .prologue
    .line 150
    iget-byte v0, p0, Lcom/google/googlenav/a/a;->e:B

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 152
    const-string v0, "event_store"

    .line 157
    :goto_0
    iget-object v1, p0, Lcom/google/googlenav/a/a;->c:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 158
    iget-object v1, p0, Lcom/google/googlenav/a/a;->c:Ljava/lang/String;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 159
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/googlenav/a/a;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 165
    :cond_0
    :goto_1
    return-object v0

    .line 154
    :cond_1
    const-string v0, "event_store_v2"

    goto :goto_0

    .line 162
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlenav/a/a;->c:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 165
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final declared-synchronized a(B)V
    .locals 2

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/googlenav/a/a;->b()B

    .line 93
    iput-byte p1, p0, Lcom/google/googlenav/a/a;->e:B

    .line 94
    iget-byte v0, p0, Lcom/google/googlenav/a/a;->e:B

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/google/googlenav/a/a;->d:Landroid/content/Context;

    const-string v1, "event_store"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :cond_0
    monitor-exit p0

    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a([B)V
    .locals 1

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/googlenav/a/a;->a:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a()[B
    .locals 1

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/googlenav/a/a;->b:Z

    if-nez v0, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/google/googlenav/a/a;->d()V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/a/a;->a:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()B
    .locals 3

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lcom/google/googlenav/a/a;->e:B

    if-nez v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/google/googlenav/a/a;->d:Landroid/content/Context;

    const-string v1, "event_store"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/google/googlenav/a/a;->d:Landroid/content/Context;

    const-string v2, "event_store_v2"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    .line 72
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 76
    :cond_0
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/googlenav/a/a;->e:B

    .line 79
    :cond_1
    :goto_0
    iget-byte v0, p0, Lcom/google/googlenav/a/a;->e:B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 73
    :cond_2
    const/4 v0, 0x1

    :try_start_1
    iput-byte v0, p0, Lcom/google/googlenav/a/a;->e:B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 127
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/googlenav/a/a;->e()Ljava/lang/String;

    move-result-object v1

    .line 128
    if-eqz v1, :cond_0

    .line 129
    iget-object v2, p0, Lcom/google/googlenav/a/a;->a:[B

    if-nez v2, :cond_1

    .line 130
    iget-object v0, p0, Lcom/google/googlenav/a/a;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 143
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/a/a;->a:[B

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/a/a;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    monitor-exit p0

    return-void

    .line 134
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/google/googlenav/a/a;->d:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 135
    iget-object v2, p0, Lcom/google/googlenav/a/a;->a:[B

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 136
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 138
    :catch_0
    move-exception v2

    :try_start_2
    invoke-static {v0}, Lcom/google/googlenav/common/io/k;->a(Ljava/io/OutputStream;)V

    .line 139
    iget-object v0, p0, Lcom/google/googlenav/a/a;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
