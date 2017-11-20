.class Lcom/google/glass/maps/InitialLiveCardActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/maps/CardsView$CardsViewListener;


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/InitialLiveCardActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/InitialLiveCardActivity;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/google/glass/maps/InitialLiveCardActivity$2;->this$0:Lcom/google/glass/maps/InitialLiveCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCardSelected(Lcom/google/android/maps/driveabout/nav/DataType;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 344
    iget-object v0, p0, Lcom/google/glass/maps/InitialLiveCardActivity$2;->this$0:Lcom/google/glass/maps/InitialLiveCardActivity;

    invoke-static {v0}, Lcom/google/glass/maps/InitialLiveCardActivity;->access$100(Lcom/google/glass/maps/InitialLiveCardActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Destination is selected from cards view."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 345
    check-cast p1, Lcom/google/android/maps/driveabout/nav/ao;

    .line 346
    iget-object v0, p0, Lcom/google/glass/maps/InitialLiveCardActivity$2;->this$0:Lcom/google/glass/maps/InitialLiveCardActivity;

    iget-object v0, v0, Lcom/google/glass/maps/InitialLiveCardActivity;->applicationState:Lcom/google/glass/maps/NavigationApplicationState;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/NavigationApplicationState;->setDestination(Lcom/google/android/maps/driveabout/nav/ao;)V

    .line 348
    iget-object v0, p0, Lcom/google/glass/maps/InitialLiveCardActivity$2;->this$0:Lcom/google/glass/maps/InitialLiveCardActivity;

    iget-object v0, v0, Lcom/google/glass/maps/InitialLiveCardActivity;->applicationState:Lcom/google/glass/maps/NavigationApplicationState;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationApplicationState;->isDirectionsMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/google/glass/maps/InitialLiveCardActivity$2;->this$0:Lcom/google/glass/maps/InitialLiveCardActivity;

    iget-object v0, v0, Lcom/google/glass/maps/InitialLiveCardActivity;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    sget v1, Lcom/google/glass/maps/R$id;->loading_pane_stub:I

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationPaneManager;->showPane(I)Landroid/view/View;

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/InitialLiveCardActivity$2;->this$0:Lcom/google/glass/maps/InitialLiveCardActivity;

    iget-object v0, v0, Lcom/google/glass/maps/InitialLiveCardActivity;->navManager:Lcom/google/glass/maps/NavigationManager;

    iget-object v1, p0, Lcom/google/glass/maps/InitialLiveCardActivity$2;->this$0:Lcom/google/glass/maps/InitialLiveCardActivity;

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationManager;->removeUserInterface(Lcom/google/glass/maps/NavigationUserInterface;)V

    .line 355
    iget-object v0, p0, Lcom/google/glass/maps/InitialLiveCardActivity$2;->this$0:Lcom/google/glass/maps/InitialLiveCardActivity;

    invoke-virtual {v0}, Lcom/google/glass/maps/InitialLiveCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/InitialLiveCardActivity$2;->this$0:Lcom/google/glass/maps/InitialLiveCardActivity;

    iget-object v1, v1, Lcom/google/glass/maps/InitialLiveCardActivity;->applicationState:Lcom/google/glass/maps/NavigationApplicationState;

    .line 356
    invoke-virtual {v1}, Lcom/google/glass/maps/NavigationApplicationState;->getDestination()Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v1

    .line 355
    invoke-static {v0, v1, v3}, Lcom/google/glass/maps/NavigationService;->restartNavService(Landroid/content/Context;Lcom/google/android/maps/driveabout/nav/ao;Z)V

    .line 358
    iget-object v0, p0, Lcom/google/glass/maps/InitialLiveCardActivity$2;->this$0:Lcom/google/glass/maps/InitialLiveCardActivity;

    invoke-static {v0, p2}, Lcom/google/glass/maps/GlassUserEventLogger;->logSelectRefinement(Landroid/content/Context;I)V

    .line 362
    iget-object v0, p0, Lcom/google/glass/maps/InitialLiveCardActivity$2;->this$0:Lcom/google/glass/maps/InitialLiveCardActivity;

    invoke-static {v0}, Lcom/google/glass/maps/InitialLiveCardActivity;->access$100(Lcom/google/glass/maps/InitialLiveCardActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Finishing this initial activity. Live card will be published soon."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 363
    iget-object v0, p0, Lcom/google/glass/maps/InitialLiveCardActivity$2;->this$0:Lcom/google/glass/maps/InitialLiveCardActivity;

    invoke-virtual {v0}, Lcom/google/glass/maps/InitialLiveCardActivity;->finish()V

    .line 364
    return-void
.end method

.method public onSkipTimeout()V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/glass/maps/InitialLiveCardActivity$2;->this$0:Lcom/google/glass/maps/InitialLiveCardActivity;

    iget-object v0, v0, Lcom/google/glass/maps/InitialLiveCardActivity;->navManager:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationManager;->skipDestinationTimeout()V

    .line 369
    return-void
.end method
