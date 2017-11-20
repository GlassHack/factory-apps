.class Lcom/google/glass/maps/NavigationActivity$11;
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
    .line 849
    iput-object p1, p0, Lcom/google/glass/maps/NavigationActivity$11;->this$0:Lcom/google/glass/maps/NavigationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCardSelected(Lcom/google/android/maps/driveabout/nav/DataType;I)V
    .locals 3

    .prologue
    .line 852
    check-cast p1, Lcom/google/android/maps/driveabout/nav/ao;

    .line 853
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$11;->this$0:Lcom/google/glass/maps/NavigationActivity;

    iget-object v0, v0, Lcom/google/glass/maps/NavigationActivity;->applicationState:Lcom/google/glass/maps/NavigationApplicationState;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/NavigationApplicationState;->setDestination(Lcom/google/android/maps/driveabout/nav/ao;)V

    .line 855
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$11;->this$0:Lcom/google/glass/maps/NavigationActivity;

    iget-object v0, v0, Lcom/google/glass/maps/NavigationActivity;->applicationState:Lcom/google/glass/maps/NavigationApplicationState;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationApplicationState;->isDirectionsMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$11;->this$0:Lcom/google/glass/maps/NavigationActivity;

    iget-object v0, v0, Lcom/google/glass/maps/NavigationActivity;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    sget v1, Lcom/google/glass/maps/R$id;->loading_pane_stub:I

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationPaneManager;->showPane(I)Landroid/view/View;

    .line 858
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$11;->this$0:Lcom/google/glass/maps/NavigationActivity;

    iget-object v1, p0, Lcom/google/glass/maps/NavigationActivity$11;->this$0:Lcom/google/glass/maps/NavigationActivity;

    iget-object v1, v1, Lcom/google/glass/maps/NavigationActivity;->applicationState:Lcom/google/glass/maps/NavigationApplicationState;

    .line 859
    invoke-virtual {v1}, Lcom/google/glass/maps/NavigationApplicationState;->getDestination()Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v1

    const/4 v2, 0x0

    .line 858
    invoke-static {v0, v1, v2}, Lcom/google/glass/maps/NavigationService;->restartNavService(Landroid/content/Context;Lcom/google/android/maps/driveabout/nav/ao;Z)V

    .line 861
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$11;->this$0:Lcom/google/glass/maps/NavigationActivity;

    invoke-static {v0, p2}, Lcom/google/glass/maps/GlassUserEventLogger;->logSelectRefinement(Landroid/content/Context;I)V

    .line 862
    return-void
.end method

.method public onSkipTimeout()V
    .locals 1

    .prologue
    .line 866
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$11;->this$0:Lcom/google/glass/maps/NavigationActivity;

    iget-object v0, v0, Lcom/google/glass/maps/NavigationActivity;->navManager:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationManager;->skipDestinationTimeout()V

    .line 867
    return-void
.end method
