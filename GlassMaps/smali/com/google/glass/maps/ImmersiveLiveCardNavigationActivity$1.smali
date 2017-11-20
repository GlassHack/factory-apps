.class Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/maps/CardsView$CardsViewListener;


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity$1;->this$0:Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCardSelected(Lcom/google/android/maps/driveabout/nav/DataType;I)V
    .locals 2

    .prologue
    .line 79
    check-cast p1, Lcom/google/glass/maps/directions/Trip;

    .line 80
    invoke-static {}, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;->access$000()Lcom/google/glass/maps/NavigationApplicationState;

    move-result-object v0

    iget-object v1, p1, Lcom/google/glass/maps/directions/Trip;->destination:Lcom/google/android/maps/driveabout/nav/ao;

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationApplicationState;->setDestination(Lcom/google/android/maps/driveabout/nav/ao;)V

    .line 83
    invoke-static {}, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;->access$000()Lcom/google/glass/maps/NavigationApplicationState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationApplicationState;->isDirectionsMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;->access$100()Lcom/google/glass/maps/DirectionsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/DirectionsManager;->showDirections(Lcom/google/glass/maps/directions/Trip;)V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity$1;->this$0:Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;

    invoke-static {v0, p2}, Lcom/google/glass/maps/GlassUserEventLogger;->logSelectTrip(Landroid/content/Context;I)V

    .line 88
    iget-object v0, p0, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity$1;->this$0:Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;

    invoke-virtual {v0}, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;->finish()V

    .line 89
    return-void
.end method

.method public onSkipTimeout()V
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;->access$200()Lcom/google/glass/maps/NavigationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationManager;->skipDestinationTimeout()V

    .line 94
    return-void
.end method
