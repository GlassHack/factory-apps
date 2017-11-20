.class public Lcom/google/glass/camera/CameraUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final POSTVIEW_SIZE:Lcom/google/glass/camera/Size;

.field public static final PREVIEW_SIZE:Lcom/google/glass/camera/Size;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static nativeLibraryLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x1e0

    const/16 v2, 0x168

    const/16 v1, 0x280

    .line 32
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/camera/CameraUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 38
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/glass/camera/Size;

    invoke-direct {v0, v1, v3}, Lcom/google/glass/camera/Size;-><init>(II)V

    .line 40
    :goto_0
    sput-object v0, Lcom/google/glass/camera/CameraUtils;->PREVIEW_SIZE:Lcom/google/glass/camera/Size;

    .line 44
    invoke-static {}, Lcom/google/glass/camera/CameraUtils;->isNormalHQEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 45
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isGlass1()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/glass/camera/Size;

    invoke-direct {v0, v1, v2}, Lcom/google/glass/camera/Size;-><init>(II)V

    :goto_1
    sput-object v0, Lcom/google/glass/camera/CameraUtils;->POSTVIEW_SIZE:Lcom/google/glass/camera/Size;

    .line 43
    return-void

    .line 40
    :cond_0
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isGlass1()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/glass/camera/Size;

    invoke-direct {v0, v1, v2}, Lcom/google/glass/camera/Size;-><init>(II)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/glass/camera/Size;

    invoke-direct {v0, v2, v1}, Lcom/google/glass/camera/Size;-><init>(II)V

    goto :goto_0

    .line 45
    :cond_2
    new-instance v0, Lcom/google/glass/camera/Size;

    invoke-direct {v0, v1, v3}, Lcom/google/glass/camera/Size;-><init>(II)V

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/google/glass/camera/Size;

    const/16 v1, 0x270

    const/16 v2, 0x160

    invoke-direct {v0, v1, v2}, Lcom/google/glass/camera/Size;-><init>(II)V

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPreviewFpsRange()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    const-string v0, "30000,30000"

    return-object v0
.end method

.method public static isNormalHQEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 172
    const-string v1, "persist.camera.picture_hq"

    invoke-static {v1, v0}, Lcom/google/android/glass/hidden/HiddenSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ro.camera.picture_hq"

    .line 173
    invoke-static {v1, v0}, Lcom/google/android/glass/hidden/HiddenSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static maybeStoreToAttachmentManager(Lcom/google/glass/sync/AttachmentManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 125
    sget-object v1, Lcom/google/glass/util/Labs$Feature;->UATS:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    sget-object v1, Lcom/google/glass/camera/CameraUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "UATS lab not enabled -- %s will have a blank ID."

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    :goto_0
    return-object v0

    .line 130
    :cond_0
    sget-object v1, Lcom/google/glass/camera/CameraUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "UATS lab enabled -- storing %s in the AttachmentManager."

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/sync/AttachmentManager;->connect()Z

    move-result v1

    if-nez v1, :cond_1

    .line 134
    sget-object v1, Lcom/google/glass/camera/CameraUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Unable to connect to AttachmentManager. Attachment will not have a local ID"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :try_start_1
    invoke-virtual {p0}, Lcom/google/glass/sync/AttachmentManager;->close()Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v1

    .line 158
    sget-object v2, Lcom/google/glass/camera/CameraUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Interrupted while attempting to close connection to the AttachmentManager. This should not happen!"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 139
    :cond_1
    :try_start_2
    sget-object v1, Lcom/google/glass/util/FileType;->ATTACHMENT:Lcom/google/glass/util/FileType;

    invoke-virtual {p0, v1, p1}, Lcom/google/glass/sync/AttachmentManager;->store(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 142
    sget-object v1, Lcom/google/glass/camera/CameraUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Couldn\'t get a local attachment ID from attachment manager."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    :try_start_3
    invoke-virtual {p0}, Lcom/google/glass/sync/AttachmentManager;->close()Z
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 157
    :catch_1
    move-exception v1

    .line 158
    sget-object v2, Lcom/google/glass/camera/CameraUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Interrupted while attempting to close connection to the AttachmentManager. This should not happen!"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 146
    :cond_2
    :try_start_4
    sget-object v2, Lcom/google/glass/camera/CameraUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Attachment ID for %s is now %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 156
    :try_start_5
    invoke-virtual {p0}, Lcom/google/glass/sync/AttachmentManager;->close()Z
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2

    :goto_1
    move-object v0, v1

    .line 160
    goto :goto_0

    .line 157
    :catch_2
    move-exception v0

    .line 158
    sget-object v2, Lcom/google/glass/camera/CameraUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Interrupted while attempting to close connection to the AttachmentManager. This should not happen!"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 148
    :catch_3
    move-exception v1

    .line 149
    :try_start_6
    sget-object v2, Lcom/google/glass/camera/CameraUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Unable to insert attachment into the AttachmentManager, attachment will not have a local ID."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 156
    :try_start_7
    invoke-virtual {p0}, Lcom/google/glass/sync/AttachmentManager;->close()Z
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_0

    .line 157
    :catch_4
    move-exception v1

    .line 158
    sget-object v2, Lcom/google/glass/camera/CameraUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Interrupted while attempting to close connection to the AttachmentManager. This should not happen!"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 151
    :catch_5
    move-exception v1

    .line 152
    :try_start_8
    sget-object v2, Lcom/google/glass/camera/CameraUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Interrupted while attempting to insert attachment into the AttachmentManager. Attachment will not have a local ID."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 156
    :try_start_9
    invoke-virtual {p0}, Lcom/google/glass/sync/AttachmentManager;->close()Z
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_6

    goto/16 :goto_0

    .line 157
    :catch_6
    move-exception v1

    .line 158
    sget-object v2, Lcom/google/glass/camera/CameraUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Interrupted while attempting to close connection to the AttachmentManager. This should not happen!"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 155
    :catchall_0
    move-exception v0

    .line 156
    :try_start_a
    invoke-virtual {p0}, Lcom/google/glass/sync/AttachmentManager;->close()Z
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_7

    .line 160
    :goto_2
    throw v0

    .line 157
    :catch_7
    move-exception v1

    .line 158
    sget-object v2, Lcom/google/glass/camera/CameraUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Interrupted while attempting to close connection to the AttachmentManager. This should not happen!"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public static notifyPhotoDeletion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 180
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 181
    const-string v1, "com.google.glass.camera.photosync.ACTION_NOTIFY_PHOTO_DELETION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const-string v1, "KEY_EXTRA_DELETED_TIMELINE_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/glass/util/IntentSender;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 184
    return-void
.end method

.method private static native populateBitmapFromYuv420Sp([BLandroid/graphics/Bitmap;)Z
.end method

.method public static declared-synchronized populateFromYuv420Sp([BLandroid/graphics/Bitmap;)Z
    .locals 8

    .prologue
    .line 58
    const-class v1, Lcom/google/glass/camera/CameraUtils;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/google/glass/camera/CameraUtils;->nativeLibraryLoaded:Z

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/google/glass/time/Stopwatch;

    invoke-direct {v0}, Lcom/google/glass/time/Stopwatch;-><init>()V

    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    move-result-object v0

    .line 60
    const-string v2, "glasscamera"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 61
    sget-object v2, Lcom/google/glass/camera/CameraUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Loaded glasscamera library. [time=%d]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 62
    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->stop()Lcom/google/glass/time/Stopwatch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    .line 61
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/glass/camera/CameraUtils;->nativeLibraryLoaded:Z

    .line 66
    :cond_0
    invoke-static {p0, p1}, Lcom/google/glass/camera/CameraUtils;->populateBitmapFromYuv420Sp([BLandroid/graphics/Bitmap;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public saveThumbnailToCachedFiles(Lcom/google/glass/util/CachedFilesManager;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 82
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 84
    if-nez p1, :cond_0

    .line 85
    sget-object v1, Lcom/google/glass/camera/CameraUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Failed to save thumbnail as CachedFilesManager is null."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    :goto_0
    return-object v0

    .line 89
    :cond_0
    if-nez p2, :cond_1

    .line 90
    sget-object v1, Lcom/google/glass/camera/CameraUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Failed to save thumbnail as no thumbnail is present."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 94
    :cond_1
    sget-object v1, Lcom/google/glass/util/FileType;->THUMBNAIL:Lcom/google/glass/util/FileType;

    new-instance v2, Lcom/google/glass/camera/CameraUtils$1;

    invoke-direct {v2, p0, p2}, Lcom/google/glass/camera/CameraUtils$1;-><init>(Lcom/google/glass/camera/CameraUtils;Landroid/graphics/Bitmap;)V

    .line 95
    invoke-virtual {p1, v1, p3, v2}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/FileType;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    move-result v1

    .line 108
    if-nez v1, :cond_2

    .line 109
    sget-object v1, Lcom/google/glass/camera/CameraUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Failed to save file."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 113
    :cond_2
    sget-object v0, Lcom/google/glass/util/FileType;->THUMBNAIL:Lcom/google/glass/util/FileType;

    invoke-virtual {p1, v0, p3}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
