.class public Lcom/google/glass/timeline/ui/binder/MapItemViewBinder;
.super Lcom/google/glass/timeline/ui/binder/BaseItemViewBinder;
.source "MapItemViewBinder.java"


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
    .locals 7
    .param p0, "location"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v6, 0x0

    .line 86
    const-string v3, "Location must be non-null"

    invoke-static {p0, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v3, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-direct {v3}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;-><init>()V

    .line 89
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->setLat(D)Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    move-result-object v3

    .line 90
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->setLng(D)Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    move-result-object v0

    .line 92
    .local v0, "center":Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;
    new-instance v3, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    invoke-direct {v3}, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;-><init>()V

    .line 93
    invoke-virtual {v3, v0}, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->setLocation(Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;)Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    move-result-object v3

    .line 94
    invoke-virtual {v3, v6}, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->setType(I)Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    move-result-object v1

    .line 96
    .local v1, "marker":Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
    new-instance v3, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    invoke-direct {v3}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;-><init>()V

    .line 97
    invoke-virtual {v3, p1}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->setWidth(I)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    move-result-object v3

    .line 98
    invoke-virtual {v3, p2}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->setHeight(I)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    move-result-object v3

    .line 99
    invoke-virtual {v3, v0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->setCenter(Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    move-result-object v2

    .line 101
    .local v2, "request":Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    aput-object v1, v3, v6

    iput-object v3, v2, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    .line 102
    return-object v2
.end method

.method private static hasLocation(Lcom/google/googlex/glass/common/proto/TimelineNano$Location;)Z
    .locals 1
    .param p0, "location"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

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
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "readResult"    # Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;
    .param p3, "inBundle"    # Z
    .param p4, "isReadMore"    # Z
    .param p5, "view"    # Landroid/view/View;
    .param p6, "bitmapFactory"    # Lcom/google/glass/util/CachedBitmapFactory;
    .param p7, "textClipListener"    # Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;
    .param p8, "contentSizedListener"    # Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;
    .param p9, "contentLoadCompletionListener"    # Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;",
            "ZZ",
            "Landroid/view/View;",
            "Lcom/google/glass/util/CachedBitmapFactory;",
            "Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;",
            "Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;",
            "Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/deferredcontent/LoadingTask",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 49
    invoke-static {}, Lcom/google/glass/maps/MapHelper$Provider;->getInstance()Lcom/google/glass/maps/MapHelper$Provider;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/google/glass/maps/MapHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/maps/MapHelper;

    move-result-object v1

    .line 50
    .local v1, "mapHelper":Lcom/google/glass/maps/MapHelper;
    sget v5, Lcom/google/glass/common/R$id;->map:I

    invoke-virtual {p5, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 52
    .local v2, "mapView":Landroid/widget/ImageView;
    invoke-virtual {p2}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    .line 55
    .local v0, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getLocation()Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    move-result-object v5

    invoke-static {v5}, Lcom/google/glass/timeline/ui/binder/MapItemViewBinder;->hasLocation(Lcom/google/googlex/glass/common/proto/TimelineNano$Location;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 56
    iget-object v5, p0, Lcom/google/glass/timeline/ui/binder/MapItemViewBinder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Received location-less timeline item [timelineid=%s]"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 64
    :goto_0
    return-object v5

    .line 60
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 62
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getLocation()Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    move-result-object v5

    iget v6, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 61
    invoke-static {v5, v6, v7}, Lcom/google/glass/timeline/ui/binder/MapItemViewBinder;->getMapRenderRequest(Lcom/google/googlex/glass/common/proto/TimelineNano$Location;II)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    move-result-object v4

    .line 64
    .local v4, "renderRequest":Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    const/4 v5, 0x1

    new-array v5, v5, [Lcom/google/glass/deferredcontent/LoadingTask;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/glass/maps/RenderMapLoadingTask;

    invoke-direct {v7, p1, v1, v4, v2}, Lcom/google/glass/maps/RenderMapLoadingTask;-><init>(Landroid/content/Context;Lcom/google/glass/maps/MapHelper;Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;Landroid/widget/ImageView;)V

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    goto :goto_0
.end method

.method protected onClear(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "willBindSameItem"    # Z

    .prologue
    .line 70
    if-eqz p2, :cond_0

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    sget v1, Lcom/google/glass/common/R$id;->map:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 75
    .local v0, "mapView":Landroid/widget/ImageView;
    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
