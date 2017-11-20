.class public Lcom/google/glass/sync/nowtown/NotificationService;
.super Landroid/app/Service;
.source "NotificationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/sync/nowtown/NotificationService$Entry;
    }
.end annotation


# static fields
.field private static final CURSOR_LOADER_LISTENER_ID:I = 0x1

.field private static final INVALID_NOTIFICATION_ID:I = -0x1

.field static final MAX_ITEMS:I = 0xa


# instance fields
.field private cursorLoader:Landroid/content/CursorLoader;

.field private final itemIdToEntry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/glass/sync/nowtown/NotificationService$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private nextNotificationId:I

.field private requestCodeSupplier:Lcom/google/glass/sync/nowtown/RequestCodeSupplier;

.field private timelineSyncStatusReceiver:Lcom/google/glass/sync/TimelineSyncStatusReceiver;

.field private timestampUpdateReceiver:Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 57
    const-string v0, "glass_sync"

    .line 58
    invoke-static {p0, v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/sync/nowtown/NotificationService;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/sync/nowtown/NotificationService;->nextNotificationId:I

    .line 71
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/sync/nowtown/NotificationService;->itemIdToEntry:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/sync/nowtown/NotificationService;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/sync/nowtown/NotificationService;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/glass/sync/nowtown/NotificationService;->updateFromCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method private createCursorLoader()Landroid/content/CursorLoader;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 230
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .local v7, "orderBy":Ljava/lang/StringBuilder;
    const-string v0, "pin_score"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DESC, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    const-string v0, "pin_time"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DESC, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    const-string v0, "display_time"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DESC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    const-string v0, "LIMIT "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 236
    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/google/glass/sync/nowtown/NotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    .line 237
    invoke-virtual {p0}, Lcom/google/glass/sync/nowtown/NotificationService;->buildItemSelectString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getMaxItemTimestamp(Z)J
    .locals 5
    .param p0, "pinned"    # Z

    .prologue
    .line 291
    if-eqz p0, :cond_0

    .line 292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1e

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 294
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method private removeItem(Landroid/app/NotificationManager;Ljava/lang/String;)V
    .locals 7
    .param p1, "notificationManager"    # Landroid/app/NotificationManager;
    .param p2, "timelineItemId"    # Ljava/lang/String;

    .prologue
    .line 214
    iget-object v2, p0, Lcom/google/glass/sync/nowtown/NotificationService;->itemIdToEntry:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sync/nowtown/NotificationService$Entry;

    .line 215
    .local v0, "entry":Lcom/google/glass/sync/nowtown/NotificationService$Entry;
    if-nez v0, :cond_0

    .line 226
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v2, v0, Lcom/google/glass/sync/nowtown/NotificationService$Entry;->builder:Lcom/google/glass/sync/nowtown/NotificationBuilder;

    invoke-virtual {v2}, Lcom/google/glass/sync/nowtown/NotificationBuilder;->getNotificationId()I

    move-result v1

    .line 221
    .local v1, "notificationId":I
    iget-object v2, p0, Lcom/google/glass/sync/nowtown/NotificationService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Canceling notification %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    invoke-virtual {p1, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 225
    iget-object v2, v0, Lcom/google/glass/sync/nowtown/NotificationService$Entry;->builder:Lcom/google/glass/sync/nowtown/NotificationBuilder;

    invoke-virtual {v2}, Lcom/google/glass/sync/nowtown/NotificationBuilder;->stopBuild()V

    goto :goto_0
.end method

.method private updateFromCursor(Landroid/database/Cursor;)V
    .locals 11
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 147
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 150
    invoke-static {}, Lcom/google/glass/android/app/NotificationManagerProvider;->getInstance()Lcom/google/glass/android/app/NotificationManagerProvider;

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/glass/sync/nowtown/NotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/glass/android/app/NotificationManagerProvider;->get(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v7

    .line 152
    .local v7, "notificationManager":Landroid/app/NotificationManager;
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper$Provider;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper$Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    .line 157
    .local v8, "serializationHelper":Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v5

    .line 158
    .local v5, "keep":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .local v6, "n":I
    :goto_0
    if-ge v2, v6, :cond_1

    .line 159
    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 160
    invoke-virtual {v8, p1}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v4

    .line 161
    .local v4, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    if-eqz v4, :cond_0

    .line 162
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-virtual {v8, p1}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->getBundleCoverStatus(Landroid/database/Cursor;)I

    move-result v0

    .line 164
    .local v0, "bundleCoverStatus":I
    invoke-virtual {p0, v7, v4, v0}, Lcom/google/glass/sync/nowtown/NotificationService;->postItem(Landroid/app/NotificationManager;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    .line 158
    .end local v0    # "bundleCoverStatus":I
    .end local v4    # "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 170
    :cond_1
    iget-object v9, p0, Lcom/google/glass/sync/nowtown/NotificationService;->itemIdToEntry:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-static {v9, v5}, Lcom/google/common/collect/Sets;->difference(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$SetView;

    move-result-object v9

    invoke-static {v9}, Lcom/google/common/collect/Sets;->newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v1

    .line 171
    .local v1, "discard":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 172
    .local v3, "id":Ljava/lang/String;
    invoke-direct {p0, v7, v3}, Lcom/google/glass/sync/nowtown/NotificationService;->removeItem(Landroid/app/NotificationManager;Ljava/lang/String;)V

    goto :goto_1

    .line 174
    .end local v3    # "id":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method buildItemSelectString()Ljava/lang/String;
    .locals 7
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const-wide/16 v5, -0x1

    const/4 v4, 0x0

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .local v0, "select":Ljava/lang/StringBuilder;
    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is_deleted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pin_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 254
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 255
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "delivery_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    .line 257
    invoke-static {v2}, Lcom/google/glass/sync/nowtown/NotificationService;->getMaxItemTimestamp(Z)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 258
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pin_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 264
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 265
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "delivery_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 267
    invoke-static {v4}, Lcom/google/glass/sync/nowtown/NotificationService;->getMaxItemTimestamp(Z)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 268
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    const-string v1, "bundle_cover_status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 277
    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    const-string v1, "bundle_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\"\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/glass/sync/nowtown/NotificationService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onCreate"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 93
    new-instance v0, Lcom/google/glass/sync/nowtown/NotificationService$1;

    invoke-direct {v0, p0}, Lcom/google/glass/sync/nowtown/NotificationService$1;-><init>(Lcom/google/glass/sync/nowtown/NotificationService;)V

    iput-object v0, p0, Lcom/google/glass/sync/nowtown/NotificationService;->requestCodeSupplier:Lcom/google/glass/sync/nowtown/RequestCodeSupplier;

    .line 105
    invoke-virtual {p0}, Lcom/google/glass/sync/nowtown/NotificationService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/nowtown/NowTownUtils;->isNowTownEnabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/google/glass/sync/nowtown/NotificationService;->createCursorLoader()Landroid/content/CursorLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/sync/nowtown/NotificationService;->cursorLoader:Landroid/content/CursorLoader;

    .line 107
    iget-object v0, p0, Lcom/google/glass/sync/nowtown/NotificationService;->cursorLoader:Landroid/content/CursorLoader;

    const/4 v1, 0x1

    new-instance v2, Lcom/google/glass/sync/nowtown/NotificationService$2;

    invoke-direct {v2, p0}, Lcom/google/glass/sync/nowtown/NotificationService$2;-><init>(Lcom/google/glass/sync/nowtown/NotificationService;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/CursorLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 114
    iget-object v0, p0, Lcom/google/glass/sync/nowtown/NotificationService;->cursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->startLoading()V

    .line 117
    new-instance v0, Lcom/google/glass/sync/TimelineSyncStatusReceiver;

    invoke-direct {v0}, Lcom/google/glass/sync/TimelineSyncStatusReceiver;-><init>()V

    iput-object v0, p0, Lcom/google/glass/sync/nowtown/NotificationService;->timelineSyncStatusReceiver:Lcom/google/glass/sync/TimelineSyncStatusReceiver;

    .line 118
    iget-object v0, p0, Lcom/google/glass/sync/nowtown/NotificationService;->timelineSyncStatusReceiver:Lcom/google/glass/sync/TimelineSyncStatusReceiver;

    invoke-virtual {p0}, Lcom/google/glass/sync/nowtown/NotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/sync/TimelineSyncStatusReceiver;->register(Landroid/content/Context;)V

    .line 119
    new-instance v0, Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;

    invoke-direct {v0}, Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;-><init>()V

    iput-object v0, p0, Lcom/google/glass/sync/nowtown/NotificationService;->timestampUpdateReceiver:Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;

    .line 120
    iget-object v0, p0, Lcom/google/glass/sync/nowtown/NotificationService;->timestampUpdateReceiver:Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;

    invoke-virtual {p0}, Lcom/google/glass/sync/nowtown/NotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;->register(Landroid/content/Context;)V

    .line 122
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 126
    iget-object v0, p0, Lcom/google/glass/sync/nowtown/NotificationService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onDestroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lcom/google/glass/sync/nowtown/NotificationService;->cursorLoader:Landroid/content/CursorLoader;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/google/glass/sync/nowtown/NotificationService;->cursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->stopLoading()V

    .line 131
    iput-object v3, p0, Lcom/google/glass/sync/nowtown/NotificationService;->cursorLoader:Landroid/content/CursorLoader;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/google/glass/sync/nowtown/NotificationService;->timelineSyncStatusReceiver:Lcom/google/glass/sync/TimelineSyncStatusReceiver;

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/google/glass/sync/nowtown/NotificationService;->timelineSyncStatusReceiver:Lcom/google/glass/sync/TimelineSyncStatusReceiver;

    invoke-virtual {p0}, Lcom/google/glass/sync/nowtown/NotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/sync/TimelineSyncStatusReceiver;->unregister(Landroid/content/Context;)V

    .line 136
    iput-object v3, p0, Lcom/google/glass/sync/nowtown/NotificationService;->timelineSyncStatusReceiver:Lcom/google/glass/sync/TimelineSyncStatusReceiver;

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/google/glass/sync/nowtown/NotificationService;->timestampUpdateReceiver:Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;

    if-eqz v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/google/glass/sync/nowtown/NotificationService;->timestampUpdateReceiver:Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;

    invoke-virtual {p0}, Lcom/google/glass/sync/nowtown/NotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;->unregister(Landroid/content/Context;)V

    .line 140
    iput-object v3, p0, Lcom/google/glass/sync/nowtown/NotificationService;->timestampUpdateReceiver:Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;

    .line 143
    :cond_2
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 144
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/glass/sync/nowtown/NotificationService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onStartCommand"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method postItem(Landroid/app/NotificationManager;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V
    .locals 8
    .param p1, "notificationManager"    # Landroid/app/NotificationManager;
    .param p2, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p3, "bundleCoverStatus"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 185
    iget-object v1, p0, Lcom/google/glass/sync/nowtown/NotificationService;->itemIdToEntry:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/glass/sync/nowtown/NotificationService$Entry;

    .line 186
    .local v7, "entry":Lcom/google/glass/sync/nowtown/NotificationService$Entry;
    if-eqz v7, :cond_0

    iget-wide v1, v7, Lcom/google/glass/sync/nowtown/NotificationService$Entry;->lastModifiedTime:J

    .line 187
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getModifiedTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget v1, v7, Lcom/google/glass/sync/nowtown/NotificationService$Entry;->lastBundleCoverStatus:I

    if-eq v1, p3, :cond_2

    .line 191
    :cond_0
    if-nez v7, :cond_1

    .line 192
    new-instance v0, Lcom/google/glass/sync/nowtown/NotificationBuilder;

    invoke-virtual {p0}, Lcom/google/glass/sync/nowtown/NotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v3, p0, Lcom/google/glass/sync/nowtown/NotificationService;->nextNotificationId:I

    iget-object v4, p0, Lcom/google/glass/sync/nowtown/NotificationService;->requestCodeSupplier:Lcom/google/glass/sync/nowtown/RequestCodeSupplier;

    iget-object v5, p0, Lcom/google/glass/sync/nowtown/NotificationService;->timelineSyncStatusReceiver:Lcom/google/glass/sync/TimelineSyncStatusReceiver;

    iget-object v6, p0, Lcom/google/glass/sync/nowtown/NotificationService;->timestampUpdateReceiver:Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/sync/nowtown/NotificationBuilder;-><init>(Landroid/content/Context;Landroid/app/NotificationManager;ILcom/google/glass/sync/nowtown/RequestCodeSupplier;Lcom/google/glass/sync/TimelineSyncStatusReceiver;Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;)V

    .line 195
    .local v0, "builder":Lcom/google/glass/sync/nowtown/NotificationBuilder;
    new-instance v7, Lcom/google/glass/sync/nowtown/NotificationService$Entry;

    .end local v7    # "entry":Lcom/google/glass/sync/nowtown/NotificationService$Entry;
    invoke-direct {v7, v0}, Lcom/google/glass/sync/nowtown/NotificationService$Entry;-><init>(Lcom/google/glass/sync/nowtown/NotificationBuilder;)V

    .line 196
    .restart local v7    # "entry":Lcom/google/glass/sync/nowtown/NotificationService$Entry;
    iget-object v1, p0, Lcom/google/glass/sync/nowtown/NotificationService;->itemIdToEntry:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget v1, p0, Lcom/google/glass/sync/nowtown/NotificationService;->nextNotificationId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/sync/nowtown/NotificationService;->nextNotificationId:I

    .line 201
    .end local v0    # "builder":Lcom/google/glass/sync/nowtown/NotificationBuilder;
    :cond_1
    iget-object v1, v7, Lcom/google/glass/sync/nowtown/NotificationService$Entry;->builder:Lcom/google/glass/sync/nowtown/NotificationBuilder;

    invoke-virtual {v1, p2, p3}, Lcom/google/glass/sync/nowtown/NotificationBuilder;->startBuild(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    .line 204
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getModifiedTime()J

    move-result-wide v1

    iput-wide v1, v7, Lcom/google/glass/sync/nowtown/NotificationService$Entry;->lastModifiedTime:J

    .line 205
    iput p3, v7, Lcom/google/glass/sync/nowtown/NotificationService$Entry;->lastBundleCoverStatus:I

    .line 207
    :cond_2
    return-void
.end method
