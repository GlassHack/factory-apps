.class Lcom/google/glass/maps/NavigationActivity$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/NavigationActivity;

.field final synthetic val$companionError:Z

.field final synthetic val$errorMessage:Ljava/lang/CharSequence;

.field final synthetic val$hintMessage:Ljava/lang/CharSequence;

.field final synthetic val$isNetworkError:Z


# direct methods
.method constructor <init>(Lcom/google/glass/maps/NavigationActivity;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Z)V
    .locals 0

    .prologue
    .line 918
    iput-object p1, p0, Lcom/google/glass/maps/NavigationActivity$12;->this$0:Lcom/google/glass/maps/NavigationActivity;

    iput-boolean p2, p0, Lcom/google/glass/maps/NavigationActivity$12;->val$companionError:Z

    iput-object p3, p0, Lcom/google/glass/maps/NavigationActivity$12;->val$errorMessage:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/google/glass/maps/NavigationActivity$12;->val$hintMessage:Ljava/lang/CharSequence;

    iput-boolean p5, p0, Lcom/google/glass/maps/NavigationActivity$12;->val$isNetworkError:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 921
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$12;->this$0:Lcom/google/glass/maps/NavigationActivity;

    iget-object v0, v0, Lcom/google/glass/maps/NavigationActivity;->applicationState:Lcom/google/glass/maps/NavigationApplicationState;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationApplicationState;->isDirectionsMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 924
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$12;->this$0:Lcom/google/glass/maps/NavigationActivity;

    iget-object v1, p0, Lcom/google/glass/maps/NavigationActivity$12;->this$0:Lcom/google/glass/maps/NavigationActivity;

    iget-object v1, v1, Lcom/google/glass/maps/NavigationActivity;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    invoke-virtual {v1}, Lcom/google/glass/maps/NavigationPaneManager;->getCurPane()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/maps/NavigationActivity;->access$202(Lcom/google/glass/maps/NavigationActivity;Landroid/view/View;)Landroid/view/View;

    .line 927
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$12;->this$0:Lcom/google/glass/maps/NavigationActivity;

    iget-object v0, v0, Lcom/google/glass/maps/NavigationActivity;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationPaneManager;->hidePane()V

    .line 928
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$12;->this$0:Lcom/google/glass/maps/NavigationActivity;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationActivity;->hideFatalError()V

    .line 929
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$12;->this$0:Lcom/google/glass/maps/NavigationActivity;

    iget-boolean v1, p0, Lcom/google/glass/maps/NavigationActivity$12;->val$companionError:Z

    invoke-static {v0, v1}, Lcom/google/glass/maps/NavigationActivity;->access$102(Lcom/google/glass/maps/NavigationActivity;Z)Z

    .line 931
    iget-object v1, p0, Lcom/google/glass/maps/NavigationActivity$12;->this$0:Lcom/google/glass/maps/NavigationActivity;

    new-instance v0, Lcom/google/glass/widget/MessageDialog$Builder;

    iget-object v2, p0, Lcom/google/glass/maps/NavigationActivity$12;->this$0:Lcom/google/glass/maps/NavigationActivity;

    iget-object v3, p0, Lcom/google/glass/maps/NavigationActivity$12;->this$0:Lcom/google/glass/maps/NavigationActivity;

    invoke-virtual {v3}, Lcom/google/glass/maps/NavigationActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    iget-object v2, p0, Lcom/google/glass/maps/NavigationActivity$12;->val$errorMessage:Ljava/lang/CharSequence;

    .line 932
    invoke-virtual {v0, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/glass/maps/NavigationActivity$12;->val$hintMessage:Ljava/lang/CharSequence;

    .line 933
    invoke-virtual {v0, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setSecondaryMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/google/glass/maps/NavigationActivity$12;->val$isNetworkError:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/google/glass/maps/R$drawable;->ic_cloud_sad_150:I

    .line 934
    :goto_0
    invoke-virtual {v2, v0}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 935
    invoke-virtual {v0, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 936
    invoke-virtual {v0, v4}, Lcom/google/glass/widget/MessageDialog$Builder;->setExpanded(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    const/4 v2, 0x0

    .line 937
    invoke-virtual {v0, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setAutoHide(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 938
    invoke-virtual {v0, v4}, Lcom/google/glass/widget/MessageDialog$Builder;->setHandleConfirm(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/google/glass/maps/NavigationActivity$12$1;

    invoke-direct {v2, p0}, Lcom/google/glass/maps/NavigationActivity$12$1;-><init>(Lcom/google/glass/maps/NavigationActivity$12;)V

    .line 939
    invoke-virtual {v0, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 955
    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    .line 931
    invoke-static {v1, v0}, Lcom/google/glass/maps/NavigationActivity;->access$702(Lcom/google/glass/maps/NavigationActivity;Lcom/google/glass/widget/MessageDialog;)Lcom/google/glass/widget/MessageDialog;

    .line 956
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$12;->this$0:Lcom/google/glass/maps/NavigationActivity;

    invoke-static {v0}, Lcom/google/glass/maps/NavigationActivity;->access$700(Lcom/google/glass/maps/NavigationActivity;)Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->show()V

    .line 957
    return-void

    .line 933
    :cond_1
    sget v0, Lcom/google/glass/maps/R$drawable;->ic_warning_150:I

    goto :goto_0
.end method
