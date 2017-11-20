.class Lcom/google/glass/setup/FastTrackEnablerTrap$1;
.super Ljava/lang/Object;
.source "FastTrackEnablerTrap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/setup/FastTrackEnablerTrap;->addDismissTimer(JLcom/google/glass/setup/SetupFlowController$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private autoDismiss:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/google/glass/setup/FastTrackEnablerTrap;

.field final synthetic val$currentState:Lcom/google/glass/setup/SetupFlowController$State;


# direct methods
.method constructor <init>(Lcom/google/glass/setup/FastTrackEnablerTrap;Lcom/google/glass/setup/SetupFlowController$State;)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/glass/setup/FastTrackEnablerTrap;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/glass/setup/FastTrackEnablerTrap$1;->this$0:Lcom/google/glass/setup/FastTrackEnablerTrap;

    iput-object p2, p0, Lcom/google/glass/setup/FastTrackEnablerTrap$1;->val$currentState:Lcom/google/glass/setup/SetupFlowController$State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Lcom/google/glass/setup/FastTrackEnablerTrap$1$1;

    invoke-direct {v0, p0}, Lcom/google/glass/setup/FastTrackEnablerTrap$1$1;-><init>(Lcom/google/glass/setup/FastTrackEnablerTrap$1;)V

    iput-object v0, p0, Lcom/google/glass/setup/FastTrackEnablerTrap$1;->autoDismiss:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/glass/setup/FastTrackEnablerTrap$1;->this$0:Lcom/google/glass/setup/FastTrackEnablerTrap;

    invoke-static {v0}, Lcom/google/glass/setup/FastTrackEnablerTrap;->access$100(Lcom/google/glass/setup/FastTrackEnablerTrap;)Lcom/google/glass/setup/FastTrackEnablerTrap$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/setup/FastTrackEnablerTrap$1;->autoDismiss:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/google/glass/setup/FastTrackEnablerTrap$Callback;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 111
    return-void
.end method
