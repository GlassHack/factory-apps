.class Lcom/google/glass/setup/BaseSetupActivity$3;
.super Ljava/lang/Object;
.source "BaseSetupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/setup/BaseSetupActivity;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/setup/BaseSetupActivity;

.field final synthetic val$errorTips:Ljava/lang/String;

.field final synthetic val$errorTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/setup/BaseSetupActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/setup/BaseSetupActivity;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/google/glass/setup/BaseSetupActivity$3;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    iput-object p2, p0, Lcom/google/glass/setup/BaseSetupActivity$3;->val$errorTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/glass/setup/BaseSetupActivity$3;->val$errorTips:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 327
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity$3;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    new-instance v1, Lcom/google/glass/widget/MessageDialog$Builder;

    iget-object v2, p0, Lcom/google/glass/setup/BaseSetupActivity$3;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    iget-object v3, p0, Lcom/google/glass/setup/BaseSetupActivity$3;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    invoke-virtual {v3}, Lcom/google/glass/setup/BaseSetupActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    iget-object v2, p0, Lcom/google/glass/setup/BaseSetupActivity$3;->val$errorTitle:Ljava/lang/String;

    .line 328
    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/setup/BaseSetupActivity$3;->val$errorTips:Ljava/lang/String;

    .line 329
    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setSecondaryMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    sget v2, Lcom/google/glass/setup/R$drawable;->ic_warning_150:I

    .line 330
    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 331
    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 332
    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setAutoHide(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    .line 333
    invoke-virtual {v1, v4}, Lcom/google/glass/widget/MessageDialog$Builder;->setKeepScreenOn(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    .line 334
    invoke-virtual {v1, v4}, Lcom/google/glass/widget/MessageDialog$Builder;->setExpanded(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    .line 335
    invoke-virtual {v1, v4}, Lcom/google/glass/widget/MessageDialog$Builder;->setHandleConfirm(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/glass/setup/BaseSetupActivity$3$1;

    invoke-direct {v2, p0}, Lcom/google/glass/setup/BaseSetupActivity$3$1;-><init>(Lcom/google/glass/setup/BaseSetupActivity$3;)V

    .line 336
    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    .line 357
    invoke-virtual {v1}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v1

    .line 327
    invoke-virtual {v0, v1}, Lcom/google/glass/setup/BaseSetupActivity;->showMessage(Lcom/google/glass/widget/MessageDialog;)V

    .line 358
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity$3;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    invoke-static {v0}, Lcom/google/glass/setup/BaseSetupActivity;->access$600(Lcom/google/glass/setup/BaseSetupActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 359
    return-void
.end method
