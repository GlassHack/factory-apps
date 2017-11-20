.class public abstract Lcom/google/glass/maps/BaseNavigationLiveCardHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/maps/NavigationUserInterface;


# static fields
.field private static final STANDARD_NOTIFICATION_WINDOW_MS:J

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final closeRouteOverviewRunnable:Ljava/lang/Runnable;

.field private final companionConnectionStatusReceiver:Landroid/content/BroadcastReceiver;

.field private companionErrorShowing:Z

.field private context:Landroid/content/Context;

.field private fatalErrorDialog:Lcom/google/glass/widget/MessageDialog;

.field private final handler:Landroid/os/Handler;

.field private isResumed:Z

.field private lastPane:Landroid/view/View;

.field private final navRenderer:Lcom/google/glass/maps/NavigationRenderer;

.field private overlayBitmap:Lcom/google/glass/maps/opengl/TextureBitmap;

.field private overlayCanvas:Landroid/graphics/Canvas;

.field overlayView:Landroid/view/View;

.field private paneManager:Lcom/google/glass/maps/NavigationPaneManager;

.field private powerHelper:Lcom/google/glass/util/PowerHelper;

.field private showingDestinations:Z

.field private tmv:Lcom/google/glass/maps/directions/TransitMapView;

.field private trip:Lcom/google/glass/maps/directions/Trip;

.field private viewManager:Lcom/google/glass/maps/NavigationViewManager;

.field private final wakeupUiManager:Lcom/google/glass/maps/NavigationUserInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 58
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->STANDARD_NOTIFICATION_WINDOW_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->handler:Landroid/os/Handler;

    .line 85
    new-instance v0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$1;

    invoke-direct {v0, p0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$1;-><init>(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;)V

    iput-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->closeRouteOverviewRunnable:Ljava/lang/Runnable;

    .line 95
    new-instance v0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$2;

    invoke-direct {v0, p0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$2;-><init>(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;)V

    iput-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->companionConnectionStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 124
    new-instance v0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$3;

    invoke-direct {v0, p0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$3;-><init>(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;)V

    iput-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->wakeupUiManager:Lcom/google/glass/maps/NavigationUserInterface;

    .line 169
    new-instance v0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$LiveCardNavigationRenderer;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$LiveCardNavigationRenderer;-><init>(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->navRenderer:Lcom/google/glass/maps/NavigationRenderer;

    .line 172
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->navRenderer:Lcom/google/glass/maps/NavigationRenderer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationRenderer;->setThrottleFrameRate(Z)V

    .line 173
    new-instance v0, Lcom/google/glass/util/PowerHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/util/PowerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->powerHelper:Lcom/google/glass/util/PowerHelper;

    .line 174
    invoke-direct {p0, p1}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->loadOverlayView(Landroid/content/Context;)V

    .line 175
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/maps/NavigationManager;
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->getNavigationManager()Lcom/google/glass/maps/NavigationManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->companionErrorShowing:Z

    return v0
.end method

.method static synthetic access$1000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;Z)Z
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->companionErrorShowing:Z

    return p1
.end method

.method static synthetic access$1100()Lcom/google/glass/maps/DirectionsManager;
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->getDirectionsManager()Lcom/google/glass/maps/DirectionsManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;)Lcom/google/glass/maps/directions/TransitMapView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->tmv:Lcom/google/glass/maps/directions/TransitMapView;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;Lcom/google/glass/maps/directions/TransitMapView;)Lcom/google/glass/maps/directions/TransitMapView;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->tmv:Lcom/google/glass/maps/directions/TransitMapView;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;)Lcom/google/glass/maps/directions/Trip;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->trip:Lcom/google/glass/maps/directions/Trip;

    return-object v0
.end method

.method static synthetic access$1400()Lcom/google/glass/maps/NavigationApplicationState;
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->getApplicationState()Lcom/google/glass/maps/NavigationApplicationState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;)Landroid/view/View;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->lastPane:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->lastPane:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;)Lcom/google/glass/maps/NavigationPaneManager;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;)Lcom/google/glass/util/PowerHelper;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->powerHelper:Lcom/google/glass/util/PowerHelper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;)Lcom/google/glass/maps/opengl/TextureBitmap;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->overlayBitmap:Lcom/google/glass/maps/opengl/TextureBitmap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;)Lcom/google/glass/maps/NavigationRenderer;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->navRenderer:Lcom/google/glass/maps/NavigationRenderer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;)Lcom/google/glass/maps/NavigationViewManager;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->viewManager:Lcom/google/glass/maps/NavigationViewManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->showingDestinations:Z

    return v0
.end method

.method static synthetic access$902(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;Z)Z
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->showingDestinations:Z

    return p1
.end method

.method private static getApplicationState()Lcom/google/glass/maps/NavigationApplicationState;
    .locals 1

    .prologue
    .line 776
    invoke-static {}, Lcom/google/glass/maps/NavigationApplicationState;->getInstance()Lcom/google/glass/maps/NavigationApplicationState;

    move-result-object v0

    return-object v0
.end method

.method private static getDirectionsManager()Lcom/google/glass/maps/DirectionsManager;
    .locals 1

    .prologue
    .line 784
    invoke-static {}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->getApplicationState()Lcom/google/glass/maps/NavigationApplicationState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationApplicationState;->getDirectionsManager()Lcom/google/glass/maps/DirectionsManager;

    move-result-object v0

    return-object v0
.end method

.method protected static getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 772
    sget-object v0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private getMenuIconResId(I)I
    .locals 1

    .prologue
    .line 346
    packed-switch p1, :pswitch_data_0

    .line 355
    sget v0, Lcom/google/glass/maps/R$drawable;->ic_drive_50:I

    :goto_0
    return v0

    .line 348
    :pswitch_0
    sget v0, Lcom/google/glass/maps/R$drawable;->ic_walk_50:I

    goto :goto_0

    .line 350
    :pswitch_1
    sget v0, Lcom/google/glass/maps/R$drawable;->ic_bike_50:I

    goto :goto_0

    .line 352
    :pswitch_2
    sget v0, Lcom/google/glass/maps/R$drawable;->ic_transit_50:I

    goto :goto_0

    .line 346
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getNavigationManager()Lcom/google/glass/maps/NavigationManager;
    .locals 1

    .prologue
    .line 780
    invoke-static {}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->getApplicationState()Lcom/google/glass/maps/NavigationApplicationState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationApplicationState;->getNavigationManager()Lcom/google/glass/maps/NavigationManager;

    move-result-object v0

    return-object v0
.end method

.method private loadOverlayView(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 252
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->navRenderer:Lcom/google/glass/maps/NavigationRenderer;

    invoke-static {v0}, Lcom/google/glass/maps/directions/TransitMapView;->setDefaultNavRender(Lcom/google/glass/maps/NavigationRenderer;)V

    .line 254
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/maps/R$layout;->navigation_activity:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->overlayView:Landroid/view/View;

    .line 255
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->overlayView:Landroid/view/View;

    sget v1, Lcom/google/glass/maps/R$id;->map:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 256
    new-instance v1, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$4;

    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->overlayView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {v1, p0, v0, v4}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$4;-><init>(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;Landroid/view/ViewGroup;Z)V

    iput-object v1, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    .line 288
    new-instance v0, Lcom/google/glass/maps/NavigationViewManager;

    iget-object v1, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->navRenderer:Lcom/google/glass/maps/NavigationRenderer;

    iget-object v2, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    iget-object v3, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->overlayView:Landroid/view/View;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/glass/maps/NavigationViewManager;-><init>(Landroid/content/Context;Lcom/google/glass/maps/NavigationRenderer;Lcom/google/glass/maps/NavigationPaneManager;Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->viewManager:Lcom/google/glass/maps/NavigationViewManager;

    .line 291
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->overlayView:Landroid/view/View;

    iget-object v1, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->navRenderer:Lcom/google/glass/maps/NavigationRenderer;

    .line 292
    invoke-virtual {v1}, Lcom/google/glass/maps/NavigationRenderer;->getWidth()I

    move-result v1

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v2, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->navRenderer:Lcom/google/glass/maps/NavigationRenderer;

    .line 293
    invoke-virtual {v2}, Lcom/google/glass/maps/NavigationRenderer;->getHeight()I

    move-result v2

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 291
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 294
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->overlayView:Landroid/view/View;

    iget-object v1, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->overlayView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->overlayView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 296
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->overlayView:Landroid/view/View;

    .line 297
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->overlayView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 296
    invoke-static {v0, v1, v2}, Lcom/google/glass/maps/opengl/TextureBitmap;->createOptimizedBitmap(IILandroid/graphics/Bitmap$Config;)Lcom/google/glass/maps/opengl/TextureBitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->overlayBitmap:Lcom/google/glass/maps/opengl/TextureBitmap;

    .line 298
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->overlayBitmap:Lcom/google/glass/maps/opengl/TextureBitmap;

    invoke-virtual {v1}, Lcom/google/glass/maps/opengl/TextureBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->overlayCanvas:Landroid/graphics/Canvas;

    .line 299
    return-void
.end method

.method private maybeInsertArtifactCard(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 519
    new-instance v0, Lcom/google/glass/maps/NavigationArtifactCreator;

    invoke-direct {v0, p1}, Lcom/google/glass/maps/NavigationArtifactCreator;-><init>(Landroid/content/Context;)V

    .line 525
    invoke-static {}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->getApplicationState()Lcom/google/glass/maps/NavigationApplicationState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/maps/NavigationApplicationState;->isDirectionsMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 526
    invoke-static {}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->getDirectionsManager()Lcom/google/glass/maps/DirectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/maps/DirectionsManager;->shouldInsertArtifactCard()Z

    move-result v2

    if-nez v2, :cond_2

    move v4, v5

    move-object v2, v1

    move v1, v5

    .line 552
    :goto_0
    invoke-static {}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->getDirectionsManager()Lcom/google/glass/maps/DirectionsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/maps/DirectionsManager;->isActive()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->getNavigationManager()Lcom/google/glass/maps/NavigationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/maps/NavigationManager;->isRouteCompleted()Z

    move-result v3

    if-nez v3, :cond_8

    .line 553
    if-eqz v1, :cond_0

    .line 554
    invoke-static {}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->getApplicationState()Lcom/google/glass/maps/NavigationApplicationState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/maps/NavigationApplicationState;->getDestination()Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v1

    .line 555
    invoke-static {p1}, Lcom/google/glass/maps/util/TravelModeUtils;->getTravelMode(Landroid/content/Context;)I

    move-result v3

    .line 554
    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/maps/NavigationArtifactCreator;->startCreatingArtifact(Lcom/google/android/maps/driveabout/nav/ao;Lcom/google/android/maps/driveabout/model/ab;IZZ)V

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->goToSleep()V

    .line 567
    :cond_1
    :goto_1
    return-void

    .line 531
    :cond_2
    invoke-static {}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->getDirectionsManager()Lcom/google/glass/maps/DirectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/maps/DirectionsManager;->getDestinationStep()Lcom/google/glass/maps/directions/Step;

    move-result-object v2

    .line 532
    if-eqz v2, :cond_3

    iget-boolean v3, v2, Lcom/google/glass/maps/directions/Step;->hasStreetViewPanoId:Z

    if-eqz v3, :cond_3

    .line 533
    invoke-static {}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->getDirectionsManager()Lcom/google/glass/maps/DirectionsManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/glass/maps/DirectionsManager;->getStepPoint(Lcom/google/glass/maps/directions/Step;)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v1

    .line 536
    :cond_3
    invoke-static {}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->getDirectionsManager()Lcom/google/glass/maps/DirectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/maps/DirectionsManager;->isRouteCompleted()Z

    move-result v4

    move-object v2, v1

    move v1, v6

    .line 537
    goto :goto_0

    .line 539
    :cond_4
    invoke-static {}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->getNavigationManager()Lcom/google/glass/maps/NavigationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/maps/NavigationManager;->shouldInsertArtifactCard()Z

    move-result v2

    if-nez v2, :cond_5

    move v4, v5

    move-object v2, v1

    move v1, v5

    .line 541
    goto :goto_0

    .line 544
    :cond_5
    invoke-static {}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->getNavigationManager()Lcom/google/glass/maps/NavigationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/maps/NavigationManager;->getFinalStep()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v2

    .line 545
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/ah;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 547
    :cond_6
    :goto_2
    invoke-static {}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->getNavigationManager()Lcom/google/glass/maps/NavigationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/maps/NavigationManager;->isRouteCompleted()Z

    move-result v4

    move-object v2, v1

    move v1, v6

    goto :goto_0

    .line 546
    :cond_7
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/ah;->a()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v1

    goto :goto_2

    .line 560
    :cond_8
    iget-object v3, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v3}, Lcom/google/glass/util/PowerHelper;->userActivity()V

    .line 561
    if-eqz v1, :cond_1

    .line 562
    invoke-static {}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->getApplicationState()Lcom/google/glass/maps/NavigationApplicationState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/maps/NavigationApplicationState;->getDestination()Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v1

    .line 563
    invoke-static {p1}, Lcom/google/glass/maps/util/TravelModeUtils;->getTravelMode(Landroid/content/Context;)I

    move-result v3

    move v5, v6

    .line 562
    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/maps/NavigationArtifactCreator;->startCreatingArtifact(Lcom/google/android/maps/driveabout/nav/ao;Lcom/google/android/maps/driveabout/model/ab;IZZ)V

    goto :goto_1
.end method

.method private showTransitMap()V
    .locals 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$8;

    invoke-direct {v1, p0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$8;-><init>(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 504
    return-void
.end method


# virtual methods
.method public clearRoute()V
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->viewManager:Lcom/google/glass/maps/NavigationViewManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationViewManager;->clearRoute()V

    .line 656
    invoke-virtual {p0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->onOverlayViewChanged()V

    .line 657
    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->context:Landroid/content/Context;

    return-object v0
.end method

.method protected getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getNavigationPaneManager()Lcom/google/glass/maps/NavigationPaneManager;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    return-object v0
.end method

.method protected getRenderer()Lcom/google/glass/maps/NavigationRenderer;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->navRenderer:Lcom/google/glass/maps/NavigationRenderer;

    return-object v0
.end method

.method public hideFatalError()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 610
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->companionErrorShowing:Z

    .line 611
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->fatalErrorDialog:Lcom/google/glass/widget/MessageDialog;

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->fatalErrorDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)V

    .line 613
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->fatalErrorDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->cancel()V

    .line 614
    iput-object v1, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->fatalErrorDialog:Lcom/google/glass/widget/MessageDialog;

    .line 616
    :cond_0
    return-void
.end method

.method public abstract hideGuardPhrase()V
.end method

.method public abstract isLiveCardPublished()Z
.end method

.method protected isResumed()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->isResumed:Z

    return v0
.end method

.method public moveCameraOverhead(Lcom/google/android/maps/driveabout/model/am;)V
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->viewManager:Lcom/google/glass/maps/NavigationViewManager;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/NavigationViewManager;->moveCameraOverhead(Lcom/google/android/maps/driveabout/model/am;)V

    .line 633
    invoke-virtual {p0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->onOverlayViewChanged()V

    .line 634
    return-void
.end method

.method public moveCameraToFollow(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->viewManager:Lcom/google/glass/maps/NavigationViewManager;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/NavigationViewManager;->moveCameraToFollow(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V

    .line 627
    invoke-virtual {p0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->onOverlayViewChanged()V

    .line 628
    return-void
.end method

.method public abstract navigate()V
.end method

.method protected onCreate(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 209
    iput-object p1, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->context:Landroid/content/Context;

    .line 211
    invoke-static {}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->getNavigationManager()Lcom/google/glass/maps/NavigationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/maps/NavigationManager;->addUserInterface(Lcom/google/glass/maps/NavigationUserInterface;)V

    .line 212
    invoke-static {}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->getNavigationManager()Lcom/google/glass/maps/NavigationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->wakeupUiManager:Lcom/google/glass/maps/NavigationUserInterface;

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationManager;->addUserInterface(Lcom/google/glass/maps/NavigationUserInterface;)V

    .line 215
    invoke-virtual {p0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->onResume()V

    .line 216
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->maybeInsertArtifactCard(Landroid/content/Context;)V

    .line 225
    invoke-virtual {p0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->onPause()V

    .line 227
    invoke-static {}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->getNavigationManager()Lcom/google/glass/maps/NavigationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->wakeupUiManager:Lcom/google/glass/maps/NavigationUserInterface;

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationManager;->removeUserInterface(Lcom/google/glass/maps/NavigationUserInterface;)V

    .line 228
    invoke-static {}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->getNavigationManager()Lcom/google/glass/maps/NavigationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/maps/NavigationManager;->removeUserInterface(Lcom/google/glass/maps/NavigationUserInterface;)V

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->context:Landroid/content/Context;

    .line 231
    return-void
.end method

.method public onOverlayViewChanged()V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, 0x0

    .line 303
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->overlayView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isDirty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->overlayView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    :goto_0
    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->overlayView:Landroid/view/View;

    iget-object v1, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->navRenderer:Lcom/google/glass/maps/NavigationRenderer;

    .line 308
    invoke-virtual {v1}, Lcom/google/glass/maps/NavigationRenderer;->getWidth()I

    move-result v1

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v2, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->navRenderer:Lcom/google/glass/maps/NavigationRenderer;

    .line 309
    invoke-virtual {v2}, Lcom/google/glass/maps/NavigationRenderer;->getHeight()I

    move-result v2

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 307
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 310
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->overlayView:Landroid/view/View;

    iget-object v1, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->overlayView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->overlayView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 312
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->overlayBitmap:Lcom/google/glass/maps/opengl/TextureBitmap;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/TextureBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 313
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->overlayView:Landroid/view/View;

    iget-object v1, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->overlayCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 314
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->navRenderer:Lcom/google/glass/maps/NavigationRenderer;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->overlayBitmap:Lcom/google/glass/maps/opengl/TextureBitmap;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/maps/NavigationRenderer;->updateOverlay(ILcom/google/glass/maps/opengl/TextureBitmap;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 705
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 706
    iget-boolean v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->isResumed:Z

    if-nez v0, :cond_0

    .line 756
    :goto_0
    return-void

    .line 709
    :cond_0
    sget-object v0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onPause"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 710
    iput-boolean v3, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->isResumed:Z

    .line 712
    invoke-static {}, Lcom/google/glass/android/location/LocationManagerProvider;->getInstance()Lcom/google/glass/android/location/LocationManagerProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/android/location/LocationManagerProvider;->get(Landroid/content/Context;)Landroid/location/LocationManager;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/location/LocationHelper;->canUseLocalGps(Landroid/location/LocationManager;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 713
    invoke-virtual {p0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->companionConnectionStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 716
    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->navRenderer:Lcom/google/glass/maps/NavigationRenderer;

    if-eqz v0, :cond_2

    .line 719
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->navRenderer:Lcom/google/glass/maps/NavigationRenderer;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationRenderer;->disableTileFadeIn()V

    .line 723
    :cond_2
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    sget v1, Lcom/google/glass/maps/R$id;->route_overview_pane:I

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationPaneManager;->isPaneShowing(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 724
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->closeRouteOverviewRunnable:Ljava/lang/Runnable;

    sget-wide v2, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->STANDARD_NOTIFICATION_WINDOW_MS:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 727
    :cond_3
    invoke-static {}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->getDirectionsManager()Lcom/google/glass/maps/DirectionsManager;

    move-result-object v1

    .line 728
    invoke-static {}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->getApplicationState()Lcom/google/glass/maps/NavigationApplicationState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationApplicationState;->isDirectionsMode()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 729
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationPaneManager;->getCurPane()Landroid/view/View;

    move-result-object v0

    .line 731
    if-nez v0, :cond_4

    .line 732
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->lastPane:Landroid/view/View;

    .line 735
    :cond_4
    instance-of v2, v0, Lcom/google/glass/maps/StepCardsView;

    if-eqz v2, :cond_7

    .line 736
    check-cast v0, Lcom/google/glass/maps/StepCardsView;

    invoke-virtual {v0}, Lcom/google/glass/maps/StepCardsView;->getSelectedItemPosition()I

    move-result v0

    .line 737
    invoke-virtual {v1, v0}, Lcom/google/glass/maps/DirectionsManager;->setCurrentStep(I)V

    .line 738
    invoke-virtual {v1}, Lcom/google/glass/maps/DirectionsManager;->onActivityPause()V

    .line 745
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->tmv:Lcom/google/glass/maps/directions/TransitMapView;

    if-eqz v0, :cond_6

    .line 746
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->tmv:Lcom/google/glass/maps/directions/TransitMapView;

    invoke-virtual {v0}, Lcom/google/glass/maps/directions/TransitMapView;->onPause()V

    .line 749
    :cond_6
    invoke-static {}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->getNavigationManager()Lcom/google/glass/maps/NavigationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/maps/NavigationManager;->removeUserInterface(Lcom/google/glass/maps/NavigationUserInterface;)V

    .line 752
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationPaneManager;->delayClearLoadingSlider()V

    .line 755
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->dontStayAwake()V

    goto/16 :goto_0

    .line 739
    :cond_7
    instance-of v0, v0, Lcom/google/glass/maps/directions/TransitMapView;

    if-eqz v0, :cond_5

    .line 741
    invoke-virtual {v1}, Lcom/google/glass/maps/DirectionsManager;->onActivityPause()V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 670
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 671
    iget-boolean v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->isResumed:Z

    if-eqz v0, :cond_1

    .line 702
    :cond_0
    :goto_0
    return-void

    .line 674
    :cond_1
    sget-object v0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onResume"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 675
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->isResumed:Z

    .line 677
    invoke-static {}, Lcom/google/glass/android/location/LocationManagerProvider;->getInstance()Lcom/google/glass/android/location/LocationManagerProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/android/location/LocationManagerProvider;->get(Landroid/content/Context;)Landroid/location/LocationManager;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/location/LocationHelper;->canUseLocalGps(Landroid/location/LocationManager;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 679
    invoke-virtual {p0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->companionConnectionStatusReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.google.glass.action.COMPANION_APP_CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 684
    :cond_2
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->closeRouteOverviewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 686
    invoke-static {}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->getNavigationManager()Lcom/google/glass/maps/NavigationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/maps/NavigationManager;->addUserInterface(Lcom/google/glass/maps/NavigationUserInterface;)V

    .line 688
    invoke-static {}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->getDirectionsManager()Lcom/google/glass/maps/DirectionsManager;

    move-result-object v0

    .line 689
    invoke-static {}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->getApplicationState()Lcom/google/glass/maps/NavigationApplicationState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/maps/NavigationApplicationState;->isDirectionsMode()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 690
    invoke-static {}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->getDirectionsManager()Lcom/google/glass/maps/DirectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/DirectionsManager;->onActivityResume()V

    .line 693
    :cond_3
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->tmv:Lcom/google/glass/maps/directions/TransitMapView;

    if-eqz v0, :cond_4

    .line 694
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->tmv:Lcom/google/glass/maps/directions/TransitMapView;

    invoke-virtual {v0}, Lcom/google/glass/maps/directions/TransitMapView;->onResume()V

    .line 697
    :cond_4
    invoke-virtual {p0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->onOverlayViewChanged()V

    .line 699
    invoke-virtual {p0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->shouldListenForGuardPhrase()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    invoke-virtual {p0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->listenForGuardPhraseIfNeeded()V

    goto :goto_0
.end method

.method public abstract publishCard(Landroid/content/Context;)V
.end method

.method public requestExit()V
    .locals 0

    .prologue
    .line 661
    invoke-virtual {p0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->unpublishCard()V

    .line 662
    return-void
.end method

.method public setCurrentLocation(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->viewManager:Lcom/google/glass/maps/NavigationViewManager;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/NavigationViewManager;->setCurrentLocation(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V

    .line 621
    invoke-virtual {p0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->onOverlayViewChanged()V

    .line 622
    return-void
.end method

.method setFatalErrorDialog(Lcom/google/glass/widget/MessageDialog;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->fatalErrorDialog:Lcom/google/glass/widget/MessageDialog;

    .line 243
    return-void
.end method

.method public setKeepScreenOn(Z)V
    .locals 0

    .prologue
    .line 667
    return-void
.end method

.method public setOrientation(Lcom/google/android/maps/driveabout/location/z;)V
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->viewManager:Lcom/google/glass/maps/NavigationViewManager;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/NavigationViewManager;->setOrientation(Lcom/google/android/maps/driveabout/location/z;)V

    .line 639
    invoke-virtual {p0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->onOverlayViewChanged()V

    .line 640
    return-void
.end method

.method public setRoutePolyline(Lcom/google/android/maps/driveabout/model/ag;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->viewManager:Lcom/google/glass/maps/NavigationViewManager;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/maps/NavigationViewManager;->setRoutePolyline(Lcom/google/android/maps/driveabout/model/ag;Ljava/util/List;)V

    .line 645
    invoke-virtual {p0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->onOverlayViewChanged()V

    .line 646
    return-void
.end method

.method public setTrafficIncidents(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->viewManager:Lcom/google/glass/maps/NavigationViewManager;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/NavigationViewManager;->setTrafficIncidents(Ljava/util/List;)V

    .line 651
    return-void
.end method

.method public setTravelModeIcon(I)V
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->viewManager:Lcom/google/glass/maps/NavigationViewManager;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/NavigationViewManager;->setTravelModeIcon(I)V

    .line 578
    invoke-virtual {p0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->onOverlayViewChanged()V

    .line 579
    return-void
.end method

.method public shouldListenForGuardPhrase()Z
    .locals 3

    .prologue
    .line 759
    invoke-static {}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->getNavigationManager()Lcom/google/glass/maps/NavigationManager;

    move-result-object v0

    .line 760
    invoke-static {}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->getDirectionsManager()Lcom/google/glass/maps/DirectionsManager;

    move-result-object v1

    .line 761
    if-eqz v0, :cond_0

    .line 762
    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationManager;->isRouteInProgress()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationManager;->isShowingRouteOverview()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    .line 764
    invoke-virtual {v1}, Lcom/google/glass/maps/DirectionsManager;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lcom/google/glass/maps/DirectionsManager;->isShowingRouteOverview()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showDestination(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->viewManager:Lcom/google/glass/maps/NavigationViewManager;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/NavigationViewManager;->showDestination(Ljava/lang/CharSequence;)V

    .line 434
    invoke-virtual {p0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->onOverlayViewChanged()V

    .line 435
    return-void
.end method

.method public showDestinations([Lcom/google/android/maps/driveabout/nav/ao;)V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$6;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$6;-><init>(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;[Lcom/google/android/maps/driveabout/nav/ao;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 390
    return-void
.end method

.method public showDirections(Lcom/google/glass/maps/directions/Trip;I)V
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->trip:Lcom/google/glass/maps/directions/Trip;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 462
    :goto_0
    if-eqz v0, :cond_0

    .line 463
    iput-object p1, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->trip:Lcom/google/glass/maps/directions/Trip;

    .line 464
    invoke-direct {p0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->showTransitMap()V

    .line 466
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->onOverlayViewChanged()V

    .line 467
    return-void

    .line 461
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showDistanceToStep(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->viewManager:Lcom/google/glass/maps/NavigationViewManager;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/NavigationViewManager;->showDistanceToStep(Ljava/lang/CharSequence;)V

    .line 428
    invoke-virtual {p0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->onOverlayViewChanged()V

    .line 429
    return-void
.end method

.method public showFatalError(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V
    .locals 7

    .prologue
    .line 588
    iget-object v6, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$9;

    move-object v1, p0

    move v2, p4

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$9;-><init>(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 607
    return-void
.end method

.method public showFatalError(Ljava/lang/CharSequence;Z)V
    .locals 2

    .prologue
    .line 583
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->showFatalError(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    .line 584
    return-void
.end method

.method public showLoadingMessage(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    sget v1, Lcom/google/glass/maps/R$id;->voice_result_pane:I

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationPaneManager;->isPaneShowing(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    :goto_0
    return-void

    .line 325
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->hideGuardPhrase()V

    .line 327
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    sget v1, Lcom/google/glass/maps/R$id;->loading_pane:I

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationPaneManager;->showPane(I)Landroid/view/View;

    move-result-object v1

    .line 328
    sget v0, Lcom/google/glass/maps/R$id;->loading_message:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 329
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    sget v0, Lcom/google/glass/maps/R$id;->info:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 333
    if-eqz p3, :cond_1

    .line 334
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 340
    :goto_1
    sget v0, Lcom/google/glass/maps/R$id;->loading_icon:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 341
    invoke-direct {p0, p1}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->getMenuIconResId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 342
    invoke-virtual {p0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->onOverlayViewChanged()V

    goto :goto_0

    .line 337
    :cond_1
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public showReroutingMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->viewManager:Lcom/google/glass/maps/NavigationViewManager;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/NavigationViewManager;->showReroutingMessage(Ljava/lang/CharSequence;)V

    .line 405
    invoke-virtual {p0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->onOverlayViewChanged()V

    .line 406
    return-void
.end method

.method public showRouteOverview()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 410
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/glass/maps/util/TravelModeUtils;->getTravelMode(Landroid/content/Context;)I

    move-result v0

    .line 411
    if-ne v0, v2, :cond_1

    .line 412
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->tmv:Lcom/google/glass/maps/directions/TransitMapView;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->viewManager:Lcom/google/glass/maps/NavigationViewManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationViewManager;->setTravelModeIcon(I)V

    .line 417
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->tmv:Lcom/google/glass/maps/directions/TransitMapView;

    invoke-virtual {v0, v2}, Lcom/google/glass/maps/directions/TransitMapView;->showRouteOverview(Z)V

    .line 422
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->onOverlayViewChanged()V

    .line 423
    return-void

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->viewManager:Lcom/google/glass/maps/NavigationViewManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationViewManager;->showRouteOverview()V

    goto :goto_0
.end method

.method public showRoutes([Lcom/google/android/maps/driveabout/nav/w;)V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$5;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$5;-><init>(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;[Lcom/google/android/maps/driveabout/nav/w;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 372
    return-void
.end method

.method public showStatus(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->viewManager:Lcom/google/glass/maps/NavigationViewManager;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/NavigationViewManager;->showStatus(Ljava/lang/CharSequence;)V

    .line 572
    invoke-virtual {p0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->onOverlayViewChanged()V

    .line 573
    return-void
.end method

.method public showStepInfo(Lcom/google/glass/maps/IconDescriptor;Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->fatalErrorDialog:Lcom/google/glass/widget/MessageDialog;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->companionErrorShowing:Z

    if-nez v0, :cond_0

    .line 395
    invoke-virtual {p0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->hideFatalError()V

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->viewManager:Lcom/google/glass/maps/NavigationViewManager;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/maps/NavigationViewManager;->showStepInfo(Lcom/google/glass/maps/IconDescriptor;Ljava/lang/CharSequence;)V

    .line 399
    invoke-virtual {p0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->onOverlayViewChanged()V

    .line 400
    return-void
.end method

.method public showTrips([Lcom/google/glass/maps/directions/Trip;)V
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    sget v1, Lcom/google/glass/maps/R$id;->loading_pane:I

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationPaneManager;->isPaneShowing(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationPaneManager;->hidePane()V

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$7;

    invoke-direct {v1, p0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$7;-><init>(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 454
    return-void
.end method

.method public stopNavigation(Z)V
    .locals 2

    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 511
    invoke-static {}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->getNavigationManager()Lcom/google/glass/maps/NavigationManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/glass/maps/NavigationManager;->stopNavigating(Z)V

    .line 512
    invoke-static {}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->getApplicationState()Lcom/google/glass/maps/NavigationApplicationState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/maps/NavigationApplicationState;->resetRouteInfo()V

    .line 513
    invoke-static {}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->getDirectionsManager()Lcom/google/glass/maps/DirectionsManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/glass/maps/DirectionsManager;->stopDirections(Z)V

    .line 514
    invoke-static {v0}, Lcom/google/glass/maps/NavigationService;->stopNavigation(Landroid/content/Context;)V

    .line 515
    return-void
.end method

.method public abstract unpublishCard()V
.end method
