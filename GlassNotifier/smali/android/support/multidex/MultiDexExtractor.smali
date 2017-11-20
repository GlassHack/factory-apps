.class final Landroid/support/multidex/MultiDexExtractor;
.super Ljava/lang/Object;
.source "MultiDexExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/multidex/MultiDexExtractor$ExtractedDex;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x4000

.field private static final DEX_PREFIX:Ljava/lang/String; = "classes"

.field private static final DEX_SUFFIX:Ljava/lang/String; = ".dex"

.field private static final EXTRACTED_NAME_EXT:Ljava/lang/String; = ".classes"

.field private static final EXTRACTED_SUFFIX:Ljava/lang/String; = ".zip"

.field private static final KEY_CRC:Ljava/lang/String; = "crc"

.field private static final KEY_DEX_CRC:Ljava/lang/String; = "dex.crc."

.field private static final KEY_DEX_NUMBER:Ljava/lang/String; = "dex.number"

.field private static final KEY_DEX_TIME:Ljava/lang/String; = "dex.time."

.field private static final KEY_TIME_STAMP:Ljava/lang/String; = "timestamp"

.field private static final LOCK_FILENAME:Ljava/lang/String; = "MultiDex.lock"

.field private static final MAX_EXTRACT_ATTEMPTS:I = 0x3

.field private static final NO_VALUE:J = -0x1L

.field private static final PREFS_FILE:Ljava/lang/String; = "multidex.version"

.field private static final TAG:Ljava/lang/String; = "MultiDex"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method private static closeQuietly(Ljava/io/Closeable;)V
    .locals 3
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 413
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    :goto_0
    return-void

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "MultiDex"

    const-string v2, "Failed to close resource"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static extract(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;Ljava/lang/String;)V
    .locals 10
    .param p0, "apk"    # Ljava/util/zip/ZipFile;
    .param p1, "dexFile"    # Ljava/util/zip/ZipEntry;
    .param p2, "extractTo"    # Ljava/io/File;
    .param p3, "extractedFilePrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 369
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    .line 370
    .local v2, "in":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 372
    .local v4, "out":Ljava/util/zip/ZipOutputStream;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tmp-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".zip"

    .line 373
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    .line 372
    invoke-static {v7, v8, v9}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v6

    .line 374
    .local v6, "tmp":Ljava/io/File;
    const-string v7, "MultiDex"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Extracting "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :try_start_0
    new-instance v5, Ljava/util/zip/ZipOutputStream;

    new-instance v7, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v5, v7}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 378
    .end local v4    # "out":Ljava/util/zip/ZipOutputStream;
    .local v5, "out":Ljava/util/zip/ZipOutputStream;
    :try_start_1
    new-instance v1, Ljava/util/zip/ZipEntry;

    const-string v7, "classes.dex"

    invoke-direct {v1, v7}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 380
    .local v1, "classesDex":Ljava/util/zip/ZipEntry;
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 381
    invoke-virtual {v5, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 383
    const/16 v7, 0x4000

    new-array v0, v7, [B

    .line 384
    .local v0, "buffer":[B
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 385
    .local v3, "length":I
    :goto_0
    const/4 v7, -0x1

    if-eq v3, v7, :cond_0

    .line 386
    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v3}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 387
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    goto :goto_0

    .line 389
    :cond_0
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 391
    :try_start_2
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 393
    invoke-virtual {v6}, Ljava/io/File;->setReadOnly()Z

    move-result v7

    if-nez v7, :cond_1

    .line 394
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to mark readonly \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" (tmp of \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 395
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 403
    .end local v0    # "buffer":[B
    .end local v1    # "classesDex":Ljava/util/zip/ZipEntry;
    .end local v3    # "length":I
    :catchall_0
    move-exception v7

    move-object v4, v5

    .end local v5    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v4    # "out":Ljava/util/zip/ZipOutputStream;
    :goto_1
    invoke-static {v2}, Landroid/support/multidex/MultiDexExtractor;->closeQuietly(Ljava/io/Closeable;)V

    .line 404
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    throw v7

    .line 391
    .end local v4    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v5    # "out":Ljava/util/zip/ZipOutputStream;
    :catchall_1
    move-exception v7

    :try_start_3
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->close()V

    throw v7

    .line 397
    .restart local v0    # "buffer":[B
    .restart local v1    # "classesDex":Ljava/util/zip/ZipEntry;
    .restart local v3    # "length":I
    :cond_1
    const-string v7, "MultiDex"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Renaming to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-virtual {v6, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 399
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to rename \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" to \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 400
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 403
    :cond_2
    invoke-static {v2}, Landroid/support/multidex/MultiDexExtractor;->closeQuietly(Ljava/io/Closeable;)V

    .line 404
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 406
    return-void

    .line 403
    .end local v0    # "buffer":[B
    .end local v1    # "classesDex":Ljava/util/zip/ZipEntry;
    .end local v3    # "length":I
    .end local v5    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v4    # "out":Ljava/util/zip/ZipOutputStream;
    :catchall_2
    move-exception v7

    goto :goto_1
.end method

.method private static getMultiDexPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 331
    const-string v1, "multidex.version"

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private static getTimeStamp(Ljava/io/File;)J
    .locals 4
    .param p0, "archive"    # Ljava/io/File;

    .prologue
    .line 209
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 210
    .local v0, "timeStamp":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 212
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 214
    :cond_0
    return-wide v0
.end method

.method private static getZipCrc(Ljava/io/File;)J
    .locals 4
    .param p0, "archive"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-static {p0}, Landroid/support/multidex/ZipUtil;->getZipCrc(Ljava/io/File;)J

    move-result-wide v0

    .line 220
    .local v0, "computedValue":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 222
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 224
    :cond_0
    return-wide v0
.end method

.method private static isModified(Landroid/content/Context;Ljava/io/File;J)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "archive"    # Ljava/io/File;
    .param p2, "currentCrc"    # J

    .prologue
    const-wide/16 v6, -0x1

    .line 203
    invoke-static {p0}, Landroid/support/multidex/MultiDexExtractor;->getMultiDexPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 204
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "timestamp"

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {p1}, Landroid/support/multidex/MultiDexExtractor;->getTimeStamp(Ljava/io/File;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const-string v1, "crc"

    .line 205
    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v1, v2, p2

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static load(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/io/File;Z)Ljava/util/List;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "dexDir"    # Ljava/io/File;
    .param p3, "forceReload"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/io/File;",
            "Z)",
            "Ljava/util/List",
            "<+",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    const-string v3, "MultiDex"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MultiDexExtractor.load("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v15, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    .local v15, "sourceApk":Ljava/io/File;
    invoke-static {v15}, Landroid/support/multidex/MultiDexExtractor;->getZipCrc(Ljava/io/File;)J

    move-result-wide v6

    .line 104
    .local v6, "currentCrc":J
    new-instance v12, Ljava/io/File;

    const-string v3, "MultiDex.lock"

    move-object/from16 v0, p2

    invoke-direct {v12, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 105
    .local v12, "lockFile":Ljava/io/File;
    new-instance v13, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v13, v12, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 106
    .local v13, "lockRaf":Ljava/io/RandomAccessFile;
    const/4 v11, 0x0

    .line 107
    .local v11, "lockChannel":Ljava/nio/channels/FileChannel;
    const/4 v2, 0x0

    .line 109
    .local v2, "cacheLock":Ljava/nio/channels/FileLock;
    const/4 v14, 0x0

    .line 111
    .local v14, "releaseLockException":Ljava/io/IOException;
    :try_start_0
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v11

    .line 112
    const-string v3, "MultiDex"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Blocking on lock "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {v11}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v2

    .line 114
    const-string v3, "MultiDex"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " locked"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    if-nez p3, :cond_4

    move-object/from16 v0, p0

    invoke-static {v0, v15, v6, v7}, Landroid/support/multidex/MultiDexExtractor;->isModified(Landroid/content/Context;Ljava/io/File;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_4

    .line 118
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v15, v1}, Landroid/support/multidex/MultiDexExtractor;->loadExistingExtractions(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Ljava/util/List;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 131
    .local v8, "files":Ljava/util/List;, "Ljava/util/List<Landroid/support/multidex/MultiDexExtractor$ExtractedDex;>;"
    :goto_0
    if-eqz v2, :cond_0

    .line 133
    :try_start_2
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 141
    :cond_0
    :goto_1
    if-eqz v11, :cond_1

    .line 142
    invoke-static {v11}, Landroid/support/multidex/MultiDexExtractor;->closeQuietly(Ljava/io/Closeable;)V

    .line 144
    :cond_1
    invoke-static {v13}, Landroid/support/multidex/MultiDexExtractor;->closeQuietly(Ljava/io/Closeable;)V

    .line 147
    if-eqz v14, :cond_5

    .line 148
    throw v14

    .line 119
    .end local v8    # "files":Ljava/util/List;, "Ljava/util/List<Landroid/support/multidex/MultiDexExtractor$ExtractedDex;>;"
    :catch_0
    move-exception v10

    .line 120
    .local v10, "ioe":Ljava/io/IOException;
    :try_start_3
    const-string v3, "MultiDex"

    const-string v4, "Failed to reload existing extracted secondary dex files, falling back to fresh extraction"

    invoke-static {v3, v4, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    move-object/from16 v0, p2

    invoke-static {v15, v0}, Landroid/support/multidex/MultiDexExtractor;->performExtractions(Ljava/io/File;Ljava/io/File;)Ljava/util/List;

    move-result-object v8

    .line 123
    .restart local v8    # "files":Ljava/util/List;, "Ljava/util/List<Landroid/support/multidex/MultiDexExtractor$ExtractedDex;>;"
    invoke-static {v15}, Landroid/support/multidex/MultiDexExtractor;->getTimeStamp(Ljava/io/File;)J

    move-result-wide v4

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v8}, Landroid/support/multidex/MultiDexExtractor;->putStoredApkInfo(Landroid/content/Context;JJLjava/util/List;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 131
    .end local v8    # "files":Ljava/util/List;, "Ljava/util/List<Landroid/support/multidex/MultiDexExtractor$ExtractedDex;>;"
    .end local v10    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_2

    .line 133
    :try_start_4
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 141
    :cond_2
    :goto_2
    if-eqz v11, :cond_3

    .line 142
    invoke-static {v11}, Landroid/support/multidex/MultiDexExtractor;->closeQuietly(Ljava/io/Closeable;)V

    .line 144
    :cond_3
    invoke-static {v13}, Landroid/support/multidex/MultiDexExtractor;->closeQuietly(Ljava/io/Closeable;)V

    throw v3

    .line 126
    :cond_4
    :try_start_5
    const-string v3, "MultiDex"

    const-string v4, "Detected that extraction must be performed."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    move-object/from16 v0, p2

    invoke-static {v15, v0}, Landroid/support/multidex/MultiDexExtractor;->performExtractions(Ljava/io/File;Ljava/io/File;)Ljava/util/List;

    move-result-object v8

    .line 128
    .restart local v8    # "files":Ljava/util/List;, "Ljava/util/List<Landroid/support/multidex/MultiDexExtractor$ExtractedDex;>;"
    invoke-static {v15}, Landroid/support/multidex/MultiDexExtractor;->getTimeStamp(Ljava/io/File;)J

    move-result-wide v4

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v8}, Landroid/support/multidex/MultiDexExtractor;->putStoredApkInfo(Landroid/content/Context;JJLjava/util/List;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 134
    :catch_1
    move-exception v9

    .line 135
    .local v9, "e":Ljava/io/IOException;
    const-string v3, "MultiDex"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to release lock on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    move-object v14, v9

    goto :goto_1

    .line 134
    .end local v8    # "files":Ljava/util/List;, "Ljava/util/List<Landroid/support/multidex/MultiDexExtractor$ExtractedDex;>;"
    .end local v9    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v9

    .line 135
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v4, "MultiDex"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to release lock on "

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    move-object v14, v9

    goto :goto_2

    .line 151
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v8    # "files":Ljava/util/List;, "Ljava/util/List<Landroid/support/multidex/MultiDexExtractor$ExtractedDex;>;"
    :cond_5
    const-string v3, "MultiDex"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " secondary dex files"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-object v8
.end method

.method private static loadExistingExtractions(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Ljava/util/List;
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceApk"    # Ljava/io/File;
    .param p2, "dexDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/support/multidex/MultiDexExtractor$ExtractedDex;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    const-string v17, "MultiDex"

    const-string v18, "loading existing secondary dex files"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ".classes"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 165
    .local v9, "extractedFilePrefix":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Landroid/support/multidex/MultiDexExtractor;->getMultiDexPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 166
    .local v14, "multiDexPreferences":Landroid/content/SharedPreferences;
    const-string v17, "dex.number"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 167
    .local v16, "totalDexNumber":I
    new-instance v11, Ljava/util/ArrayList;

    add-int/lit8 v17, v16, -0x1

    move/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 169
    .local v11, "files":Ljava/util/List;, "Ljava/util/List<Landroid/support/multidex/MultiDexExtractor$ExtractedDex;>;"
    const/4 v15, 0x2

    .local v15, "secondaryNumber":I
    :goto_0
    move/from16 v0, v16

    if-gt v15, v0, :cond_3

    .line 170
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ".zip"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 171
    .local v10, "fileName":Ljava/lang/String;
    new-instance v8, Landroid/support/multidex/MultiDexExtractor$ExtractedDex;

    move-object/from16 v0, p2

    invoke-direct {v8, v0, v10}, Landroid/support/multidex/MultiDexExtractor$ExtractedDex;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 172
    .local v8, "extractedFile":Landroid/support/multidex/MultiDexExtractor$ExtractedDex;
    invoke-virtual {v8}, Landroid/support/multidex/MultiDexExtractor$ExtractedDex;->isFile()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 173
    invoke-static {v8}, Landroid/support/multidex/MultiDexExtractor;->getZipCrc(Ljava/io/File;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v8, Landroid/support/multidex/MultiDexExtractor$ExtractedDex;->crc:J

    .line 174
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "dex.crc."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const-wide/16 v18, -0x1

    .line 175
    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-interface {v14, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 176
    .local v4, "expectedCrc":J
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "dex.time."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const-wide/16 v18, -0x1

    .line 177
    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-interface {v14, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 178
    .local v6, "expectedModTime":J
    invoke-virtual {v8}, Landroid/support/multidex/MultiDexExtractor$ExtractedDex;->lastModified()J

    move-result-wide v12

    .line 179
    .local v12, "lastModified":J
    cmp-long v17, v6, v12

    if-nez v17, :cond_0

    iget-wide v0, v8, Landroid/support/multidex/MultiDexExtractor$ExtractedDex;->crc:J

    move-wide/from16 v18, v0

    cmp-long v17, v4, v18

    if-eqz v17, :cond_1

    .line 181
    :cond_0
    new-instance v17, Ljava/io/IOException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Invalid extracted dex: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", expected modification time: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", modification time: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", expected crc: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", file crc: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-wide v0, v8, Landroid/support/multidex/MultiDexExtractor$ExtractedDex;->crc:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 187
    :cond_1
    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 189
    .end local v4    # "expectedCrc":J
    .end local v6    # "expectedModTime":J
    .end local v12    # "lastModified":J
    :cond_2
    new-instance v17, Ljava/io/IOException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Missing extracted secondary dex file \'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 190
    invoke-virtual {v8}, Landroid/support/multidex/MultiDexExtractor$ExtractedDex;->getPath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 194
    .end local v8    # "extractedFile":Landroid/support/multidex/MultiDexExtractor$ExtractedDex;
    .end local v10    # "fileName":Ljava/lang/String;
    :cond_3
    return-object v11
.end method

.method private static performExtractions(Ljava/io/File;Ljava/io/File;)Ljava/util/List;
    .locals 14
    .param p0, "sourceApk"    # Ljava/io/File;
    .param p1, "dexDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/support/multidex/MultiDexExtractor$ExtractedDex;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".classes"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 236
    .local v4, "extractedFilePrefix":Ljava/lang/String;
    invoke-static {p1, v4}, Landroid/support/multidex/MultiDexExtractor;->prepareDexDir(Ljava/io/File;Ljava/lang/String;)V

    .line 238
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v6, "files":Ljava/util/List;, "Ljava/util/List<Landroid/support/multidex/MultiDexExtractor$ExtractedDex;>;"
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 243
    .local v0, "apk":Ljava/util/zip/ZipFile;
    const/4 v9, 0x2

    .line 245
    .local v9, "secondaryNumber":I
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "classes"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".dex"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 246
    .local v1, "dexFile":Ljava/util/zip/ZipEntry;
    :goto_0
    if-eqz v1, :cond_4

    .line 247
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".zip"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 248
    .local v5, "fileName":Ljava/lang/String;
    new-instance v3, Landroid/support/multidex/MultiDexExtractor$ExtractedDex;

    invoke-direct {v3, p1, v5}, Landroid/support/multidex/MultiDexExtractor$ExtractedDex;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 249
    .local v3, "extractedFile":Landroid/support/multidex/MultiDexExtractor$ExtractedDex;
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    const-string v10, "MultiDex"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Extraction is needed for file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/4 v8, 0x0

    .line 253
    .local v8, "numAttempts":I
    const/4 v7, 0x0

    .line 254
    .local v7, "isExtractionSuccessful":Z
    :cond_0
    :goto_1
    const/4 v10, 0x3

    if-ge v8, v10, :cond_2

    if-nez v7, :cond_2

    .line 255
    add-int/lit8 v8, v8, 0x1

    .line 259
    invoke-static {v0, v1, v3, v4}, Landroid/support/multidex/MultiDexExtractor;->extract(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    :try_start_1
    invoke-static {v3}, Landroid/support/multidex/MultiDexExtractor;->getZipCrc(Ljava/io/File;)J

    move-result-wide v10

    iput-wide v10, v3, Landroid/support/multidex/MultiDexExtractor$ExtractedDex;->crc:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    const/4 v7, 0x1

    .line 271
    :goto_2
    :try_start_2
    const-string v11, "MultiDex"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Extraction "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-eqz v7, :cond_1

    const-string v10, "succeeded"

    :goto_3
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " - length "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 272
    invoke-virtual {v3}, Landroid/support/multidex/MultiDexExtractor$ExtractedDex;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ": "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 273
    invoke-virtual {v3}, Landroid/support/multidex/MultiDexExtractor$ExtractedDex;->length()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " - crc: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, v3, Landroid/support/multidex/MultiDexExtractor$ExtractedDex;->crc:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 271
    invoke-static {v11, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    if-nez v7, :cond_0

    .line 276
    invoke-virtual {v3}, Landroid/support/multidex/MultiDexExtractor$ExtractedDex;->delete()Z

    .line 277
    invoke-virtual {v3}, Landroid/support/multidex/MultiDexExtractor$ExtractedDex;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 278
    const-string v10, "MultiDex"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to delete corrupted secondary dex \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 279
    invoke-virtual {v3}, Landroid/support/multidex/MultiDexExtractor$ExtractedDex;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 278
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 292
    .end local v1    # "dexFile":Ljava/util/zip/ZipEntry;
    .end local v3    # "extractedFile":Landroid/support/multidex/MultiDexExtractor$ExtractedDex;
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v7    # "isExtractionSuccessful":Z
    .end local v8    # "numAttempts":I
    :catchall_0
    move-exception v10

    .line 293
    :try_start_3
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 296
    :goto_4
    throw v10

    .line 265
    .restart local v1    # "dexFile":Ljava/util/zip/ZipEntry;
    .restart local v3    # "extractedFile":Landroid/support/multidex/MultiDexExtractor$ExtractedDex;
    .restart local v5    # "fileName":Ljava/lang/String;
    .restart local v7    # "isExtractionSuccessful":Z
    .restart local v8    # "numAttempts":I
    :catch_0
    move-exception v2

    .line 266
    .local v2, "e":Ljava/io/IOException;
    const/4 v7, 0x0

    .line 267
    :try_start_4
    const-string v10, "MultiDex"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to read crc from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Landroid/support/multidex/MultiDexExtractor$ExtractedDex;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 271
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    const-string v10, "failed"

    goto/16 :goto_3

    .line 283
    :cond_2
    if-nez v7, :cond_3

    .line 284
    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not create zip file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 285
    invoke-virtual {v3}, Landroid/support/multidex/MultiDexExtractor$ExtractedDex;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " for secondary dex ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 288
    :cond_3
    add-int/lit8 v9, v9, 0x1

    .line 289
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "classes"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".dex"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    .line 290
    goto/16 :goto_0

    .line 293
    .end local v3    # "extractedFile":Landroid/support/multidex/MultiDexExtractor$ExtractedDex;
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v7    # "isExtractionSuccessful":Z
    .end local v8    # "numAttempts":I
    :cond_4
    :try_start_5
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 299
    :goto_5
    return-object v6

    .line 294
    :catch_1
    move-exception v2

    .line 295
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v10, "MultiDex"

    const-string v11, "Failed to close resource"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 294
    .end local v1    # "dexFile":Ljava/util/zip/ZipEntry;
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 295
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v11, "MultiDex"

    const-string v12, "Failed to close resource"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4
.end method

.method private static prepareDexDir(Ljava/io/File;Ljava/lang/String;)V
    .locals 10
    .param p0, "dexDir"    # Ljava/io/File;
    .param p1, "extractedFilePrefix"    # Ljava/lang/String;

    .prologue
    .line 341
    new-instance v1, Landroid/support/multidex/MultiDexExtractor$1;

    invoke-direct {v1, p1}, Landroid/support/multidex/MultiDexExtractor$1;-><init>(Ljava/lang/String;)V

    .line 350
    .local v1, "filter":Ljava/io/FileFilter;
    invoke-virtual {p0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 351
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_1

    .line 352
    const-string v3, "MultiDex"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to list secondary dex dir content ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_0
    return-void

    .line 355
    :cond_1
    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 356
    .local v2, "oldFile":Ljava/io/File;
    const-string v5, "MultiDex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Trying to delete old file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " of size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 357
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 356
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_2

    .line 359
    const-string v5, "MultiDex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to delete old file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 361
    :cond_2
    const-string v5, "MultiDex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deleted old file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static putStoredApkInfo(Landroid/content/Context;JJLjava/util/List;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timeStamp"    # J
    .param p3, "crc"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JJ",
            "Ljava/util/List",
            "<",
            "Landroid/support/multidex/MultiDexExtractor$ExtractedDex;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 308
    .local p5, "extractedDexes":Ljava/util/List;, "Ljava/util/List<Landroid/support/multidex/MultiDexExtractor$ExtractedDex;>;"
    invoke-static {p0}, Landroid/support/multidex/MultiDexExtractor;->getMultiDexPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 309
    .local v3, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 310
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v4, "timestamp"

    invoke-interface {v1, v4, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 311
    const-string v4, "crc"

    invoke-interface {v1, v4, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 312
    const-string v4, "dex.number"

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 314
    const/4 v2, 0x2

    .line 315
    .local v2, "extractedDexId":I
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/multidex/MultiDexExtractor$ExtractedDex;

    .line 316
    .local v0, "dex":Landroid/support/multidex/MultiDexExtractor$ExtractedDex;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dex.crc."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-wide v6, v0, Landroid/support/multidex/MultiDexExtractor$ExtractedDex;->crc:J

    invoke-interface {v1, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 317
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dex.time."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroid/support/multidex/MultiDexExtractor$ExtractedDex;->lastModified()J

    move-result-wide v6

    invoke-interface {v1, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 318
    add-int/lit8 v2, v2, 0x1

    .line 319
    goto :goto_0

    .line 323
    .end local v0    # "dex":Landroid/support/multidex/MultiDexExtractor$ExtractedDex;
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 324
    return-void
.end method
