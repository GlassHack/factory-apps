.class Lcom/google/glass/setup/FastTrackEnablerTrap$1$1;
.super Ljava/lang/Object;
.source "FastTrackEnablerTrap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/setup/FastTrackEnablerTrap$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/setup/FastTrackEnablerTrap$1;


# direct methods
.method constructor <init>(Lcom/google/glass/setup/FastTrackEnablerTrap$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/setup/FastTrackEnablerTrap$1;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/google/glass/setup/FastTrackEnablerTrap$1$1;->this$1:Lcom/google/glass/setup/FastTrackEnablerTrap$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/glass/setup/FastTrackEnablerTrap$1$1;->this$1:Lcom/google/glass/setup/FastTrackEnablerTrap$1;

    iget-object v0, v0, Lcom/google/glass/setup/FastTrackEnablerTrap$1;->this$0:Lcom/google/glass/setup/FastTrackEnablerTrap;

    invoke-static {v0}, Lcom/google/glass/setup/FastTrackEnablerTrap;->access$000(Lcom/google/glass/setup/FastTrackEnablerTrap;)Lcom/google/glass/setup/SetupFlowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/setup/SetupFlowController;->getCurrentState()Lcom/google/glass/setup/SetupFlowController$State;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/setup/FastTrackEnablerTrap$1$1;->this$1:Lcom/google/glass/setup/FastTrackEnablerTrap$1;

    iget-object v1, v1, Lcom/google/glass/setup/FastTrackEnablerTrap$1;->val$currentState:Lcom/google/glass/setup/SetupFlowController$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/glass/setup/FastTrackEnablerTrap$1$1;->this$1:Lcom/google/glass/setup/FastTrackEnablerTrap$1;

    iget-object v0, v0, Lcom/google/glass/setup/FastTrackEnablerTrap$1;->this$0:Lcom/google/glass/setup/FastTrackEnablerTrap;

    .line 102
    invoke-static {v0}, Lcom/google/glass/setup/FastTrackEnablerTrap;->access$100(Lcom/google/glass/setup/FastTrackEnablerTrap;)Lcom/google/glass/setup/FastTrackEnablerTrap$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/setup/FastTrackEnablerTrap$Callback;->isSetupStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/google/glass/setup/FastTrackEnablerTrap$1$1;->this$1:Lcom/google/glass/setup/FastTrackEnablerTrap$1;

    iget-object v0, v0, Lcom/google/glass/setup/FastTrackEnablerTrap$1;->this$0:Lcom/google/glass/setup/FastTrackEnablerTrap;

    invoke-static {v0}, Lcom/google/glass/setup/FastTrackEnablerTrap;->access$100(Lcom/google/glass/setup/FastTrackEnablerTrap;)Lcom/google/glass/setup/FastTrackEnablerTrap$Callback;

    move-result-object v0

    sget-object v1, Lcom/google/glass/input/InputListener$DismissAction;->SWIPE_DOWN:Lcom/google/glass/input/InputListener$DismissAction;

    invoke-interface {v0, v1}, Lcom/google/glass/setup/FastTrackEnablerTrap$Callback;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    .line 105
    :cond_0
    return-void
.end method
