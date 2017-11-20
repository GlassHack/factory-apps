.class public Lcom/google/glass/timeline/ui/TimestampView;
.super Landroid/widget/TextView;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/timeline/ui/TimestampUpdateReceiver$Listener;


# instance fields
.field private item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/timeline/ui/TimestampView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/timeline/ui/TimestampView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method private calculateTimeString(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 46
    if-nez p1, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-object v0

    .line 49
    :cond_1
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineItemUtils;->shouldShowTimestamp(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineItemUtils;->getDisplayTime(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)J

    move-result-wide v0

    .line 55
    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/TimestampView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 56
    invoke-static {v2, v0, v1}, Lcom/google/glass/util/DateHelper;->getRelativeTimestamp(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 58
    iget-object v1, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-static {v1}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    iget-object v1, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    array-length v1, v1

    if-le v1, v6, :cond_0

    iget-object v1, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v1, v3

    .line 60
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->hasCreationTime()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v1, v3

    .line 62
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getCreationTime()J

    move-result-wide v3

    .line 61
    invoke-static {v2, v3, v4}, Lcom/google/glass/util/DateHelper;->getRelativeTimestamp(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 66
    sget v3, Lcom/google/glass/common/R$string;->timeline_time_from_to:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    aput-object v1, v4, v6

    .line 67
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onUpdate()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 35
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimestampView;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {p0, v0}, Lcom/google/glass/timeline/ui/TimestampView;->setItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 36
    return-void
.end method

.method public setItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 41
    iput-object p1, p0, Lcom/google/glass/timeline/ui/TimestampView;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 42
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/ui/TimestampView;->calculateTimeString(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/timeline/ui/TimestampView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    return-void
.end method
