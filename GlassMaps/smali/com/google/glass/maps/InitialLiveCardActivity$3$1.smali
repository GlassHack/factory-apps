.class Lcom/google/glass/maps/InitialLiveCardActivity$3$1;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "SourceFile"


# instance fields
.field final synthetic this$1:Lcom/google/glass/maps/InitialLiveCardActivity$3;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/InitialLiveCardActivity$3;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/google/glass/maps/InitialLiveCardActivity$3$1;->this$1:Lcom/google/glass/maps/InitialLiveCardActivity$3;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/google/glass/maps/InitialLiveCardActivity$3$1;->this$1:Lcom/google/glass/maps/InitialLiveCardActivity$3;

    iget-object v0, v0, Lcom/google/glass/maps/InitialLiveCardActivity$3;->this$0:Lcom/google/glass/maps/InitialLiveCardActivity;

    iget-object v0, v0, Lcom/google/glass/maps/InitialLiveCardActivity;->navManager:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationManager;->isRouteInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    :goto_0
    return-void

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/InitialLiveCardActivity$3$1;->this$1:Lcom/google/glass/maps/InitialLiveCardActivity$3;

    iget-object v0, v0, Lcom/google/glass/maps/InitialLiveCardActivity$3;->this$0:Lcom/google/glass/maps/InitialLiveCardActivity;

    sget-object v1, Lcom/google/glass/input/InputListener$DismissAction;->OPTION_ITEM:Lcom/google/glass/input/InputListener$DismissAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/InitialLiveCardActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    goto :goto_0
.end method
