.class Lcom/google/glass/maps/BaseNavigationLiveCardHelper$LiveCardNavigationRenderer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/google/glass/maps/BaseNavigationLiveCardHelper$LiveCardNavigationRenderer;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/BaseNavigationLiveCardHelper$LiveCardNavigationRenderer;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$LiveCardNavigationRenderer$1;->this$1:Lcom/google/glass/maps/BaseNavigationLiveCardHelper$LiveCardNavigationRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$LiveCardNavigationRenderer$1;->this$1:Lcom/google/glass/maps/BaseNavigationLiveCardHelper$LiveCardNavigationRenderer;

    iget-object v0, v0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$LiveCardNavigationRenderer;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    iget-object v0, v0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->overlayView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isDirty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$LiveCardNavigationRenderer$1;->this$1:Lcom/google/glass/maps/BaseNavigationLiveCardHelper$LiveCardNavigationRenderer;

    iget-object v0, v0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$LiveCardNavigationRenderer;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    iget-object v0, v0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->overlayView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$LiveCardNavigationRenderer$1;->this$1:Lcom/google/glass/maps/BaseNavigationLiveCardHelper$LiveCardNavigationRenderer;

    iget-object v0, v0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$LiveCardNavigationRenderer;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-static {v0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->access$600(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;)Lcom/google/glass/maps/NavigationRenderer;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$LiveCardNavigationRenderer$1;->this$1:Lcom/google/glass/maps/BaseNavigationLiveCardHelper$LiveCardNavigationRenderer;

    iget-object v2, v2, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$LiveCardNavigationRenderer;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-static {v2}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->access$500(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;)Lcom/google/glass/maps/opengl/TextureBitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/maps/NavigationRenderer;->updateOverlay(ILcom/google/glass/maps/opengl/TextureBitmap;)V

    .line 162
    :goto_0
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$LiveCardNavigationRenderer$1;->this$1:Lcom/google/glass/maps/BaseNavigationLiveCardHelper$LiveCardNavigationRenderer;

    iget-object v0, v0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$LiveCardNavigationRenderer;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-static {v0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->access$700(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;)Lcom/google/glass/maps/NavigationViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationViewManager;->notifySurfaceCreated()V

    .line 163
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$LiveCardNavigationRenderer$1;->this$1:Lcom/google/glass/maps/BaseNavigationLiveCardHelper$LiveCardNavigationRenderer;

    iget-object v0, v0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$LiveCardNavigationRenderer;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-virtual {v0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->onOverlayViewChanged()V

    goto :goto_0
.end method
