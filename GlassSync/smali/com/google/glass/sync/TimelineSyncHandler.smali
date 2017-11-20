.class Lcom/google/glass/sync/TimelineSyncHandler;
.super Lcom/google/glass/sync/ErrorTrackingSyncStatusReporter;
.source "TimelineSyncHandler.java"


# static fields
.field private static final ENABLE_NEWUPLOADSYNCHELPER_FLAG:Ljava/lang/String; = "glass:sync:enable_newuploadsynchelper"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final application:Landroid/content/Context;

.field private final attachmentUploader:Lcom/google/glass/timeline/AttachmentUploader;

.field private final downloadSyncHelper:Lcom/google/glass/sync/DownloadSyncHelper;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private final newUploadSyncHelper:Lcom/google/glass/sync/NewUploadSyncHelper;

.field private final oldItemPurger:Lcom/google/glass/sync/OldItemPurger;

.field private final stylesheetUpdater:Lcom/google/glass/sync/StylesheetUpdater;

.field private final uploadSyncHelper:Lcom/google/glass/sync/UploadSyncHelper;

.field private final userEventFlusher:Lcom/google/glass/sync/UserEventFlusher;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/google/glass/sync/TimelineSyncHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/sync/TimelineSyncHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/sync/TimelineSyncWindowHelper;)V
    .locals 31
    .param p1, "application"    # Landroid/content/Context;
    .param p2, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;
    .param p3, "syncWindowHelper"    # Lcom/google/glass/sync/TimelineSyncWindowHelper;

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Lcom/google/glass/sync/ErrorTrackingSyncStatusReporter;-><init>()V

    .line 41
    const-string v2, "glass_sync"

    .line 42
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/glass/sync/TimelineSyncHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 55
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/glass/sync/TimelineSyncHandler;->application:Landroid/content/Context;

    .line 57
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/glass/sync/TimelineSyncHandler;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 58
    new-instance v2, Lcom/google/glass/timeline/AttachmentUploader;

    .line 59
    invoke-static {}, Lcom/google/glass/auth/AuthUtilsProvider;->getInstance()Lcom/google/glass/auth/AuthUtilsProvider;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/google/glass/auth/AuthUtilsProvider;->get(Landroid/content/Context;)Lcom/google/glass/auth/AuthUtils;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v2, v0, v3, v1}, Lcom/google/glass/timeline/AttachmentUploader;-><init>(Landroid/content/Context;Lcom/google/glass/auth/AuthUtils;Lcom/google/glass/userevent/UserEventHelper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/glass/sync/TimelineSyncHandler;->attachmentUploader:Lcom/google/glass/timeline/AttachmentUploader;

    .line 61
    invoke-static {}, Lcom/google/glass/util/BatteryHelperProvider;->getInstance()Lcom/google/glass/util/BatteryHelperProvider;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/glass/util/BatteryHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/util/BatteryHelper;

    move-result-object v5

    .line 62
    .local v5, "batteryHelper":Lcom/google/glass/util/BatteryHelper;
    invoke-static {}, Lcom/google/glass/util/PowerHelperProvider;->getInstance()Lcom/google/glass/util/PowerHelperProvider;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/glass/util/PowerHelperProvider;->from(Landroid/content/Context;)Lcom/google/glass/util/PowerHelper;

    move-result-object v6

    .line 63
    .local v6, "powerHelper":Lcom/google/glass/util/PowerHelper;
    new-instance v7, Lcom/google/glass/util/WifiHelper;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v7, v0, v1}, Lcom/google/glass/util/WifiHelper;-><init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;)V

    .line 65
    .local v7, "wifiHelper":Lcom/google/glass/util/WifiHelper;
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v10

    .line 67
    .local v10, "timelineItemDatabaseHelper":Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    new-instance v2, Lcom/google/glass/sync/DownloadSyncHelper;

    new-instance v9, Lcom/google/glass/sync/TimelineNotificationFilter;

    invoke-direct {v9}, Lcom/google/glass/sync/TimelineNotificationFilter;-><init>()V

    move-object/from16 v3, p1

    move-object/from16 v4, p0

    move-object/from16 v8, p2

    move-object/from16 v11, p3

    invoke-direct/range {v2 .. v11}, Lcom/google/glass/sync/DownloadSyncHelper;-><init>(Landroid/content/Context;Lcom/google/glass/sync/SyncStatusReporter;Lcom/google/glass/util/BatteryHelper;Lcom/google/glass/util/PowerHelper;Lcom/google/glass/util/WifiHelper;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/sync/TimelineNotificationFilter;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/glass/sync/TimelineSyncWindowHelper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/glass/sync/TimelineSyncHandler;->downloadSyncHelper:Lcom/google/glass/sync/DownloadSyncHelper;

    .line 78
    invoke-static {}, Lcom/google/glass/timeline/TimelineHelperProvider;->getInstance()Lcom/google/glass/timeline/TimelineHelperProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/timeline/TimelineHelperProvider;->get()Lcom/google/glass/timeline/TimelineHelper;

    move-result-object v18

    .line 80
    .local v18, "timelineHelper":Lcom/google/glass/timeline/TimelineHelper;
    new-instance v11, Lcom/google/glass/sync/NewUploadSyncHelper;

    new-instance v20, Lcom/google/glass/sync/AttachmentManager;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/google/glass/sync/AttachmentManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p0

    move-object v15, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v20}, Lcom/google/glass/sync/NewUploadSyncHelper;-><init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/sync/SyncStatusReporter;Lcom/google/glass/util/BatteryHelper;Lcom/google/glass/util/PowerHelper;Lcom/google/glass/util/WifiHelper;Lcom/google/glass/timeline/TimelineHelper;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/glass/sync/AttachmentManager;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/google/glass/sync/TimelineSyncHandler;->newUploadSyncHelper:Lcom/google/glass/sync/NewUploadSyncHelper;

    .line 91
    new-instance v19, Lcom/google/glass/sync/UploadSyncHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/sync/TimelineSyncHandler;->attachmentUploader:Lcom/google/glass/timeline/AttachmentUploader;

    move-object/from16 v26, v0

    .line 101
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v29

    new-instance v30, Lcom/google/glass/sync/AttachmentManager;

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/google/glass/sync/AttachmentManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v20, p1

    move-object/from16 v21, p2

    move-object/from16 v22, p0

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v25, v7

    move-object/from16 v27, v18

    move-object/from16 v28, v10

    invoke-direct/range {v19 .. v30}, Lcom/google/glass/sync/UploadSyncHelper;-><init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/sync/SyncStatusReporter;Lcom/google/glass/util/BatteryHelper;Lcom/google/glass/util/PowerHelper;Lcom/google/glass/util/WifiHelper;Lcom/google/glass/timeline/AttachmentUploader;Lcom/google/glass/timeline/TimelineHelper;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/glass/time/Clock;Lcom/google/glass/sync/AttachmentManager;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/glass/sync/TimelineSyncHandler;->uploadSyncHelper:Lcom/google/glass/sync/UploadSyncHelper;

    .line 104
    new-instance v3, Lcom/google/glass/sync/StylesheetUpdater;

    .line 105
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v2}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v2}, Lcom/google/glass/sync/StylesheetUpdater;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/glass/sync/TimelineSyncHandler;->stylesheetUpdater:Lcom/google/glass/sync/StylesheetUpdater;

    .line 109
    new-instance v2, Lcom/google/glass/sync/OldItemPurger;

    new-instance v3, Lcom/google/glass/sync/AttachmentManager;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/google/glass/sync/AttachmentManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v2, v0, v10, v3, v1}, Lcom/google/glass/sync/OldItemPurger;-><init>(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/glass/sync/AttachmentManager;Lcom/google/glass/userevent/UserEventHelper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/glass/sync/TimelineSyncHandler;->oldItemPurger:Lcom/google/glass/sync/OldItemPurger;

    .line 112
    new-instance v2, Lcom/google/glass/sync/UserEventFlusher;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/google/glass/sync/UserEventFlusher;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/glass/sync/TimelineSyncHandler;->userEventFlusher:Lcom/google/glass/sync/UserEventFlusher;

    .line 113
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/timeline/AttachmentUploader;Lcom/google/glass/sync/StylesheetUpdater;Lcom/google/glass/sync/OldItemPurger;Lcom/google/glass/sync/UserEventFlusher;Lcom/google/glass/sync/DownloadSyncHelper;Lcom/google/glass/sync/UploadSyncHelper;)V
    .locals 1
    .param p1, "application"    # Landroid/content/Context;
    .param p2, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;
    .param p3, "attachmentUploader"    # Lcom/google/glass/timeline/AttachmentUploader;
    .param p4, "stylesheetUpdater"    # Lcom/google/glass/sync/StylesheetUpdater;
    .param p5, "oldItemPurger"    # Lcom/google/glass/sync/OldItemPurger;
    .param p6, "userEventFlusher"    # Lcom/google/glass/sync/UserEventFlusher;
    .param p7, "downloadSyncHelper"    # Lcom/google/glass/sync/DownloadSyncHelper;
    .param p8, "uploadSyncHelper"    # Lcom/google/glass/sync/UploadSyncHelper;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/google/glass/sync/ErrorTrackingSyncStatusReporter;-><init>()V

    .line 41
    const-string v0, "glass_sync"

    .line 42
    invoke-static {p0, v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/sync/TimelineSyncHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 120
    iput-object p1, p0, Lcom/google/glass/sync/TimelineSyncHandler;->application:Landroid/content/Context;

    .line 121
    iput-object p2, p0, Lcom/google/glass/sync/TimelineSyncHandler;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 122
    iput-object p3, p0, Lcom/google/glass/sync/TimelineSyncHandler;->attachmentUploader:Lcom/google/glass/timeline/AttachmentUploader;

    .line 123
    iput-object p4, p0, Lcom/google/glass/sync/TimelineSyncHandler;->stylesheetUpdater:Lcom/google/glass/sync/StylesheetUpdater;

    .line 124
    iput-object p5, p0, Lcom/google/glass/sync/TimelineSyncHandler;->oldItemPurger:Lcom/google/glass/sync/OldItemPurger;

    .line 125
    iput-object p6, p0, Lcom/google/glass/sync/TimelineSyncHandler;->userEventFlusher:Lcom/google/glass/sync/UserEventFlusher;

    .line 126
    iput-object p7, p0, Lcom/google/glass/sync/TimelineSyncHandler;->downloadSyncHelper:Lcom/google/glass/sync/DownloadSyncHelper;

    .line 130
    iput-object p8, p0, Lcom/google/glass/sync/TimelineSyncHandler;->uploadSyncHelper:Lcom/google/glass/sync/UploadSyncHelper;

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/sync/TimelineSyncHandler;->newUploadSyncHelper:Lcom/google/glass/sync/NewUploadSyncHelper;

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/sync/TimelineSyncHandler;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/sync/TimelineSyncHandler;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/sync/TimelineSyncHandler;)Lcom/google/glass/sync/NewUploadSyncHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/sync/TimelineSyncHandler;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncHandler;->newUploadSyncHelper:Lcom/google/glass/sync/NewUploadSyncHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/sync/TimelineSyncHandler;)Lcom/google/glass/sync/UploadSyncHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/sync/TimelineSyncHandler;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncHandler;->uploadSyncHelper:Lcom/google/glass/sync/UploadSyncHelper;

    return-object v0
.end method

.method private shouldUseNewUploadSyncHelper()Z
    .locals 10

    .prologue
    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 231
    iget-object v4, p0, Lcom/google/glass/sync/TimelineSyncHandler;->application:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 232
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string v4, "glass:sync:enable_newuploadsynchelper"

    invoke-static {v0, v4, v8}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    .line 234
    .local v2, "gservicesEnushFlag":Z
    sget-object v4, Lcom/google/glass/util/Labs$Feature;->ENUSH:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v4}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    .line 236
    .local v1, "enushLab":Z
    or-int v3, v1, v2

    .line 238
    .local v3, "useNewUploadSyncHelper":Z
    if-eqz v3, :cond_0

    .line 239
    iget-object v4, p0, Lcom/google/glass/sync/TimelineSyncHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Using NewUploadSyncHelper [enushLab=%s, gservicesEnushFlag=%s]."

    new-array v6, v6, [Ljava/lang/Object;

    .line 240
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v9

    .line 239
    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    :goto_0
    return v3

    .line 242
    :cond_0
    iget-object v4, p0, Lcom/google/glass/sync/TimelineSyncHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Using UploadSyncHelper [enushLab=%s, gservicesEnushFlag=%s]."

    new-array v6, v6, [Ljava/lang/Object;

    .line 243
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v9

    .line 242
    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public cancelOpportunisticUpload()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncHandler;->uploadSyncHelper:Lcom/google/glass/sync/UploadSyncHelper;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncHandler;->uploadSyncHelper:Lcom/google/glass/sync/UploadSyncHelper;

    invoke-virtual {v0}, Lcom/google/glass/sync/UploadSyncHelper;->cancelOpportunisticUpload()V

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncHandler;->newUploadSyncHelper:Lcom/google/glass/sync/NewUploadSyncHelper;

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncHandler;->newUploadSyncHelper:Lcom/google/glass/sync/NewUploadSyncHelper;

    invoke-virtual {v0}, Lcom/google/glass/sync/NewUploadSyncHelper;->cancelOpportunisticUploads()V

    .line 223
    :cond_1
    return-void
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    sget-object v0, Lcom/google/glass/sync/TimelineSyncHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public sync()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    .line 146
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 147
    invoke-virtual {v5}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    iget-object v7, p0, Lcom/google/glass/sync/TimelineSyncHandler;->userEventFlusher:Lcom/google/glass/sync/UserEventFlusher;

    invoke-interface {v5, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 149
    invoke-direct {p0}, Lcom/google/glass/sync/TimelineSyncHandler;->shouldUseNewUploadSyncHelper()Z

    move-result v4

    .line 150
    .local v4, "useNewUploadSyncHelper":Z
    if-eqz v4, :cond_2

    const/4 v3, 0x3

    .line 151
    .local v3, "syncVersion":I
    :goto_0
    new-instance v2, Lcom/google/glass/sync/SyncStats;

    iget-object v5, p0, Lcom/google/glass/sync/TimelineSyncHandler;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v2, v3, v5}, Lcom/google/glass/sync/SyncStats;-><init>(ILcom/google/glass/userevent/UserEventHelper;)V

    .line 153
    .local v2, "syncStats":Lcom/google/glass/sync/SyncStats;
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v5, Lcom/google/glass/sync/TimelineSyncHandler$1;

    invoke-direct {v5, p0, v4, v2}, Lcom/google/glass/sync/TimelineSyncHandler$1;-><init>(Lcom/google/glass/sync/TimelineSyncHandler;ZLcom/google/glass/sync/SyncStats;)V

    invoke-direct {v1, v5}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 169
    .local v1, "futureUpload":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 170
    invoke-virtual {v5}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 178
    :try_start_0
    iget-object v5, p0, Lcom/google/glass/sync/TimelineSyncHandler;->stylesheetUpdater:Lcom/google/glass/sync/StylesheetUpdater;

    invoke-virtual {v5}, Lcom/google/glass/sync/StylesheetUpdater;->checkForUpdates()V

    .line 179
    iget-object v5, p0, Lcom/google/glass/sync/TimelineSyncHandler;->downloadSyncHelper:Lcom/google/glass/sync/DownloadSyncHelper;

    invoke-virtual {v5, v2}, Lcom/google/glass/sync/DownloadSyncHelper;->sync(Lcom/google/glass/sync/SyncStats;)V

    .line 180
    iget-object v5, p0, Lcom/google/glass/sync/TimelineSyncHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Timeline download complete.  Waiting for timeline upload to complete."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v5, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    .line 183
    iget-object v5, p0, Lcom/google/glass/sync/TimelineSyncHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Timeline upload complete."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v5, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    iget-object v5, p0, Lcom/google/glass/sync/TimelineSyncHandler;->uploadSyncHelper:Lcom/google/glass/sync/UploadSyncHelper;

    if-eqz v5, :cond_0

    .line 193
    iget-object v5, p0, Lcom/google/glass/sync/TimelineSyncHandler;->uploadSyncHelper:Lcom/google/glass/sync/UploadSyncHelper;

    invoke-virtual {v5}, Lcom/google/glass/sync/UploadSyncHelper;->cancelUpload()V

    .line 196
    :cond_0
    iget-object v5, p0, Lcom/google/glass/sync/TimelineSyncHandler;->newUploadSyncHelper:Lcom/google/glass/sync/NewUploadSyncHelper;

    if-eqz v5, :cond_1

    .line 197
    iget-object v5, p0, Lcom/google/glass/sync/TimelineSyncHandler;->newUploadSyncHelper:Lcom/google/glass/sync/NewUploadSyncHelper;

    invoke-virtual {v5}, Lcom/google/glass/sync/NewUploadSyncHelper;->cancelOpportunisticUploads()V

    .line 200
    :cond_1
    invoke-virtual {v1, v6}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 203
    :goto_1
    invoke-virtual {v2}, Lcom/google/glass/sync/SyncStats;->log()V

    .line 207
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 208
    invoke-virtual {v5}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/sync/TimelineSyncHandler;->oldItemPurger:Lcom/google/glass/sync/OldItemPurger;

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 209
    return-void

    .end local v1    # "futureUpload":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Void;>;"
    .end local v2    # "syncStats":Lcom/google/glass/sync/SyncStats;
    .end local v3    # "syncVersion":I
    :cond_2
    move v3, v6

    .line 150
    goto :goto_0

    .line 184
    .restart local v1    # "futureUpload":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Void;>;"
    .restart local v2    # "syncStats":Lcom/google/glass/sync/SyncStats;
    .restart local v3    # "syncVersion":I
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    iget-object v5, p0, Lcom/google/glass/sync/TimelineSyncHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Interrupted when waiting for timeline upload to complete."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v5, v0, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    iget-object v5, p0, Lcom/google/glass/sync/TimelineSyncHandler;->uploadSyncHelper:Lcom/google/glass/sync/UploadSyncHelper;

    if-eqz v5, :cond_3

    .line 193
    iget-object v5, p0, Lcom/google/glass/sync/TimelineSyncHandler;->uploadSyncHelper:Lcom/google/glass/sync/UploadSyncHelper;

    invoke-virtual {v5}, Lcom/google/glass/sync/UploadSyncHelper;->cancelUpload()V

    .line 196
    :cond_3
    iget-object v5, p0, Lcom/google/glass/sync/TimelineSyncHandler;->newUploadSyncHelper:Lcom/google/glass/sync/NewUploadSyncHelper;

    if-eqz v5, :cond_4

    .line 197
    iget-object v5, p0, Lcom/google/glass/sync/TimelineSyncHandler;->newUploadSyncHelper:Lcom/google/glass/sync/NewUploadSyncHelper;

    invoke-virtual {v5}, Lcom/google/glass/sync/NewUploadSyncHelper;->cancelOpportunisticUploads()V

    .line 200
    :cond_4
    invoke-virtual {v1, v6}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    goto :goto_1

    .line 186
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 187
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_2
    iget-object v5, p0, Lcom/google/glass/sync/TimelineSyncHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Exception waiting for timeline upload to complete."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v5, v0, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 192
    iget-object v5, p0, Lcom/google/glass/sync/TimelineSyncHandler;->uploadSyncHelper:Lcom/google/glass/sync/UploadSyncHelper;

    if-eqz v5, :cond_5

    .line 193
    iget-object v5, p0, Lcom/google/glass/sync/TimelineSyncHandler;->uploadSyncHelper:Lcom/google/glass/sync/UploadSyncHelper;

    invoke-virtual {v5}, Lcom/google/glass/sync/UploadSyncHelper;->cancelUpload()V

    .line 196
    :cond_5
    iget-object v5, p0, Lcom/google/glass/sync/TimelineSyncHandler;->newUploadSyncHelper:Lcom/google/glass/sync/NewUploadSyncHelper;

    if-eqz v5, :cond_6

    .line 197
    iget-object v5, p0, Lcom/google/glass/sync/TimelineSyncHandler;->newUploadSyncHelper:Lcom/google/glass/sync/NewUploadSyncHelper;

    invoke-virtual {v5}, Lcom/google/glass/sync/NewUploadSyncHelper;->cancelOpportunisticUploads()V

    .line 200
    :cond_6
    invoke-virtual {v1, v6}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    goto :goto_1

    .line 192
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catchall_0
    move-exception v5

    iget-object v7, p0, Lcom/google/glass/sync/TimelineSyncHandler;->uploadSyncHelper:Lcom/google/glass/sync/UploadSyncHelper;

    if-eqz v7, :cond_7

    .line 193
    iget-object v7, p0, Lcom/google/glass/sync/TimelineSyncHandler;->uploadSyncHelper:Lcom/google/glass/sync/UploadSyncHelper;

    invoke-virtual {v7}, Lcom/google/glass/sync/UploadSyncHelper;->cancelUpload()V

    .line 196
    :cond_7
    iget-object v7, p0, Lcom/google/glass/sync/TimelineSyncHandler;->newUploadSyncHelper:Lcom/google/glass/sync/NewUploadSyncHelper;

    if-eqz v7, :cond_8

    .line 197
    iget-object v7, p0, Lcom/google/glass/sync/TimelineSyncHandler;->newUploadSyncHelper:Lcom/google/glass/sync/NewUploadSyncHelper;

    invoke-virtual {v7}, Lcom/google/glass/sync/NewUploadSyncHelper;->cancelOpportunisticUploads()V

    .line 200
    :cond_8
    invoke-virtual {v1, v6}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    throw v5
.end method
