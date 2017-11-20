.class Lcom/google/glass/maps/NavigationActivity$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/maps/CardsView$CardsViewListener;


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/NavigationActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/NavigationActivity;)V
    .locals 0

    .prologue
    .line 811
    iput-object p1, p0, Lcom/google/glass/maps/NavigationActivity$9;->this$0:Lcom/google/glass/maps/NavigationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCardSelected(Lcom/google/android/maps/driveabout/nav/DataType;I)V
    .locals 2

    .prologue
    .line 814
    check-cast p1, Lcom/google/glass/maps/directions/Trip;

    .line 815
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$9;->this$0:Lcom/google/glass/maps/NavigationActivity;

    iget-object v0, v0, Lcom/google/glass/maps/NavigationActivity;->applicationState:Lcom/google/glass/maps/NavigationApplicationState;

    iget-object v1, p1, Lcom/google/glass/maps/directions/Trip;->destination:Lcom/google/android/maps/driveabout/nav/ao;

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationApplicationState;->setDestination(Lcom/google/android/maps/driveabout/nav/ao;)V

    .line 818
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$9;->this$0:Lcom/google/glass/maps/NavigationActivity;

    iget-object v0, v0, Lcom/google/glass/maps/NavigationActivity;->applicationState:Lcom/google/glass/maps/NavigationApplicationState;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationApplicationState;->isDirectionsMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$9;->this$0:Lcom/google/glass/maps/NavigationActivity;

    iget-object v0, v0, Lcom/google/glass/maps/NavigationActivity;->dirManager:Lcom/google/glass/maps/DirectionsManager;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/DirectionsManager;->showDirections(Lcom/google/glass/maps/directions/Trip;)V

    .line 822
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$9;->this$0:Lcom/google/glass/maps/NavigationActivity;

    invoke-static {v0, p2}, Lcom/google/glass/maps/GlassUserEventLogger;->logSelectTrip(Landroid/content/Context;I)V

    .line 823
    return-void
.end method

.method public onSkipTimeout()V
    .locals 1

    .prologue
    .line 827
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$9;->this$0:Lcom/google/glass/maps/NavigationActivity;

    iget-object v0, v0, Lcom/google/glass/maps/NavigationActivity;->navManager:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationManager;->skipDestinationTimeout()V

    .line 828
    return-void
.end method
