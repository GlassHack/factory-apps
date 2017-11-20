.class public Lcom/google/glass/timeline/TimelineItemCreationHelper;
.super Ljava/lang/Object;
.source "TimelineItemCreationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;
    }
.end annotation


# instance fields
.field private final clock:Lcom/google/glass/time/Clock;

.field private final deviceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceId"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineItemCreationHelper;->clock:Lcom/google/glass/time/Clock;

    .line 28
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineItemCreationHelper;->deviceId:Ljava/lang/String;

    .line 29
    return-void
.end method

.method private getRandomId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 3

    .prologue
    .line 35
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "device:"

    .line 36
    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineItemCreationHelper;->getRandomId()Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/glass/timeline/TimelineItemCreationHelper;->createTimelineItem(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method public createTimelineItem(Ljava/lang/Integer;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .param p1, "sourceType"    # Ljava/lang/Integer;
    .param p2, "sourcePrefix"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineItemCreationHelper;->getRandomId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/glass/timeline/TimelineItemCreationHelper;->createTimelineItem(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method public createTimelineItem(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 7
    .param p1, "sourceType"    # Ljava/lang/Integer;
    .param p2, "sourcePrefix"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-object v4, p0, Lcom/google/glass/timeline/TimelineItemCreationHelper;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v4}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 58
    .local v0, "currentTime":J
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/timeline/TimelineItemCreationHelper;->deviceId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, "source":Ljava/lang/String;
    :goto_0
    new-instance v4, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;-><init>()V

    .line 60
    invoke-virtual {v4, v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCreationTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v4

    .line 61
    invoke-virtual {v4, v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setDisplayTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v4

    .line 62
    invoke-virtual {v4, p3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v4

    .line 63
    invoke-virtual {v4, v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setModifiedTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v4

    .line 64
    invoke-virtual {v4, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v4

    .line 65
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setSourceType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v2

    .line 67
    .local v2, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    return-object v2

    .line 58
    .end local v2    # "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v3    # "source":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemCreationHelper;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalTimelineItemSource()Ljava/lang/String;
    .locals 3

    .prologue
    .line 74
    const-string v0, "device:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemCreationHelper;->deviceId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
