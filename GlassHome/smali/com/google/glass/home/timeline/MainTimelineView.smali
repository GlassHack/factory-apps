.class public Lcom/google/glass/home/timeline/MainTimelineView;
.super Lcom/google/glass/timeline/ui/TimelineView;
.source "MainTimelineView.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private activationPointer:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field private activeItemAdapter:Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper",
            "<",
            "Lcom/google/glass/home/timeline/active/ActiveItemAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private settingsAdapter:Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper",
            "<",
            "Lcom/google/glass/home/timeline/TimelineApiAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private timelineApiAdapter:Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper",
            "<",
            "Lcom/google/glass/home/timeline/TimelineApiAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private timelineApiManager:Lcom/google/glass/home/timeline/TimelineApiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/MainTimelineView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/home/timeline/MainTimelineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/home/timeline/MainTimelineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/timeline/ui/TimelineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineView;->activationPointer:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 79
    return-void
.end method

.method private createActiveItemAdapter()Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper",
            "<",
            "Lcom/google/glass/home/timeline/active/ActiveItemAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    new-instance v0, Lcom/google/glass/home/timeline/MainTimelineView$1;

    new-instance v1, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p0, v1}, Lcom/google/glass/home/timeline/MainTimelineView$1;-><init>(Lcom/google/glass/home/timeline/MainTimelineView;Lcom/google/glass/home/timeline/active/ActiveItemAdapter;)V

    return-object v0
.end method

.method private createTimelineApiAdapter(Z)Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;
    .locals 3
    .param p1, "isPinnedAdapter"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper",
            "<",
            "Lcom/google/glass/home/timeline/TimelineApiAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    new-instance v0, Lcom/google/glass/home/timeline/MainTimelineView$2;

    new-instance v1, Lcom/google/glass/home/timeline/TimelineApiAdapter;

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1, p0}, Lcom/google/glass/home/timeline/TimelineApiAdapter;-><init>(Landroid/content/Context;ZLcom/google/android/glass/widget/CardScrollView;)V

    invoke-direct {v0, p0, v1}, Lcom/google/glass/home/timeline/MainTimelineView$2;-><init>(Lcom/google/glass/home/timeline/MainTimelineView;Lcom/google/glass/home/timeline/TimelineApiAdapter;)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 159
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineView;->timelineApiAdapter:Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineView;->timelineApiManager:Lcom/google/glass/home/timeline/TimelineApiManager;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineView;->timelineApiManager:Lcom/google/glass/home/timeline/TimelineApiManager;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/TimelineApiManager;->deactivate()V

    .line 161
    iput-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineView;->timelineApiManager:Lcom/google/glass/home/timeline/TimelineApiManager;

    .line 162
    iput-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineView;->timelineApiAdapter:Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    .line 163
    iput-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineView;->settingsAdapter:Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineView;->activeItemAdapter:Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineView;->activeItemAdapter:Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    invoke-virtual {v0}, Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->deactivate()V

    .line 167
    iput-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineView;->activeItemAdapter:Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    .line 169
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    invoke-virtual {p0, v1, v0}, Lcom/google/glass/home/timeline/MainTimelineView;->setAdapters(Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;[Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;)V

    .line 170
    return-void
.end method

.method public deactivate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 186
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineView;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineView;->getSelectedItemPosition()I

    move-result v0

    .line 190
    .local v0, "selectedItemPosition":I
    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/MainTimelineView;->isLiveCardPosition(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iput-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineView;->activationPointer:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 192
    sget-object v1, Lcom/google/glass/home/timeline/MainTimelineView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Setting activation pointer for position %d: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 193
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/glass/home/timeline/MainTimelineView;->activationPointer:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    aput-object v5, v3, v4

    .line 192
    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    .end local v0    # "selectedItemPosition":I
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/google/glass/timeline/ui/TimelineView;->deactivate()V

    .line 202
    return-void

    .line 197
    .restart local v0    # "selectedItemPosition":I
    :cond_1
    sget-object v1, Lcom/google/glass/home/timeline/MainTimelineView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Clearing activation pointer."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineView;->activationPointer:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    goto :goto_0
.end method

.method public getActivationPointer()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineView;->activationPointer:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    return-object v0
.end method

.method protected getAdapterAndPosition(I)Landroid/util/Pair;
    .locals 1
    .param p1, "position"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    invoke-super {p0, p1}, Lcom/google/glass/timeline/ui/TimelineView;->getAdapterAndPosition(I)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected getAdapterOffset(Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;)I
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "w":Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;, "Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper<*>;"
    invoke-super {p0, p1}, Lcom/google/glass/timeline/ui/TimelineView;->getAdapterOffset(Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;)I

    move-result v0

    return v0
.end method

.method public getCurrentVoiceConfig()Lcom/google/glass/voice/VoiceConfig;
    .locals 1

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/google/glass/home/timeline/active/HomeItemView;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/glass/util/Labs$Feature;->ATC_OK:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/voice/VoiceConfig;->getGuardConfig(Landroid/content/Context;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    .line 181
    :goto_0
    return-object v0

    .line 177
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineView;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/MainTimelineView;->isLiveCardPosition(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    const/4 v0, 0x0

    goto :goto_0

    .line 181
    :cond_2
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    goto :goto_0
.end method

.method getTimelineApiAdapter()Lcom/google/glass/home/timeline/TimelineApiAdapter;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineView;->timelineApiAdapter:Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineView;->timelineApiAdapter:Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    invoke-virtual {v0}, Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/timeline/TimelineApiAdapter;

    goto :goto_0
.end method

.method public init(Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/timeline/ui/NotificationState;Lcom/google/glass/sync/TimelineSyncStatusReceiver;Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;)Ljava/util/List;
    .locals 11
    .param p1, "bitmapFactory"    # Lcom/google/glass/util/CachedBitmapFactory;
    .param p2, "notificationState"    # Lcom/google/glass/timeline/ui/NotificationState;
    .param p3, "syncStatusReceiver"    # Lcom/google/glass/sync/TimelineSyncStatusReceiver;
    .param p4, "timestampUpdateReceiver"    # Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/util/CachedBitmapFactory;",
            "Lcom/google/glass/timeline/ui/NotificationState;",
            "Lcom/google/glass/sync/TimelineSyncStatusReceiver;",
            "Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 97
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 100
    .local v7, "loaders":Ljava/util/List;, "Ljava/util/List<Landroid/content/Loader<Landroid/database/Cursor;>;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/glass/home/timeline/MainTimelineView;->createTimelineApiAdapter(Z)Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineView;->settingsAdapter:Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    .line 103
    const/4 v2, 0x1

    const/4 v3, 0x1

    new-instance v8, Lcom/google/glass/timeline/TimelineDatabaseFilter;

    invoke-direct {v8}, Lcom/google/glass/timeline/TimelineDatabaseFilter;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v8}, Lcom/google/glass/home/timeline/MainTimelineView;->createTimelineItemAdapter(Lcom/google/glass/util/CachedBitmapFactory;ZZLcom/google/glass/timeline/ui/NotificationState;Lcom/google/glass/sync/TimelineSyncStatusReceiver;Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;Ljava/util/List;Lcom/google/glass/timeline/TimelineDatabaseFilter;)Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    move-result-object v10

    .line 108
    .local v10, "pinnedTimelineAdapter":Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;, "Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper<*>;"
    invoke-direct {p0}, Lcom/google/glass/home/timeline/MainTimelineView;->createActiveItemAdapter()Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineView;->activeItemAdapter:Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    .line 109
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineView;->activeItemAdapter:Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    invoke-virtual {v0}, Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->activate()V

    .line 112
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-instance v8, Lcom/google/glass/timeline/TimelineDatabaseFilter;

    invoke-direct {v8}, Lcom/google/glass/timeline/TimelineDatabaseFilter;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v8}, Lcom/google/glass/home/timeline/MainTimelineView;->createTimelineItemAdapter(Lcom/google/glass/util/CachedBitmapFactory;ZZLcom/google/glass/timeline/ui/NotificationState;Lcom/google/glass/sync/TimelineSyncStatusReceiver;Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;Ljava/util/List;Lcom/google/glass/timeline/TimelineDatabaseFilter;)Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    move-result-object v9

    .line 117
    .local v9, "historyTimelineAdapter":Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;, "Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper<*>;"
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/glass/home/timeline/MainTimelineView;->createTimelineApiAdapter(Z)Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineView;->timelineApiAdapter:Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineView;->timelineApiAdapter:Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    if-eqz v0, :cond_1

    .line 123
    new-instance v2, Lcom/google/glass/home/timeline/TimelineApiManager;

    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineView;->timelineApiAdapter:Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    invoke-virtual {v0}, Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/timeline/TimelineApiAdapter;

    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineView;->settingsAdapter:Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    .line 124
    invoke-virtual {v1}, Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v1

    check-cast v1, Lcom/google/glass/home/timeline/TimelineApiAdapter;

    invoke-direct {v2, v0, v1}, Lcom/google/glass/home/timeline/TimelineApiManager;-><init>(Lcom/google/glass/home/timeline/TimelineApiAdapter;Lcom/google/glass/home/timeline/TimelineApiAdapter;)V

    iput-object v2, p0, Lcom/google/glass/home/timeline/MainTimelineView;->timelineApiManager:Lcom/google/glass/home/timeline/TimelineApiManager;

    .line 125
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineView;->timelineApiManager:Lcom/google/glass/home/timeline/TimelineApiManager;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/TimelineApiManager;->activate()V

    .line 126
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineView;->activeItemAdapter:Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/glass/home/timeline/MainTimelineView;->settingsAdapter:Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v10, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/glass/home/timeline/MainTimelineView;->timelineApiAdapter:Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/glass/home/timeline/MainTimelineView;->activeItemAdapter:Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object v9, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/home/timeline/MainTimelineView;->setAdapters(Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;[Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;)V

    .line 134
    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineView;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->hasStableIds()Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 136
    return-object v7

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineView;->activeItemAdapter:Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/glass/home/timeline/MainTimelineView;->settingsAdapter:Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v10, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/glass/home/timeline/MainTimelineView;->activeItemAdapter:Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object v9, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/home/timeline/MainTimelineView;->setAdapters(Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;[Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;)V

    goto :goto_0
.end method

.method isLiveCardPosition(I)Z
    .locals 2
    .param p1, "position"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 219
    invoke-virtual {p0, p1}, Lcom/google/glass/home/timeline/MainTimelineView;->getAdapterAndPosition(I)Landroid/util/Pair;

    move-result-object v1

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    .line 220
    .local v0, "adapter":Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;, "Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper<*>;"
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineView;->timelineApiAdapter:Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineView;->activeItemAdapter:Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isOnSettingsCoverCard()Z
    .locals 2

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineView;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/MainTimelineView;->getAdapterAndPosition(I)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineView;->settingsAdapter:Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVoiceMenuEnabledForLiveCard(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 205
    invoke-virtual {p0, p1}, Lcom/google/glass/home/timeline/MainTimelineView;->getAdapterAndPosition(I)Landroid/util/Pair;

    move-result-object v0

    .line 206
    .local v0, "adapterAndPosition":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper<*>;Ljava/lang/Integer;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/glass/home/timeline/MainTimelineView;->timelineApiAdapter:Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    if-ne v1, v2, :cond_0

    .line 207
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineView;->timelineApiAdapter:Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    invoke-virtual {v1}, Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v1

    check-cast v1, Lcom/google/glass/home/timeline/TimelineApiAdapter;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/glass/home/timeline/TimelineApiAdapter;->isVoiceMenuEnabled(I)Z

    move-result v1

    .line 209
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected varargs setAdapters(Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;[Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;)V
    .locals 0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper",
            "<*>;[",
            "Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, "homePositionAdapter":Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;, "Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper<*>;"
    .local p2, "newWrappers":[Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;, "[Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper<*>;"
    invoke-super {p0, p1, p2}, Lcom/google/glass/timeline/ui/TimelineView;->setAdapters(Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;[Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;)V

    .line 150
    return-void
.end method
