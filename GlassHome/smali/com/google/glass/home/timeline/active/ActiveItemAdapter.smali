.class public Lcom/google/glass/home/timeline/active/ActiveItemAdapter;
.super Lcom/google/android/glass/widget/CardScrollAdapter;
.source "ActiveItemAdapter.java"

# interfaces
.implements Lcom/google/glass/ongoing/OngoingActivityService$ActivityChangeListener;
.implements Lcom/google/glass/timeline/SearchableAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/timeline/active/ActiveItemAdapter$2;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final context:Landroid/content/Context;

.field private final data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/home/timeline/active/ActiveItemView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/android/glass/widget/CardScrollAdapter;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->data:Ljava/util/List;

    .line 48
    iput-object p1, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->context:Landroid/content/Context;

    .line 51
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->HOME:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->onActivityAdded(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;Landroid/os/Bundle;)V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/timeline/active/ActiveItemAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/timeline/active/ActiveItemAdapter;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method private createViewForId(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)Lcom/google/glass/home/timeline/active/ActiveItemView;
    .locals 2
    .param p1, "type"    # Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    .prologue
    .line 224
    sget-object v0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter$2;->$SwitchMap$com$google$glass$ongoing$OngoingActivityManager$ActivityType:[I

    invoke-virtual {p1}, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 232
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 226
    :pswitch_0
    new-instance v0, Lcom/google/glass/home/timeline/active/HomeItemView;

    iget-object v1, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/glass/home/timeline/active/HomeItemView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 228
    :pswitch_1
    new-instance v0, Lcom/google/glass/home/timeline/active/NavigationItemView;

    iget-object v1, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/glass/home/timeline/active/NavigationItemView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 230
    :pswitch_2
    new-instance v0, Lcom/google/glass/home/timeline/active/MusicPlayerView;

    iget-object v1, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/glass/home/timeline/active/MusicPlayerView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onActivityAdded(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "activityType"    # Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 60
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 63
    invoke-virtual {p0, p1}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->getPositionForType(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)I

    move-result v0

    .line 64
    .local v0, "index":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 65
    sget-object v2, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Already have item %s"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iget-object v2, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->data:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/home/timeline/active/ActiveItemView;

    invoke-virtual {v2, p2}, Lcom/google/glass/home/timeline/active/ActiveItemView;->setParameters(Landroid/os/Bundle;)V

    .line 67
    sget-object v2, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Items: %s"

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->data:Ljava/util/List;

    aput-object v5, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->notifyDataSetChanged()V

    .line 78
    :goto_0
    return-void

    .line 72
    :cond_0
    sget-object v2, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Adding item %s"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->createViewForId(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)Lcom/google/glass/home/timeline/active/ActiveItemView;

    move-result-object v1

    .line 74
    .local v1, "view":Lcom/google/glass/home/timeline/active/ActiveItemView;
    invoke-virtual {v1, p2}, Lcom/google/glass/home/timeline/active/ActiveItemView;->setParameters(Landroid/os/Bundle;)V

    .line 75
    iget-object v2, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->data:Ljava/util/List;

    invoke-interface {v2, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 76
    sget-object v2, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Items: %s"

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->data:Ljava/util/List;

    aput-object v5, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private onActivityRemoved(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;Z)V
    .locals 9
    .param p1, "activityType"    # Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;
    .param p2, "goHome"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 99
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 101
    invoke-virtual {p0, p1}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->getPositionForType(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)I

    move-result v0

    .line 102
    .local v0, "index":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 103
    iget-object v2, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->data:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/home/timeline/active/ActiveItemView;

    .line 104
    .local v1, "oldView":Lcom/google/glass/home/timeline/active/ActiveItemView;
    sget-object v2, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Removing item %s (%s left). Going home? %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v7

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->getCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    sget-object v2, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Items: %s"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->data:Ljava/util/List;

    aput-object v5, v4, v7

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    invoke-virtual {v1}, Lcom/google/glass/home/timeline/active/ActiveItemView;->onRemove()V

    .line 109
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/google/glass/home/timeline/active/ActiveItemAdapter$1;

    invoke-direct {v3, p0, p2}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter$1;-><init>(Lcom/google/glass/home/timeline/active/ActiveItemAdapter;Z)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 119
    .end local v1    # "oldView":Lcom/google/glass/home/timeline/active/ActiveItemView;
    :cond_0
    return-void
.end method


# virtual methods
.method public activate()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 191
    sget-object v4, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Activating adapter."

    new-array v7, v5, [Ljava/lang/Object;

    invoke-interface {v4, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    new-instance v3, Lcom/google/android/util/ArraySet;

    invoke-direct {v3}, Lcom/google/android/util/ArraySet;-><init>()V

    .line 195
    .local v3, "newActivityTypes":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;>;"
    sget-object v4, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->HOME:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-static {}, Lcom/google/glass/ongoing/OngoingActivityService;->getOngoingActivities()[Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;

    move-result-object v6

    array-length v7, v6

    move v4, v5

    :goto_0
    if-ge v4, v7, :cond_0

    aget-object v0, v6, v4

    .line 197
    .local v0, "activity":Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;
    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->onActivityAdded(Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;)V

    .line 198
    invoke-virtual {v0}, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;->getActivityType()Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 196
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 201
    .end local v0    # "activity":Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->data:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 202
    iget-object v4, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->data:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/glass/home/timeline/active/ActiveItemView;

    invoke-virtual {v4}, Lcom/google/glass/home/timeline/active/ActiveItemView;->getActivityType()Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 203
    iget-object v4, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->data:Ljava/util/List;

    add-int/lit8 v2, v1, -0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/glass/home/timeline/active/ActiveItemView;

    invoke-virtual {v4}, Lcom/google/glass/home/timeline/active/ActiveItemView;->getActivityType()Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    move-result-object v4

    invoke-direct {p0, v4, v5}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->onActivityRemoved(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;Z)V

    move v1, v2

    .line 201
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 207
    :cond_2
    invoke-static {p0}, Lcom/google/glass/ongoing/OngoingActivityService;->addListener(Lcom/google/glass/ongoing/OngoingActivityService$ActivityChangeListener;)V

    .line 208
    return-void
.end method

.method public deactivate()V
    .locals 3

    .prologue
    .line 212
    sget-object v0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Deactivating adapter."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    invoke-static {p0}, Lcom/google/glass/ongoing/OngoingActivityService;->removeListener(Lcom/google/glass/ongoing/OngoingActivityService$ActivityChangeListener;)V

    .line 214
    return-void
.end method

.method public findPosition(Lcom/google/glass/timeline/TimelineItemId;)I
    .locals 1
    .param p1, "id"    # Lcom/google/glass/timeline/TimelineItemId;

    .prologue
    .line 153
    invoke-virtual {p1}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/timeline/active/ActiveItemApi;->convertToEnum(Ljava/lang/String;)Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->getPositionForType(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHomePosition()I
    .locals 1

    .prologue
    .line 176
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->HOME:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->getPositionForType(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/timeline/active/ActiveItemView;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/active/ActiveItemView;->getTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 143
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 144
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    .line 148
    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long v1, v0, v2

    iget-object v0, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/timeline/active/ActiveItemView;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v3, v0

    or-long v0, v1, v3

    goto :goto_0
.end method

.method public getPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 158
    check-cast p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .end local p1    # "item":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/timeline/active/ActiveItemApi;->convertToEnum(Ljava/lang/String;)Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->getPositionForType(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)I

    move-result v0

    return v0
.end method

.method public getPositionForType(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)I
    .locals 2
    .param p1, "type"    # Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    .prologue
    .line 181
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 182
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->data:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/home/timeline/active/ActiveItemView;

    invoke-virtual {v1}, Lcom/google/glass/home/timeline/active/ActiveItemView;->getActivityType()Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 181
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 163
    iget-object v2, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->data:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/home/timeline/active/ActiveItemView;

    .line 165
    .local v1, "view":Lcom/google/glass/home/timeline/active/ActiveItemView;
    sget v2, Lcom/google/glass/home/R$id;->timestamp:I

    invoke-virtual {v1, v2}, Lcom/google/glass/home/timeline/active/ActiveItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 166
    .local v0, "timestampView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 167
    sget v2, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_fade_out_on_scroll:I

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/view/View;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v3}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/home/timeline/active/ActiveItemView;->setTag(ILjava/lang/Object;)V

    .line 170
    :cond_0
    return-object v1
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public onActivityAdded(Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;)V
    .locals 2
    .param p1, "activity"    # Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;

    .prologue
    .line 56
    invoke-virtual {p1}, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;->getActivityType()Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;->getParams()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->onActivityAdded(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;Landroid/os/Bundle;)V

    .line 57
    return-void
.end method

.method public onActivityRemoved(Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;)V
    .locals 2
    .param p1, "activity"    # Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;

    .prologue
    .line 95
    invoke-virtual {p1}, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;->getActivityType()Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->onActivityRemoved(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;Z)V

    .line 96
    return-void
.end method

.method public onActivityUpdated(Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;)V
    .locals 7
    .param p1, "activity"    # Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 82
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 84
    invoke-virtual {p1}, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;->getActivityType()Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->getPositionForType(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)I

    move-result v0

    .line 85
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 86
    sget-object v1, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Updating item %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;->getActivityType()Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->data:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/home/timeline/active/ActiveItemView;

    invoke-virtual {p1}, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;->getParams()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/home/timeline/active/ActiveItemView;->setParameters(Landroid/os/Bundle;)V

    .line 88
    sget-object v1, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Items: %s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->data:Ljava/util/List;

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->notifyDataSetChanged()V

    .line 91
    :cond_0
    return-void
.end method
