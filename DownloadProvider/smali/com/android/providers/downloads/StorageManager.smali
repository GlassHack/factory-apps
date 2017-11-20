.class Lcom/android/providers/downloads/StorageManager;
.super Ljava/lang/Object;
.source "StorageManager.java"


# static fields
.field private static final sDownloadDataDirLowSpaceThreshold:J

.field private static final sMaxdownloadDataDirSize:J


# instance fields
.field private mBytesDownloadedSinceLastCheckOnSpace:I

.field private mCleanupThread:Ljava/lang/Thread;

.field private final mContext:Landroid/content/Context;

.field private final mDownloadDataDir:Ljava/io/File;

.field private final mExternalStorageDir:Ljava/io/File;

.field private mNumDownloadsSoFar:I

.field private final mSystemCacheDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 52
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    int-to-long v0, v0

    sput-wide v0, Lcom/android/providers/downloads/StorageManager;->sMaxdownloadDataDirSize:J

    .line 58
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    sget-wide v2, Lcom/android/providers/downloads/StorageManager;->sMaxdownloadDataDirSize:J

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    sput-wide v0, Lcom/android/providers/downloads/StorageManager;->sDownloadDataDirLowSpaceThreshold:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput v0, p0, Lcom/android/providers/downloads/StorageManager;->mBytesDownloadedSinceLastCheckOnSpace:I

    .line 94
    iput v0, p0, Lcom/android/providers/downloads/StorageManager;->mNumDownloadsSoFar:I

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mCleanupThread:Ljava/lang/Thread;

    .line 82
    iput-object p1, p0, Lcom/android/providers/downloads/StorageManager;->mContext:Landroid/content/Context;

    .line 83
    invoke-static {p1}, Lcom/android/providers/downloads/StorageManager;->getDownloadDataDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mDownloadDataDir:Ljava/io/File;

    .line 84
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mExternalStorageDir:Ljava/io/File;

    .line 85
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mSystemCacheDir:Ljava/io/File;

    .line 86
    invoke-direct {p0}, Lcom/android/providers/downloads/StorageManager;->startThreadToCleanupDatabaseAndPurgeFileSystem()V

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/downloads/StorageManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/downloads/StorageManager;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/providers/downloads/StorageManager;->removeSpuriousFiles()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/providers/downloads/StorageManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/downloads/StorageManager;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/providers/downloads/StorageManager;->trimDatabase()V

    return-void
.end method

.method private discardPurgeableFiles(IJ)J
    .locals 17
    .param p1, "destination"    # I
    .param p2, "targetBytes"    # J

    .prologue
    .line 306
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "discardPurgeableFiles: destination = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", targetBytes = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/4 v2, 0x5

    move/from16 v0, p1

    if-ne v0, v2, :cond_0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 312
    .local v11, "destStr":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v11, v6, v2

    .line 313
    .local v6, "bindArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/downloads/StorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "( status = \'200\' AND destination = ? )"

    const-string v7, "lastmod"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 321
    .local v8, "cursor":Landroid/database/Cursor;
    if-nez v8, :cond_1

    .line 322
    const-wide/16 v15, 0x0

    .line 350
    :goto_1
    return-wide v15

    .line 309
    .end local v6    # "bindArgs":[Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v11    # "destStr":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 324
    .restart local v6    # "bindArgs":[Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "destStr":Ljava/lang/String;
    :cond_1
    const-wide/16 v15, 0x0

    .line 326
    .local v15, "totalFreed":J
    :try_start_0
    const-string v2, "_data"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 327
    .local v10, "dataIndex":I
    :cond_2
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    cmp-long v2, v15, p2

    if-gez v2, :cond_4

    .line 328
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 329
    .local v9, "data":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 331
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 332
    .local v12, "file":Ljava/io/File;
    sget-boolean v2, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v2, :cond_3

    .line 333
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "purging "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_3
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v15, v2

    .line 337
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 338
    const-string v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 339
    .local v13, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/downloads/StorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 344
    .end local v9    # "data":Ljava/lang/String;
    .end local v10    # "dataIndex":I
    .end local v12    # "file":Ljava/io/File;
    .end local v13    # "id":J
    :catchall_0
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2

    .restart local v10    # "dataIndex":I
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 347
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Purged files, freed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide v0, v15

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requested"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private declared-synchronized findSpace(Ljava/io/File;JI)V
    .locals 6
    .param p1, "root"    # Ljava/io/File;
    .param p2, "targetBytes"    # J
    .param p4, "destination"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 175
    monitor-enter p0

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-nez v2, :cond_1

    .line 234
    :cond_0
    monitor-exit p0

    return-void

    .line 178
    :cond_1
    const/4 v2, 0x4

    if-eq p4, v2, :cond_2

    if-nez p4, :cond_3

    .line 180
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 181
    new-instance v2, Lcom/android/providers/downloads/StopRequestException;

    const/16 v3, 0xc7

    const-string v4, "external media not mounted"

    invoke-direct {v2, v3, v4}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 186
    :cond_3
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/StorageManager;->getAvailableBytesInFileSystemAtGivenRoot(Ljava/io/File;)J

    move-result-wide v0

    .line 187
    .local v0, "bytesAvailable":J
    sget-wide v2, Lcom/android/providers/downloads/StorageManager;->sDownloadDataDirLowSpaceThreshold:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    .line 192
    sget-wide v2, Lcom/android/providers/downloads/StorageManager;->sDownloadDataDirLowSpaceThreshold:J

    invoke-direct {p0, p4, v2, v3}, Lcom/android/providers/downloads/StorageManager;->discardPurgeableFiles(IJ)J

    .line 193
    invoke-direct {p0}, Lcom/android/providers/downloads/StorageManager;->removeSpuriousFiles()V

    .line 194
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/StorageManager;->getAvailableBytesInFileSystemAtGivenRoot(Ljava/io/File;)J

    move-result-wide v0

    .line 195
    sget-wide v2, Lcom/android/providers/downloads/StorageManager;->sDownloadDataDirLowSpaceThreshold:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    .line 204
    iget-object v2, p0, Lcom/android/providers/downloads/StorageManager;->mSystemCacheDir:Ljava/io/File;

    invoke-virtual {p1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 205
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "System cache dir (\'/cache\') is running low on space.space available (in bytes): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_4
    iget-object v2, p0, Lcom/android/providers/downloads/StorageManager;->mDownloadDataDir:Ljava/io/File;

    invoke-virtual {p1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 216
    iget-object v2, p0, Lcom/android/providers/downloads/StorageManager;->mDownloadDataDir:Ljava/io/File;

    invoke-direct {p0, v2}, Lcom/android/providers/downloads/StorageManager;->getAvailableBytesInDownloadsDataDir(Ljava/io/File;)J

    move-result-wide v0

    .line 217
    sget-wide v2, Lcom/android/providers/downloads/StorageManager;->sDownloadDataDirLowSpaceThreshold:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_5

    .line 219
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Downloads data dir: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is running low on space. space available (in bytes): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_5
    cmp-long v2, v0, p2

    if-gez v2, :cond_6

    .line 224
    sget-wide v2, Lcom/android/providers/downloads/StorageManager;->sDownloadDataDirLowSpaceThreshold:J

    invoke-direct {p0, p4, v2, v3}, Lcom/android/providers/downloads/StorageManager;->discardPurgeableFiles(IJ)J

    .line 225
    invoke-direct {p0}, Lcom/android/providers/downloads/StorageManager;->removeSpuriousFiles()V

    .line 226
    iget-object v2, p0, Lcom/android/providers/downloads/StorageManager;->mDownloadDataDir:Ljava/io/File;

    invoke-direct {p0, v2}, Lcom/android/providers/downloads/StorageManager;->getAvailableBytesInDownloadsDataDir(Ljava/io/File;)J

    move-result-wide v0

    .line 229
    :cond_6
    cmp-long v2, v0, p2

    if-gez v2, :cond_0

    .line 230
    new-instance v2, Lcom/android/providers/downloads/StopRequestException;

    const/16 v3, 0xc6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not enough free space in the filesystem rooted at: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and unable to free any more"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 208
    :cond_7
    new-instance v2, Lcom/android/providers/downloads/StopRequestException;

    const/16 v3, 0xc6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "space in the filesystem rooted at: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is below 10% availability. stopping this download."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method private getAvailableBytesInDownloadsDataDir(Ljava/io/File;)J
    .locals 10
    .param p1, "root"    # Ljava/io/File;

    .prologue
    .line 241
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 242
    .local v0, "files":[Ljava/io/File;
    sget-wide v3, Lcom/android/providers/downloads/StorageManager;->sMaxdownloadDataDirSize:J

    .line 243
    .local v3, "space":J
    if-nez v0, :cond_0

    move-wide v5, v3

    .line 253
    .end local v3    # "space":J
    .local v5, "space":J
    :goto_0
    return-wide v5

    .line 246
    .end local v5    # "space":J
    .restart local v3    # "space":J
    :cond_0
    array-length v2, v0

    .line 247
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 248
    aget-object v7, v0, v1

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    sub-long/2addr v3, v7

    .line 247
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 250
    :cond_1
    sget-boolean v7, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v7, :cond_2

    .line 251
    const-string v7, "DownloadManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "available space (in bytes) in downloads data dir: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-wide v5, v3

    .line 253
    .end local v3    # "space":J
    .restart local v5    # "space":J
    goto :goto_0
.end method

.method private getAvailableBytesInFileSystemAtGivenRoot(Ljava/io/File;)J
    .locals 9
    .param p1, "root"    # Ljava/io/File;

    .prologue
    .line 257
    new-instance v4, Landroid/os/StatFs;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 259
    .local v4, "stat":Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v5, v5

    const-wide/16 v7, 0x4

    sub-long v0, v5, v7

    .line 260
    .local v0, "availableBlocks":J
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v5, v5

    mul-long v2, v5, v0

    .line 261
    .local v2, "size":J
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_0

    .line 262
    const-string v5, "DownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "available space (in bytes) in filesystem rooted at: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_0
    return-wide v2
.end method

.method public static getDownloadDataDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 296
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized incrementBytesDownloadedSinceLastCheckOnSpace(J)I
    .locals 2
    .param p1, "val"    # J

    .prologue
    .line 465
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/providers/downloads/StorageManager;->mBytesDownloadedSinceLastCheckOnSpace:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lcom/android/providers/downloads/StorageManager;->mBytesDownloadedSinceLastCheckOnSpace:I

    .line 466
    iget v0, p0, Lcom/android/providers/downloads/StorageManager;->mBytesDownloadedSinceLastCheckOnSpace:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 465
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private removeSpuriousFiles()V
    .locals 17

    .prologue
    .line 361
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v1, :cond_0

    .line 362
    const-string v1, "DownloadManager"

    const-string v2, "in removeSpuriousFiles"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 366
    .local v11, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/downloads/StorageManager;->mSystemCacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v13

    .line 367
    .local v13, "listOfFiles":[Ljava/io/File;
    if-eqz v13, :cond_1

    .line 368
    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 370
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/downloads/StorageManager;->mDownloadDataDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v13

    .line 371
    if-eqz v13, :cond_2

    .line 372
    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 374
    :cond_2
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 415
    :cond_3
    return-void

    .line 377
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/downloads/StorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_data"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 381
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_8

    .line 382
    :cond_5
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 383
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 384
    .local v10, "filename":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 385
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v1, :cond_6

    .line 386
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in removeSpuriousFiles, preserving file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_6
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v11, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 394
    .end local v10    # "filename":Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_7

    .line 395
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 394
    :cond_7
    throw v1

    :cond_8
    if-eqz v7, :cond_9

    .line 395
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 400
    :cond_9
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v14

    .line 401
    .local v14, "myUid":I
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/File;

    .line 402
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    .line 404
    .local v15, "path":Ljava/lang/String;
    :try_start_1
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v1, v15}, Llibcore/io/Os;->stat(Ljava/lang/String;)Llibcore/io/StructStat;

    move-result-object v16

    .line 405
    .local v16, "stat":Llibcore/io/StructStat;
    move-object/from16 v0, v16

    iget v1, v0, Llibcore/io/StructStat;->st_uid:I

    if-ne v1, v14, :cond_a

    .line 406
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v1, :cond_b

    .line 407
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleting spurious file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_b
    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Llibcore/io/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 411
    .end local v16    # "stat":Llibcore/io/StructStat;
    :catch_0
    move-exception v8

    .line 412
    .local v8, "e":Llibcore/io/ErrnoException;
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stat("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private declared-synchronized resetBytesDownloadedSinceLastCheckOnSpace()V
    .locals 1

    .prologue
    .line 470
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/android/providers/downloads/StorageManager;->mBytesDownloadedSinceLastCheckOnSpace:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    monitor-exit p0

    return-void

    .line 470
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized startThreadToCleanupDatabaseAndPurgeFileSystem()V
    .locals 1

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mCleanupThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mCleanupThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    :goto_0
    monitor-exit p0

    return-void

    .line 110
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/providers/downloads/StorageManager$1;

    invoke-direct {v0, p0}, Lcom/android/providers/downloads/StorageManager$1;-><init>(Lcom/android/providers/downloads/StorageManager;)V

    iput-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mCleanupThread:Ljava/lang/Thread;

    .line 116
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mCleanupThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private trimDatabase()V
    .locals 11

    .prologue
    .line 423
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v0, :cond_0

    .line 424
    const-string v0, "DownloadManager"

    const-string v1, "in trimDatabase"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_0
    const/4 v7, 0x0

    .line 428
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "status >= \'200\'"

    const/4 v4, 0x0

    const-string v5, "lastmod"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 432
    if-nez v7, :cond_2

    .line 435
    const-string v0, "DownloadManager"

    const-string v1, "null cursor in trimDatabase"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    if-eqz v7, :cond_1

    .line 459
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 462
    :cond_1
    return-void

    .line 438
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 439
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/lit16 v10, v0, -0x3e8

    .line 440
    .local v10, "numDelete":I
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 441
    .local v6, "columnId":I
    :goto_1
    if-lez v10, :cond_3

    .line 442
    sget-object v0, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 444
    .local v8, "downloadUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v8, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 445
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_4

    .line 458
    .end local v6    # "columnId":I
    .end local v8    # "downloadUri":Landroid/net/Uri;
    .end local v10    # "numDelete":I
    :cond_3
    if-eqz v7, :cond_1

    goto :goto_0

    .line 448
    .restart local v6    # "columnId":I
    .restart local v8    # "downloadUri":Landroid/net/Uri;
    .restart local v10    # "numDelete":I
    :cond_4
    add-int/lit8 v10, v10, -0x1

    .line 449
    goto :goto_1

    .line 451
    .end local v6    # "columnId":I
    .end local v8    # "downloadUri":Landroid/net/Uri;
    .end local v10    # "numDelete":I
    :catch_0
    move-exception v9

    .line 455
    .local v9, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trimDatabase failed with exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 458
    if-eqz v7, :cond_1

    goto :goto_0

    .end local v9    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 459
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 458
    :cond_5
    throw v0
.end method


# virtual methods
.method getDownloadDataDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mDownloadDataDir:Ljava/io/File;

    return-object v0
.end method

.method declared-synchronized incrementNumDownloadsSoFar()V
    .locals 1

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/providers/downloads/StorageManager;->mNumDownloadsSoFar:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/providers/downloads/StorageManager;->mNumDownloadsSoFar:I

    rem-int/lit16 v0, v0, 0xfa

    if-nez v0, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/android/providers/downloads/StorageManager;->startThreadToCleanupDatabaseAndPurgeFileSystem()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :cond_0
    monitor-exit p0

    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method locateDestinationDirectory(Ljava/lang/String;IJ)Ljava/io/File;
    .locals 5
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "destination"    # I
    .param p3, "contentLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 270
    packed-switch p2, :pswitch_data_0

    .line 287
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected value for destination: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 274
    :pswitch_1
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mDownloadDataDir:Ljava/io/File;

    .line 285
    :cond_0
    :goto_0
    return-object v0

    .line 276
    :pswitch_2
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mSystemCacheDir:Ljava/io/File;

    goto :goto_0

    .line 278
    :pswitch_3
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/providers/downloads/StorageManager;->mExternalStorageDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/providers/downloads/Constants;->DEFAULT_DL_SUBDIR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 279
    .local v0, "base":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_0

    .line 282
    new-instance v1, Lcom/android/providers/downloads/StopRequestException;

    const/16 v2, 0x1ec

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to create external downloads directory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method verifySpace(ILjava/lang/String;J)V
    .locals 4
    .param p1, "destination"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/providers/downloads/StorageManager;->resetBytesDownloadedSinceLastCheckOnSpace()V

    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, "dir":Ljava/io/File;
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v1, :cond_0

    .line 133
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in verifySpace, destination: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    if-nez p2, :cond_1

    .line 137
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "path can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 161
    :cond_2
    :goto_0
    if-nez v0, :cond_5

    .line 162
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid combination of destination: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    :pswitch_0
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mDownloadDataDir:Ljava/io/File;

    .line 144
    goto :goto_0

    .line 146
    :pswitch_1
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mExternalStorageDir:Ljava/io/File;

    .line 147
    goto :goto_0

    .line 149
    :pswitch_2
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mSystemCacheDir:Ljava/io/File;

    .line 150
    goto :goto_0

    .line 152
    :pswitch_3
    iget-object v1, p0, Lcom/android/providers/downloads/StorageManager;->mExternalStorageDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 153
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mExternalStorageDir:Ljava/io/File;

    goto :goto_0

    .line 154
    :cond_3
    iget-object v1, p0, Lcom/android/providers/downloads/StorageManager;->mDownloadDataDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 155
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mDownloadDataDir:Ljava/io/File;

    goto :goto_0

    .line 156
    :cond_4
    iget-object v1, p0, Lcom/android/providers/downloads/StorageManager;->mSystemCacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 157
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mSystemCacheDir:Ljava/io/File;

    goto :goto_0

    .line 165
    :cond_5
    invoke-direct {p0, v0, p3, p4, p1}, Lcom/android/providers/downloads/StorageManager;->findSpace(Ljava/io/File;JI)V

    .line 166
    return-void

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method verifySpaceBeforeWritingToFile(ILjava/lang/String;J)V
    .locals 2
    .param p1, "destination"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-direct {p0, p3, p4}, Lcom/android/providers/downloads/StorageManager;->incrementBytesDownloadedSinceLastCheckOnSpace(J)I

    move-result v0

    const/high16 v1, 0x100000

    if-ge v0, v1, :cond_0

    .line 127
    :goto_0
    return-void

    .line 126
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/providers/downloads/StorageManager;->verifySpace(ILjava/lang/String;J)V

    goto :goto_0
.end method
