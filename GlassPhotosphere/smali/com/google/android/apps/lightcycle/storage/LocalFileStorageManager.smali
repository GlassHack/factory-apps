.class public Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;
.super Ljava/lang/Object;
.source "LocalFileStorageManager.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/storage/StorageManager;


# static fields
.field private static final DEFAULT_PANORAMA_DIRECTORY:Ljava/lang/String; = "panoramas"

.field private static final JPEG_FILTER:Ljava/io/FileFilter;

.field private static final MAX_AGE_SESSION_DIRS_MILLIS:J = 0x5265c00L

.field private static final METADATA_FILE:Ljava/lang/String; = "session.meta"

.field private static final OLD_METADATA_FILE:Ljava/lang/String; = "metadata.csv"

.field private static final ORIENTATION_FILE:Ljava/lang/String; = "orientations.txt"

.field private static final PANORAMA_FILE_PREFIX:Ljava/lang/String; = "PANO_"

.field private static final PANORAMA_SESSIONS_ROOT_DIR:Ljava/lang/String; = "panorama_sessions"

.field private static final PANORAMA_SESSION_DIR_PREFIX:Ljava/lang/String; = "session_"

.field private static final PREVIEW_PANORAMA_FILE_PREFIX:Ljava/lang/String; = "preview_"

.field private static final TAG:Ljava/lang/String; = "LightCycle-storage"

.field private static final TEMP_DIRECTORY:Ljava/lang/String; = "temp"

.field private static final THUMBNAIL_DIRECTORY:Ljava/lang/String; = "thumbnails"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLocalDatabase:Lcom/google/android/apps/lightcycle/storage/LocalDatabase;

.field private mPanoDirectory:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager$1;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;->JPEG_FILTER:Ljava/io/FileFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private cleanUpOldSessions(J)V
    .locals 12
    .param p1, "maxAgeInMillis"    # J

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;->getSessionBaseDirectory()Ljava/io/File;

    move-result-object v7

    .line 428
    .local v7, "sessionRoot":Ljava/io/File;
    new-instance v8, Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager$2;

    invoke-direct {v8, p0}, Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager$2;-><init>(Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;)V

    invoke-virtual {v7, v8}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v6

    .line 435
    .local v6, "sessionDirs":[Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 436
    .local v3, "nowInMillis":J
    move-object v0, v6

    .local v0, "arr$":[Ljava/io/File;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v5, v0, v1

    .line 437
    .local v5, "sessionDir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    sub-long v10, v3, p1

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    .line 438
    invoke-static {v5}, Lcom/google/android/apps/lightcycle/util/FileUtil;->deleteDirectoryRecursively(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 439
    const-string v8, "LightCycle-storage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not clean up "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 443
    .end local v5    # "sessionDir":Ljava/io/File;
    :cond_1
    return-void
.end method

.method private getDefaultPanoDirectory()Ljava/io/File;
    .locals 4

    .prologue
    .line 394
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 395
    .local v0, "externalStorage":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "panoramas"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 396
    .local v1, "panoDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 397
    const-string v2, "LightCycle-storage"

    const-string v3, "Panorama directory not created."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const/4 v1, 0x0

    .line 400
    .end local v1    # "panoDir":Ljava/io/File;
    :cond_0
    return-object v1
.end method

.method private getNumImageFiles(Ljava/lang/String;)I
    .locals 4
    .param p1, "captureDir"    # Ljava/lang/String;

    .prologue
    .line 263
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "capture directory : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 264
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 265
    .local v0, "capturePath":Ljava/io/File;
    sget-object v2, Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;->JPEG_FILTER:Ljava/io/FileFilter;

    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 266
    .local v1, "imageFiles":[Ljava/io/File;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    array-length v2, v1

    goto :goto_0
.end method

.method private getThumbnailDirectory()Ljava/io/File;
    .locals 3

    .prologue
    .line 411
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;->getPanoDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "thumbnails"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 412
    .local v0, "thumbnailDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 413
    const-string v1, "LightCycle-storage"

    const-string v2, "Thumbnails directory not created."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const/4 v0, 0x0

    .line 416
    .end local v0    # "thumbnailDir":Ljava/io/File;
    :cond_0
    return-object v0
.end method


# virtual methods
.method addExistingPanoramaSession(Ljava/io/File;IF)Z
    .locals 8
    .param p1, "stitchedPanoramaFile"    # Ljava/io/File;
    .param p2, "thumbnailWidth"    # I
    .param p3, "thumbnailAspectRatio"    # F

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 285
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;->getThumbnailDirectory()Ljava/io/File;

    move-result-object v1

    .line 286
    .local v1, "thumbnailDirectory":Ljava/io/File;
    if-nez v1, :cond_1

    .line 287
    const-string v4, "LightCycle-storage"

    const-string v5, "Could not get the thumbnail directory."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_0
    :goto_0
    return v3

    .line 290
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 294
    .local v2, "thumbnailFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 295
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, p2, p3}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->CreateThumbnailImage(Ljava/lang/String;Ljava/lang/String;IF)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 303
    :cond_2
    new-instance v0, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;-><init>()V

    .line 304
    .local v0, "entry":Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;
    iput-object v7, v0, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->captureDirectory:Ljava/lang/String;

    .line 305
    iput-object v7, v0, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->creatorVersion:Ljava/lang/String;

    .line 306
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->id:Ljava/lang/String;

    .line 307
    iput-object v7, v0, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->metadataFile:Ljava/lang/String;

    .line 308
    iput-boolean v4, v0, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->stitchedExists:Z

    .line 309
    iput-boolean v4, v0, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->thumbnailExists:Z

    .line 310
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->stitchedFile:Ljava/lang/String;

    .line 311
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->thumbnailFile:Ljava/lang/String;

    .line 312
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;->mLocalDatabase:Lcom/google/android/apps/lightcycle/storage/LocalDatabase;

    invoke-virtual {v3, v0}, Lcom/google/android/apps/lightcycle/storage/LocalDatabase;->addSession(Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;)V

    move v3, v4

    .line 313
    goto :goto_0
.end method

.method public addExistingPanoramaSessions(Lcom/google/android/apps/lightcycle/util/Callback;Landroid/app/ProgressDialog;)V
    .locals 2
    .param p2, "progressDialog"    # Landroid/app/ProgressDialog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Landroid/app/ProgressDialog;",
            ")V"
        }
    .end annotation

    .prologue
    .line 272
    .local p1, "callback":Lcom/google/android/apps/lightcycle/util/Callback;, "Lcom/google/android/apps/lightcycle/util/Callback<Ljava/lang/Void;>;"
    new-instance v0, Lcom/google/android/apps/lightcycle/storage/InitializeLocalDatabaseTask;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p2, p1}, Lcom/google/android/apps/lightcycle/storage/InitializeLocalDatabaseTask;-><init>(Landroid/content/Context;Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;Landroid/app/ProgressDialog;Lcom/google/android/apps/lightcycle/util/Callback;)V

    .line 274
    .local v0, "task":Lcom/google/android/apps/lightcycle/storage/InitializeLocalDatabaseTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/storage/InitializeLocalDatabaseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 275
    return-void
.end method

.method public addSessionData(Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;)V
    .locals 8
    .param p1, "session"    # Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 144
    const-string v4, "LightCycle-storage"

    const-string v5, "Adding session data"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance v0, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;-><init>()V

    .line 146
    .local v0, "entry":Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;
    new-instance v2, Ljava/io/File;

    iget-object v4, p1, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->sessionDir:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    .local v2, "storageDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 148
    const-string v4, "LightCycle-storage"

    const-string v5, "The storage directory does not exist."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v4, p1, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->sessionId:Ljava/lang/String;

    iput-object v4, v0, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->id:Ljava/lang/String;

    .line 152
    iget-object v4, p1, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->sessionDir:Ljava/lang/String;

    iput-object v4, v0, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->captureDirectory:Ljava/lang/String;

    .line 153
    iget-object v4, p1, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->metadataFilePath:Ljava/lang/String;

    iput-object v4, v0, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->metadataFile:Ljava/lang/String;

    .line 154
    new-instance v1, Ljava/io/File;

    iget-object v4, p1, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->mosaicFilePath:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    .local v1, "stitchedFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 156
    iput-boolean v7, v0, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->stitchedExists:Z

    .line 157
    iget-object v4, p1, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->mosaicFilePath:Ljava/lang/String;

    iput-object v4, v0, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->stitchedFile:Ljava/lang/String;

    .line 162
    :goto_1
    new-instance v3, Ljava/io/File;

    iget-object v4, p1, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->thumbnailFilePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    .local v3, "thumbFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 164
    iput-boolean v7, v0, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->thumbnailExists:Z

    .line 165
    iget-object v4, p1, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->thumbnailFilePath:Ljava/lang/String;

    iput-object v4, v0, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->thumbnailFile:Ljava/lang/String;

    .line 170
    :goto_2
    invoke-static {}, Lcom/google/android/apps/lightcycle/LightCycleApp;->getAppVersion()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->creatorVersion:Ljava/lang/String;

    .line 171
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;->mLocalDatabase:Lcom/google/android/apps/lightcycle/storage/LocalDatabase;

    invoke-virtual {v4, v0}, Lcom/google/android/apps/lightcycle/storage/LocalDatabase;->addSession(Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;)V

    goto :goto_0

    .line 159
    .end local v3    # "thumbFile":Ljava/io/File;
    :cond_1
    iput-boolean v6, v0, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->stitchedExists:Z

    .line 160
    const-string v4, ""

    iput-object v4, v0, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->stitchedFile:Ljava/lang/String;

    goto :goto_1

    .line 167
    .restart local v3    # "thumbFile":Ljava/io/File;
    :cond_2
    iput-boolean v6, v0, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->thumbnailExists:Z

    .line 168
    const-string v4, ""

    iput-object v4, v0, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->thumbnailFile:Ljava/lang/String;

    goto :goto_2
.end method

.method public deleteSession(Ljava/lang/String;)V
    .locals 4
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 318
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;->mLocalDatabase:Lcom/google/android/apps/lightcycle/storage/LocalDatabase;

    invoke-virtual {v2, p1}, Lcom/google/android/apps/lightcycle/storage/LocalDatabase;->getSession(Ljava/lang/String;)Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;

    move-result-object v1

    .line 321
    .local v1, "session":Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;
    iget-boolean v2, v1, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->stitchedExists:Z

    if-eqz v2, :cond_0

    .line 322
    const-string v2, "LightCycle-storage"

    const-string v3, "Deleting stiched pano file."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v2, v1, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->stitchedFile:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/apps/lightcycle/util/FileUtil;->deleteFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 324
    const-string v2, "LightCycle-storage"

    const-string v3, "Unable to delete pano file."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_0
    iget-boolean v2, v1, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->thumbnailExists:Z

    if-eqz v2, :cond_1

    .line 330
    const-string v2, "LightCycle-storage"

    const-string v3, "Deleting thumbnail file."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v2, v1, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->thumbnailFile:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/apps/lightcycle/util/FileUtil;->deleteFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 332
    const-string v2, "LightCycle-storage"

    const-string v3, "Unable to delete pano file."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_1
    iget-object v2, v1, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->captureDirectory:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 338
    const-string v2, "LightCycle-storage"

    const-string v3, "Deleting capture directory."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    new-instance v0, Ljava/io/File;

    iget-object v2, v1, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->captureDirectory:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 340
    .local v0, "captureDirectory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 341
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/util/FileUtil;->deleteDirectoryRecursively(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 342
    const-string v2, "LightCycle-storage"

    const-string v3, "Unable to delete pano capture directory."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    .end local v0    # "captureDirectory":Ljava/io/File;
    :cond_2
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;->mLocalDatabase:Lcom/google/android/apps/lightcycle/storage/LocalDatabase;

    iget-object v3, v1, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/lightcycle/storage/LocalDatabase;->deleteSession(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 349
    const-string v2, "LightCycle-storage"

    const-string v3, "Unable to delete session entry in local database."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_3
    return-void
.end method

.method public getExistingLocalSessionStorage(Ljava/lang/String;)Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;
    .locals 6
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 176
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;->mLocalDatabase:Lcom/google/android/apps/lightcycle/storage/LocalDatabase;

    invoke-virtual {v3, p1}, Lcom/google/android/apps/lightcycle/storage/LocalDatabase;->getSession(Ljava/lang/String;)Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;

    move-result-object v0

    .line 177
    .local v0, "entry":Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;
    if-nez v0, :cond_1

    .line 178
    const/4 v2, 0x0

    .line 208
    :cond_0
    :goto_0
    return-object v2

    .line 181
    :cond_1
    new-instance v2, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    invoke-direct {v2}, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;-><init>()V

    .line 182
    .local v2, "session":Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;
    iget-object v3, v0, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->id:Ljava/lang/String;

    iput-object v3, v2, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->sessionId:Ljava/lang/String;

    .line 183
    iget-object v3, v0, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->captureDirectory:Ljava/lang/String;

    iput-object v3, v2, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->sessionDir:Ljava/lang/String;

    .line 184
    iget-object v3, v0, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->metadataFile:Ljava/lang/String;

    iput-object v3, v2, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->metadataFilePath:Ljava/lang/String;

    .line 189
    iget-object v3, v2, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->metadataFilePath:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->metadataFilePath:Ljava/lang/String;

    const-string v4, "metadata.csv"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 191
    iget-object v3, v2, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->metadataFilePath:Ljava/lang/String;

    const-string v4, "metadata.csv"

    const-string v5, "session.meta"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->metadataFilePath:Ljava/lang/String;

    .line 195
    :cond_2
    iget-boolean v3, v0, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->stitchedExists:Z

    if-eqz v3, :cond_3

    .line 196
    iget-object v3, v0, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->stitchedFile:Ljava/lang/String;

    iput-object v3, v2, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->mosaicFilePath:Ljava/lang/String;

    .line 198
    :cond_3
    iget-boolean v3, v0, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->thumbnailExists:Z

    if-eqz v3, :cond_4

    .line 199
    iget-object v3, v0, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->thumbnailFile:Ljava/lang/String;

    iput-object v3, v2, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->thumbnailFilePath:Ljava/lang/String;

    .line 202
    :cond_4
    iget-object v3, v2, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->sessionDir:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 203
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/io/File;

    iget-object v4, v2, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->sessionDir:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v4, "orientations.txt"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 205
    .local v1, "orientationFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->orientationFilePath:Ljava/lang/String;

    goto :goto_0
.end method

.method public getLocalSessionStorage()Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;
    .locals 20

    .prologue
    .line 91
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v17, "yyyyMMdd_HHmmss"

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 92
    .local v5, "format":Ljava/text/SimpleDateFormat;
    new-instance v17, Ljava/util/Date;

    invoke-direct/range {v17 .. v17}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, "dateTime":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;->getSessionBaseDirectory()Ljava/io/File;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "session_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 95
    .local v7, "imageDirectory":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    move-result v17

    if-nez v17, :cond_0

    .line 96
    const-string v17, "Image directory already exists."

    invoke-static/range {v17 .. v17}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 100
    :cond_0
    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 101
    invoke-virtual {v7}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "children":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v0, v2

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_1

    .line 103
    new-instance v17, Ljava/io/File;

    aget-object v18, v2, v6

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v7, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 106
    .end local v2    # "children":[Ljava/lang/String;
    .end local v6    # "i":I
    :catch_0
    move-exception v4

    .line 107
    .local v4, "e":Ljava/lang/Exception;
    const-string v17, "LightCycle-storage"

    const-string v18, "Could not delete temporary images."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v14, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    invoke-direct {v14}, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;-><init>()V

    .line 112
    .local v14, "storage":Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;
    iput-object v3, v14, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->sessionId:Ljava/lang/String;

    .line 113
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->sessionDir:Ljava/lang/String;

    .line 115
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "PANO_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ".jpg"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 116
    .local v10, "mosaicFilename":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;->mPanoDirectory:Ljava/io/File;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v9, v0, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 117
    .local v9, "mosaicFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->mosaicFilePath:Ljava/lang/String;

    .line 119
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "preview_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ".jpg"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 121
    .local v13, "previewMosaicFilename":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;->mPanoDirectory:Ljava/io/File;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v12, v0, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 122
    .local v12, "previewMosaicFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->previewMosaicFilePath:Ljava/lang/String;

    .line 124
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;->getThumbnailDirectory()Ljava/io/File;

    move-result-object v15

    .line 125
    .local v15, "thumbnailDirectory":Ljava/io/File;
    if-nez v15, :cond_2

    .line 126
    const-string v17, "LightCycle-storage"

    const-string v18, "Could not get the thumbnail directory."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string v17, ""

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->thumbnailFilePath:Ljava/lang/String;

    .line 133
    :goto_1
    new-instance v11, Ljava/io/File;

    const-string v17, "orientations.txt"

    move-object/from16 v0, v17

    invoke-direct {v11, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 134
    .local v11, "orientationFile":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->orientationFilePath:Ljava/lang/String;

    .line 136
    new-instance v8, Ljava/io/File;

    const-string v17, "session.meta"

    move-object/from16 v0, v17

    invoke-direct {v8, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 137
    .local v8, "metadataFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->metadataFilePath:Ljava/lang/String;

    .line 139
    return-object v14

    .line 129
    .end local v8    # "metadataFile":Ljava/io/File;
    .end local v11    # "orientationFile":Ljava/io/File;
    :cond_2
    new-instance v16, Ljava/io/File;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;->getThumbnailDirectory()Ljava/io/File;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 130
    .local v16, "thumbnailFile":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->thumbnailFilePath:Ljava/lang/String;

    goto :goto_1
.end method

.method public getPanoDirectory()Ljava/io/File;
    .locals 2

    .prologue
    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Panorama directory is : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;->mPanoDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;->mPanoDirectory:Ljava/io/File;

    return-object v0
.end method

.method public getSessionBaseDirectory()Ljava/io/File;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 377
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 378
    .local v0, "externalStorage":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v3, "panorama_sessions"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 379
    .local v1, "panoDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_0

    .line 380
    const-string v3, "LightCycle-storage"

    const-string v4, "Sessions root directory could not be created."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 383
    .end local v1    # "panoDir":Ljava/io/File;
    :cond_0
    return-object v1
.end method

.method public getSessionIdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;->mLocalDatabase:Lcom/google/android/apps/lightcycle/storage/LocalDatabase;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/storage/LocalDatabase;->getSessionIdList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSessionMetadata(Ljava/lang/String;)Lcom/google/android/apps/lightcycle/storage/SessionMetadata;
    .locals 4
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 218
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;->mLocalDatabase:Lcom/google/android/apps/lightcycle/storage/LocalDatabase;

    invoke-virtual {v2, p1}, Lcom/google/android/apps/lightcycle/storage/LocalDatabase;->getSession(Ljava/lang/String;)Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;

    move-result-object v1

    .line 219
    .local v1, "session":Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;
    if-nez v1, :cond_0

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ID not found in database : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 221
    const/4 v0, 0x0

    .line 233
    :goto_0
    return-object v0

    .line 223
    :cond_0
    new-instance v0, Lcom/google/android/apps/lightcycle/storage/SessionMetadata;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/storage/SessionMetadata;-><init>()V

    .line 224
    .local v0, "meta":Lcom/google/android/apps/lightcycle/storage/SessionMetadata;
    iget-object v2, v1, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->creatorVersion:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/apps/lightcycle/storage/SessionMetadata;->creatorVersion:Ljava/lang/String;

    .line 225
    iget-object v2, v1, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->captureDirectory:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 226
    iget-object v2, v1, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->captureDirectory:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;->getNumImageFiles(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/google/android/apps/lightcycle/storage/SessionMetadata;->numPhotos:I

    .line 230
    :goto_1
    iget-boolean v2, v1, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->stitchedExists:Z

    iput-boolean v2, v0, Lcom/google/android/apps/lightcycle/storage/SessionMetadata;->stitchedPanoramaExists:Z

    .line 231
    iget-boolean v2, v1, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->thumbnailExists:Z

    iput-boolean v2, v0, Lcom/google/android/apps/lightcycle/storage/SessionMetadata;->thumbnailExists:Z

    .line 232
    iget-object v2, v1, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->creatorVersion:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/apps/lightcycle/storage/SessionMetadata;->creatorVersion:Ljava/lang/String;

    goto :goto_0

    .line 228
    :cond_1
    const/4 v2, 0x0

    iput v2, v0, Lcom/google/android/apps/lightcycle/storage/SessionMetadata;->numPhotos:I

    goto :goto_1
.end method

.method public getTempDirectory()Ljava/io/File;
    .locals 3

    .prologue
    .line 367
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;->getPanoDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "temp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 368
    .local v0, "tempDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 369
    const-string v1, "LightCycle-storage"

    const-string v2, "Temp directory not created."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const/4 v0, 0x0

    .line 372
    .end local v0    # "tempDir":Ljava/io/File;
    :cond_0
    return-object v0
.end method

.method public getZippableSession(Ljava/lang/String;)Lcom/google/android/apps/lightcycle/storage/ZippableSession;
    .locals 2
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 355
    new-instance v0, Lcom/google/android/apps/lightcycle/storage/LocalZippableSession;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;->mLocalDatabase:Lcom/google/android/apps/lightcycle/storage/LocalDatabase;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/lightcycle/storage/LocalDatabase;->getSession(Ljava/lang/String;)Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/lightcycle/storage/LocalZippableSession;-><init>(Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;)V

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;->mContext:Landroid/content/Context;

    .line 65
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/util/Utils;->isDogfoodApp(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    const-wide/32 v0, 0x5265c00

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;->cleanUpOldSessions(J)V

    .line 68
    :cond_0
    new-instance v0, Lcom/google/android/apps/lightcycle/storage/LocalDatabase;

    invoke-direct {v0, p1}, Lcom/google/android/apps/lightcycle/storage/LocalDatabase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;->mLocalDatabase:Lcom/google/android/apps/lightcycle/storage/LocalDatabase;

    .line 69
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;->getDefaultPanoDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;->mPanoDirectory:Ljava/io/File;

    .line 70
    return-void
.end method

.method public retrieveRawSessionData(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 244
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;->mLocalDatabase:Lcom/google/android/apps/lightcycle/storage/LocalDatabase;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/lightcycle/storage/LocalDatabase;->getSession(Ljava/lang/String;)Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;

    move-result-object v0

    .line 245
    .local v0, "session":Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->captureDirectory:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public retrieveStitchedPanorama(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 238
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;->mLocalDatabase:Lcom/google/android/apps/lightcycle/storage/LocalDatabase;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/lightcycle/storage/LocalDatabase;->getSession(Ljava/lang/String;)Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;

    move-result-object v0

    .line 239
    .local v0, "session":Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->stitchedFile:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public retrieveThumbnail(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 250
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;->mLocalDatabase:Lcom/google/android/apps/lightcycle/storage/LocalDatabase;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/lightcycle/storage/LocalDatabase;->getSession(Ljava/lang/String;)Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;

    move-result-object v0

    .line 251
    .local v0, "session":Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->thumbnailFile:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public setPanoramaDestination(Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 79
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;->mPanoDirectory:Ljava/io/File;

    .line 80
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;->mPanoDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;->mPanoDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    const-string v0, "LightCycle-storage"

    const-string v1, "Panorama directory not created."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/4 v0, 0x0

    .line 84
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
