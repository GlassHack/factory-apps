.class public final Lcom/google/googlenav/common/io/a/e;
.super Lcom/google/googlenav/common/io/c;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/common/io/PersistentStore;
.implements Lcom/google/googlenav/common/io/o;


# static fields
.field private static final a:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private b:Landroid/content/Context;

.field private final c:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "FLASH"

    .line 44
    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/common/io/a/e;->a:Lcom/google/glass/logging/FormattingLogger;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/googlenav/common/io/c;-><init>()V

    .line 55
    new-instance v0, Lcom/google/android/a/a;

    invoke-direct {v0}, Lcom/google/android/a/a;-><init>()V

    .line 56
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/common/io/a/e;->c:Ljava/util/Set;

    .line 59
    iput-object p1, p0, Lcom/google/googlenav/common/io/a/e;->b:Landroid/content/Context;

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/common/io/a/e;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/googlenav/common/io/a/e;->c:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic a(Ljava/io/FileOutputStream;)Z
    .locals 1

    .prologue
    .line 40
    invoke-static {p0}, Lcom/google/googlenav/common/io/a/e;->b(Ljava/io/FileOutputStream;)Z

    move-result v0

    return v0
.end method

.method private b([BLjava/lang/String;)I
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 147
    if-nez p1, :cond_0

    .line 148
    const/4 v0, 0x0

    :try_start_0
    new-array p1, v0, [B

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/common/io/a/e;->b:Landroid/content/Context;

    .line 151
    invoke-static {p2}, Lcom/google/googlenav/common/io/a/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 152
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 153
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 155
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/lit16 v0, v0, 0x1000
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v0, v0, 0x1000

    return v0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    new-instance v1, Lcom/google/googlenav/common/io/PersistentStore$PersistentStoreException;

    .line 158
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v3}, Lcom/google/googlenav/common/io/PersistentStore$PersistentStoreException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 159
    :catch_1
    move-exception v0

    .line 160
    new-instance v1, Lcom/google/googlenav/common/io/PersistentStore$PersistentStoreException;

    .line 161
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v3}, Lcom/google/googlenav/common/io/PersistentStore$PersistentStoreException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method static synthetic b()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/google/googlenav/common/io/a/e;->a:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private static b(Ljava/io/FileOutputStream;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 254
    if-eqz p0, :cond_0

    .line 255
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 257
    :catch_0
    move-exception v1

    .line 258
    sget-object v2, Lcom/google/googlenav/common/io/a/e;->a:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Couldn\'t close FileOutputStream"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 66
    const-string v0, "DATA_"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a([BLjava/lang/String;)I
    .locals 1

    .prologue
    .line 180
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/common/io/a/e;->b([BLjava/lang/String;)I
    :try_end_0
    .catch Lcom/google/googlenav/common/io/PersistentStore$PersistentStoreException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 182
    :goto_0
    return v0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    invoke-virtual {v0}, Lcom/google/googlenav/common/io/PersistentStore$PersistentStoreException;->getType()I

    move-result v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/googlenav/common/io/n;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 315
    invoke-static {p1}, Lcom/google/googlenav/common/io/a/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 316
    iget-object v4, p0, Lcom/google/googlenav/common/io/a/e;->c:Ljava/util/Set;

    monitor-enter v4

    .line 317
    :try_start_0
    iget-object v1, p0, Lcom/google/googlenav/common/io/a/e;->c:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 318
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    :goto_0
    return-object v0

    .line 322
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/googlenav/common/io/a/e;->b:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/nio/channels/NonWritableChannelException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 323
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v5

    .line 324
    new-instance v1, Lcom/google/googlenav/common/io/a/f;

    invoke-direct {v1, p0, v2, v5, v3}, Lcom/google/googlenav/common/io/a/f;-><init>(Lcom/google/googlenav/common/io/a/e;Ljava/io/FileOutputStream;Ljava/nio/channels/FileLock;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/nio/channels/NonWritableChannelException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v4

    move-object v0, v1

    goto :goto_0

    .line 325
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 326
    :goto_1
    sget-object v5, Lcom/google/googlenav/common/io/a/e;->a:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Failed to obtain lock: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-interface {v5, v1, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    :goto_2
    invoke-static {v2}, Lcom/google/googlenav/common/io/a/e;->b(Ljava/io/FileOutputStream;)Z

    .line 333
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    .line 327
    :catch_1
    move-exception v1

    move-object v2, v0

    .line 328
    :goto_3
    :try_start_4
    sget-object v5, Lcom/google/googlenav/common/io/a/e;->a:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Failed to obtain lock: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-interface {v5, v1, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 329
    :catch_2
    move-exception v1

    move-object v2, v0

    .line 330
    :goto_4
    sget-object v5, Lcom/google/googlenav/common/io/a/e;->a:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Failed to obtain lock: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-interface {v5, v1, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 329
    :catch_3
    move-exception v1

    goto :goto_4

    .line 327
    :catch_4
    move-exception v1

    goto :goto_3

    .line 325
    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/googlenav/common/io/a/e;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/googlenav/common/io/a/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final c(Ljava/lang/String;)[B
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 207
    .line 209
    :try_start_0
    invoke-static {p1}, Lcom/google/googlenav/common/io/a/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    iget-object v2, p0, Lcom/google/googlenav/common/io/a/e;->b:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 211
    :try_start_1
    iget-object v3, p0, Lcom/google/googlenav/common/io/a/e;->b:Landroid/content/Context;

    .line 212
    invoke-virtual {v3, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v3, v3

    .line 213
    new-array v0, v3, [B

    .line 214
    invoke-static {p1, v2, v3, v0}, Lcom/google/googlenav/common/io/a/g;->a(Ljava/lang/String;Ljava/io/InputStream;I[B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 223
    sget-object v1, Lcom/google/googlenav/common/io/a/e;->a:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v2, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    :goto_0
    return-object v0

    .line 216
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 217
    :goto_1
    :try_start_2
    sget-object v3, Lcom/google/googlenav/common/io/a/e;->a:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Couldn\'t find file:  %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-interface {v3, v0, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 223
    sget-object v0, Lcom/google/googlenav/common/io/a/e;->a:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v2, v0}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    move-object v0, v1

    goto :goto_0

    .line 219
    :catch_1
    move-exception v0

    move-object v2, v1

    .line 220
    :goto_2
    :try_start_3
    sget-object v3, Lcom/google/googlenav/common/io/a/e;->a:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Couldn\'t read file:  %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-interface {v3, v0, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 223
    sget-object v0, Lcom/google/googlenav/common/io/a/e;->a:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v2, v0}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_3
    sget-object v1, Lcom/google/googlenav/common/io/a/e;->a:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v2, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 219
    :catch_2
    move-exception v0

    goto :goto_2

    .line 216
    :catch_3
    move-exception v0

    goto :goto_1
.end method
