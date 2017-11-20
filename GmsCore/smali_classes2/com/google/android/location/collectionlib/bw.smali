.class public Lcom/google/android/location/collectionlib/bw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field private static c:Lcom/google/android/location/collectionlib/bw;


# instance fields
.field private b:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/google/android/location/collectionlib/bw;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/collectionlib/bw;->a:Ljava/util/logging/Logger;

    .line 29
    new-instance v0, Lcom/google/android/location/collectionlib/bw;

    invoke-direct {v0}, Lcom/google/android/location/collectionlib/bw;-><init>()V

    sput-object v0, Lcom/google/android/location/collectionlib/bw;->c:Lcom/google/android/location/collectionlib/bw;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/collectionlib/bw;->b:Ljava/util/Set;

    .line 31
    return-void
.end method

.method public static a()Lcom/google/android/location/collectionlib/bw;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/android/location/collectionlib/bw;->c:Lcom/google/android/location/collectionlib/bw;

    return-object v0
.end method

.method private declared-synchronized a(Ljava/io/File;J)Z
    .locals 6

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 75
    new-instance v2, Ljava/io/File;

    const-string v0, ".lck"

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x1

    .line 77
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_1

    .line 78
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v0

    .line 80
    :cond_1
    if-eqz v0, :cond_2

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, p2

    invoke-virtual {v2, v4, v5}, Ljava/io/File;->setLastModified(J)Z

    .line 82
    iget-object v2, p0, Lcom/google/android/location/collectionlib/bw;->b:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :cond_2
    :goto_0
    monitor-exit p0

    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 103
    new-instance v1, Ljava/io/File;

    const-string v2, ".lck"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/collectionlib/bw;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :goto_0
    monitor-exit p0

    return-void

    .line 109
    :catch_0
    move-exception v0

    :try_start_1
    sget-object v0, Lcom/google/android/location/collectionlib/bw;->a:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to unlock directory "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/io/File;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 125
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 126
    new-instance v3, Ljava/io/File;

    const-string v4, ".lck"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v4, p0, Lcom/google/android/location/collectionlib/bw;->b:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 130
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 132
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 133
    invoke-direct {p0, p1}, Lcom/google/android/location/collectionlib/bw;->b(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 134
    goto :goto_0

    :cond_2
    move v0, v1

    .line 138
    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 140
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method final declared-synchronized a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-wide v2, Lcom/google/android/location/collectionlib/aq;->a:J

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/location/collectionlib/bw;->a(Ljava/io/File;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Ljava/lang/String;J)Z
    .locals 2

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/location/collectionlib/bw;->a(Ljava/io/File;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/location/collectionlib/bw;->b(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
