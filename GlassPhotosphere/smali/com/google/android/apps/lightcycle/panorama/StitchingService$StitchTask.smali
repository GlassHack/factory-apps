.class Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;
.super Landroid/os/AsyncTask;
.source "StitchingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/panorama/StitchingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StitchTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final imageUri:Landroid/net/Uri;

.field private lock:Ljava/lang/Object;

.field private final outputFile:Ljava/lang/String;

.field private final sessionPath:Ljava/lang/String;

.field private final stitchSession:Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchSession;

.field private volatile suspend:Z

.field final synthetic this$0:Lcom/google/android/apps/lightcycle/panorama/StitchingService;

.field private final thumbnailFile:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/lightcycle/panorama/StitchingService;Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .param p2, "stitchSession"    # Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchSession;
    .param p3, "sessionPath"    # Ljava/lang/String;
    .param p4, "outputFile"    # Ljava/lang/String;
    .param p5, "thumbnailFile"    # Ljava/lang/String;
    .param p6, "imageUri"    # Landroid/net/Uri;

    .prologue
    .line 379
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->this$0:Lcom/google/android/apps/lightcycle/panorama/StitchingService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 375
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->lock:Ljava/lang/Object;

    .line 376
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->suspend:Z

    .line 380
    iput-object p2, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->stitchSession:Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchSession;

    .line 381
    iput-object p3, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->sessionPath:Ljava/lang/String;

    .line 382
    iput-object p4, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->outputFile:Ljava/lang/String;

    .line 383
    iput-object p5, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->thumbnailFile:Ljava/lang/String;

    .line 384
    iput-object p6, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->imageUri:Landroid/net/Uri;

    .line 385
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;

    .prologue
    .line 369
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->outputFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;

    .prologue
    .line 369
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->imageUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;

    .prologue
    .line 369
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->waitIfSuspended()V

    return-void
.end method

.method private waitIfSuspended()V
    .locals 3

    .prologue
    .line 512
    iget-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->suspend:Z

    if-eqz v1, :cond_0

    .line 514
    :try_start_0
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->lock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 516
    monitor-exit v2

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 516
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 517
    :catch_0
    move-exception v0

    .line 518
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 17
    .param p1, "v"    # [Ljava/lang/Void;

    .prologue
    .line 419
    const/4 v1, -0x4

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 421
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->waitIfSuspended()V

    .line 424
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->CreateNewStitchingSession()I

    move-result v7

    .line 427
    .local v7, "sessionId":I
    new-instance v1, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask$1;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask$1;-><init>(Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;)V

    invoke-static {v7, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->setProgressCallback(ILcom/google/android/apps/lightcycle/panorama/LightCycleView$ProgressCallback;)V

    .line 443
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 446
    .local v11, "stitchStartTime":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rendering panorama from source images at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->sessionPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 447
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->this$0:Lcom/google/android/apps/lightcycle/panorama/StitchingService;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 449
    .local v9, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "useRealtimeAlignment"

    const/4 v2, 0x0

    invoke-interface {v9, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 453
    .local v8, "useRealtimeAlignment":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->this$0:Lcom/google/android/apps/lightcycle/panorama/StitchingService;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/util/Utils;->isDogfoodApp(Landroid/content/Context;)Z

    move-result v3

    .line 455
    .local v3, "createThumbnail":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->sessionPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->outputFile:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->thumbnailFile:Ljava/lang/String;

    const/16 v5, 0x3e8

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static/range {v1 .. v8}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->StitchPanorama(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IFIZ)I

    move-result v10

    .line 459
    .local v10, "ret":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long v13, v1, v11

    .line 460
    .local v13, "stitchTime":J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->this$0:Lcom/google/android/apps/lightcycle/panorama/StitchingService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->this$0:Lcom/google/android/apps/lightcycle/panorama/StitchingService;

    invoke-static {v2}, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->access$602(Lcom/google/android/apps/lightcycle/panorama/StitchingService;Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;)Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;

    .line 462
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->this$0:Lcom/google/android/apps/lightcycle/panorama/StitchingService;

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->access$600(Lcom/google/android/apps/lightcycle/panorama/StitchingService;)Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;->STITCH_COMPLETE:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;->trackPage(Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;)V

    .line 464
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->this$0:Lcom/google/android/apps/lightcycle/panorama/StitchingService;

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->access$600(Lcom/google/android/apps/lightcycle/panorama/StitchingService;)Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;

    move-result-object v1

    const-string v2, "Stitching"

    const-string v4, "Stitching"

    const-string v5, "Stitch time"

    const-wide/16 v15, 0x3e8

    div-long v15, v13, v15

    long-to-int v6, v15

    invoke-virtual {v1, v2, v4, v5, v6}, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 468
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->outputFile:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->stitchSession:Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchSession;

    iget-object v1, v1, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchSession;->storage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    iget-object v4, v1, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->metadataFilePath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->sessionPath:Ljava/lang/String;

    const/4 v1, 0x1

    if-ne v10, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v4, v5, v1}, Lcom/google/android/apps/lightcycle/util/MetadataUtils;->writeMetadataIntoJpegFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 471
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 468
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 369
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public isSuspended()Z
    .locals 1

    .prologue
    .line 408
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->suspend:Z

    return v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 9
    .param p1, "ret"    # Ljava/lang/Integer;

    .prologue
    const/4 v5, 0x1

    .line 477
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v5, :cond_1

    move v1, v5

    .line 480
    .local v1, "isPanorama":Z
    :goto_0
    invoke-static {}, Lcom/google/android/apps/lightcycle/storage/StorageManagerFactory;->getStorageManager()Lcom/google/android/apps/lightcycle/storage/StorageManager;

    move-result-object v3

    .line 481
    .local v3, "storageManager":Lcom/google/android/apps/lightcycle/storage/StorageManager;
    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->this$0:Lcom/google/android/apps/lightcycle/panorama/StitchingService;

    invoke-interface {v3, v6}, Lcom/google/android/apps/lightcycle/storage/StorageManager;->init(Landroid/content/Context;)V

    .line 482
    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->stitchSession:Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchSession;

    iget-object v6, v6, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchSession;->storage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    invoke-interface {v3, v6}, Lcom/google/android/apps/lightcycle/storage/StorageManager;->addSessionData(Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;)V

    .line 484
    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->this$0:Lcom/google/android/apps/lightcycle/panorama/StitchingService;

    iget-object v7, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->outputFile:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->imageUri:Landroid/net/Uri;

    invoke-static {v6, v7, v8}, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->access$700(Lcom/google/android/apps/lightcycle/panorama/StitchingService;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    .line 487
    .local v4, "uri":Landroid/net/Uri;
    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->this$0:Lcom/google/android/apps/lightcycle/panorama/StitchingService;

    iget-object v7, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->stitchSession:Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchSession;

    iget v7, v7, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchSession;->notificationId:I

    iget-object v8, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->outputFile:Ljava/lang/String;

    invoke-static {v6, v7, v8, v1}, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->access$800(Lcom/google/android/apps/lightcycle/panorama/StitchingService;ILjava/lang/String;Z)Landroid/app/Notification;

    move-result-object v2

    .line 490
    .local v2, "notification":Landroid/app/Notification;
    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->this$0:Lcom/google/android/apps/lightcycle/panorama/StitchingService;

    invoke-static {v6}, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->access$200(Lcom/google/android/apps/lightcycle/panorama/StitchingService;)Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->outputFile:Ljava/lang/String;

    invoke-virtual {v6, v7, v4}, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;->onStitchingResult(Ljava/lang/String;Landroid/net/Uri;)V

    .line 493
    if-eqz v2, :cond_0

    .line 494
    iget-object v6, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->toString()Ljava/lang/String;

    move-result-object v0

    .line 495
    .local v0, "info":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notification : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 496
    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->this$0:Lcom/google/android/apps/lightcycle/panorama/StitchingService;

    invoke-static {v6}, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->access$400(Lcom/google/android/apps/lightcycle/panorama/StitchingService;)Landroid/app/NotificationManager;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->stitchSession:Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchSession;

    iget v7, v7, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchSession;->notificationId:I

    invoke-virtual {v6, v7, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 501
    .end local v0    # "info":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->this$0:Lcom/google/android/apps/lightcycle/panorama/StitchingService;

    invoke-static {v6}, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->access$400(Lcom/google/android/apps/lightcycle/panorama/StitchingService;)Landroid/app/NotificationManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 505
    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->this$0:Lcom/google/android/apps/lightcycle/panorama/StitchingService;

    invoke-static {v5}, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->access$900(Lcom/google/android/apps/lightcycle/panorama/StitchingService;)V

    .line 506
    return-void

    .line 477
    .end local v1    # "isPanorama":Z
    .end local v2    # "notification":Landroid/app/Notification;
    .end local v3    # "storageManager":Lcom/google/android/apps/lightcycle/storage/StorageManager;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 369
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 413
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 414
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 391
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->suspend:Z

    .line 392
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 393
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 394
    monitor-exit v1

    .line 395
    return-void

    .line 394
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public suspend()V
    .locals 1

    .prologue
    .line 401
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->suspend:Z

    .line 402
    return-void
.end method
