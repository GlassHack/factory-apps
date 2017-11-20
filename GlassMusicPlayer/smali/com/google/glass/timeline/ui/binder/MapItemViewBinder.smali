.class public Lcom/google/glass/timeline/ui/binder/MapItemViewBinder;
.super Lcom/google/glass/timeline/ui/binder/BaseItemViewBinder;
.source "SourceFile"


# instance fields
.field private final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/glass/timeline/ui/binder/BaseItemViewBinder;-><init>()V

    .line 35
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/timeline/ui/binder/MapItemViewBinder;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method private static getMapRenderRequest(Lcom/google/googlex/glass/common/proto/TimelineNano$Location;II)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 86
    const-string v0, "Location must be non-null"

    invoke-static {p0, v0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-direct {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;-><init>()V

    .line 89
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->setLat(D)Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    move-result-object v0

    .line 90
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->setLng(D)Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    move-result-object v0

    .line 92
    new-instance v1, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    invoke-direct {v1}, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;-><init>()V

    .line 93
    invoke-virtual {v1, v0}, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->setLocation(Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;)Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    move-result-object v1

    .line 94
    invoke-virtual {v1, v3}, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->setType(I)Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    move-result-object v1

    .line 96
    new-instance v2, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    invoke-direct {v2}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;-><init>()V

    .line 97
    invoke-virtual {v2, p1}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->setWidth(I)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    move-result-object v2

    .line 98
    invoke-virtual {v2, p2}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->setHeight(I)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    move-result-object v2

    .line 99
    invoke-virtual {v2, v0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->setCenter(Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    move-result-object v0

    .line 101
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    aput-object v1, v2, v3

    iput-object v2, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    .line 102
    return-object v0
.end method

.method private static hasLocation(Lcom/google/googlex/glass/common/proto/TimelineNano$Location;)Z
    .locals 1

    .prologue
    .line 79
    if-eqz p0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->hasLatitude()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->hasLongitude()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getLayout()I
    .locals 1

    .prologue
    .line 39
    sget v0, Lcom/google/glass/common/R$layout;->timeline_item_map:I

    return v0
.end method

.method protected onBind(Landroid/content/Context;Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;ZZLandroid/view/View;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;)Ljava/util/List;
    .locals 6

    .prologue
    .line 49
    invoke-static {}, Lcom/google/glass/maps/MapHelper$Provider;->getInstance()Lcom/google/glass/maps/MapHelper$Provider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/MapHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/maps/MapHelper;

    move-result-object v1

    .line 50
    sget v0, Lcom/google/glass/common/R$id;->map:I

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 52
    invoke-virtual {p2}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v2

    .line 55
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getLocation()Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    move-result-object v3

    invoke-static {v3}, Lcom/google/glass/timeline/ui/binder/MapItemViewBinder;->hasLocation(Lcom/google/googlex/glass/common/proto/TimelineNano$Location;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 56
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/MapItemViewBinder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Received location-less timeline item [timelineid=%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-interface {v0, v1, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    .line 60
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 62
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getLocation()Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    move-result-object v2

    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 61
    invoke-static {v2, v4, v3}, Lcom/google/glass/timeline/ui/binder/MapItemViewBinder;->getMapRenderRequest(Lcom/google/googlex/glass/common/proto/TimelineNano$Location;II)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    move-result-object v2

    .line 64
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/glass/deferredcontent/LoadingTask;

    const/4 v4, 0x0

    new-instance v5, Lcom/google/glass/maps/RenderMapLoadingTask;

    invoke-direct {v5, p1, v1, v2, v0}, Lcom/google/glass/maps/RenderMapLoadingTask;-><init>(Landroid/content/Context;Lcom/google/glass/maps/MapHelper;Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;Landroid/widget/ImageView;)V

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method protected onClear(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 70
    if-eqz p2, :cond_0

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    sget v0, Lcom/google/glass/common/R$id;->map:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 75
    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
