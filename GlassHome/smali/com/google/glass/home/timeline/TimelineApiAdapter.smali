.class public Lcom/google/glass/home/timeline/TimelineApiAdapter;
.super Lcom/google/android/glass/widget/CardScrollAdapter;
.source "TimelineApiAdapter.java"

# interfaces
.implements Lcom/google/android/glass/timeline/TimelineHostManager$Listener;
.implements Lcom/google/glass/timeline/SearchableAdapter;


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final cachedParents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/glass/timeline/HostedCard;",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final cachedViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/glass/timeline/HostedCard;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private cardCount:J

.field private final cardIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/glass/timeline/HostedCard;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final cardItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/glass/timeline/HostedCard;",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            ">;"
        }
    .end annotation
.end field

.field private final cardScrollView:Lcom/google/android/glass/widget/CardScrollView;

.field private final cards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/glass/timeline/HostedCard;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final idGenerator:Lcom/google/glass/util/CustomItemIdGenerator;

.field private final okayGlassClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/glass/timeline/HostedCard;",
            "Lcom/google/android/glass/voice/OkayGlassClient;",
            ">;"
        }
    .end annotation
.end field

.field private final timelineItemCreationHelper:Lcom/google/glass/timeline/TimelineItemCreationHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/google/android/glass/widget/CardScrollView;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isPinnedAdapter"    # Z
    .param p3, "cardScrollView"    # Lcom/google/android/glass/widget/CardScrollView;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/android/glass/widget/CardScrollAdapter;-><init>()V

    .line 66
    new-instance v1, Lcom/google/glass/util/CustomItemIdGenerator;

    const-string v2, "api"

    if-eqz p2, :cond_0

    const-string v0, "-pinned"

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v1, v0}, Lcom/google/glass/util/CustomItemIdGenerator;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->idGenerator:Lcom/google/glass/util/CustomItemIdGenerator;

    .line 68
    iput-object p1, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->context:Landroid/content/Context;

    .line 69
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemCreationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->timelineItemCreationHelper:Lcom/google/glass/timeline/TimelineItemCreationHelper;

    .line 70
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->cards:Ljava/util/List;

    .line 71
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->cardIds:Ljava/util/Map;

    .line 72
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->cardItems:Ljava/util/Map;

    .line 73
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->cachedViews:Ljava/util/Map;

    .line 74
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->cachedParents:Ljava/util/Map;

    .line 75
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->okayGlassClients:Ljava/util/Map;

    .line 76
    iput-object p3, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->cardScrollView:Lcom/google/android/glass/widget/CardScrollView;

    .line 77
    return-void

    .line 66
    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/google/glass/home/timeline/TimelineApiAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/timeline/TimelineApiAdapter;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/home/timeline/TimelineApiAdapter;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/timeline/TimelineApiAdapter;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->okayGlassClients:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private clearAllOkayGlassClients()V
    .locals 3

    .prologue
    .line 187
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->cards:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/glass/timeline/HostedCard;

    .line 188
    .local v0, "card":Lcom/google/android/glass/timeline/HostedCard;
    invoke-direct {p0, v0}, Lcom/google/glass/home/timeline/TimelineApiAdapter;->removeOkayGlassClient(Lcom/google/android/glass/timeline/HostedCard;)V

    goto :goto_0

    .line 190
    .end local v0    # "card":Lcom/google/android/glass/timeline/HostedCard;
    :cond_0
    return-void
.end method

.method private createTextureViewCard(Lcom/google/android/glass/timeline/HostedCard;)Landroid/view/View;
    .locals 2
    .param p1, "card"    # Lcom/google/android/glass/timeline/HostedCard;

    .prologue
    .line 265
    new-instance v0, Lcom/google/glass/home/timeline/TimelineApiAdapter$3;

    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcom/google/glass/home/timeline/TimelineApiAdapter$3;-><init>(Lcom/google/glass/home/timeline/TimelineApiAdapter;Landroid/content/Context;Lcom/google/android/glass/timeline/HostedCard;)V

    .line 344
    .local v0, "textureView":Lcom/google/glass/widget/horizontalscroll/TextureViewCard;
    invoke-virtual {p1}, Lcom/google/android/glass/timeline/HostedCard;->getTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/horizontalscroll/TextureViewCard;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 345
    return-object v0
.end method

.method private createTimelineItem(Lcom/google/android/glass/timeline/HostedCard;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 7
    .param p1, "card"    # Lcom/google/android/glass/timeline/HostedCard;

    .prologue
    .line 202
    iget-object v4, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->timelineItemCreationHelper:Lcom/google/glass/timeline/TimelineItemCreationHelper;

    const/4 v3, 0x1

    .line 203
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "device:"

    iget-object v3, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->cardIds:Ljava/util/Map;

    .line 205
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 202
    invoke-virtual {v4, v5, v6, v3}, Lcom/google/glass/timeline/TimelineItemCreationHelper;->createTimelineItem(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    .line 206
    .local v0, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v1

    .line 207
    .local v1, "now":J
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCloudSyncProtocol(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 208
    invoke-virtual {v0, v1, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setDisplayTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 209
    invoke-virtual {v0, v1, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setModifiedTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 210
    return-object v0
.end method

.method private findPosition(Ljava/lang/String;)I
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 120
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->cards:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 121
    iget-object v2, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->cardIds:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->cards:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 120
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private removeOkayGlassClient(Lcom/google/android/glass/timeline/HostedCard;)V
    .locals 2
    .param p1, "card"    # Lcom/google/android/glass/timeline/HostedCard;

    .prologue
    .line 194
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->okayGlassClients:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/glass/voice/OkayGlassClient;

    .line 195
    .local v0, "client":Lcom/google/android/glass/voice/OkayGlassClient;
    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0}, Lcom/google/android/glass/voice/OkayGlassClient;->destroy()V

    .line 198
    :cond_0
    return-void
.end method

.method private toggleOkayGlassClient(Lcom/google/android/glass/timeline/HostedCard;)V
    .locals 3
    .param p1, "card"    # Lcom/google/android/glass/timeline/HostedCard;

    .prologue
    .line 168
    invoke-virtual {p1}, Lcom/google/android/glass/timeline/HostedCard;->isVoiceActionEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 170
    iget-object v2, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->cachedViews:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 171
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->okayGlassClients:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/glass/voice/OkayGlassClient;

    .line 172
    .local v0, "client":Lcom/google/android/glass/voice/OkayGlassClient;
    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 173
    iget-object v2, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->cachedParents:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v2}, Lcom/google/glass/home/timeline/TimelineApiAdapter;->createOkayGlassClient(Lcom/google/android/glass/timeline/HostedCard;Landroid/view/ViewGroup;)Lcom/google/android/glass/voice/OkayGlassClient;

    move-result-object v0

    .line 174
    iget-object v2, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->okayGlassClients:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-virtual {v1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    invoke-virtual {v0}, Lcom/google/android/glass/voice/OkayGlassClient;->start()V

    .line 183
    .end local v0    # "client":Lcom/google/android/glass/voice/OkayGlassClient;
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/TimelineApiAdapter;->removeOkayGlassClient(Lcom/google/android/glass/timeline/HostedCard;)V

    goto :goto_0
.end method


# virtual methods
.method createOkayGlassClient(Lcom/google/android/glass/timeline/HostedCard;Landroid/view/ViewGroup;)Lcom/google/android/glass/voice/OkayGlassClient;
    .locals 3
    .param p1, "card"    # Lcom/google/android/glass/timeline/HostedCard;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 155
    invoke-virtual {p1}, Lcom/google/android/glass/timeline/HostedCard;->isVoiceActionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 156
    new-instance v1, Lcom/google/android/glass/voice/OkayGlassClient;

    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lcom/google/glass/home/timeline/TimelineApiAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/google/glass/home/timeline/TimelineApiAdapter$1;-><init>(Lcom/google/glass/home/timeline/TimelineApiAdapter;Lcom/google/android/glass/timeline/HostedCard;)V

    invoke-direct {v1, v0, p2, v2}, Lcom/google/android/glass/voice/OkayGlassClient;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/google/android/glass/voice/OkayGlassClient$Listener;)V

    move-object v0, v1

    .line 163
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findPosition(Lcom/google/glass/timeline/TimelineItemId;)I
    .locals 1
    .param p1, "id"    # Lcom/google/glass/timeline/TimelineItemId;

    .prologue
    .line 111
    invoke-virtual {p1}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/home/timeline/TimelineApiAdapter;->findPosition(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->cards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->cardItems:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->cards:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 101
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineApiAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 102
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    .line 106
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

    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->cards:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/glass/timeline/HostedCard;

    invoke-virtual {v0}, Lcom/google/android/glass/timeline/HostedCard;->hashCode()I

    move-result v0

    int-to-long v3, v0

    or-long v0, v1, v3

    goto :goto_0
.end method

.method getItemIdToNavigateTo(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 451
    invoke-static {}, Lcom/google/android/glass/timeline/TimelineHostManager;->get()Lcom/google/android/glass/timeline/TimelineHostManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/glass/timeline/TimelineHostManager;->getNavigationCard(Landroid/content/Intent;)Lcom/google/android/glass/timeline/HostedCard;

    move-result-object v0

    .line 452
    .local v0, "card":Lcom/google/android/glass/timeline/HostedCard;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->cardIds:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method getItemIdToReveal(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .param p1, "revealCardIntent"    # Landroid/content/Intent;

    .prologue
    .line 438
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->cards:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/glass/timeline/HostedCard;

    .line 439
    .local v0, "card":Lcom/google/android/glass/timeline/HostedCard;
    invoke-static {v0, p1}, Lcom/google/android/glass/timeline/TimelineHostManager;->shouldReveal(Lcom/google/android/glass/timeline/HostedCard;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 440
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->cardIds:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 443
    .end local v0    # "card":Lcom/google/android/glass/timeline/HostedCard;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 116
    check-cast p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .end local p1    # "item":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/home/timeline/TimelineApiAdapter;->findPosition(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 130
    iget-object v3, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->cards:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/glass/timeline/HostedCard;

    .line 131
    .local v0, "card":Lcom/google/android/glass/timeline/HostedCard;
    iget-object v3, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->cachedViews:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 132
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 145
    .end local v1    # "view":Landroid/view/View;
    .local v2, "view":Landroid/view/View;
    :goto_0
    return-object v2

    .line 136
    .end local v2    # "view":Landroid/view/View;
    .restart local v1    # "view":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->okayGlassClients:Ljava/util/Map;

    invoke-virtual {p0, v0, p3}, Lcom/google/glass/home/timeline/TimelineApiAdapter;->createOkayGlassClient(Lcom/google/android/glass/timeline/HostedCard;Landroid/view/ViewGroup;)Lcom/google/android/glass/voice/OkayGlassClient;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-virtual {v0}, Lcom/google/android/glass/timeline/HostedCard;->usesDirectRendering()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 138
    invoke-direct {p0, v0}, Lcom/google/glass/home/timeline/TimelineApiAdapter;->createTextureViewCard(Lcom/google/android/glass/timeline/HostedCard;)Landroid/view/View;

    move-result-object v1

    .line 142
    :goto_1
    iget-object v3, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->cachedViews:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v3, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->cachedParents:Ljava/util/Map;

    invoke-interface {v3, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 145
    .end local v1    # "view":Landroid/view/View;
    .restart local v2    # "view":Landroid/view/View;
    goto :goto_0

    .line 140
    .end local v2    # "view":Landroid/view/View;
    .restart local v1    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {p0, v0, p3}, Lcom/google/glass/home/timeline/TimelineApiAdapter;->inflateViewFromCard(Lcom/google/android/glass/timeline/HostedCard;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_1
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method inflateViewFromCard(Lcom/google/android/glass/timeline/HostedCard;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "card"    # Lcom/google/android/glass/timeline/HostedCard;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 221
    new-instance v1, Lcom/google/glass/home/timeline/TimelineApiAdapter$2;

    iget-object v4, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, p0, v4, p1}, Lcom/google/glass/home/timeline/TimelineApiAdapter$2;-><init>(Lcom/google/glass/home/timeline/TimelineApiAdapter;Landroid/content/Context;Lcom/google/android/glass/timeline/HostedCard;)V

    .line 251
    .local v1, "frame":Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;
    const/16 v4, 0x11

    invoke-virtual {v1, v4}, Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;->setGravity(I)V

    .line 252
    iget-object v4, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1, v4, p2}, Lcom/google/android/glass/timeline/HostedCard;->getView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 253
    .local v3, "view":Landroid/view/View;
    if-nez v3, :cond_0

    .line 254
    new-instance v0, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 255
    .local v0, "errorIcon":Landroid/widget/ImageView;
    sget v4, Lcom/google/glass/home/R$drawable;->ic_cloud_sad_150:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 256
    move-object v3, v0

    .line 258
    .end local v0    # "errorIcon":Landroid/widget/ImageView;
    :cond_0
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 259
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v3, v2}, Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    return-object v1
.end method

.method public isApiItemId(Ljava/lang/String;)Z
    .locals 1
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->idGenerator:Lcom/google/glass/util/CustomItemIdGenerator;

    invoke-virtual {v0, p1}, Lcom/google/glass/util/CustomItemIdGenerator;->isId(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->cards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isVoiceMenuEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->cards:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/glass/timeline/HostedCard;

    invoke-virtual {v0}, Lcom/google/android/glass/timeline/HostedCard;->isVoiceActionEnabled()Z

    move-result v0

    return v0
.end method

.method public onActivate()V
    .locals 0

    .prologue
    .line 350
    return-void
.end method

.method public onActivityStarted()V
    .locals 4

    .prologue
    .line 364
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->cards:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 365
    iget-object v3, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->cards:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/glass/timeline/HostedCard;

    .line 366
    .local v0, "card":Lcom/google/android/glass/timeline/HostedCard;
    invoke-virtual {v0}, Lcom/google/android/glass/timeline/HostedCard;->usesDirectRendering()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 369
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/google/android/glass/timeline/HostedCard;->pauseRendering(Z)V

    .line 364
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 372
    .end local v0    # "card":Lcom/google/android/glass/timeline/HostedCard;
    :cond_1
    return-void
.end method

.method public onActivityStopped()V
    .locals 4

    .prologue
    .line 376
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->cards:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 377
    iget-object v3, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->cards:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/glass/timeline/HostedCard;

    .line 378
    .local v0, "card":Lcom/google/android/glass/timeline/HostedCard;
    invoke-virtual {v0}, Lcom/google/android/glass/timeline/HostedCard;->usesDirectRendering()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 381
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/android/glass/timeline/HostedCard;->pauseRendering(Z)V

    .line 376
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 384
    .end local v0    # "card":Lcom/google/android/glass/timeline/HostedCard;
    :cond_1
    return-void
.end method

.method public onDeactivate()V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->cachedViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 354
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->cachedParents:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 355
    invoke-direct {p0}, Lcom/google/glass/home/timeline/TimelineApiAdapter;->clearAllOkayGlassClients()V

    .line 356
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->cardIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 357
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->cardItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 358
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->cards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 359
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineApiAdapter;->notifyDataSetChanged()V

    .line 360
    return-void
.end method

.method public onLiveCardAdded(Lcom/google/android/glass/timeline/HostedCard;)V
    .locals 6
    .param p1, "card"    # Lcom/google/android/glass/timeline/HostedCard;

    .prologue
    .line 388
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->cards:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->cardIds:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->idGenerator:Lcom/google/glass/util/CustomItemIdGenerator;

    iget-wide v2, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->cardCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->cardCount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/util/CustomItemIdGenerator;->createId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->cardItems:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/TimelineApiAdapter;->createTimelineItem(Lcom/google/android/glass/timeline/HostedCard;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineApiAdapter;->notifyDataSetChanged()V

    .line 392
    return-void
.end method

.method public onLiveCardRemoved(Lcom/google/android/glass/timeline/HostedCard;)V
    .locals 3
    .param p1, "card"    # Lcom/google/android/glass/timeline/HostedCard;

    .prologue
    .line 412
    const/4 v0, -0x1

    .line 413
    .local v0, "position":I
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->cardScrollView:Lcom/google/android/glass/widget/CardScrollView;

    if-eqz v1, :cond_0

    .line 414
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->cardScrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v1}, Lcom/google/android/glass/widget/CardScrollView;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->cardItems:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/glass/widget/CardScrollAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v0

    .line 418
    :cond_0
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->cards:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 419
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->cardIds:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->cardItems:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->cachedViews:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->cachedParents:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/TimelineApiAdapter;->removeOkayGlassClient(Lcom/google/android/glass/timeline/HostedCard;)V

    .line 428
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->cardScrollView:Lcom/google/android/glass/widget/CardScrollView;

    if-eqz v1, :cond_1

    .line 429
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->cardScrollView:Lcom/google/android/glass/widget/CardScrollView;

    sget-object v2, Lcom/google/android/glass/widget/CardScrollView$Animation;->DELETION:Lcom/google/android/glass/widget/CardScrollView$Animation;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/glass/widget/CardScrollView;->animate(ILcom/google/android/glass/widget/CardScrollView$Animation;)Z

    .line 431
    :cond_1
    return-void
.end method

.method public onLiveCardUpdated(Lcom/google/android/glass/timeline/HostedCard;)V
    .locals 1
    .param p1, "card"    # Lcom/google/android/glass/timeline/HostedCard;

    .prologue
    .line 396
    invoke-virtual {p1}, Lcom/google/android/glass/timeline/HostedCard;->usesDirectRendering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/TimelineApiAdapter;->toggleOkayGlassClient(Lcom/google/android/glass/timeline/HostedCard;)V

    .line 406
    :goto_0
    return-void

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->cachedViews:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter;->cachedParents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/TimelineApiAdapter;->removeOkayGlassClient(Lcom/google/android/glass/timeline/HostedCard;)V

    .line 405
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineApiAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
