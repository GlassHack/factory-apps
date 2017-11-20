.class Lcom/google/glass/setup/SetupFlowController$4;
.super Ljava/lang/Object;
.source "SetupFlowController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/setup/SetupFlowController;->switchToState(Lcom/google/glass/setup/SetupFlowController$State;Lcom/google/glass/setup/SetupFlowController$Transition;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/setup/SetupFlowController;


# direct methods
.method constructor <init>(Lcom/google/glass/setup/SetupFlowController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/setup/SetupFlowController;

    .prologue
    .line 469
    iput-object p1, p0, Lcom/google/glass/setup/SetupFlowController$4;->this$0:Lcom/google/glass/setup/SetupFlowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 472
    iget-object v0, p0, Lcom/google/glass/setup/SetupFlowController$4;->this$0:Lcom/google/glass/setup/SetupFlowController;

    sget-object v1, Lcom/google/glass/setup/SetupFlowController$State;->IOS_DOWNLOAD_MYGLASS:Lcom/google/glass/setup/SetupFlowController$State;

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$Transition;->PUSH:Lcom/google/glass/setup/SetupFlowController$Transition;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/setup/SetupFlowController;->switchToState(Lcom/google/glass/setup/SetupFlowController$State;Lcom/google/glass/setup/SetupFlowController$Transition;)Z

    .line 473
    return-void
.end method
