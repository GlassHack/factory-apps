.class public final Lcom/google/android/location/b/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/location/b/ap;

.field final b:Lcom/google/android/location/b/au;

.field public final c:Ljava/io/File;

.field final d:Lcom/google/android/location/f/a;

.field final e:Lcom/google/android/location/k/e;


# direct methods
.method public constructor <init>(Lcom/google/android/location/b/au;Ljava/io/File;[BLcom/google/android/location/k/e;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/google/android/location/b/ap;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Lcom/google/android/location/b/ap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/location/b/m;->a:Lcom/google/android/location/b/ap;

    .line 64
    iput-object p1, p0, Lcom/google/android/location/b/m;->b:Lcom/google/android/location/b/au;

    .line 66
    iput-object p2, p0, Lcom/google/android/location/b/m;->c:Ljava/io/File;

    .line 67
    if-nez p3, :cond_0

    .line 68
    iput-object v2, p0, Lcom/google/android/location/b/m;->d:Lcom/google/android/location/f/a;

    .line 72
    :goto_0
    iput-object p4, p0, Lcom/google/android/location/b/m;->e:Lcom/google/android/location/k/e;

    .line 73
    return-void

    .line 70
    :cond_0
    invoke-static {p3, v2}, Lcom/google/android/location/f/a;->a([BLcom/google/android/location/p/a/c;)Lcom/google/android/location/f/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/b/m;->d:Lcom/google/android/location/f/a;

    goto :goto_0
.end method

.method static a(Ljava/io/Closeable;)V
    .locals 4

    .prologue
    .line 209
    if-eqz p0, :cond_0

    .line 211
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 214
    sget-boolean v1, Lcom/google/android/location/j/a;->d:Z

    if-eqz v1, :cond_0

    const-string v1, "FileTemporalCache"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error while closing: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/location/p/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/location/b/m;->a:Lcom/google/android/location/b/ap;

    invoke-virtual {v0}, Lcom/google/android/location/b/ap;->clear()V

    .line 169
    iget-object v0, p0, Lcom/google/android/location/b/m;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 170
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/b/m;->a:Lcom/google/android/location/b/ap;

    invoke-virtual {v0, p1}, Lcom/google/android/location/b/ap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/f/aw;

    .line 98
    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0, p2, p3}, Lcom/google/android/location/f/aw;->a(J)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 101
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 134
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/b/m;->d:Lcom/google/android/location/f/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 161
    :goto_0
    monitor-exit p0

    return-void

    .line 138
    :cond_0
    const/4 v2, 0x0

    .line 141
    :try_start_1
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/google/android/location/b/m;->c:Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 142
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 143
    if-eq v0, v4, :cond_2

    .line 144
    sget-boolean v0, Lcom/google/android/location/j/a;->c:Z

    if-eqz v0, :cond_1

    const-string v0, "FileTemporalCache"

    const-string v2, "Incompatible file version while reading LRU cache file."

    invoke-static {v0, v2}, Lcom/google/android/location/p/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_1
    invoke-direct {p0}, Lcom/google/android/location/b/m;->b()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 160
    :try_start_3
    invoke-static {v1}, Lcom/google/android/location/b/m;->a(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 148
    :cond_2
    :try_start_4
    iget-object v0, p0, Lcom/google/android/location/b/m;->d:Lcom/google/android/location/f/a;

    invoke-virtual {v0, v1}, Lcom/google/android/location/f/a;->a(Ljava/io/DataInputStream;)Lcom/google/android/location/f/ai;

    move-result-object v0

    .line 149
    iget-object v2, p0, Lcom/google/android/location/b/m;->b:Lcom/google/android/location/b/au;

    iget-object v3, p0, Lcom/google/android/location/b/m;->a:Lcom/google/android/location/b/ap;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    iget-object v0, v0, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    check-cast v0, [B

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v2, v3, v4}, Lcom/google/android/location/b/au;->a(Lcom/google/android/location/b/ap;Ljava/io/InputStream;)V

    .line 150
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_3

    const-string v0, "FileTemporalCache"

    const-string v2, "Loaded %d entries from file %s."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/location/b/m;->a:Lcom/google/android/location/b/ap;

    invoke-virtual {v5}, Lcom/google/android/location/b/ap;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/android/location/b/m;->c:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 160
    :cond_3
    :try_start_5
    invoke-static {v1}, Lcom/google/android/location/b/m;->a(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 153
    :goto_1
    :try_start_6
    sget-boolean v2, Lcom/google/android/location/j/a;->c:Z

    if-eqz v2, :cond_4

    const-string v2, "FileTemporalCache"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LRU cache file not found: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/location/p/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 160
    :cond_4
    :try_start_7
    invoke-static {v1}, Lcom/google/android/location/b/m;->a(Ljava/io/Closeable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 155
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 156
    :goto_2
    :try_start_8
    sget-boolean v2, Lcom/google/android/location/j/a;->c:Z

    if-eqz v2, :cond_5

    const-string v2, "FileTemporalCache"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IOException while reading LRU cache file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/location/p/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_5
    invoke-direct {p0}, Lcom/google/android/location/b/m;->b()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 160
    :try_start_9
    invoke-static {v1}, Lcom/google/android/location/b/m;->a(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v2

    :goto_3
    invoke-static {v1}, Lcom/google/android/location/b/m;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_2
    move-exception v0

    goto :goto_3

    .line 155
    :catch_2
    move-exception v0

    goto :goto_2

    .line 152
    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public final declared-synchronized a(JJ)V
    .locals 1

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/b/m;->a:Lcom/google/android/location/b/ap;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/location/b/ap;->a(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    monitor-exit p0

    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 3

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/android/location/f/aw;

    invoke-direct {v0, p2, p3, p4}, Lcom/google/android/location/f/aw;-><init>(Ljava/lang/Object;J)V

    .line 114
    iget-object v1, p0, Lcom/google/android/location/b/m;->a:Lcom/google/android/location/b/ap;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/location/b/ap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
