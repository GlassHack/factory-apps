.class public Lcom/google/glass/timeline/TimelineItemLoggingHelper;
.super Ljava/lang/Object;
.source "TimelineItemLoggingHelper.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private bundleItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field private final clock:Lcom/google/glass/time/Clock;

.field private itemWithMenu:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field private lingeredCardAttributionType:I

.field private lingeredCardSource:Ljava/lang/String;

.field private piiHasher:Lcom/google/glass/logging/PiiHasher;

.field private startBundleTime:J

.field private startLingerTime:J

.field private startMenuTime:J

.field private timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field private timelinePosition:I

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/time/Clock;Lcom/google/glass/logging/PiiHasher;)V
    .locals 4
    .param p1, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;
    .param p2, "clock"    # Lcom/google/glass/time/Clock;
    .param p3, "piiHasher"    # Lcom/google/glass/logging/PiiHasher;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide v2, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->startLingerTime:J

    .line 38
    iput-object v1, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->timelinePosition:I

    .line 43
    iput-wide v2, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->startBundleTime:J

    .line 44
    iput-object v1, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->bundleItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 46
    iput-wide v2, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->startMenuTime:J

    .line 47
    iput-object v1, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->itemWithMenu:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 51
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 52
    iput-object p2, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->clock:Lcom/google/glass/time/Clock;

    .line 53
    iput-object p3, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->piiHasher:Lcom/google/glass/logging/PiiHasher;

    .line 54
    return-void
.end method

.method private createLogEvent(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;JJI)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 7
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "duration"    # J
    .param p4, "currentTime"    # J
    .param p6, "type"    # I

    .prologue
    .line 283
    new-instance v1, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;

    invoke-direct {v1}, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;-><init>()V

    .line 284
    invoke-virtual {v1, p6}, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->setType(I)Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;

    move-result-object v1

    .line 285
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->setSourceId(Ljava/lang/String;)Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->piiHasher:Lcom/google/glass/logging/PiiHasher;

    .line 286
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/logging/PiiHasher;->hashIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->setObfuscatedTimelineItemId(Ljava/lang/String;)Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;

    move-result-object v1

    .line 287
    invoke-virtual {v1, p2, p3}, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->setEventDurationMs(J)Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;

    move-result-object v0

    .line 288
    .local v0, "usage":Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasBundleId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->piiHasher:Lcom/google/glass/logging/PiiHasher;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getBundleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/logging/PiiHasher;->hashIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->setObfuscatedBundleId(Ljava/lang/String;)Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;

    .line 292
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getDisplayTime()J

    move-result-wide v1

    .line 293
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCreationTime()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getModifiedTime()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 292
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    sub-long v1, p4, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->setUserActionDelayMs(J)Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;

    .line 295
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasLoggingAnnotations()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getLoggingAnnotations()Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;->hasCardType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getLoggingAnnotations()Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;->getCardType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->setCardType(I)Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;

    .line 298
    :cond_1
    invoke-static {p4, p5}, Lcom/google/glass/userevent/UserEventHelper;->createUserEventProto(J)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->setGlasswareUsage(Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v1

    return-object v1
.end method

.method private logBundleViewAsTuple(II)V
    .locals 7
    .param p1, "numberOfItems"    # I
    .param p2, "numberOfViewedItems"    # I

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->VIEWED_BUNDLE:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "n"

    .line 202
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "v"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 203
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 201
    invoke-static {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 200
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method private logLingerAsTuple(JLjava/lang/String;)V
    .locals 6
    .param p1, "duration"    # J
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 191
    const-string v1, "t"

    .line 192
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "s"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->lingeredCardSource:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "a"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->lingeredCardAttributionType:I

    .line 194
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "r"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    aput-object p3, v3, v4

    .line 191
    invoke-static {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "tuple":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_CARD_LINGER:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 197
    return-void
.end method


# virtual methods
.method createBundleViewedLogEvent(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IIJJ)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 8
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "numberOfItems"    # I
    .param p3, "numberOfViewedItems"    # I
    .param p4, "duration"    # J
    .param p6, "currentTime"    # J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 219
    const/4 v6, 0x2

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p4

    move-wide v4, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->createLogEvent(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;JJI)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v7

    .line 221
    .local v7, "proto":Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    invoke-virtual {v7}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->getGlasswareUsage()Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;

    move-result-object v0

    new-instance v1, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;

    invoke-direct {v1}, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;-><init>()V

    .line 222
    invoke-virtual {v1, p2}, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->setNumberOfItems(I)Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->setViewedItems(I)Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;

    move-result-object v1

    .line 221
    invoke-virtual {v0, v1}, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->setBundleViewed(Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;)Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;

    .line 223
    return-object v7
.end method

.method createItemViewedLogEvent(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IJJ)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 8
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "position"    # I
    .param p3, "duration"    # J
    .param p5, "currentTime"    # J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 209
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->createLogEvent(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;JJI)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v7

    .line 211
    .local v7, "proto":Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    invoke-virtual {v7}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->getGlasswareUsage()Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;

    move-result-object v0

    new-instance v1, Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;

    invoke-direct {v1}, Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;-><init>()V

    invoke-virtual {v1, p2}, Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;->setPosition(I)Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->setItemViewed(Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;)Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;

    .line 212
    return-object v7
.end method

.method createMenuSelectedLogEvent(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;IIJ)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 11
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "menuItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .param p3, "numberOfItems"    # I
    .param p4, "position"    # I
    .param p5, "currentTime"    # J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 241
    const-wide/16 v2, 0x0

    const/4 v6, 0x4

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->createLogEvent(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;JJI)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v9

    .line 243
    .local v9, "proto":Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getAction()I

    move-result v7

    .line 244
    .local v7, "action":I
    invoke-static {v7}, Lcom/google/glass/timeline/TimelineMenuUtils;->getActionName(I)Ljava/lang/String;

    move-result-object v8

    .line 246
    .local v8, "optionValue":Ljava/lang/String;
    const/4 v0, 0x7

    if-ne v7, v0, :cond_1

    const-string v0, "com.google.android.wearable.app.WEAR_ITEM_OPEN_ACTION"

    .line 247
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getBroadcastAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    const-string v8, "OPEN_ON_PHONE"

    .line 273
    :cond_0
    :goto_0
    invoke-virtual {v9}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->getGlasswareUsage()Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;

    move-result-object v0

    new-instance v1, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;

    invoke-direct {v1}, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;-><init>()V

    .line 275
    invoke-virtual {v1, v8}, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->setOptionValue(Ljava/lang/String;)Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;

    move-result-object v1

    .line 276
    invoke-virtual {v1, p4}, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->setPosition(I)Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;

    move-result-object v1

    .line 277
    invoke-virtual {v1, p3}, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->setNumberOfItems(I)Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;

    move-result-object v1

    .line 273
    invoke-virtual {v0, v1}, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->setMenuSelected(Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;)Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;

    .line 278
    return-object v9

    .line 249
    :cond_1
    if-eqz v7, :cond_2

    const/4 v0, 0x7

    if-ne v7, v0, :cond_0

    if-eqz p1, :cond_0

    .line 250
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wear:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    :cond_2
    const/4 v0, 0x0

    .line 268
    invoke-static {p2, v0}, Lcom/google/glass/timeline/TimelineMenuUtils;->getValueForState(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    move-result-object v10

    .line 269
    .local v10, "value":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    if-eqz v10, :cond_0

    .line 270
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/util/HashFunctions;->toMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method createMenuViewedLogEvent(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IIJJ)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 8
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "numberOfItems"    # I
    .param p3, "numberOfViewedItems"    # I
    .param p4, "duration"    # J
    .param p6, "currentTime"    # J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 230
    const/4 v6, 0x3

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p4

    move-wide v4, p6

    .line 231
    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->createLogEvent(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;JJI)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v7

    .line 232
    .local v7, "proto":Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    invoke-virtual {v7}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->getGlasswareUsage()Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;

    move-result-object v0

    new-instance v1, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;

    invoke-direct {v1}, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;-><init>()V

    .line 233
    invoke-virtual {v1, p2}, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->setNumberOfItems(I)Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;

    move-result-object v1

    .line 234
    invoke-virtual {v1, p3}, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->setViewedItems(I)Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;

    move-result-object v1

    .line 232
    invoke-virtual {v0, v1}, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->setMenuViewed(Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;)Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;

    .line 235
    return-object v7
.end method

.method public onItemLoaded(ILcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 87
    const-string v0, "onItemLoaded called with null item"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onItemLoaded with [position: %d, item_source: %s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    iget v0, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->timelinePosition:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v0, :cond_0

    .line 91
    iput-object p2, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 92
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->lingeredCardSource:Ljava/lang/String;

    .line 93
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getAttributionType()I

    move-result v0

    iput v0, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->lingeredCardAttributionType:I

    .line 95
    :cond_0
    return-void
.end method

.method public selectMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 9
    .param p1, "selectedItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "selectedMenuItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .prologue
    .line 173
    iget-object v0, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    array-length v3, v0

    .line 175
    .local v3, "numberOfItems":I
    const/4 v4, 0x0

    .local v4, "position":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 176
    iget-object v0, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    aget-object v7, v0, v4

    .line 177
    .local v7, "menuItem":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    invoke-virtual {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getAction()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getAction()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 178
    invoke-virtual {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getPayload()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getPayload()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 182
    .end local v7    # "menuItem":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    :cond_0
    if-lt v4, v3, :cond_1

    .line 183
    const/4 v4, -0x1

    .line 185
    :cond_1
    iget-object v8, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->clock:Lcom/google/glass/time/Clock;

    .line 187
    invoke-interface {v0}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 185
    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->createMenuSelectedLogEvent(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;IIJ)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V

    .line 188
    return-void

    .line 175
    .restart local v7    # "menuItem":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public startBundleView(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 2
    .param p1, "bundleItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v0}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->startBundleTime:J

    .line 132
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->bundleItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 133
    return-void
.end method

.method public startLinger(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V
    .locals 5
    .param p1, "selectedItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "selectedPosition"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v0}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->startLingerTime:J

    .line 65
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 66
    iput p2, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->timelinePosition:I

    .line 67
    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->lingeredCardSource:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getAttributionType()I

    move-result v0

    iput v0, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->lingeredCardAttributionType:I

    .line 75
    :goto_0
    sget-object v0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "startLinger called [selectedPosition: %s, selectedItem: %s, selectedItemSource: %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 76
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->lingeredCardSource:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 75
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    return-void

    .line 71
    :cond_0
    const-string v0, "clock"

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->lingeredCardSource:Ljava/lang/String;

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->lingeredCardAttributionType:I

    goto :goto_0
.end method

.method public startMenuView(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 2
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v0}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->startMenuTime:J

    .line 154
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->itemWithMenu:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 155
    return-void
.end method

.method public stopBundleView(II)V
    .locals 11
    .param p1, "numberOfItems"    # I
    .param p2, "numberOfViewedItems"    # I

    .prologue
    const-wide/16 v9, 0x0

    .line 136
    iget-wide v0, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->startBundleTime:J

    cmp-long v0, v0, v9

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->bundleItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v0}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v6

    .line 138
    .local v6, "currentTime":J
    iget-wide v0, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->startBundleTime:J

    sub-long v4, v6, v0

    .line 139
    .local v4, "duration":J
    invoke-direct {p0, p1, p2}, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->logBundleViewAsTuple(II)V

    .line 140
    iget-object v8, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->bundleItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v7}, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->createBundleViewedLogEvent(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IIJJ)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V

    .line 143
    .end local v4    # "duration":J
    .end local v6    # "currentTime":J
    :cond_0
    iput-wide v9, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->startBundleTime:J

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->bundleItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 145
    return-void
.end method

.method public stopLinger(Ljava/lang/String;)V
    .locals 10
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0x0

    .line 109
    iget-wide v0, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->startLingerTime:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v0}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v5

    .line 113
    .local v5, "currentTime":J
    iget-wide v0, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->startLingerTime:J

    sub-long v3, v5, v0

    .line 114
    .local v3, "duration":J
    invoke-direct {p0, v3, v4, p1}, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->logLingerAsTuple(JLjava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v0, :cond_1

    .line 117
    iget-object v7, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget v2, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->timelinePosition:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->createItemViewedLogEvent(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IJJ)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V

    .line 120
    :cond_1
    iput-wide v8, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->startLingerTime:J

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->timelinePosition:I

    goto :goto_0
.end method

.method public stopMenuView(II)V
    .locals 11
    .param p1, "numberOfItems"    # I
    .param p2, "numberOfViewedItems"    # I

    .prologue
    const-wide/16 v9, 0x0

    .line 161
    iget-wide v0, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->startMenuTime:J

    cmp-long v0, v0, v9

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->itemWithMenu:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v0}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v6

    .line 163
    .local v6, "currentTime":J
    iget-wide v0, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->startMenuTime:J

    sub-long v4, v6, v0

    .line 164
    .local v4, "duration":J
    iget-object v8, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->itemWithMenu:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v7}, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->createMenuViewedLogEvent(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IIJJ)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V

    .line 167
    .end local v4    # "duration":J
    .end local v6    # "currentTime":J
    :cond_0
    iput-wide v9, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->startMenuTime:J

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->itemWithMenu:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 169
    return-void
.end method
