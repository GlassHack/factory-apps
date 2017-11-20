.class public abstract Lcom/google/android/youtube/core/cache/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/cache/a;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/concurrent/ConcurrentHashMap;

.field private final d:Ljava/io/FilenameFilter;

.field private final e:Landroid/os/ConditionVariable;

.field private volatile f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 189
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/core/cache/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    const-string v0, "cachePath may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/f;->a(Z)V

    .line 176
    iput-object p1, p0, Lcom/google/android/youtube/core/cache/c;->a:Ljava/lang/String;

    .line 177
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/youtube/core/cache/c;->e:Landroid/os/ConditionVariable;

    .line 178
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/cache/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 179
    const-string v0, "suffix cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/cache/c;->b:Ljava/lang/String;

    .line 180
    new-instance v0, Lcom/google/android/youtube/core/cache/g;

    invoke-direct {v0, p0, p2}, Lcom/google/android/youtube/core/cache/g;-><init>(Lcom/google/android/youtube/core/cache/c;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/cache/c;->d:Ljava/io/FilenameFilter;

    .line 186
    return-void
.end method

.method private a()V
    .locals 6

    .prologue
    .line 228
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/youtube/core/cache/c;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/youtube/core/cache/c;->d:Ljava/io/FilenameFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 229
    if-eqz v1, :cond_0

    .line 230
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    .line 234
    :cond_0
    return-void

    .line 230
    :cond_1
    aget-object v3, v1, v0

    .line 231
    iget-object v4, p0, Lcom/google/android/youtube/core/cache/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v4, v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/youtube/core/cache/c;)V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/google/android/youtube/core/cache/c;->a()V

    return-void
.end method

.method protected static a(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 366
    if-nez p0, :cond_0

    .line 374
    :goto_0
    return-void

    .line 370
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected static a(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 355
    if-nez p0, :cond_0

    .line 363
    :goto_0
    return-void

    .line 359
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;J)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 83
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v2, "limit may not be <= 0"

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/utils/f;->a(ZLjava/lang/Object;)V

    .line 84
    const-string v0, "dirCache may not be empty"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " is not a directory"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/utils/f;->a(ZLjava/lang/Object;)V

    .line 87
    new-instance v2, Lcom/google/android/youtube/core/cache/d;

    invoke-direct {v2}, Lcom/google/android/youtube/core/cache/d;-><init>()V

    .line 94
    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v4

    .line 95
    if-nez v4, :cond_2

    .line 143
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 83
    goto :goto_0

    .line 100
    :cond_2
    array-length v2, v4

    move v0, v1

    move v3, v1

    :goto_2
    if-lt v0, v2, :cond_3

    .line 103
    int-to-long v5, v3

    cmp-long v0, v5, p1

    if-gez v0, :cond_4

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cache is below limit, no need to shrink: [size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 100
    :cond_3
    aget-object v5, v4, v0

    .line 101
    int-to-long v6, v3

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long v5, v6, v8

    long-to-int v3, v5

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 108
    :cond_4
    new-instance v2, Ljava/util/HashMap;

    array-length v0, v4

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 109
    array-length v5, v4

    move v0, v1

    :goto_3
    if-lt v0, v5, :cond_6

    .line 114
    new-instance v0, Lcom/google/android/youtube/core/cache/e;

    invoke-direct {v0, v2}, Lcom/google/android/youtube/core/cache/e;-><init>(Ljava/util/HashMap;)V

    invoke-static {v4, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 130
    array-length v5, v4

    move v2, v1

    move v0, v1

    move v1, v3

    :goto_4
    if-ge v2, v5, :cond_0

    aget-object v6, v4, v2

    .line 131
    int-to-long v7, v1

    cmp-long v7, v7, p1

    if-ltz v7, :cond_7

    .line 132
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    .line 133
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 134
    int-to-long v9, v1

    sub-long v6, v9, v7

    long-to-int v1, v6

    .line 135
    add-int/lit8 v0, v0, 0x1

    .line 130
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 109
    :cond_6
    aget-object v6, v4, v0

    .line 112
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 138
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Cache shrunk: [deleted="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 139
    const-string v2, ", newSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", previousSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public static a(Ljava/util/concurrent/Executor;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 160
    new-instance v0, Lcom/google/android/youtube/core/cache/f;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/youtube/core/cache/f;-><init>(Ljava/lang/String;J)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 166
    return-void
.end method

.method static synthetic b(Lcom/google/android/youtube/core/cache/c;)Landroid/os/ConditionVariable;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/c;->e:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method private b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/youtube/core/cache/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 320
    invoke-direct {p0}, Lcom/google/android/youtube/core/cache/c;->c()V

    .line 321
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 322
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/youtube/core/cache/c;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/youtube/core/cache/c;->d:Ljava/io/FilenameFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 323
    if-nez v1, :cond_1

    .line 329
    :cond_0
    return-void

    .line 326
    :cond_1
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 327
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 378
    iget-boolean v0, p0, Lcom/google/android/youtube/core/cache/c;->f:Z

    const-string v1, "init() must be called before calling to this method"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/f;->b(ZLjava/lang/Object;)V

    .line 380
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/c;->e:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 381
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Executor;)Lcom/google/android/youtube/core/cache/c;
    .locals 1

    .prologue
    .line 215
    const-string v0, "executor may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/cache/c;->f:Z

    .line 217
    new-instance v0, Lcom/google/android/youtube/core/cache/h;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/cache/h;-><init>(Lcom/google/android/youtube/core/cache/c;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 224
    return-object p0
.end method

.method protected abstract a(Ljava/io/BufferedInputStream;)Ljava/lang/Object;
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 238
    const-string v1, "key may not be null"

    invoke-static {p1, v1}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    invoke-direct {p0}, Lcom/google/android/youtube/core/cache/c;->c()V

    .line 240
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/cache/c;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 241
    iget-object v1, p0, Lcom/google/android/youtube/core/cache/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 259
    :goto_0
    return-object v0

    .line 244
    :cond_0
    new-instance v3, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/youtube/core/cache/c;->a:Ljava/lang/String;

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v5, 0x2000

    invoke-direct {v1, v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/cache/c;->a(Ljava/io/BufferedInputStream;)Ljava/lang/Object;

    move-result-object v0

    .line 251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/io/File;->setLastModified(J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 257
    invoke-static {v1}, Lcom/google/android/youtube/core/cache/c;->a(Ljava/io/InputStream;)V

    goto :goto_0

    .line 254
    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/google/android/youtube/core/cache/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error opening cache file (maybe removed). [filename="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 257
    invoke-static {v1}, Lcom/google/android/youtube/core/cache/c;->a(Ljava/io/InputStream;)V

    goto :goto_0

    .line 256
    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 257
    :goto_2
    invoke-static {v1}, Lcom/google/android/youtube/core/cache/c;->a(Ljava/io/InputStream;)V

    .line 258
    throw v0

    .line 256
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 254
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public final a(Lcom/google/android/youtube/core/utils/g;)V
    .locals 1

    .prologue
    .line 307
    const-string v0, "predicate may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-string v0, "Clearing persistent cache as a result of a filtered remove"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    .line 309
    invoke-direct {p0}, Lcom/google/android/youtube/core/cache/c;->b()V

    .line 310
    return-void
.end method

.method protected abstract a(Ljava/lang/Object;Ljava/io/BufferedOutputStream;)V
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 264
    const-string v0, "key may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string v0, "element may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    invoke-direct {p0}, Lcom/google/android/youtube/core/cache/c;->c()V

    .line 267
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/cache/c;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 268
    new-instance v3, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/youtube/core/cache/c;->a:Ljava/lang/String;

    invoke-direct {v3, v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const/4 v2, 0x0

    .line 271
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v3, 0x2000

    invoke-direct {v1, v4, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    :try_start_1
    invoke-virtual {p0, p2, v1}, Lcom/google/android/youtube/core/cache/c;->a(Ljava/lang/Object;Ljava/io/BufferedOutputStream;)V

    .line 273
    iget-object v2, p0, Lcom/google/android/youtube/core/cache/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 281
    invoke-static {v1}, Lcom/google/android/youtube/core/cache/c;->a(Ljava/io/OutputStream;)V

    .line 283
    :goto_0
    return-void

    .line 274
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 276
    :goto_1
    :try_start_2
    const-string v2, "Error creating cache file."

    invoke-static {v2, v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 281
    invoke-static {v1}, Lcom/google/android/youtube/core/cache/c;->a(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 277
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 279
    :goto_2
    :try_start_3
    const-string v2, "Error creating cache file."

    invoke-static {v2, v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 281
    invoke-static {v1}, Lcom/google/android/youtube/core/cache/c;->a(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 280
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 281
    :goto_3
    invoke-static {v1}, Lcom/google/android/youtube/core/cache/c;->a(Ljava/io/OutputStream;)V

    .line 282
    throw v0

    .line 280
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 277
    :catch_2
    move-exception v0

    goto :goto_2

    .line 274
    :catch_3
    move-exception v0

    goto :goto_1
.end method
