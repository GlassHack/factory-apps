.class public Lcom/google/glass/share/ShareLocationActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "ShareLocationActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/share/ShareLocationActivity$1;,
        Lcom/google/glass/share/ShareLocationActivity$ErrorMessageDisplayer;,
        Lcom/google/glass/share/ShareLocationActivity$GracePeriodHandler;,
        Lcom/google/glass/share/ShareLocationActivity$MapRenderedHandler;,
        Lcom/google/glass/share/ShareLocationActivity$LocationLoadedHandler;,
        Lcom/google/glass/share/ShareLocationActivity$QueryTimelineItemTask;
    }
.end annotation


# static fields
.field private static final GRACE_PERIOD_SECS:J = 0x5L

.field private static final LOCATION_CRITERIA:Landroid/location/Criteria;

.field private static final LOCATION_LOOKUP_EXECUTOR:Lcom/google/common/util/concurrent/ListeningExecutorService;

.field private static final LOCATION_TIMEOUT_SECS:J = 0x8L

.field private static final MAP_ZOOM_LEVEL:F = 15.0f

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private gradient:Landroid/view/View;

.field private loadingSlider:Lcom/google/glass/widget/SliderView;

.field private location:Landroid/location/Location;

.field private locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

.field private locationResult:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private mapHelper:Lcom/google/glass/maps/MapHelper;

.field private mapResult:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field mapView:Landroid/widget/ImageView;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private originalTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field private queryTimelineItemTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private timelineCreationHelper:Lcom/google/glass/timeline/TimelineItemCreationHelper;

.field private timelineDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/share/ShareLocationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 61
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/MoreExecutors;->listeningDecorator(Ljava/util/concurrent/ExecutorService;)Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/glass/share/ShareLocationActivity;->LOCATION_LOOKUP_EXECUTOR:Lcom/google/common/util/concurrent/ListeningExecutorService;

    .line 63
    invoke-static {}, Lcom/google/glass/share/ShareLocationActivity;->buildCriteria()Landroid/location/Criteria;

    move-result-object v0

    sput-object v0, Lcom/google/glass/share/ShareLocationActivity;->LOCATION_CRITERIA:Landroid/location/Criteria;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    .line 310
    return-void
.end method

.method static synthetic access$1000(Lcom/google/glass/share/ShareLocationActivity;Landroid/location/Location;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/share/ShareLocationActivity;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/google/glass/share/ShareLocationActivity;->renderMap(Landroid/location/Location;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/glass/share/ShareLocationActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/share/ShareLocationActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/glass/share/ShareLocationActivity;->gradient:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/glass/share/ShareLocationActivity;)Lcom/google/glass/widget/SliderView;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/share/ShareLocationActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/glass/share/ShareLocationActivity;->loadingSlider:Lcom/google/glass/widget/SliderView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/glass/share/ShareLocationActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/share/ShareLocationActivity;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/glass/share/ShareLocationActivity;->insertLocationTimelineItem()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/share/ShareLocationActivity;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/share/ShareLocationActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/glass/share/ShareLocationActivity;->originalTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/glass/share/ShareLocationActivity;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/share/ShareLocationActivity;
    .param p1, "x1"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/glass/share/ShareLocationActivity;->originalTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/glass/share/ShareLocationActivity;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/share/ShareLocationActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/glass/share/ShareLocationActivity;->timelineDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    return-object v0
.end method

.method static synthetic access$400()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/google/glass/share/ShareLocationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/share/ShareLocationActivity;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/share/ShareLocationActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/glass/share/ShareLocationActivity;->locationResult:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/share/ShareLocationActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/share/ShareLocationActivity;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/glass/share/ShareLocationActivity;->showErrorMessage()V

    return-void
.end method

.method static synthetic access$802(Lcom/google/glass/share/ShareLocationActivity;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/share/ShareLocationActivity;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/glass/share/ShareLocationActivity;->location:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/glass/share/ShareLocationActivity;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/share/ShareLocationActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/glass/share/ShareLocationActivity;->mapResult:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/glass/share/ShareLocationActivity;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/share/ShareLocationActivity;
    .param p1, "x1"    # Lcom/google/common/util/concurrent/ListenableFuture;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/glass/share/ShareLocationActivity;->mapResult:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object p1
.end method

.method private static buildCriteria()Landroid/location/Criteria;
    .locals 1

    .prologue
    .line 191
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    return-object v0
.end method

.method private cancelAllTasks()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 195
    invoke-virtual {p0}, Lcom/google/glass/share/ShareLocationActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 196
    iget-object v0, p0, Lcom/google/glass/share/ShareLocationActivity;->locationResult:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/google/glass/share/ShareLocationActivity;->locationResult:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0, v3}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 198
    iput-object v2, p0, Lcom/google/glass/share/ShareLocationActivity;->locationResult:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/google/glass/share/ShareLocationActivity;->mapResult:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/google/glass/share/ShareLocationActivity;->mapResult:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0, v3}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 202
    iput-object v2, p0, Lcom/google/glass/share/ShareLocationActivity;->mapResult:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/google/glass/share/ShareLocationActivity;->queryTimelineItemTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/google/glass/share/ShareLocationActivity;->queryTimelineItemTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 206
    iput-object v2, p0, Lcom/google/glass/share/ShareLocationActivity;->queryTimelineItemTask:Landroid/os/AsyncTask;

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/google/glass/share/ShareLocationActivity;->loadingSlider:Lcom/google/glass/widget/SliderView;

    if-eqz v0, :cond_3

    .line 209
    iget-object v0, p0, Lcom/google/glass/share/ShareLocationActivity;->loadingSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v0}, Lcom/google/glass/widget/SliderView;->stopIndeterminate()V

    .line 210
    iget-object v0, p0, Lcom/google/glass/share/ShareLocationActivity;->loadingSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v0}, Lcom/google/glass/widget/SliderView;->stopProgress()V

    .line 211
    iput-object v2, p0, Lcom/google/glass/share/ShareLocationActivity;->loadingSlider:Lcom/google/glass/widget/SliderView;

    .line 213
    :cond_3
    return-void
.end method

.method private getLocation()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/glass/share/ShareLocationActivity;->locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

    sget-object v1, Lcom/google/glass/share/ShareLocationActivity;->LOCATION_LOOKUP_EXECUTOR:Lcom/google/common/util/concurrent/ListeningExecutorService;

    sget-object v2, Lcom/google/glass/share/ShareLocationActivity;->LOCATION_CRITERIA:Landroid/location/Criteria;

    sget-object v3, Lcom/google/glass/location/LocationManagerHelper;->DEFAULT_LOCATION_COMPARATOR:Ljava/util/Comparator;

    const/4 v4, 0x0

    const-wide/16 v5, 0x8

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 142
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    .line 135
    invoke-virtual/range {v0 .. v8}, Lcom/google/glass/location/LocationManagerHelper;->asyncObtainNewLocation(Lcom/google/common/util/concurrent/ListeningExecutorService;Landroid/location/Criteria;Ljava/util/Comparator;Lcom/google/common/base/Predicate;JLjava/util/concurrent/TimeUnit;Landroid/os/Looper;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method private getMapRenderRequest(Landroid/location/Location;)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    .locals 7
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v6, 0x0

    .line 150
    const-string v3, "Cannot create map render request if location is null"

    invoke-static {p1, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    new-instance v3, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-direct {v3}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;-><init>()V

    .line 153
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->setLat(D)Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    move-result-object v3

    .line 154
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->setLng(D)Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    move-result-object v0

    .line 156
    .local v0, "center":Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;
    new-instance v3, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    invoke-direct {v3}, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;-><init>()V

    .line 157
    invoke-virtual {v3, v0}, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->setLocation(Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;)Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    move-result-object v3

    .line 158
    invoke-virtual {v3, v6}, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->setType(I)Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    move-result-object v1

    .line 160
    .local v1, "marker":Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
    new-instance v3, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    invoke-direct {v3}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;-><init>()V

    iget-object v4, p0, Lcom/google/glass/share/ShareLocationActivity;->mapView:Landroid/widget/ImageView;

    .line 161
    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->setWidth(I)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/share/ShareLocationActivity;->mapView:Landroid/widget/ImageView;

    .line 162
    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->setHeight(I)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    move-result-object v3

    .line 163
    invoke-virtual {v3, v0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->setCenter(Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    move-result-object v3

    const/high16 v4, 0x41700000    # 15.0f

    .line 164
    invoke-virtual {v3, v4}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->setZoom(F)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    move-result-object v2

    .line 166
    .local v2, "request":Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    aput-object v1, v3, v6

    iput-object v3, v2, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    .line 167
    return-object v2
.end method

.method private insertLocationTimelineItem()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 171
    invoke-virtual {p0}, Lcom/google/glass/share/ShareLocationActivity;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 172
    iget-object v2, p0, Lcom/google/glass/share/ShareLocationActivity;->timelineCreationHelper:Lcom/google/glass/timeline/TimelineItemCreationHelper;

    invoke-virtual {v2}, Lcom/google/glass/timeline/TimelineItemCreationHelper;->createTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    .line 173
    .local v0, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setViewType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 174
    invoke-virtual {v0, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCloudSyncProtocol(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 175
    iget-object v2, p0, Lcom/google/glass/share/ShareLocationActivity;->location:Landroid/location/Location;

    iget-object v3, p0, Lcom/google/glass/share/ShareLocationActivity;->location:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/glass/location/LocationHelper;->toLocationProto(Landroid/location/Location;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setLocation(Lcom/google/googlex/glass/common/proto/TimelineNano$Location;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 176
    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/google/glass/timeline/TimelineItemUtils;->addMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    .line 178
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/share/ShareLocationActivity;->originalTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    const/4 v4, 0x1

    .line 177
    invoke-static {v2, v3, v0, v4}, Lcom/google/glass/sync/SharingUtils;->populateForCloud(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Z)V

    .line 181
    new-instance v2, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-direct {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;-><init>()V

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->setType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    move-result-object v1

    .line 182
    .local v1, "userAction":Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    iget-object v2, p0, Lcom/google/glass/share/ShareLocationActivity;->timelineDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    sget-object v3, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->SHARE_LOCATION:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    invoke-virtual {v2, v0, v3, v1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->insertTimelineItemAsync(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)V

    .line 184
    return-void
.end method

.method private renderMap(Landroid/location/Location;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "location"    # Landroid/location/Location;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Location;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/glass/share/ShareLocationActivity;->mapHelper:Lcom/google/glass/maps/MapHelper;

    invoke-direct {p0, p1}, Lcom/google/glass/share/ShareLocationActivity;->getMapRenderRequest(Landroid/location/Location;)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/MapHelper;->renderMap(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method private showErrorMessage()V
    .locals 2

    .prologue
    .line 187
    new-instance v0, Lcom/google/glass/share/ShareLocationActivity$ErrorMessageDisplayer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/share/ShareLocationActivity$ErrorMessageDisplayer;-><init>(Lcom/google/glass/share/ShareLocationActivity;Lcom/google/glass/share/ShareLocationActivity$1;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/share/ShareLocationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 188
    return-void
.end method


# virtual methods
.method protected onCreateInternal(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Lcom/google/glass/share/ShareLocationActivity;->getContentView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 93
    sget v1, Lcom/google/glass/sync/R$id;->share_location_map_image:I

    invoke-virtual {p0, v1}, Lcom/google/glass/share/ShareLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/google/glass/share/ShareLocationActivity;->mapView:Landroid/widget/ImageView;

    .line 94
    sget v1, Lcom/google/glass/sync/R$id;->share_location_gradient:I

    invoke-virtual {p0, v1}, Lcom/google/glass/share/ShareLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/share/ShareLocationActivity;->gradient:Landroid/view/View;

    .line 95
    sget v1, Lcom/google/glass/sync/R$id;->share_location_loading_slider:I

    invoke-virtual {p0, v1}, Lcom/google/glass/share/ShareLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/SliderView;

    iput-object v1, p0, Lcom/google/glass/share/ShareLocationActivity;->loadingSlider:Lcom/google/glass/widget/SliderView;

    .line 97
    invoke-static {}, Lcom/google/glass/location/LocationManagerHelper$Provider;->getInstance()Lcom/google/glass/location/LocationManagerHelper$Provider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/location/LocationManagerHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/location/LocationManagerHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/share/ShareLocationActivity;->locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

    .line 98
    invoke-static {}, Lcom/google/glass/maps/MapHelper$Provider;->getInstance()Lcom/google/glass/maps/MapHelper$Provider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/maps/MapHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/maps/MapHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/share/ShareLocationActivity;->mapHelper:Lcom/google/glass/maps/MapHelper;

    .line 99
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/share/ShareLocationActivity;->timelineDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    .line 100
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemCreationHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/share/ShareLocationActivity;->timelineCreationHelper:Lcom/google/glass/timeline/TimelineItemCreationHelper;

    .line 102
    invoke-virtual {p0}, Lcom/google/glass/share/ShareLocationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "timeline_item_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "timelineItemId":Ljava/lang/String;
    invoke-direct {p0}, Lcom/google/glass/share/ShareLocationActivity;->getLocation()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/share/ShareLocationActivity;->locationResult:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 107
    new-instance v2, Lcom/google/glass/share/ShareLocationActivity$QueryTimelineItemTask;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v0, v1}, Lcom/google/glass/share/ShareLocationActivity$QueryTimelineItemTask;-><init>(Lcom/google/glass/share/ShareLocationActivity;Ljava/lang/String;Lcom/google/glass/share/ShareLocationActivity$1;)V

    .line 108
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v1}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    .line 107
    invoke-virtual {v2, v1, v3}, Lcom/google/glass/share/ShareLocationActivity$QueryTimelineItemTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/share/ShareLocationActivity;->queryTimelineItemTask:Landroid/os/AsyncTask;

    .line 110
    iget-object v1, p0, Lcom/google/glass/share/ShareLocationActivity;->loadingSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v1}, Lcom/google/glass/widget/SliderView;->startIndeterminate()V

    .line 111
    return-void
.end method

.method public onDestroyInternal()V
    .locals 0

    .prologue
    .line 130
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onDestroyInternal()V

    .line 131
    invoke-direct {p0}, Lcom/google/glass/share/ShareLocationActivity;->cancelAllTasks()V

    .line 132
    return-void
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 1
    .param p1, "dismissAction"    # Lcom/google/glass/input/InputListener$DismissAction;

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    .line 122
    invoke-direct {p0}, Lcom/google/glass/share/ShareLocationActivity;->cancelAllTasks()V

    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method public provideContentView()I
    .locals 1

    .prologue
    .line 115
    sget v0, Lcom/google/glass/sync/R$layout;->share_location_activity:I

    return v0
.end method
