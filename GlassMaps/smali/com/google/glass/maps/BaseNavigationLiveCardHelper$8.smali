.class Lcom/google/glass/maps/BaseNavigationLiveCardHelper$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;)V
    .locals 0

    .prologue
    .line 470
    iput-object p1, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$8;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 473
    invoke-static {}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->access$1100()Lcom/google/glass/maps/DirectionsManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/DirectionsManager;->setCurrentStep(I)V

    .line 474
    iget-object v1, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$8;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$8;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-static {v0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->access$300(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;)Lcom/google/glass/maps/NavigationPaneManager;

    move-result-object v0

    sget v2, Lcom/google/glass/maps/R$id;->transit_map_pane:I

    invoke-virtual {v0, v2}, Lcom/google/glass/maps/NavigationPaneManager;->showPane(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/directions/TransitMapView;

    invoke-static {v1, v0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->access$1202(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;Lcom/google/glass/maps/directions/TransitMapView;)Lcom/google/glass/maps/directions/TransitMapView;

    .line 478
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$8;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-static {v0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->access$1200(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;)Lcom/google/glass/maps/directions/TransitMapView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$8;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-static {v0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->access$1200(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;)Lcom/google/glass/maps/directions/TransitMapView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/directions/TransitMapView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 480
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$8;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-static {v0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->access$1200(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;)Lcom/google/glass/maps/directions/TransitMapView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$8;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-static {v1}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->access$1300(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;)Lcom/google/glass/maps/directions/Trip;

    move-result-object v1

    invoke-static {}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->access$1100()Lcom/google/glass/maps/DirectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/maps/DirectionsManager;->getLocationManager()Lcom/google/glass/location/LocationManagerHelper;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/maps/directions/TransitMapView;->start(Lcom/google/glass/maps/directions/Trip;Lcom/google/glass/location/LocationManagerHelper;)V

    .line 486
    :cond_0
    invoke-static {}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->access$1100()Lcom/google/glass/maps/DirectionsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$8;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-static {v1}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->access$1200(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;)Lcom/google/glass/maps/directions/TransitMapView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/DirectionsManager;->setTransitMapView(Lcom/google/glass/maps/directions/TransitMapView;)V

    .line 489
    invoke-static {}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->access$1100()Lcom/google/glass/maps/DirectionsManager;

    move-result-object v0

    new-instance v1, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$8$1;

    invoke-direct {v1, p0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$8$1;-><init>(Lcom/google/glass/maps/BaseNavigationLiveCardHelper$8;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/DirectionsManager;->setDirectionsDestinationCallback(Lcom/google/glass/maps/DirectionsManager$DestinationCallback;)V

    .line 501
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$8;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-virtual {v0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->onOverlayViewChanged()V

    .line 502
    return-void
.end method
