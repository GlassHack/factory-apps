.class Lcom/google/glass/maps/NavigationActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/NavigationActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/NavigationActivity;)V
    .locals 0

    .prologue
    .line 763
    iput-object p1, p0, Lcom/google/glass/maps/NavigationActivity$7;->this$0:Lcom/google/glass/maps/NavigationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 766
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$7;->this$0:Lcom/google/glass/maps/NavigationActivity;

    iget-object v0, v0, Lcom/google/glass/maps/NavigationActivity;->dirManager:Lcom/google/glass/maps/DirectionsManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/DirectionsManager;->setCurrentStep(I)V

    .line 767
    iget-object v1, p0, Lcom/google/glass/maps/NavigationActivity$7;->this$0:Lcom/google/glass/maps/NavigationActivity;

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$7;->this$0:Lcom/google/glass/maps/NavigationActivity;

    iget-object v0, v0, Lcom/google/glass/maps/NavigationActivity;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    sget v2, Lcom/google/glass/maps/R$id;->transit_map_pane:I

    invoke-virtual {v0, v2}, Lcom/google/glass/maps/NavigationPaneManager;->showPane(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/directions/TransitMapView;

    iput-object v0, v1, Lcom/google/glass/maps/NavigationActivity;->tmv:Lcom/google/glass/maps/directions/TransitMapView;

    .line 771
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$7;->this$0:Lcom/google/glass/maps/NavigationActivity;

    iget-object v0, v0, Lcom/google/glass/maps/NavigationActivity;->tmv:Lcom/google/glass/maps/directions/TransitMapView;

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$7;->this$0:Lcom/google/glass/maps/NavigationActivity;

    iget-object v0, v0, Lcom/google/glass/maps/NavigationActivity;->tmv:Lcom/google/glass/maps/directions/TransitMapView;

    iget-object v1, p0, Lcom/google/glass/maps/NavigationActivity$7;->this$0:Lcom/google/glass/maps/NavigationActivity;

    invoke-static {v1}, Lcom/google/glass/maps/NavigationActivity;->access$300(Lcom/google/glass/maps/NavigationActivity;)Lcom/google/glass/maps/directions/Trip;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/maps/NavigationActivity$7;->this$0:Lcom/google/glass/maps/NavigationActivity;

    iget-object v2, v2, Lcom/google/glass/maps/NavigationActivity;->dirManager:Lcom/google/glass/maps/DirectionsManager;

    invoke-virtual {v2}, Lcom/google/glass/maps/DirectionsManager;->getLocationManager()Lcom/google/glass/location/LocationManagerHelper;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/maps/directions/TransitMapView;->start(Lcom/google/glass/maps/directions/Trip;Lcom/google/glass/location/LocationManagerHelper;)V

    .line 774
    :cond_0
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$7;->this$0:Lcom/google/glass/maps/NavigationActivity;

    invoke-static {v0}, Lcom/google/glass/maps/NavigationActivity;->access$400(Lcom/google/glass/maps/NavigationActivity;)Landroid/opengl/GLSurfaceView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 775
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$7;->this$0:Lcom/google/glass/maps/NavigationActivity;

    invoke-static {v0}, Lcom/google/glass/maps/NavigationActivity;->access$400(Lcom/google/glass/maps/NavigationActivity;)Landroid/opengl/GLSurfaceView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    .line 779
    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$7;->this$0:Lcom/google/glass/maps/NavigationActivity;

    iget-object v0, v0, Lcom/google/glass/maps/NavigationActivity;->dirManager:Lcom/google/glass/maps/DirectionsManager;

    iget-object v1, p0, Lcom/google/glass/maps/NavigationActivity$7;->this$0:Lcom/google/glass/maps/NavigationActivity;

    iget-object v1, v1, Lcom/google/glass/maps/NavigationActivity;->tmv:Lcom/google/glass/maps/directions/TransitMapView;

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/DirectionsManager;->setTransitMapView(Lcom/google/glass/maps/directions/TransitMapView;)V

    .line 781
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$7;->this$0:Lcom/google/glass/maps/NavigationActivity;

    iget-object v0, v0, Lcom/google/glass/maps/NavigationActivity;->dirManager:Lcom/google/glass/maps/DirectionsManager;

    new-instance v1, Lcom/google/glass/maps/NavigationActivity$7$1;

    invoke-direct {v1, p0}, Lcom/google/glass/maps/NavigationActivity$7$1;-><init>(Lcom/google/glass/maps/NavigationActivity$7;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/DirectionsManager;->setDirectionsDestinationCallback(Lcom/google/glass/maps/DirectionsManager$DestinationCallback;)V

    .line 792
    return-void
.end method
