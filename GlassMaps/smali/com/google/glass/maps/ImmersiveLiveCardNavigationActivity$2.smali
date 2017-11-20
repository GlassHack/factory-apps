.class Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity$2;
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
    .line 104
    iput-object p1, p0, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity$2;->this$0:Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCardSelected(Lcom/google/android/maps/driveabout/nav/DataType;I)V
    .locals 3

    .prologue
    .line 107
    check-cast p1, Lcom/google/android/maps/driveabout/nav/ao;

    .line 108
    invoke-static {}, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;->access$000()Lcom/google/glass/maps/NavigationApplicationState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/NavigationApplicationState;->setDestination(Lcom/google/android/maps/driveabout/nav/ao;)V

    .line 110
    invoke-static {}, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;->access$000()Lcom/google/glass/maps/NavigationApplicationState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationApplicationState;->isDirectionsMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity$2;->this$0:Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;

    invoke-static {v0}, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;->access$300(Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;)Lcom/google/glass/maps/NavigationPaneManager;

    move-result-object v0

    sget v1, Lcom/google/glass/maps/R$id;->loading_pane_stub:I

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationPaneManager;->showPane(I)Landroid/view/View;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity$2;->this$0:Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;

    .line 114
    invoke-static {}, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;->access$000()Lcom/google/glass/maps/NavigationApplicationState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/maps/NavigationApplicationState;->getDestination()Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v1

    const/4 v2, 0x0

    .line 113
    invoke-static {v0, v1, v2}, Lcom/google/glass/maps/NavigationService;->restartNavService(Landroid/content/Context;Lcom/google/android/maps/driveabout/nav/ao;Z)V

    .line 116
    iget-object v0, p0, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity$2;->this$0:Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;

    invoke-static {v0, p2}, Lcom/google/glass/maps/GlassUserEventLogger;->logSelectRefinement(Landroid/content/Context;I)V

    .line 118
    iget-object v0, p0, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity$2;->this$0:Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;

    invoke-virtual {v0}, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;->finish()V

    .line 119
    return-void
.end method

.method public onSkipTimeout()V
    .locals 1

    .prologue
    .line 123
    invoke-static {}, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;->access$200()Lcom/google/glass/maps/NavigationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationManager;->skipDestinationTimeout()V

    .line 124
    return-void
.end method
