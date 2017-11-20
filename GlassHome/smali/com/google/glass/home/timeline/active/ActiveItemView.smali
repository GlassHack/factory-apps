.class public abstract Lcom/google/glass/home/timeline/active/ActiveItemView;
.super Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;
.source "ActiveItemView.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final activityType:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

.field private item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field private parameters:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/active/ActiveItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityType"    # Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object p2, p0, Lcom/google/glass/home/timeline/active/ActiveItemView;->activityType:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    .line 46
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/ActiveItemView;->init()V

    .line 47
    return-void
.end method

.method private static createTimelineItemForType(Landroid/content/Context;Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    .prologue
    .line 119
    invoke-static {p1}, Lcom/google/glass/timeline/active/ActiveItemApi;->createActiveItemId(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "itemId":Ljava/lang/String;
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemCreationHelper;

    move-result-object v4

    .line 122
    .local v4, "timelineItemCreationHelper":Lcom/google/glass/timeline/TimelineItemCreationHelper;
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "device:"

    invoke-virtual {v4, v5, v6, v1}, Lcom/google/glass/timeline/TimelineItemCreationHelper;->createTimelineItem(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    .line 125
    .local v0, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v2

    .line 126
    .local v2, "now":J
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCloudSyncProtocol(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 127
    invoke-virtual {v0, v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setDisplayTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 128
    invoke-virtual {v0, v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setModifiedTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 129
    return-object v0
.end method

.method private final init()V
    .locals 3

    .prologue
    .line 51
    sget-object v0, Lcom/google/glass/home/timeline/active/ActiveItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Inflating custom view."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/ActiveItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/timeline/active/ActiveItemView;->activityType:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-static {v0, v1}, Lcom/google/glass/home/timeline/active/ActiveItemView;->createTimelineItemForType(Landroid/content/Context;Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/ActiveItemView;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 53
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/ActiveItemView;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/active/ActiveItemView;->addMenuItems(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 54
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/ActiveItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/ActiveItemView;->provideContentView()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 55
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/ActiveItemView;->onViewInflated()V

    .line 56
    return-void
.end method


# virtual methods
.method protected addMenuItems(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 0
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 92
    return-void
.end method

.method public getActivityType()Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/ActiveItemView;->activityType:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    return-object v0
.end method

.method protected getParameters()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/ActiveItemView;->parameters:Landroid/os/Bundle;

    return-object v0
.end method

.method public getTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/ActiveItemView;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    return-object v0
.end method

.method protected getTimelineMenuBuilder()Lcom/google/glass/timeline/TimelineMenuBuilder;
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/ActiveItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-virtual {v0}, Lcom/google/glass/timeline/ui/TimelineActivity;->getTimelineMenuBuilder()Lcom/google/glass/timeline/TimelineMenuBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected getTimelineMenuSelectionHandler()Lcom/google/glass/timeline/TimelineMenuSelectionHandler;
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/ActiveItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-virtual {v0}, Lcom/google/glass/timeline/ui/TimelineActivity;->getTimelineMenuSelectionHandler()Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    move-result-object v0

    return-object v0
.end method

.method protected onParametersChanged(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 82
    return-void
.end method

.method public onRemove()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method protected onViewInflated()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method protected abstract provideContentView()I
.end method

.method public final setParameters(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/glass/home/timeline/active/ActiveItemView;->parameters:Landroid/os/Bundle;

    .line 61
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/ActiveItemView;->parameters:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/active/ActiveItemView;->onParametersChanged(Landroid/os/Bundle;)V

    .line 62
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/ActiveItemView;->activityType:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-virtual {v0}, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
