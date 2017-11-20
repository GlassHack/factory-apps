.class public final Lcom/google/maps/api/android/lib6/gmm6/streetview/ac;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/io/File;

.field private final b:Lcom/google/maps/api/android/lib6/gmm6/streetview/ae;

.field private final c:Ljava/util/HashSet;

.field private final d:I

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ac;->c:Ljava/util/HashSet;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ae;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ae;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ac;->b:Lcom/google/maps/api/android/lib6/gmm6/streetview/ae;

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ac;->d:I

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ac;->e:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ac;->a()V

    return-void
.end method

.method private declared-synchronized a()V
    .locals 6

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ac;->e:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not open cache directory "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ac;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ac;->a:Ljava/io/File;

    array-length v1, v2

    new-array v3, v1, [Lcom/google/maps/api/android/lib6/gmm6/streetview/ad;

    move v1, v0

    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_2

    new-instance v4, Lcom/google/maps/api/android/lib6/gmm6/streetview/ad;

    aget-object v5, v2, v1

    invoke-direct {p0, v5}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ac;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ad;-><init>(Ljava/io/File;)V

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    array-length v1, v3

    :goto_1
    if-ge v0, v1, :cond_0

    aget-object v2, v3, v0

    iget-object v4, v2, Lcom/google/maps/api/android/lib6/gmm6/streetview/ad;->a:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ac;->b:Lcom/google/maps/api/android/lib6/gmm6/streetview/ae;

    invoke-virtual {v4, v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ae;->a(Lcom/google/maps/api/android/lib6/gmm6/streetview/ad;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/google/maps/api/android/lib6/gmm6/streetview/ad;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ac;->b:Lcom/google/maps/api/android/lib6/gmm6/streetview/ae;

    iget-object v1, p1, Lcom/google/maps/api/android/lib6/gmm6/streetview/ad;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ae;->c(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Lcom/google/maps/api/android/lib6/gmm6/streetview/ad;J)[B
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/google/maps/api/android/lib6/gmm6/streetview/ad;->c:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x6ddd00

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expired cache file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ac;->a(Lcom/google/maps/api/android/lib6/gmm6/streetview/ad;)V

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ad;->c()Ljava/io/DataInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ad;->b()J

    move-result-wide v4

    long-to-int v1, v4

    new-array v1, v1, [B

    invoke-virtual {v2, v1}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ac;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v0

    :goto_1
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not find cache file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ac;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ac;->a(Lcom/google/maps/api/android/lib6/gmm6/streetview/ad;)V

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v0

    :goto_2
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not read cache file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ac;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ac;->a(Lcom/google/maps/api/android/lib6/gmm6/streetview/ad;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ac;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ac;->a(Lcom/google/maps/api/android/lib6/gmm6/streetview/ad;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method private c(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ac;->a:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a([BLjava/lang/String;)V
    .locals 5

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "persistentKey"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ac;->a:Ljava/io/File;

    if-eqz v0, :cond_2

    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ac;->c(Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v3

    :try_start_1
    monitor-enter p0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ac;->a(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ac;->b:Lcom/google/maps/api/android/lib6/gmm6/streetview/ae;

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/streetview/ad;

    invoke-direct {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ad;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ae;->a(Lcom/google/maps/api/android/lib6/gmm6/streetview/ad;)V

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ac;->a(Ljava/io/Closeable;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    :goto_0
    :try_start_5
    monitor-exit p0

    throw v0
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catch_0
    move-exception v0

    move-object v0, v3

    :goto_1
    :try_start_6
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Couldn\'t create cache file "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    :goto_2
    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ac;->a(Ljava/io/Closeable;)V

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_3
    throw v0

    :catchall_2
    move-exception v0

    move-object v3, v1

    goto :goto_2

    :catchall_3
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catchall_4
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public final declared-synchronized a(Ljava/lang/String;)Z
    .locals 6

    const-wide/32 v4, 0x6db5f0

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "persistentKey"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    const-wide/16 v0, 0x1

    cmp-long v0, v4, v0

    if-gez v0, :cond_2

    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "shelfLife"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ac;->b:Lcom/google/maps/api/android/lib6/gmm6/streetview/ae;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ae;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ad;

    if-eqz v0, :cond_3

    iget-wide v0, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ad;->c:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long v0, v2, v0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final declared-synchronized b(Ljava/lang/String;)[B
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ac;->b:Lcom/google/maps/api/android/lib6/gmm6/streetview/ae;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ae;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ad;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const-wide/32 v2, 0x6ddd00

    :try_start_1
    invoke-direct {p0, v0, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ac;->a(Lcom/google/maps/api/android/lib6/gmm6/streetview/ad;J)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
