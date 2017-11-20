.class Lcom/google/glass/setup/BaseSetupActivity$3$1;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "BaseSetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/setup/BaseSetupActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/setup/BaseSetupActivity$3;


# direct methods
.method constructor <init>(Lcom/google/glass/setup/BaseSetupActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/setup/BaseSetupActivity$3;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/google/glass/setup/BaseSetupActivity$3$1;->this$1:Lcom/google/glass/setup/BaseSetupActivity$3;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirmed()Z
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity$3$1;->this$1:Lcom/google/glass/setup/BaseSetupActivity$3;

    iget-object v0, v0, Lcom/google/glass/setup/BaseSetupActivity$3;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    invoke-virtual {v0}, Lcom/google/glass/setup/BaseSetupActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 353
    invoke-virtual {p0}, Lcom/google/glass/setup/BaseSetupActivity$3$1;->onDone()V

    .line 354
    const/4 v0, 0x1

    return v0
.end method

.method public onDone()V
    .locals 3

    .prologue
    .line 339
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity$3$1;->this$1:Lcom/google/glass/setup/BaseSetupActivity$3;

    iget-object v0, v0, Lcom/google/glass/setup/BaseSetupActivity$3;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    invoke-virtual {v0}, Lcom/google/glass/setup/BaseSetupActivity;->isMessageShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity$3$1;->this$1:Lcom/google/glass/setup/BaseSetupActivity$3;

    iget-object v0, v0, Lcom/google/glass/setup/BaseSetupActivity$3;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    invoke-static {v0}, Lcom/google/glass/setup/BaseSetupActivity;->access$500(Lcom/google/glass/setup/BaseSetupActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity$3$1;->this$1:Lcom/google/glass/setup/BaseSetupActivity$3;

    iget-object v0, v0, Lcom/google/glass/setup/BaseSetupActivity$3;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    iget-object v0, v0, Lcom/google/glass/setup/BaseSetupActivity;->setupFlowController:Lcom/google/glass/setup/SetupFlowController;

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity$3$1;->this$1:Lcom/google/glass/setup/BaseSetupActivity$3;

    iget-object v0, v0, Lcom/google/glass/setup/BaseSetupActivity$3;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    iget-object v0, v0, Lcom/google/glass/setup/BaseSetupActivity;->setupFlowController:Lcom/google/glass/setup/SetupFlowController;

    sget-object v1, Lcom/google/glass/setup/SetupFlowController$State;->CHOOSE_PHONE:Lcom/google/glass/setup/SetupFlowController$State;

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$Transition;->POP_TO_CHOOSE_PHONE:Lcom/google/glass/setup/SetupFlowController$Transition;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/setup/SetupFlowController;->switchToState(Lcom/google/glass/setup/SetupFlowController$State;Lcom/google/glass/setup/SetupFlowController$Transition;)Z

    .line 348
    :cond_1
    return-void
.end method
