.class public Lcom/google/glass/maps/directions/TransitMapView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final CAMERA_ANIMATION_DURATION_MS:J = 0x7d0L

.field private static final MAP_MARGIN_X_DEG:D = 0.002

.field private static final ZOOM_DELAY_MS:J = 0xbb8L

.field private static defaultNavRenderer:Lcom/google/glass/maps/NavigationRenderer;


# instance fields
.field private final handler:Landroid/os/Handler;

.field private inOverviewMode:Z

.field private lastStatusResId:I

.field private location:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private mapMarginYDeg:D

.field private mapView:Landroid/opengl/GLSurfaceView;

.field private navRenderer:Lcom/google/glass/maps/NavigationRenderer;

.field private rectCorners:[Lcom/google/android/maps/driveabout/model/ab;

.field private startTimeMillis:J

.field private state:Lcom/google/glass/maps/directions/TransitMapView$State;

.field private statusRunnable:Ljava/lang/Runnable;

.field private statusView:Landroid/widget/TextView;

.field private final tmpPt1:Lcom/google/android/maps/driveabout/model/ab;

.field private final tmpPt2:Lcom/google/android/maps/driveabout/model/ab;

.field private trip:Lcom/google/glass/maps/directions/Trip;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->handler:Landroid/os/Handler;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->inOverviewMode:Z

    .line 63
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->startTimeMillis:J

    .line 72
    sget-object v0, Lcom/google/glass/maps/directions/TransitMapView$State;->OVERVIEW_PINNED:Lcom/google/glass/maps/directions/TransitMapView$State;

    iput-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->state:Lcom/google/glass/maps/directions/TransitMapView$State;

    .line 75
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->tmpPt1:Lcom/google/android/maps/driveabout/model/ab;

    .line 76
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->tmpPt2:Lcom/google/android/maps/driveabout/model/ab;

    .line 85
    invoke-direct {p0, p1}, Lcom/google/glass/maps/directions/TransitMapView;->initialize(Landroid/content/Context;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->handler:Landroid/os/Handler;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->inOverviewMode:Z

    .line 63
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->startTimeMillis:J

    .line 72
    sget-object v0, Lcom/google/glass/maps/directions/TransitMapView$State;->OVERVIEW_PINNED:Lcom/google/glass/maps/directions/TransitMapView$State;

    iput-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->state:Lcom/google/glass/maps/directions/TransitMapView$State;

    .line 75
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->tmpPt1:Lcom/google/android/maps/driveabout/model/ab;

    .line 76
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->tmpPt2:Lcom/google/android/maps/driveabout/model/ab;

    .line 90
    invoke-direct {p0, p1}, Lcom/google/glass/maps/directions/TransitMapView;->initialize(Landroid/content/Context;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->handler:Landroid/os/Handler;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->inOverviewMode:Z

    .line 63
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->startTimeMillis:J

    .line 72
    sget-object v0, Lcom/google/glass/maps/directions/TransitMapView$State;->OVERVIEW_PINNED:Lcom/google/glass/maps/directions/TransitMapView$State;

    iput-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->state:Lcom/google/glass/maps/directions/TransitMapView$State;

    .line 75
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->tmpPt1:Lcom/google/android/maps/driveabout/model/ab;

    .line 76
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->tmpPt2:Lcom/google/android/maps/driveabout/model/ab;

    .line 95
    invoke-direct {p0, p1}, Lcom/google/glass/maps/directions/TransitMapView;->initialize(Landroid/content/Context;)V

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/maps/directions/TransitMapView;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->lastStatusResId:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/glass/maps/directions/TransitMapView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->statusView:Landroid/widget/TextView;

    return-object v0
.end method

.method private buildColorPolyline(Lcom/google/glass/maps/directions/Trip;)Lcom/google/glass/maps/map/ColorPolyline;
    .locals 11

    .prologue
    const/4 v0, 0x0

    .line 189
    iget-object v1, p1, Lcom/google/glass/maps/directions/Trip;->polyline:Lcom/google/android/maps/driveabout/model/ag;

    .line 190
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/ag;->b()I

    move-result v1

    new-array v5, v1, [I

    .line 192
    iget-object v6, p1, Lcom/google/glass/maps/directions/Trip;->steps:[Lcom/google/glass/maps/directions/Step;

    .line 193
    array-length v1, v6

    new-array v7, v1, [I

    move v1, v0

    move v3, v0

    move v2, v0

    .line 200
    :goto_0
    array-length v4, v6

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_1

    .line 201
    aget-object v8, v6, v0

    .line 204
    iget v4, v8, Lcom/google/glass/maps/directions/Step;->lineColor:I

    invoke-direct {p0, v7, v2, v4}, Lcom/google/glass/maps/directions/TransitMapView;->findValueInArray([III)I

    move-result v4

    .line 205
    const/4 v9, -0x1

    if-ne v4, v9, :cond_2

    .line 208
    iget v4, v8, Lcom/google/glass/maps/directions/Step;->lineColor:I

    aput v4, v7, v2

    .line 209
    add-int/lit8 v4, v2, 0x1

    .line 213
    :goto_1
    iget v9, v8, Lcom/google/glass/maps/directions/Step;->departurePointIndex:I

    if-eqz v9, :cond_0

    .line 215
    iget v9, v8, Lcom/google/glass/maps/directions/Step;->departurePointIndex:I

    invoke-static {v5, v3, v9, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 219
    :cond_0
    iget v1, v8, Lcom/google/glass/maps/directions/Step;->departurePointIndex:I

    .line 200
    add-int/lit8 v0, v0, 0x1

    move v3, v1

    move v1, v2

    move v2, v4

    goto :goto_0

    .line 224
    :cond_1
    array-length v0, v5

    invoke-static {v5, v3, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 226
    new-instance v0, Lcom/google/glass/maps/map/ColorPolyline;

    iget-object v1, p1, Lcom/google/glass/maps/directions/Trip;->polyline:Lcom/google/android/maps/driveabout/model/ag;

    invoke-direct {p0, v7, v2}, Lcom/google/glass/maps/directions/TransitMapView;->convertIntRgbColorsToFloat([II)[[F

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/google/glass/maps/map/ColorPolyline;-><init>(Lcom/google/android/maps/driveabout/model/ag;[[F[IZ)V

    return-object v0

    :cond_2
    move v10, v4

    move v4, v2

    move v2, v10

    goto :goto_1
.end method

.method private convertIntRgbColorsToFloat([II)[[F
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 239
    filled-new-array {p2, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    .line 240
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 241
    new-array v2, v4, [F

    aput-object v2, v0, v1

    .line 242
    aget v2, p1, v1

    aget-object v3, v0, v1

    invoke-static {v2, v3}, Lcom/google/glass/maps/util/ColorUtil;->argbToRgbFloats(I[F)V

    .line 240
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 244
    :cond_0
    return-object v0
.end method

.method private findValueInArray([III)I
    .locals 2

    .prologue
    .line 252
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    .line 253
    aget v1, p1, v0

    if-ne v1, p3, :cond_0

    .line 257
    :goto_1
    return v0

    .line 252
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 99
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 101
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/maps/R$layout;->transit_map:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 103
    invoke-virtual {p0}, Lcom/google/glass/maps/directions/TransitMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/maps/R$dimen;->glass_screen_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 104
    invoke-virtual {p0}, Lcom/google/glass/maps/directions/TransitMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/glass/maps/R$dimen;->glass_screen_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 105
    sget-object v2, Lcom/google/glass/maps/directions/TransitMapView;->defaultNavRenderer:Lcom/google/glass/maps/NavigationRenderer;

    if-eqz v2, :cond_1

    .line 106
    sget-object v2, Lcom/google/glass/maps/directions/TransitMapView;->defaultNavRenderer:Lcom/google/glass/maps/NavigationRenderer;

    iput-object v2, p0, Lcom/google/glass/maps/directions/TransitMapView;->navRenderer:Lcom/google/glass/maps/NavigationRenderer;

    .line 111
    :goto_0
    const-wide v2, 0x3f60624dd2f1a9fcL    # 0.002

    int-to-double v4, v1

    mul-double v1, v2, v4

    int-to-double v3, v0

    div-double v0, v1, v3

    iput-wide v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->mapMarginYDeg:D

    .line 112
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/maps/driveabout/model/ab;

    iput-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->rectCorners:[Lcom/google/android/maps/driveabout/model/ab;

    .line 113
    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->rectCorners:[Lcom/google/android/maps/driveabout/model/ab;

    const/4 v1, 0x1

    new-instance v2, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v2}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    aput-object v2, v0, v1

    .line 114
    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->rectCorners:[Lcom/google/android/maps/driveabout/model/ab;

    const/4 v1, 0x3

    new-instance v2, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v2}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    aput-object v2, v0, v1

    .line 116
    sget v0, Lcom/google/glass/maps/R$id;->map:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/directions/TransitMapView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    iput-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->mapView:Landroid/opengl/GLSurfaceView;

    .line 117
    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->mapView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 118
    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->mapView:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcom/google/glass/maps/directions/TransitMapView;->navRenderer:Lcom/google/glass/maps/NavigationRenderer;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 124
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/glass/maps/directions/TransitMapView;->defaultNavRenderer:Lcom/google/glass/maps/NavigationRenderer;

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->mapView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    .line 128
    :cond_0
    sget v0, Lcom/google/glass/maps/R$id;->status:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/directions/TransitMapView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->statusView:Landroid/widget/TextView;

    .line 129
    new-instance v0, Lcom/google/glass/maps/directions/TransitMapView$1;

    invoke-direct {v0, p0}, Lcom/google/glass/maps/directions/TransitMapView$1;-><init>(Lcom/google/glass/maps/directions/TransitMapView;)V

    iput-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->statusRunnable:Ljava/lang/Runnable;

    .line 135
    return-void

    .line 108
    :cond_1
    new-instance v2, Lcom/google/glass/maps/NavigationRenderer;

    invoke-direct {v2, p1, v0, v1}, Lcom/google/glass/maps/NavigationRenderer;-><init>(Landroid/content/Context;II)V

    iput-object v2, p0, Lcom/google/glass/maps/directions/TransitMapView;->navRenderer:Lcom/google/glass/maps/NavigationRenderer;

    goto :goto_0
.end method

.method public static setDefaultNavRender(Lcom/google/glass/maps/NavigationRenderer;)V
    .locals 0

    .prologue
    .line 139
    sput-object p0, Lcom/google/glass/maps/directions/TransitMapView;->defaultNavRenderer:Lcom/google/glass/maps/NavigationRenderer;

    .line 140
    return-void
.end method

.method private updateStatus()V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->location:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->location:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->c()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget v0, Lcom/google/glass/maps/R$string;->searching_for_gps:I

    .line 341
    :goto_0
    iget v1, p0, Lcom/google/glass/maps/directions/TransitMapView;->lastStatusResId:I

    if-eq v0, v1, :cond_1

    .line 342
    iput v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->lastStatusResId:I

    .line 343
    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/maps/directions/TransitMapView;->statusRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 345
    :cond_1
    return-void

    .line 338
    :cond_2
    sget v0, Lcom/google/glass/maps/R$string;->timestamp_now_future:I

    goto :goto_0
.end method


# virtual methods
.method intersect(Lcom/google/android/maps/driveabout/model/am;Lcom/google/android/maps/driveabout/model/ag;)Z
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 361
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/model/ag;->b()I

    move-result v6

    .line 363
    if-nez v6, :cond_0

    .line 393
    :goto_0
    return v0

    .line 369
    :cond_0
    iget-object v2, p0, Lcom/google/glass/maps/directions/TransitMapView;->rectCorners:[Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/am;->d()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v3

    aput-object v3, v2, v0

    .line 370
    iget-object v2, p0, Lcom/google/glass/maps/directions/TransitMapView;->rectCorners:[Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/am;->e()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v3

    aput-object v3, v2, v5

    .line 371
    iget-object v2, p0, Lcom/google/glass/maps/directions/TransitMapView;->rectCorners:[Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/am;->d()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v3

    aput-object v3, v2, v10

    .line 372
    iget-object v2, p0, Lcom/google/glass/maps/directions/TransitMapView;->rectCorners:[Lcom/google/android/maps/driveabout/model/ab;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/google/glass/maps/directions/TransitMapView;->rectCorners:[Lcom/google/android/maps/driveabout/model/ab;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v3

    iget-object v4, p0, Lcom/google/glass/maps/directions/TransitMapView;->rectCorners:[Lcom/google/android/maps/driveabout/model/ab;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/maps/driveabout/model/ab;->d(II)V

    .line 373
    iget-object v2, p0, Lcom/google/glass/maps/directions/TransitMapView;->rectCorners:[Lcom/google/android/maps/driveabout/model/ab;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/google/glass/maps/directions/TransitMapView;->rectCorners:[Lcom/google/android/maps/driveabout/model/ab;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v3

    iget-object v4, p0, Lcom/google/glass/maps/directions/TransitMapView;->rectCorners:[Lcom/google/android/maps/driveabout/model/ab;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/maps/driveabout/model/ab;->d(II)V

    .line 376
    invoke-virtual {p2, v0}, Lcom/google/android/maps/driveabout/model/ag;->a(I)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v2

    move v3, v1

    move-object v4, v2

    .line 377
    :goto_1
    if-ge v3, v6, :cond_3

    .line 380
    invoke-virtual {p2, v3}, Lcom/google/android/maps/driveabout/model/ag;->a(I)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v5

    move v2, v0

    .line 381
    :goto_2
    if-ge v2, v10, :cond_2

    .line 382
    iget-object v7, p0, Lcom/google/glass/maps/directions/TransitMapView;->rectCorners:[Lcom/google/android/maps/driveabout/model/ab;

    aget-object v7, v7, v2

    iget-object v8, p0, Lcom/google/glass/maps/directions/TransitMapView;->rectCorners:[Lcom/google/android/maps/driveabout/model/ab;

    add-int/lit8 v9, v2, 0x1

    aget-object v8, v8, v9

    invoke-static {v4, v5, v7, v8}, Lcom/google/android/maps/driveabout/model/ae;->a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v0, v1

    .line 383
    goto :goto_0

    .line 381
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 377
    :cond_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v4, v5

    goto :goto_1

    .line 393
    :cond_3
    invoke-virtual {p1, v4}, Lcom/google/android/maps/driveabout/model/am;->a(Lcom/google/android/maps/driveabout/model/ab;)Z

    move-result v0

    goto :goto_0
.end method

.method public isInOverviewMode()Z
    .locals 1

    .prologue
    .line 348
    iget-boolean v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->inOverviewMode:Z

    return v0
.end method

.method public isOverviewPinned()Z
    .locals 2

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->inOverviewMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->state:Lcom/google/glass/maps/directions/TransitMapView$State;

    sget-object v1, Lcom/google/glass/maps/directions/TransitMapView$State;->OVERVIEW_PINNED:Lcom/google/glass/maps/directions/TransitMapView$State;

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/directions/TransitMapView$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 282
    check-cast p1, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    iput-object p1, p0, Lcom/google/glass/maps/directions/TransitMapView;->location:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    .line 283
    return-void
.end method

.method public onOrientationChanged(Lcom/google/android/maps/driveabout/location/z;)V
    .locals 11

    .prologue
    const/4 v4, 0x0

    const-wide v9, 0x3f60624dd2f1a9fcL    # 0.002

    .line 286
    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->state:Lcom/google/glass/maps/directions/TransitMapView$State;

    sget-object v1, Lcom/google/glass/maps/directions/TransitMapView$State;->OVERVIEW_DELAYED:Lcom/google/glass/maps/directions/TransitMapView$State;

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/directions/TransitMapView$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/time/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/glass/maps/directions/TransitMapView;->startTimeMillis:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 289
    sget-object v0, Lcom/google/glass/maps/directions/TransitMapView$State;->ZOOMED_IN:Lcom/google/glass/maps/directions/TransitMapView$State;

    iput-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->state:Lcom/google/glass/maps/directions/TransitMapView$State;

    .line 292
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/maps/directions/TransitMapView;->updateStatus()V

    .line 295
    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->state:Lcom/google/glass/maps/directions/TransitMapView$State;

    sget-object v1, Lcom/google/glass/maps/directions/TransitMapView$State;->ZOOMED_IN:Lcom/google/glass/maps/directions/TransitMapView$State;

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/directions/TransitMapView$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->location:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->location:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->c()Z

    move-result v0

    if-nez v0, :cond_3

    .line 296
    :cond_1
    iget-boolean v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->inOverviewMode:Z

    if-nez v0, :cond_2

    .line 297
    invoke-virtual {p0, v4}, Lcom/google/glass/maps/directions/TransitMapView;->showRouteOverview(Z)V

    .line 332
    :cond_2
    :goto_0
    return-void

    .line 302
    :cond_3
    iput-boolean v4, p0, Lcom/google/glass/maps/directions/TransitMapView;->inOverviewMode:Z

    .line 305
    if-eqz p1, :cond_4

    .line 306
    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->location:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/z;->c()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->setBearing(F)V

    .line 308
    :cond_4
    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->navRenderer:Lcom/google/glass/maps/NavigationRenderer;

    iget-object v1, p0, Lcom/google/glass/maps/directions/TransitMapView;->location:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationRenderer;->setLocation(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V

    .line 311
    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->location:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getLatitude()D

    move-result-wide v0

    .line 312
    iget-object v2, p0, Lcom/google/glass/maps/directions/TransitMapView;->location:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getLongitude()D

    move-result-wide v2

    .line 313
    iget-object v4, p0, Lcom/google/glass/maps/directions/TransitMapView;->tmpPt1:Lcom/google/android/maps/driveabout/model/ab;

    sub-double v5, v0, v9

    iget-wide v7, p0, Lcom/google/glass/maps/directions/TransitMapView;->mapMarginYDeg:D

    sub-double v7, v2, v7

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/maps/driveabout/model/ab;->b(DD)V

    .line 314
    iget-object v4, p0, Lcom/google/glass/maps/directions/TransitMapView;->tmpPt2:Lcom/google/android/maps/driveabout/model/ab;

    add-double v5, v0, v9

    iget-wide v7, p0, Lcom/google/glass/maps/directions/TransitMapView;->mapMarginYDeg:D

    add-double/2addr v7, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/maps/driveabout/model/ab;->b(DD)V

    .line 317
    new-instance v4, Lcom/google/android/maps/driveabout/model/am;

    iget-object v5, p0, Lcom/google/glass/maps/directions/TransitMapView;->tmpPt1:Lcom/google/android/maps/driveabout/model/ab;

    iget-object v6, p0, Lcom/google/glass/maps/directions/TransitMapView;->tmpPt2:Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v4, v5, v6}, Lcom/google/android/maps/driveabout/model/am;-><init>(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    .line 321
    iget-object v5, p0, Lcom/google/glass/maps/directions/TransitMapView;->trip:Lcom/google/glass/maps/directions/Trip;

    iget-object v5, v5, Lcom/google/glass/maps/directions/Trip;->polyline:Lcom/google/android/maps/driveabout/model/ag;

    invoke-virtual {p0, v4, v5}, Lcom/google/glass/maps/directions/TransitMapView;->intersect(Lcom/google/android/maps/driveabout/model/am;Lcom/google/android/maps/driveabout/model/ag;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 322
    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->navRenderer:Lcom/google/glass/maps/NavigationRenderer;

    invoke-virtual {v0, v4}, Lcom/google/glass/maps/NavigationRenderer;->moveCameraOverhead(Lcom/google/android/maps/driveabout/model/am;)V

    goto :goto_0

    .line 325
    :cond_5
    iget-object v4, p0, Lcom/google/glass/maps/directions/TransitMapView;->tmpPt1:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/model/ab;->b(DD)V

    .line 327
    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->trip:Lcom/google/glass/maps/directions/Trip;

    iget-object v0, v0, Lcom/google/glass/maps/directions/Trip;->polyline:Lcom/google/android/maps/driveabout/model/ag;

    iget-object v1, p0, Lcom/google/glass/maps/directions/TransitMapView;->tmpPt2:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/model/ag;->a(Lcom/google/android/maps/driveabout/model/ab;)V

    .line 330
    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->navRenderer:Lcom/google/glass/maps/NavigationRenderer;

    iget-object v1, p0, Lcom/google/glass/maps/directions/TransitMapView;->tmpPt1:Lcom/google/android/maps/driveabout/model/ab;

    iget-object v2, p0, Lcom/google/glass/maps/directions/TransitMapView;->tmpPt2:Lcom/google/android/maps/driveabout/model/ab;

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/model/am;->a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/am;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationRenderer;->moveCameraOverhead(Lcom/google/android/maps/driveabout/model/am;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->mapView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->mapView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 270
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->mapView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->mapView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 264
    :cond_0
    return-void
.end method

.method public showRouteOverview(Z)V
    .locals 4

    .prologue
    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->inOverviewMode:Z

    .line 274
    if-eqz p1, :cond_0

    sget-object v0, Lcom/google/glass/maps/directions/TransitMapView$State;->OVERVIEW_PINNED:Lcom/google/glass/maps/directions/TransitMapView$State;

    :goto_0
    iput-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->state:Lcom/google/glass/maps/directions/TransitMapView$State;

    .line 275
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/time/Clock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->startTimeMillis:J

    .line 276
    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->navRenderer:Lcom/google/glass/maps/NavigationRenderer;

    iget-object v1, p0, Lcom/google/glass/maps/directions/TransitMapView;->trip:Lcom/google/glass/maps/directions/Trip;

    iget-object v1, v1, Lcom/google/glass/maps/directions/Trip;->polyline:Lcom/google/android/maps/driveabout/model/ag;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/ag;->a()Lcom/google/android/maps/driveabout/model/am;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationRenderer;->moveCameraOverhead(Lcom/google/android/maps/driveabout/model/am;)V

    .line 277
    return-void

    .line 274
    :cond_0
    sget-object v0, Lcom/google/glass/maps/directions/TransitMapView$State;->OVERVIEW_DELAYED:Lcom/google/glass/maps/directions/TransitMapView$State;

    goto :goto_0
.end method

.method public start(Lcom/google/glass/maps/directions/Trip;Lcom/google/glass/location/LocationManagerHelper;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 143
    iput-object p1, p0, Lcom/google/glass/maps/directions/TransitMapView;->trip:Lcom/google/glass/maps/directions/Trip;

    .line 145
    sget v0, Lcom/google/glass/maps/R$id;->summary_icons:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/directions/TransitMapView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 146
    invoke-virtual {p0}, Lcom/google/glass/maps/directions/TransitMapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/glass/maps/directions/Trip;->generateTripSummaryStringWithIcon(Landroid/content/Context;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    sget v0, Lcom/google/glass/maps/R$id;->from_to_duration:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/directions/TransitMapView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 149
    invoke-virtual {p0}, Lcom/google/glass/maps/directions/TransitMapView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/google/glass/maps/directions/Trip;->steps:[Lcom/google/glass/maps/directions/Step;

    invoke-static {v1, v2}, Lcom/google/glass/maps/directions/Step;->formatFromTo(Landroid/content/Context;[Lcom/google/glass/maps/directions/Step;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    sget v0, Lcom/google/glass/maps/R$id;->destination:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/directions/TransitMapView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 152
    iget-object v1, p1, Lcom/google/glass/maps/directions/Trip;->destination:Lcom/google/android/maps/driveabout/nav/ao;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/ao;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->navRenderer:Lcom/google/glass/maps/NavigationRenderer;

    invoke-direct {p0, p1}, Lcom/google/glass/maps/directions/TransitMapView;->buildColorPolyline(Lcom/google/glass/maps/directions/Trip;)Lcom/google/glass/maps/map/ColorPolyline;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationRenderer;->setRoutePolyline(Lcom/google/glass/maps/map/ColorPolyline;)V

    .line 158
    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->navRenderer:Lcom/google/glass/maps/NavigationRenderer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationRenderer;->setAlwaysAnimateWhenZooming(Z)V

    .line 161
    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->navRenderer:Lcom/google/glass/maps/NavigationRenderer;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/maps/NavigationRenderer;->setCameraAnimationDuration(J)V

    .line 163
    invoke-virtual {p2}, Lcom/google/glass/location/LocationManagerHelper;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_0

    .line 165
    new-instance v1, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-direct {v1, v0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;-><init>(Landroid/location/Location;)V

    iput-object v1, p0, Lcom/google/glass/maps/directions/TransitMapView;->location:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    .line 176
    :goto_0
    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->navRenderer:Lcom/google/glass/maps/NavigationRenderer;

    iget-object v1, p0, Lcom/google/glass/maps/directions/TransitMapView;->location:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationRenderer;->setLocation(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V

    .line 177
    invoke-virtual {p0, v3}, Lcom/google/glass/maps/directions/TransitMapView;->showRouteOverview(Z)V

    .line 178
    invoke-virtual {p0}, Lcom/google/glass/maps/directions/TransitMapView;->onResume()V

    .line 179
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "No last known location, so falling back to the trip destination"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    new-instance v0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->location:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    .line 172
    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->location:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    iget-object v1, p1, Lcom/google/glass/maps/directions/Trip;->destination:Lcom/google/android/maps/driveabout/nav/ao;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/ao;->c()Lcom/google/android/maps/driveabout/model/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/m;->a()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->setLatitude(D)V

    .line 173
    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->location:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    iget-object v1, p1, Lcom/google/glass/maps/directions/Trip;->destination:Lcom/google/android/maps/driveabout/nav/ao;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/ao;->c()Lcom/google/android/maps/driveabout/model/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/m;->b()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->setLongitude(D)V

    .line 174
    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->location:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->setAccuracy(F)V

    goto :goto_0
.end method

.method public unpinOverviewMode()V
    .locals 1

    .prologue
    .line 356
    sget-object v0, Lcom/google/glass/maps/directions/TransitMapView$State;->ZOOMED_IN:Lcom/google/glass/maps/directions/TransitMapView$State;

    iput-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->state:Lcom/google/glass/maps/directions/TransitMapView$State;

    .line 357
    return-void
.end method
