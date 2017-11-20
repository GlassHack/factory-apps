.class public Lcom/google/glass/maps/NowTownNavigationRenderingService;
.super Lcom/google/android/glass/app/DirectRenderingService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/google/android/glass/app/DirectRenderingService;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 5

    .prologue
    .line 13
    invoke-super {p0}, Lcom/google/android/glass/app/DirectRenderingService;->onCreate()V

    .line 15
    invoke-static {p0}, Lcom/google/glass/maps/NavigationApplicationState;->initialize(Landroid/content/Context;)V

    .line 16
    invoke-static {}, Lcom/google/glass/maps/NavigationApplicationState;->getInstance()Lcom/google/glass/maps/NavigationApplicationState;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationApplicationState;->getLiveCardHelper()Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->getRenderer()Lcom/google/glass/maps/NavigationRenderer;

    move-result-object v0

    .line 19
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationRenderer;->setThrottleFrameRate(Z)V

    .line 23
    new-instance v1, Landroid/view/TextureView;

    invoke-direct {v1, p0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 25
    invoke-virtual {p0}, Lcom/google/glass/maps/NowTownNavigationRenderingService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 26
    invoke-virtual {p0}, Lcom/google/glass/maps/NowTownNavigationRenderingService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 24
    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    new-instance v2, Lcom/google/glass/maps/GlRenderingEngine;

    invoke-direct {v2, v0}, Lcom/google/glass/maps/GlRenderingEngine;-><init>(Lcom/google/android/glass/timeline/GlRenderer;)V

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 28
    invoke-virtual {p0, v1}, Lcom/google/glass/maps/NowTownNavigationRenderingService;->setView(Landroid/view/View;)V

    .line 29
    return-void
.end method
