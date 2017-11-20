.class public Lcom/google/glass/sync/DownloadSyncHelper;
.super Lcom/google/glass/sync/AbstractTimelineSyncHelper;
.source "DownloadSyncHelper.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation


# static fields
.field static final NUM_ITEMS_SYNCED_PER_REQUEST:I = 0xc8
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final PARSER:Lcom/google/glass/protobuf/ProtoParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/protobuf/ProtoParser",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final htmlItemPreProcessor:Lcom/google/glass/sync/HtmlItemPreProcessor;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private final notificationFilter:Lcom/google/glass/sync/TimelineNotificationFilter;

.field private final syncWindowHelper:Lcom/google/glass/sync/TimelineSyncWindowHelper;

.field private final timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

.field private final usageHelper:Lcom/google/glass/entity/EntityUsageHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/google/glass/protobuf/ProtoParser;

    new-instance v1, Lcom/google/glass/sync/DownloadSyncHelper$1;

    invoke-direct {v1}, Lcom/google/glass/sync/DownloadSyncHelper$1;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/glass/protobuf/ProtoParser;-><init>(Lcom/google/glass/protobuf/ProtoParser$Provider;)V

    sput-object v0, Lcom/google/glass/sync/DownloadSyncHelper;->PARSER:Lcom/google/glass/protobuf/ProtoParser;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/glass/sync/SyncStatusReporter;Lcom/google/glass/util/BatteryHelper;Lcom/google/glass/util/PowerHelper;Lcom/google/glass/util/WifiHelper;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/sync/TimelineNotificationFilter;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/glass/sync/TimelineSyncWindowHelper;)V
    .locals 8
    .param p1, "application"    # Landroid/content/Context;
    .param p2, "syncReporter"    # Lcom/google/glass/sync/SyncStatusReporter;
    .param p3, "batteryHelper"    # Lcom/google/glass/util/BatteryHelper;
    .param p4, "powerHelper"    # Lcom/google/glass/util/PowerHelper;
    .param p5, "wifiHelper"    # Lcom/google/glass/util/WifiHelper;
    .param p6, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;
    .param p7, "notificationFilter"    # Lcom/google/glass/sync/TimelineNotificationFilter;
    .param p8, "timelineItemDatabaseHelper"    # Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    .param p9, "syncWindowHelper"    # Lcom/google/glass/sync/TimelineSyncWindowHelper;

    .prologue
    .line 81
    move-object v1, p0

    move-object v2, p1

    move-object v3, p6

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/google/glass/sync/AbstractTimelineSyncHelper;-><init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/sync/SyncStatusReporter;Lcom/google/glass/util/BatteryHelper;Lcom/google/glass/util/PowerHelper;Lcom/google/glass/util/WifiHelper;)V

    .line 50
    const-string v1, "glass_sync"

    .line 51
    invoke-static {p0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/sync/DownloadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 82
    iput-object p7, p0, Lcom/google/glass/sync/DownloadSyncHelper;->notificationFilter:Lcom/google/glass/sync/TimelineNotificationFilter;

    .line 83
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/google/glass/sync/DownloadSyncHelper;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    .line 84
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/google/glass/sync/DownloadSyncHelper;->syncWindowHelper:Lcom/google/glass/sync/TimelineSyncWindowHelper;

    .line 85
    new-instance v2, Lcom/google/glass/sync/HtmlItemPreProcessor;

    .line 86
    invoke-static {}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->getInstance()Lcom/google/glass/util/CachedBitmapFactory$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/util/CachedBitmapFactory;

    invoke-direct {v2, p1, v1}, Lcom/google/glass/sync/HtmlItemPreProcessor;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;)V

    iput-object v2, p0, Lcom/google/glass/sync/DownloadSyncHelper;->htmlItemPreProcessor:Lcom/google/glass/sync/HtmlItemPreProcessor;

    .line 87
    new-instance v1, Lcom/google/glass/entity/EntityUsageHelper;

    invoke-direct {v1, p1}, Lcom/google/glass/entity/EntityUsageHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/sync/DownloadSyncHelper;->usageHelper:Lcom/google/glass/entity/EntityUsageHelper;

    .line 88
    return-void
.end method

.method private createFromCloudRequest(Lcom/google/glass/sync/TimelineSyncWindow;)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;
    .locals 4
    .param p1, "window"    # Lcom/google/glass/sync/TimelineSyncWindow;

    .prologue
    .line 136
    new-instance v1, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;

    invoke-direct {v1}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;-><init>()V

    .line 137
    .local v1, "select":Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;
    invoke-virtual {p1}, Lcom/google/glass/sync/TimelineSyncWindow;->getStartTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->setStartTime(J)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;

    .line 138
    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->setMaxItems(I)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;

    .line 139
    invoke-virtual {p1}, Lcom/google/glass/sync/TimelineSyncWindow;->getContinuationToken()[B

    move-result-object v2

    if-eqz v2, :cond_0

    .line 140
    invoke-virtual {p1}, Lcom/google/glass/sync/TimelineSyncWindow;->getContinuationToken()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->setContinuationToken([B)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;

    .line 142
    :cond_0
    new-instance v2, Lcom/google/glass/util/SettingsSecure;

    iget-object v3, p0, Lcom/google/glass/sync/DownloadSyncHelper;->application:Landroid/content/Context;

    .line 143
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v2}, Lcom/google/glass/sync/DownloadSyncHelper;->createSyncRequest(Lcom/google/glass/util/SettingsSecure;)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;

    move-result-object v0

    .line 144
    .local v0, "request":Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;
    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->setSelect(Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;

    .line 145
    return-object v0
.end method

.method private dispatchFromCloudRequest(Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;)Lcom/google/glass/net/ProtoResponse;
    .locals 3
    .param p1, "request"    # Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;",
            ")",
            "Lcom/google/glass/net/ProtoResponse",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-static {}, Lcom/google/glass/net/ProtoRequestDispatcher$Providers;->getSecondaryDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v0

    .line 153
    .local v0, "dispatcher":Lcom/google/glass/net/ProtoRequestDispatcher;
    sget-object v1, Lcom/google/glass/net/ServerConstants$Action;->TIMELINE_SYNC:Lcom/google/glass/net/ServerConstants$Action;

    sget-object v2, Lcom/google/glass/sync/DownloadSyncHelper;->PARSER:Lcom/google/glass/protobuf/ProtoParser;

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/glass/net/ProtoRequestDispatcher;->blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;Lcom/google/glass/protobuf/ProtoParser;)Lcom/google/glass/net/ProtoResponse;

    move-result-object v1

    return-object v1
.end method

.method private handleItemsSyncedFromCloud(Lcom/google/glass/sync/TimelineSyncWindow;Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;JLcom/google/glass/sync/SyncStats;)Lcom/google/glass/sync/TimelineSyncWindow;
    .locals 21
    .param p1, "currentWindow"    # Lcom/google/glass/sync/TimelineSyncWindow;
    .param p2, "response"    # Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;
    .param p3, "requestDurationMs"    # J
    .param p5, "syncStats"    # Lcom/google/glass/sync/SyncStats;

    .prologue
    .line 163
    if-nez p1, :cond_1

    .line 164
    const/4 v13, 0x0

    .line 227
    :cond_0
    :goto_0
    return-object v13

    .line 167
    :cond_1
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-static {v2}, Lcom/google/glass/util/ArrayUtils;->length([Ljava/lang/Object;)I

    move-result v17

    .line 168
    .local v17, "selectedItemsCount":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/sync/DownloadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Received items from server [count=%s]."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    invoke-static/range {v17 .. v17}, Lcom/google/common/collect/Lists;->newArrayListWithExpectedSize(I)Ljava/util/ArrayList;

    move-result-object v12

    .line 171
    .local v12, "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    if-lez v17, :cond_2

    .line 172
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    const/4 v2, 0x0

    move/from16 v18, v2

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    aget-object v10, v19, v18

    .line 174
    .local v10, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCloudSyncStatus(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 176
    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-virtual {v10}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCachedSize()I

    move-result v2

    int-to-long v4, v2

    move/from16 v0, v17

    int-to-long v6, v0

    div-long v6, p3, v6

    move-object/from16 v2, p5

    invoke-virtual/range {v2 .. v7}, Lcom/google/glass/sync/SyncStats;->trackDownload(Ljava/lang/String;JJ)V

    .line 172
    add-int/lit8 v2, v18, 0x1

    move/from16 v18, v2

    goto :goto_1

    .line 188
    .end local v10    # "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/sync/DownloadSyncHelper;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    invoke-virtual {v2, v12}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->bulkInsertTimelineItem(Ljava/util/List;)I

    move-result v14

    .line 189
    .local v14, "numInserts":I
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    if-eq v14, v2, :cond_3

    .line 190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/sync/DownloadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Partial bulk insert [itemCount=%s, insertCount=%s]."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/sync/DownloadSyncHelper;->htmlItemPreProcessor:Lcom/google/glass/sync/HtmlItemPreProcessor;

    invoke-virtual {v2, v12}, Lcom/google/glass/sync/HtmlItemPreProcessor;->processItems(Ljava/util/List;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/sync/DownloadSyncHelper;->usageHelper:Lcom/google/glass/entity/EntityUsageHelper;

    const/4 v3, 0x0

    invoke-virtual {v2, v12, v3}, Lcom/google/glass/entity/EntityUsageHelper;->updateEntityUsageFromItems(Ljava/util/List;Z)V

    .line 200
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0xc8

    if-ge v2, v3, :cond_5

    .line 202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/sync/DownloadSyncHelper;->syncWindowHelper:Lcom/google/glass/sync/TimelineSyncWindowHelper;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/glass/sync/TimelineSyncWindowHelper;->delete(Lcom/google/glass/sync/TimelineSyncWindow;)I

    .line 203
    const/4 v13, 0x0

    .line 209
    .local v13, "nextWindow":Lcom/google/glass/sync/TimelineSyncWindow;
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/sync/DownloadSyncHelper;->syncWindowHelper:Lcom/google/glass/sync/TimelineSyncWindowHelper;

    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->getSelectMaxWriteTimestamp()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/glass/sync/TimelineSyncWindowHelper;->updateMaxWriteTimestamp(J)V

    .line 212
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->getSelectMaxWriteTimestamp()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    .line 214
    .local v8, "batchTimeMillis":J
    if-lez v17, :cond_6

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 215
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    .line 217
    .local v16, "selectedItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/sync/DownloadSyncHelper;->notificationFilter:Lcom/google/glass/sync/TimelineNotificationFilter;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v8, v9}, Lcom/google/glass/sync/TimelineNotificationFilter;->filter(Ljava/util/List;J)Lcom/google/glass/sync/TimelineNotificationFilter$Result;

    move-result-object v15

    .line 219
    .local v15, "result":Lcom/google/glass/sync/TimelineNotificationFilter$Result;
    invoke-virtual {v15}, Lcom/google/glass/sync/TimelineNotificationFilter$Result;->getItemToNotify()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v11

    .line 220
    .local v11, "itemToNotify":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    if-eqz v11, :cond_4

    .line 221
    new-instance v2, Lcom/google/glass/timeline/TimelineNotificationHelper;

    invoke-direct {v2}, Lcom/google/glass/timeline/TimelineNotificationHelper;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/sync/DownloadSyncHelper;->application:Landroid/content/Context;

    .line 222
    invoke-virtual {v15}, Lcom/google/glass/sync/TimelineNotificationFilter$Result;->getNumNotifications()I

    move-result v4

    .line 221
    invoke-virtual {v2, v3, v11, v4}, Lcom/google/glass/timeline/TimelineNotificationHelper;->notify(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    .line 224
    :cond_4
    invoke-virtual {v15}, Lcom/google/glass/sync/TimelineNotificationFilter$Result;->hasFutureNotification()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/sync/DownloadSyncHelper;->application:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/sync/DownloadSyncHelper;->application:Landroid/content/Context;

    const-class v5, Lcom/google/glass/timeline/TimelineNotificationService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 205
    .end local v8    # "batchTimeMillis":J
    .end local v11    # "itemToNotify":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v13    # "nextWindow":Lcom/google/glass/sync/TimelineSyncWindow;
    .end local v15    # "result":Lcom/google/glass/sync/TimelineNotificationFilter$Result;
    .end local v16    # "selectedItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    :cond_5
    new-instance v13, Lcom/google/glass/sync/TimelineSyncWindow;

    invoke-virtual/range {p1 .. p1}, Lcom/google/glass/sync/TimelineSyncWindow;->getStartTime()J

    move-result-wide v2

    .line 206
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->getSelectContinuationToken()[B

    move-result-object v4

    invoke-direct {v13, v2, v3, v4}, Lcom/google/glass/sync/TimelineSyncWindow;-><init>(J[B)V

    .line 207
    .restart local v13    # "nextWindow":Lcom/google/glass/sync/TimelineSyncWindow;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/sync/DownloadSyncHelper;->syncWindowHelper:Lcom/google/glass/sync/TimelineSyncWindowHelper;

    invoke-virtual {v2, v13}, Lcom/google/glass/sync/TimelineSyncWindowHelper;->update(Lcom/google/glass/sync/TimelineSyncWindow;)I

    goto :goto_2

    .line 215
    .restart local v8    # "batchTimeMillis":J
    :cond_6
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    goto :goto_3
.end method


# virtual methods
.method public sync(Lcom/google/glass/sync/SyncStats;)V
    .locals 17
    .param p1, "syncStats"    # Lcom/google/glass/sync/SyncStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 94
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/sync/DownloadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Fetching unsynced items from server."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v1, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    new-instance v16, Lcom/google/glass/time/Stopwatch;

    invoke-direct/range {v16 .. v16}, Lcom/google/glass/time/Stopwatch;-><init>()V

    .line 96
    .local v16, "syncStopwatch":Lcom/google/glass/time/Stopwatch;
    invoke-virtual/range {v16 .. v16}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    .line 97
    const-wide/16 v6, 0x0

    .line 98
    .local v6, "bytes":J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/sync/DownloadSyncHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v4, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_DOWNSTREAM_SYNC_STARTED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v4}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 100
    new-instance v14, Lcom/google/glass/time/Stopwatch;

    invoke-direct {v14}, Lcom/google/glass/time/Stopwatch;-><init>()V

    .line 104
    .local v14, "requestStopwatch":Lcom/google/glass/time/Stopwatch;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/sync/DownloadSyncHelper;->syncWindowHelper:Lcom/google/glass/sync/TimelineSyncWindowHelper;

    invoke-virtual {v1}, Lcom/google/glass/sync/TimelineSyncWindowHelper;->list()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/sync/TimelineSyncWindow;

    .line 105
    .local v2, "currentSyncWindow":Lcom/google/glass/sync/TimelineSyncWindow;
    invoke-virtual {v14}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    :cond_0
    move-wide v10, v6

    .line 107
    .end local v6    # "bytes":J
    .local v10, "bytes":J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/sync/DownloadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Requesting sync [window=%s]."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v5, v9

    invoke-interface {v1, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    invoke-virtual {v14}, Lcom/google/glass/time/Stopwatch;->reset()Lcom/google/glass/time/Stopwatch;

    .line 109
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/glass/sync/DownloadSyncHelper;->createFromCloudRequest(Lcom/google/glass/sync/TimelineSyncWindow;)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;

    move-result-object v13

    .line 110
    .local v13, "request":Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/glass/sync/DownloadSyncHelper;->dispatchFromCloudRequest(Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;)Lcom/google/glass/net/ProtoResponse;

    move-result-object v15

    .line 111
    .local v15, "responseWrapper":Lcom/google/glass/net/ProtoResponse;, "Lcom/google/glass/net/ProtoResponse<Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;>;"
    invoke-virtual {v14}, Lcom/google/glass/time/Stopwatch;->stop()Lcom/google/glass/time/Stopwatch;

    .line 112
    if-eqz v15, :cond_1

    invoke-virtual {v15}, Lcom/google/glass/net/ProtoResponse;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_3

    .line 113
    :cond_1
    if-nez v15, :cond_2

    sget-object v12, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;->INTERNAL_ERROR:Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    .line 116
    .local v12, "errorCode":Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/sync/DownloadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Error while performing downstream timeline sync."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v1, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/sync/DownloadSyncHelper;->syncReporter:Lcom/google/glass/sync/SyncStatusReporter;

    invoke-interface {v1, v12}, Lcom/google/glass/sync/SyncStatusReporter;->handleFail(Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;)V

    move-wide v6, v10

    .line 133
    .end local v2    # "currentSyncWindow":Lcom/google/glass/sync/TimelineSyncWindow;
    .end local v10    # "bytes":J
    .end local v12    # "errorCode":Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;
    .end local v13    # "request":Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;
    .end local v15    # "responseWrapper":Lcom/google/glass/net/ProtoResponse;, "Lcom/google/glass/net/ProtoResponse<Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;>;"
    .restart local v6    # "bytes":J
    :goto_2
    return-void

    .line 115
    .end local v6    # "bytes":J
    .restart local v2    # "currentSyncWindow":Lcom/google/glass/sync/TimelineSyncWindow;
    .restart local v10    # "bytes":J
    .restart local v13    # "request":Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;
    .restart local v15    # "responseWrapper":Lcom/google/glass/net/ProtoResponse;, "Lcom/google/glass/net/ProtoResponse<Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;>;"
    :cond_2
    invoke-virtual {v15}, Lcom/google/glass/net/ProtoResponse;->getErrorCode()Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    move-result-object v12

    goto :goto_1

    .line 120
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/sync/DownloadSyncHelper;->syncReporter:Lcom/google/glass/sync/SyncStatusReporter;

    invoke-interface {v1}, Lcom/google/glass/sync/SyncStatusReporter;->handleSuccess()V

    .line 124
    invoke-virtual {v15}, Lcom/google/glass/net/ProtoResponse;->getResponseProto()Lcom/google/protobuf/nano/MessageNano;

    move-result-object v3

    check-cast v3, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;

    .line 126
    .local v3, "syncResponse":Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;
    invoke-virtual {v14}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v4

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    .line 125
    invoke-direct/range {v1 .. v6}, Lcom/google/glass/sync/DownloadSyncHelper;->handleItemsSyncedFromCloud(Lcom/google/glass/sync/TimelineSyncWindow;Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;JLcom/google/glass/sync/SyncStats;)Lcom/google/glass/sync/TimelineSyncWindow;

    move-result-object v2

    .line 127
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->getCachedSize()I

    move-result v1

    int-to-long v4, v1

    add-long v6, v10, v4

    .line 128
    .end local v10    # "bytes":J
    .restart local v6    # "bytes":J
    if-nez v2, :cond_0

    goto :goto_0

    .line 131
    .end local v2    # "currentSyncWindow":Lcom/google/glass/sync/TimelineSyncWindow;
    .end local v3    # "syncResponse":Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;
    .end local v13    # "request":Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;
    .end local v15    # "responseWrapper":Lcom/google/glass/net/ProtoResponse;, "Lcom/google/glass/net/ProtoResponse<Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;>;"
    :cond_4
    sget-object v5, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_DOWNSTREAM_SYNC_FINISHED:Lcom/google/glass/userevent/UserEventAction;

    .line 132
    invoke-virtual/range {v16 .. v16}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v8

    move-object/from16 v4, p0

    .line 131
    invoke-virtual/range {v4 .. v9}, Lcom/google/glass/sync/DownloadSyncHelper;->logSyncMetrics(Lcom/google/glass/userevent/UserEventAction;JJ)V

    goto :goto_2
.end method
