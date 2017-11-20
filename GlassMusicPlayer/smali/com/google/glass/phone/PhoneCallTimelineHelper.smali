.class public Lcom/google/glass/phone/PhoneCallTimelineHelper;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->addMenuItems(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/phone/PhoneCallTimelineHelper;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    return-object v0
.end method

.method private addMenuItems(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 199
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 200
    new-instance v1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;-><init>()V

    .line 201
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->setAction(I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 202
    invoke-virtual {v1, p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 203
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    new-instance v1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    invoke-direct {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;-><init>()V

    .line 210
    iget-object v2, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->context:Landroid/content/Context;

    sget v3, Lcom/google/glass/common/R$string;->phone_call_reply_menu_display_name:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->setDisplayName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    .line 211
    invoke-virtual {v1, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->setState(I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    .line 213
    new-instance v2, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;-><init>()V

    .line 214
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->setAction(I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 215
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    aput-object v1, v3, v4

    iput-object v3, v2, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    .line 216
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_0
    new-instance v1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;-><init>()V

    .line 219
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->setAction(I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 220
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-static {p1, v0}, Lcom/google/glass/timeline/TimelineItemUtils;->addMenuItems(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/util/List;)V

    .line 223
    return-void
.end method

.method public static createAttachment(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 233
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;-><init>()V

    .line 234
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
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->timelineItemCreationHelper:Lcom/google/glass/timeline/TimelineItemCreationHelper;

    invoke-virtual {v0}, Lcom/google/glass/timeline/TimelineItemCreationHelper;->createTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    .line 302
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
    .locals 13
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v8, 0x3c

    .line 268
    .line 270
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    .line 274
    cmp-long v2, v0, v8

    if-ltz v2, :cond_3

    .line 275
    div-long v2, v0, v8

    .line 276
    mul-long v6, v2, v8

    sub-long/2addr v0, v6

    move-wide v6, v0

    move-wide v0, v2

    .line 280
    :goto_0
    cmp-long v2, v0, v8

    if-ltz v2, :cond_2

    .line 281
    div-long v2, v0, v8

    .line 282
    mul-long/2addr v8, v2

    sub-long/2addr v0, v8

    .line 286
    :goto_1
    cmp-long v8, v2, v4

    if-lez v8, :cond_0

    .line 287
    iget-object v4, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->context:Landroid/content/Context;

    sget v5, Lcom/google/glass/common/R$string;->phone_call_duration_hours_minutes_seconds:I

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    .line 288
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v8, v10

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v8, v11

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v8, v12

    .line 287
    invoke-virtual {v4, v5, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 296
    :goto_2
    return-object v0

    .line 289
    :cond_0
    cmp-long v2, v0, v4

    if-lez v2, :cond_1

    .line 290
    iget-object v2, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->context:Landroid/content/Context;

    sget v3, Lcom/google/glass/common/R$string;->phone_call_duration_minutes_seconds:I

    new-array v4, v12, [Ljava/lang/Object;

    .line 291
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v11

    .line 290
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->context:Landroid/content/Context;

    sget v1, Lcom/google/glass/common/R$string;->phone_call_duration_seconds:I

    new-array v2, v11, [Ljava/lang/Object;

    .line 294
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v10

    .line 293
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-wide v2, v4

    goto :goto_1

    :cond_3
    move-wide v6, v0

    move-wide v0, v4

    goto :goto_0
.end method

.method public getNameFromEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 184
    invoke-virtual {p0, p1}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->sanitizeEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    .line 186
    invoke-static {v0}, Lcom/google/glass/entity/EntityUtils;->getDisplayName(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
    invoke-static {v0}, Lcom/google/glass/entity/EntityUtils;->getDisplayName(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v0

    .line 193
    :goto_0
    return-object v0

    .line 188
    :cond_0
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 189
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper;->context:Landroid/content/Context;

    sget v1, Lcom/google/glass/common/R$string;->phone_call_unknown_caller:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

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

    .prologue
    .line 79
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 80
    new-instance v2, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;

    invoke-direct {v2, p0, p1, v1}, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;-><init>(Lcom/google/glass/phone/PhoneCallTimelineHelper;Lcom/google/glass/phone/PhoneCall;Ljava/util/concurrent/CountDownLatch;)V

    .line 171
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    .line 170
    invoke-virtual {v2, v0, v3}, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 172
    return-object v1
.end method

.method protected sanitizeEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1
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
    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->getUnkownEntity()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object p1

    goto :goto_0
.end method
