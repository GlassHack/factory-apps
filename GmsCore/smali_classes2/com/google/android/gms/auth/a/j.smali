.class public final Lcom/google/android/gms/auth/a/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/concurrent/locks/ReadWriteLock;

.field private final b:Ljava/io/File;

.field private final c:Ljava/util/Properties;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/a/j;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 23
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/google/android/gms/auth/a/j;->b:Ljava/io/File;

    .line 24
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/a/j;->c:Ljava/util/Properties;

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/auth/a/j;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/auth/a/j;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->a(Z)V

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/auth/a/j;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    .line 29
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 31
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/google/android/gms/auth/a/j;->b:Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 32
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 33
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/auth/a/j;->c:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 36
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 42
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 54
    return-void

    .line 25
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 53
    :catchall_0
    move-exception v0

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 55
    :catchall_1
    move-exception v0

    move-object v1, v2

    .line 36
    :goto_1
    if-eqz v1, :cond_3

    .line 37
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 53
    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 43
    :cond_3
    if-eqz v2, :cond_2

    .line 48
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    .line 50
    :catch_1
    move-exception v0

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 53
    :catchall_2
    move-exception v0

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 55
    :catchall_3
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_1

    :catchall_4
    move-exception v0

    move-object v2, v3

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    const-string v0, "Supplied key cannot be null!"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/auth/a/j;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    .line 96
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/a/j;->c:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 100
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/gms/auth/a/j;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    .line 60
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/a/j;->c:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 65
    :goto_0
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    .line 63
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 118
    const-string v2, "Supplied key cannot be null!"

    invoke-static {p1, v2}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v2, p0, Lcom/google/android/gms/auth/a/j;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    .line 120
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 122
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/auth/a/j;->c:Ljava/util/Properties;

    invoke-virtual {v2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 123
    if-nez v4, :cond_1

    if-nez p3, :cond_1

    move v2, v1

    .line 124
    :goto_0
    if-nez v2, :cond_2

    if-eqz v4, :cond_0

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 126
    :cond_0
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 133
    :goto_1
    return v0

    :cond_1
    move v2, v0

    .line 123
    goto :goto_0

    .line 128
    :cond_2
    if-nez p2, :cond_3

    .line 129
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/auth/a/j;->c:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    :goto_2
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v0, v1

    goto :goto_1

    .line 131
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/auth/a/j;->c:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 133
    :catchall_0
    move-exception v0

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final b()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 70
    .line 72
    iget-object v0, p0, Lcom/google/android/gms/auth/a/j;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    .line 73
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 75
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lcom/google/android/gms/auth/a/j;->b:Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 76
    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 77
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/auth/a/j;->c:Ljava/util/Properties;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 80
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 82
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 89
    return-void

    .line 85
    :catch_0
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 88
    :catchall_0
    move-exception v0

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 90
    :catchall_1
    move-exception v0

    move-object v1, v2

    .line 80
    :goto_0
    if-eqz v1, :cond_1

    .line 81
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 88
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 82
    :cond_1
    if-eqz v2, :cond_0

    .line 83
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    .line 85
    :catch_1
    move-exception v0

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 88
    :catchall_2
    move-exception v0

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 90
    :catchall_3
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_0

    :catchall_4
    move-exception v0

    move-object v2, v3

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/gms/auth/a/j;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    .line 141
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/a/j;->c:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 146
    return-void

    .line 145
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
