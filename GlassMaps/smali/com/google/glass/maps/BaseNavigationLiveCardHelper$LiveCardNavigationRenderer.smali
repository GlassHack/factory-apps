.class Lcom/google/glass/maps/BaseNavigationLiveCardHelper$LiveCardNavigationRenderer;
.super Lcom/google/glass/maps/NavigationRenderer;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;


# direct methods
.method public constructor <init>(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 140
    iput-object p1, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$LiveCardNavigationRenderer;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    .line 142
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 143
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 141
    invoke-direct {p0, p2, v0, v1}, Lcom/google/glass/maps/NavigationRenderer;-><init>(Landroid/content/Context;II)V

    .line 144
    return-void
.end method


# virtual methods
.method public onSurfaceCreated(Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2

    .prologue
    .line 148
    invoke-super {p0, p1}, Lcom/google/glass/maps/NavigationRenderer;->onSurfaceCreated(Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 150
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$LiveCardNavigationRenderer;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-static {v0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->access$800(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$LiveCardNavigationRenderer$1;

    invoke-direct {v1, p0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$LiveCardNavigationRenderer$1;-><init>(Lcom/google/glass/maps/BaseNavigationLiveCardHelper$LiveCardNavigationRenderer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 165
    return-void
.end method
