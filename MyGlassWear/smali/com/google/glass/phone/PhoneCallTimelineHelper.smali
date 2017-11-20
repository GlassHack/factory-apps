.class public Lcom/google/glass/phone/PhoneCallTimelineHelper;
.super Ljava/lang/Object;
.source "PhoneCallTimelineHelper.java"


# static fields
.field public static final PHONE_CALL_ATTACHMENT_FILE_NAME:Ljava/lang/String; = "%s.call"

.field private static final TAG:Ljava/lang/String;

.field private static final WAKE_LOCK_TIMEOUT_MS:J = 0x2710L

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final context:Landroid/content/Context;

.field private final timelineItemCreationHelper:Lcom/google/glass/timeline/TimelineItemCreationHelper;

.field private final timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

.field private final timelineItemLocationHelper:Lcom/google/glass/timeline/TimelineItemLocationHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/google/glass/phone/PhoneCallTimelineHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->TAG:Ljava/lang/String;

    .line 46
    sget-object v0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->context:Landroid/content/Context;

    .line 62
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;

    move-result-object v0

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    .line 64
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;

    move-result-object v0

    .line 65
    invoke-virtual {v0, p1}, Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemCreationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->timelineItemCreationHelper:Lcom/google/glass/timeline/TimelineItemCreationHelper;

    .line 66
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;

    move-result-object v0

    .line 67
    invoke-virtual {v0, p1}, Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemLocationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->timelineItemLocationHelper:Lcom/google/glass/timeline/TimelineItemLocationHelper;

    .line 68
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/phone/PhoneCallTimelineHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/phone/PhoneCallTimelineHelper;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/phone/PhoneCallTimelineHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/phone/PhoneCallTimelineHelper;
    .param p1, "x1"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->addMenuItems(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/phone/PhoneCallTimelineHelper;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/phone/PhoneCallTimelineHelper;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    return-object v0
.end method

.method private addMenuItems(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/String;)V
    .locals 8
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 198
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v2, "menuItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 200
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;-><init>()V

    .line 201
    .local v0, "call":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->setAction(I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 202
    invoke-virtual {v0, p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 203
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    new-instance v4, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    invoke-direct {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;-><init>()V

    .line 210
    .local v4, "replyMenuValue":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    iget-object v5, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->context:Landroid/content/Context;

    sget v6, Lcom/google/glass/common/R$string;->phone_call_reply_menu_display_name:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->setDisplayName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    .line 211
    invoke-virtual {v4, v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->setState(I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    .line 213
    new-instance v3, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;-><init>()V

    .line 214
    .local v3, "reply":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->setAction(I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 215
    const/4 v5, 0x1

    new-array v5, v5, [Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    aput-object v4, v5, v7

    iput-object v5, v3, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    .line 216
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    .end local v0    # "call":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .end local v3    # "reply":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .end local v4    # "replyMenuValue":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    :cond_0
    new-instance v1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;-><init>()V

    .line 219
    .local v1, "delete":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->setAction(I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 220
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-static {p1, v2}, Lcom/google/glass/timeline/TimelineItemUtils;->addMenuItems(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/util/List;)V

    .line 223
    return-void
.end method

.method public static createAttachment(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 233
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;-><init>()V

    .line 234
    .local v0, "atachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    const-string v1, "application/vnd.google-glass.phone-call-proto"

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->setContentType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 235
    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->setClientCachePath(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 236
    return-object v0
.end method


# virtual methods
.method createTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 301
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->timelineItemCreationHelper:Lcom/google/glass/timeline/TimelineItemCreationHelper;

    invoke-virtual {v1}, Lcom/google/glass/timeline/TimelineItemCreationHelper;->createTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    .line 302
    .local v0, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->timelineItemLocationHelper:Lcom/google/glass/timeline/TimelineItemLocationHelper;

    invoke-virtual {v1, v0}, Lcom/google/glass/timeline/TimelineItemLocationHelper;->populateLocation(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 304
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setSourceType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 306
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setViewType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 307
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setAttributionType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 308
    return-object v0
.end method

.method protected formatDuration(J)Ljava/lang/String;
    .locals 14
    .param p1, "elapsedMilliseconds"    # J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 268
    const-wide/16 v3, 0x0

    .line 269
    .local v3, "hours":J
    const-wide/16 v5, 0x0

    .line 270
    .local v5, "minutes":J
    const-wide/16 v7, 0x0

    .line 272
    .local v7, "seconds":J
    const-wide/16 v9, 0x3e8

    div-long v0, p1, v9

    .line 274
    .local v0, "elapsedSeconds":J
    const-wide/16 v9, 0x3c

    cmp-long v9, v0, v9

    if-ltz v9, :cond_0

    .line 275
    const-wide/16 v9, 0x3c

    div-long v5, v0, v9

    .line 276
    const-wide/16 v9, 0x3c

    mul-long/2addr v9, v5

    sub-long/2addr v0, v9

    .line 278
    :cond_0
    move-wide v7, v0

    .line 280
    const-wide/16 v9, 0x3c

    cmp-long v9, v5, v9

    if-ltz v9, :cond_1

    .line 281
    const-wide/16 v9, 0x3c

    div-long v3, v5, v9

    .line 282
    const-wide/16 v9, 0x3c

    mul-long/2addr v9, v3

    sub-long/2addr v5, v9

    .line 286
    :cond_1
    const-wide/16 v9, 0x0

    cmp-long v9, v3, v9

    if-lez v9, :cond_2

    .line 287
    iget-object v9, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->context:Landroid/content/Context;

    sget v10, Lcom/google/glass/common/R$string;->phone_call_duration_hours_minutes_seconds:I

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 288
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    .line 287
    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 296
    .local v2, "formattedText":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 289
    .end local v2    # "formattedText":Ljava/lang/String;
    :cond_2
    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-lez v9, :cond_3

    .line 290
    iget-object v9, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->context:Landroid/content/Context;

    sget v10, Lcom/google/glass/common/R$string;->phone_call_duration_minutes_seconds:I

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 291
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    .line 290
    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "formattedText":Ljava/lang/String;
    goto :goto_0

    .line 293
    .end local v2    # "formattedText":Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->context:Landroid/content/Context;

    sget v10, Lcom/google/glass/common/R$string;->phone_call_duration_seconds:I

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 294
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    .line 293
    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "formattedText":Ljava/lang/String;
    goto :goto_0
.end method

.method public getNameFromEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;
    .locals 3
    .param p1, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .prologue
    .line 184
    invoke-virtual {p0, p1}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->sanitizeEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object p1

    .line 186
    invoke-static {p1}, Lcom/google/glass/entity/EntityUtils;->getDisplayName(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
    invoke-static {p1}, Lcom/google/glass/entity/EntityUtils;->getDisplayName(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "name":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 188
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 189
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0

    .line 191
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->context:Landroid/content/Context;

    sget v2, Lcom/google/glass/common/R$string;->phone_call_unknown_caller:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0
.end method

.method protected getUnkownEntity()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 256
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;-><init>()V

    .line 257
    .local v0, "entity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->context:Landroid/content/Context;

    sget v2, Lcom/google/glass/common/R$string;->phone_call_unknown_caller:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->setDisplayName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 258
    return-object v0
.end method

.method public insertCallAsync(Lcom/google/glass/phone/PhoneCall;)Ljava/util/concurrent/CountDownLatch;
    .locals 4
    .param p1, "call"    # Lcom/google/glass/phone/PhoneCall;

    .prologue
    .line 79
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 80
    .local v0, "done":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;-><init>(Lcom/google/glass/phone/PhoneCallTimelineHelper;Lcom/google/glass/phone/PhoneCall;Ljava/util/concurrent/CountDownLatch;)V

    .line 171
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v1}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    .line 170
    invoke-virtual {v2, v1, v3}, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 172
    return-object v0
.end method

.method protected sanitizeEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1
    .param p1, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 247
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->hasDisplayName()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->hasPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    .end local p1    # "entity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_0
    :goto_0
    return-object p1

    .restart local p1    # "entity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->getUnkownEntity()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object p1

    goto :goto_0
.end method
