.class public Lcom/google/glass/share/ShareTimelineItemJob;
.super Lcom/google/glass/timeline/TimelineItemCreatorJob;
.source "ShareTimelineItemJob.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/share/ShareTimelineItemJob$ShareTimelineItemCallback;
    }
.end annotation


# instance fields
.field private volatile annotation:Ljava/lang/String;

.field private final attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

.field private final callback:Lcom/google/glass/share/ShareTimelineItemJob$ShareTimelineItemCallback;

.field private final context:Landroid/content/Context;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private final originLogData:Ljava/lang/String;

.field private volatile shareWithTarget:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

.field private temporaryItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field private final timelineItemCreationHelper:Lcom/google/glass/timeline/TimelineItemCreationHelper;

.field private final timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

.field private final timelineItemLocationHelper:Lcom/google/glass/timeline/TimelineItemLocationHelper;

.field private timelineItemToShare:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field private final toShareItemUri:Landroid/net/Uri;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/share/ShareTimelineItemJob$ShareTimelineItemCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "toShareItemUri"    # Landroid/net/Uri;
    .param p3, "originLogData"    # Ljava/lang/String;
    .param p4, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;
    .param p5, "callback"    # Lcom/google/glass/share/ShareTimelineItemJob$ShareTimelineItemCallback;

    .prologue
    .line 86
    sget-object v0, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->SHARE:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/timeline/TimelineItemCreatorJob;-><init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;I)V

    .line 39
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/share/ShareTimelineItemJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/share/ShareTimelineItemJob;->annotation:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/share/ShareTimelineItemJob;->context:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lcom/google/glass/share/ShareTimelineItemJob;->toShareItemUri:Landroid/net/Uri;

    .line 89
    iput-object p3, p0, Lcom/google/glass/share/ShareTimelineItemJob;->originLogData:Ljava/lang/String;

    .line 90
    iput-object p4, p0, Lcom/google/glass/share/ShareTimelineItemJob;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 91
    iput-object p5, p0, Lcom/google/glass/share/ShareTimelineItemJob;->callback:Lcom/google/glass/share/ShareTimelineItemJob$ShareTimelineItemCallback;

    .line 92
    new-instance v0, Lcom/google/glass/timeline/AttachmentHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/timeline/AttachmentHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/share/ShareTimelineItemJob;->attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

    .line 93
    invoke-virtual {p0}, Lcom/google/glass/share/ShareTimelineItemJob;->notifyReadyToCreateTemporaryItem()V

    .line 96
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/share/ShareTimelineItemJob;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    .line 98
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemCreationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/share/ShareTimelineItemJob;->timelineItemCreationHelper:Lcom/google/glass/timeline/TimelineItemCreationHelper;

    .line 100
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemLocationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/share/ShareTimelineItemJob;->timelineItemLocationHelper:Lcom/google/glass/timeline/TimelineItemLocationHelper;

    .line 101
    return-void
.end method

.method private static copyFieldsToSharedItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 1
    .param p0, "source"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p1, "target"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setTitle(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 250
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasSpeakableText()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSpeakableText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setSpeakableText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 253
    :cond_2
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasHtml()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 254
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getHtml()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setHtml(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 256
    :cond_3
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasCanonicalUrl()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 257
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCanonicalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCanonicalUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 259
    :cond_4
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasLocation()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 260
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getLocation()Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setLocation(Lcom/google/googlex/glass/common/proto/TimelineNano$Location;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 262
    :cond_5
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-static {v0}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 263
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/glass/timeline/TimelineItemUtils;->addAttachments(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/util/List;)V

    .line 265
    :cond_6
    return-void
.end method

.method private logShareEvent(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ZLjava/lang/String;)V
    .locals 7
    .param p1, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "wasAnnotated"    # Z
    .param p3, "originLogData"    # Ljava/lang/String;

    .prologue
    .line 277
    const-string v2, "0"

    .line 278
    .local v2, "sharedType":Ljava/lang/String;
    sget-object v3, Lcom/google/glass/timeline/TimelineItemUtils;->SUPPORTED_IMAGE_MIME_TYPES:[Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/google/glass/timeline/TimelineItemUtils;->hasAttachmentOfTypes(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 280
    const-string v2, "1"

    .line 286
    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    const-string v0, "1"

    .line 288
    .local v0, "annotated":Ljava/lang/String;
    :goto_1
    const-string v3, "t"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "a"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v5, 0x2

    const-string v6, "o"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p3, v4, v5

    const/4 v5, 0x4

    const-string v6, "s"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    .line 295
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineItemUtils;->getRedactedSource(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 288
    invoke-static {v3, v2, v4}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 296
    .local v1, "data":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/glass/share/ShareTimelineItemJob;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v4, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_ITEM_SHARED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v3, v4, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 297
    return-void

    .line 281
    .end local v0    # "annotated":Ljava/lang/String;
    .end local v1    # "data":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/google/glass/timeline/TimelineItemUtils;->SUPPORTED_VIDEO_MIME_TYPES:[Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/google/glass/timeline/TimelineItemUtils;->hasAttachmentOfTypes(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 283
    const-string v2, "2"

    goto :goto_0

    .line 286
    :cond_2
    const-string v0, "0"

    goto :goto_1
.end method

.method private setAnnotation(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 1
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/google/glass/share/ShareTimelineItemJob;->hasAnnotation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/google/glass/share/ShareTimelineItemJob;->annotation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 238
    :cond_0
    return-void
.end method

.method private setShareTarget(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 1
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 224
    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 225
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iput-object v0, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 226
    iget-object v0, p0, Lcom/google/glass/share/ShareTimelineItemJob;->shareWithTarget:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/google/glass/share/ShareTimelineItemJob;->shareWithTarget:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {p1, v0}, Lcom/google/glass/timeline/TimelineItemUtils;->modifyTimelineItemToSendToContact(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/google/glass/share/ShareTimelineItemJob;->cancel()V

    .line 232
    :cond_0
    return-void
.end method

.method private waitForSharedItem()V
    .locals 6

    .prologue
    .line 181
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 182
    iget-object v3, p0, Lcom/google/glass/share/ShareTimelineItemJob;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 183
    .local v2, "resolver":Landroid/content/ContentResolver;
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 186
    .local v0, "contentChangedNotifier":Ljava/lang/Object;
    new-instance v1, Lcom/google/glass/share/ShareTimelineItemJob$1;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3, v0}, Lcom/google/glass/share/ShareTimelineItemJob$1;-><init>(Lcom/google/glass/share/ShareTimelineItemJob;Landroid/os/Handler;Ljava/lang/Object;)V

    .line 194
    .local v1, "observer":Landroid/database/ContentObserver;
    iget-object v3, p0, Lcom/google/glass/share/ShareTimelineItemJob;->toShareItemUri:Landroid/net/Uri;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 196
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/google/glass/share/ShareTimelineItemJob;->timelineItemToShare:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {p0, v3}, Lcom/google/glass/share/ShareTimelineItemJob;->isReadyForSharing(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 197
    invoke-virtual {p0}, Lcom/google/glass/share/ShareTimelineItemJob;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/google/glass/share/ShareTimelineItemJob;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/google/glass/share/ShareTimelineItemJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Waiting for shared item to be syncable"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    const-wide/16 v3, 0x3e8

    :try_start_2
    invoke-virtual {v0, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 205
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 209
    :goto_1
    :try_start_3
    iget-object v3, p0, Lcom/google/glass/share/ShareTimelineItemJob;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    iget-object v4, p0, Lcom/google/glass/share/ShareTimelineItemJob;->toShareItemUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->queryTimelineItem(Landroid/net/Uri;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/share/ShareTimelineItemJob;->timelineItemToShare:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 212
    :catchall_0
    move-exception v3

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    throw v3

    .line 205
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v3
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 206
    :catch_0
    move-exception v3

    goto :goto_1

    .line 212
    :cond_1
    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 214
    return-void
.end method


# virtual methods
.method protected createFinalTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 5
    .param p1, "temporaryItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    const/4 v4, 0x0

    .line 153
    invoke-direct {p0}, Lcom/google/glass/share/ShareTimelineItemJob;->waitForSharedItem()V

    .line 155
    iget-object v1, p0, Lcom/google/glass/share/ShareTimelineItemJob;->timelineItemToShare:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {p0, v1}, Lcom/google/glass/share/ShareTimelineItemJob;->isReadyForSharing(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 157
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineItemUtils;->clone(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    .line 160
    .local v0, "latestItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    sget-object v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    iput-object v1, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 161
    iget-object v1, p0, Lcom/google/glass/share/ShareTimelineItemJob;->timelineItemToShare:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v1, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-static {v1}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/google/glass/share/ShareTimelineItemJob;->timelineItemToShare:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v1, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/timeline/TimelineItemUtils;->addAttachments(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/util/List;)V

    .line 164
    :cond_0
    invoke-virtual {v0, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCloudSyncProtocol(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 166
    invoke-direct {p0, v0}, Lcom/google/glass/share/ShareTimelineItemJob;->setShareTarget(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 167
    invoke-direct {p0, v0}, Lcom/google/glass/share/ShareTimelineItemJob;->setAnnotation(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 170
    iget-object v1, p0, Lcom/google/glass/share/ShareTimelineItemJob;->timelineItemToShare:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v1, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCloudSyncProtocol(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 171
    iget-object v1, p0, Lcom/google/glass/share/ShareTimelineItemJob;->timelineItemToShare:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v1, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCloudSyncStatus(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 173
    iget-object v1, p0, Lcom/google/glass/share/ShareTimelineItemJob;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    iget-object v2, p0, Lcom/google/glass/share/ShareTimelineItemJob;->timelineItemToShare:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->updateTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;Z)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 176
    invoke-virtual {p0}, Lcom/google/glass/share/ShareTimelineItemJob;->hasAnnotation()Z

    move-result v1

    iget-object v2, p0, Lcom/google/glass/share/ShareTimelineItemJob;->originLogData:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/glass/share/ShareTimelineItemJob;->logShareEvent(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ZLjava/lang/String;)V

    .line 177
    return-object v0
.end method

.method protected createTemporaryItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 112
    iget-object v3, p0, Lcom/google/glass/share/ShareTimelineItemJob;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    iget-object v4, p0, Lcom/google/glass/share/ShareTimelineItemJob;->toShareItemUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->queryTimelineItem(Landroid/net/Uri;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/share/ShareTimelineItemJob;->timelineItemToShare:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 114
    iget-object v3, p0, Lcom/google/glass/share/ShareTimelineItemJob;->timelineItemToShare:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v3, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/google/glass/share/ShareTimelineItemJob;->cancel()V

    .line 118
    :cond_0
    iget-object v3, p0, Lcom/google/glass/share/ShareTimelineItemJob;->callback:Lcom/google/glass/share/ShareTimelineItemJob$ShareTimelineItemCallback;

    iget-object v4, p0, Lcom/google/glass/share/ShareTimelineItemJob;->timelineItemToShare:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-interface {v3, v4}, Lcom/google/glass/share/ShareTimelineItemJob$ShareTimelineItemCallback;->onTimelineItemLoaded(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 120
    iget-object v3, p0, Lcom/google/glass/share/ShareTimelineItemJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Creating temporary share item"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    iget-object v3, p0, Lcom/google/glass/share/ShareTimelineItemJob;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v4, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_ITEM_SHARE_STARTED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 123
    iget-object v3, p0, Lcom/google/glass/share/ShareTimelineItemJob;->timelineItemCreationHelper:Lcom/google/glass/timeline/TimelineItemCreationHelper;

    invoke-virtual {v3}, Lcom/google/glass/timeline/TimelineItemCreationHelper;->createTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    .line 124
    .local v1, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    iget-object v3, p0, Lcom/google/glass/share/ShareTimelineItemJob;->timelineItemLocationHelper:Lcom/google/glass/timeline/TimelineItemLocationHelper;

    invoke-virtual {v3, v1}, Lcom/google/glass/timeline/TimelineItemLocationHelper;->populateLocation(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 126
    iget-object v3, p0, Lcom/google/glass/share/ShareTimelineItemJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Creating temporary item %s to share item %s"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/google/glass/share/ShareTimelineItemJob;->timelineItemToShare:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 127
    invoke-virtual {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 126
    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    iget-object v3, p0, Lcom/google/glass/share/ShareTimelineItemJob;->timelineItemToShare:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-static {v3, v1}, Lcom/google/glass/share/ShareTimelineItemJob;->copyFieldsToSharedItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 132
    :try_start_0
    iget-object v3, p0, Lcom/google/glass/share/ShareTimelineItemJob;->attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

    iget-object v4, p0, Lcom/google/glass/share/ShareTimelineItemJob;->context:Landroid/content/Context;

    invoke-virtual {v3, v4, v1}, Lcom/google/glass/timeline/AttachmentHelper;->cloneAttachments(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 133
    iget-object v3, p0, Lcom/google/glass/share/ShareTimelineItemJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Could not clone the attachments from the timeline item"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 148
    .end local v1    # "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :goto_0
    return-object v1

    .line 136
    .restart local v1    # "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v3, p0, Lcom/google/glass/share/ShareTimelineItemJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Interrupted while doing clone of attachments -- likely waiting on the attachment manager."

    new-array v5, v8, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v2

    .line 139
    goto :goto_0

    .line 142
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    invoke-direct {p0, v1}, Lcom/google/glass/share/ShareTimelineItemJob;->setShareTarget(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 143
    invoke-direct {p0, v1}, Lcom/google/glass/share/ShareTimelineItemJob;->setAnnotation(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 145
    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/glass/timeline/TimelineItemUtils;->addMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    .line 146
    invoke-virtual {v1, v9}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCloudSyncProtocol(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    goto :goto_0
.end method

.method public getShareTarget()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/google/glass/share/ShareTimelineItemJob;->shareWithTarget:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    return-object v0
.end method

.method public getShareTimelineId()Lcom/google/glass/timeline/TimelineItemId;
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/google/glass/share/ShareTimelineItemJob;->temporaryItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v0, :cond_0

    .line 339
    const/4 v0, 0x0

    .line 341
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/glass/timeline/TimelineItemId;

    iget-object v1, p0, Lcom/google/glass/share/ShareTimelineItemJob;->temporaryItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v0, v1}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    goto :goto_0
.end method

.method public getTemporaryItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 3

    .prologue
    .line 313
    invoke-super {p0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->getTemporaryItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    .line 315
    .local v1, "temporaryItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/glass/share/ShareTimelineItemJob;->shareWithTarget:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/share/ShareTimelineItemJob;->hasAnnotation()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 316
    :cond_0
    invoke-static {v1}, Lcom/google/glass/timeline/TimelineItemUtils;->clone(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    .line 317
    .local v0, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    invoke-direct {p0, v0}, Lcom/google/glass/share/ShareTimelineItemJob;->setAnnotation(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 318
    invoke-direct {p0, v0}, Lcom/google/glass/share/ShareTimelineItemJob;->setShareTarget(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 322
    .end local v0    # "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public hasAnnotation()Z
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/google/glass/share/ShareTimelineItemJob;->annotation:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isReadyForSharing(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 2
    .param p1, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 107
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCloudSyncProtocol()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFinalItemCreated(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 3
    .param p1, "completeShareItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/glass/share/ShareTimelineItemJob;->shareWithTarget:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v0}, Lcom/google/glass/entity/EntityUtils;->updateContentUsageInEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    .line 329
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/share/ShareTimelineItemJob;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/share/ShareTimelineItemJob;->shareWithTarget:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/entity/EntityHelper;->updateEntityUsage(Landroid/content/ContentResolver;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)I

    .line 331
    return-void
.end method

.method public onTemporaryItemCreated(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 1
    .param p1, "temporaryItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/google/glass/share/ShareTimelineItemJob;->temporaryItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 219
    iget-object v0, p0, Lcom/google/glass/share/ShareTimelineItemJob;->callback:Lcom/google/glass/share/ShareTimelineItemJob$ShareTimelineItemCallback;

    invoke-interface {v0, p1}, Lcom/google/glass/share/ShareTimelineItemJob$ShareTimelineItemCallback;->onTemporaryShareCreated(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 220
    return-void
.end method

.method public setAnnotation(Ljava/lang/String;)V
    .locals 0
    .param p1, "annotation"    # Ljava/lang/String;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/google/glass/share/ShareTimelineItemJob;->annotation:Ljava/lang/String;

    .line 309
    return-void
.end method

.method public setShareTarget(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V
    .locals 0
    .param p1, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/google/glass/share/ShareTimelineItemJob;->shareWithTarget:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 301
    return-void
.end method
