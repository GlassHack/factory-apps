.class Lcom/google/glass/maps/InitialLiveCardActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/InitialLiveCardActivity;

.field final synthetic val$errorMessage:Ljava/lang/CharSequence;

.field final synthetic val$isNetworkError:Z


# direct methods
.method constructor <init>(Lcom/google/glass/maps/InitialLiveCardActivity;Ljava/lang/CharSequence;Z)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Lcom/google/glass/maps/InitialLiveCardActivity$3;->this$0:Lcom/google/glass/maps/InitialLiveCardActivity;

    iput-object p2, p0, Lcom/google/glass/maps/InitialLiveCardActivity$3;->val$errorMessage:Ljava/lang/CharSequence;

    iput-boolean p3, p0, Lcom/google/glass/maps/InitialLiveCardActivity$3;->val$isNetworkError:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 443
    iget-object v0, p0, Lcom/google/glass/maps/InitialLiveCardActivity$3;->this$0:Lcom/google/glass/maps/InitialLiveCardActivity;

    iget-object v0, v0, Lcom/google/glass/maps/InitialLiveCardActivity;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationPaneManager;->hidePane()V

    .line 444
    iget-object v0, p0, Lcom/google/glass/maps/InitialLiveCardActivity$3;->this$0:Lcom/google/glass/maps/InitialLiveCardActivity;

    invoke-virtual {v0}, Lcom/google/glass/maps/InitialLiveCardActivity;->hideFatalError()V

    .line 445
    iget-object v1, p0, Lcom/google/glass/maps/InitialLiveCardActivity$3;->this$0:Lcom/google/glass/maps/InitialLiveCardActivity;

    new-instance v0, Lcom/google/glass/widget/MessageDialog$Builder;

    iget-object v2, p0, Lcom/google/glass/maps/InitialLiveCardActivity$3;->this$0:Lcom/google/glass/maps/InitialLiveCardActivity;

    iget-object v3, p0, Lcom/google/glass/maps/InitialLiveCardActivity$3;->this$0:Lcom/google/glass/maps/InitialLiveCardActivity;

    .line 446
    invoke-virtual {v3}, Lcom/google/glass/maps/InitialLiveCardActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    iget-object v2, p0, Lcom/google/glass/maps/InitialLiveCardActivity$3;->val$errorMessage:Ljava/lang/CharSequence;

    .line 447
    invoke-virtual {v0, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/google/glass/maps/InitialLiveCardActivity$3;->val$isNetworkError:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/google/glass/maps/R$drawable;->ic_cloud_sad_150:I

    .line 448
    :goto_0
    invoke-virtual {v2, v0}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 449
    invoke-virtual {v0, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 450
    invoke-virtual {v0, v4}, Lcom/google/glass/widget/MessageDialog$Builder;->setExpanded(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    const/4 v2, 0x0

    .line 451
    invoke-virtual {v0, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setAutoHide(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 452
    invoke-virtual {v0, v4}, Lcom/google/glass/widget/MessageDialog$Builder;->setHandleConfirm(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/google/glass/maps/InitialLiveCardActivity$3$1;

    invoke-direct {v2, p0}, Lcom/google/glass/maps/InitialLiveCardActivity$3$1;-><init>(Lcom/google/glass/maps/InitialLiveCardActivity$3;)V

    .line 453
    invoke-virtual {v0, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 469
    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    .line 445
    invoke-static {v1, v0}, Lcom/google/glass/maps/InitialLiveCardActivity;->access$202(Lcom/google/glass/maps/InitialLiveCardActivity;Lcom/google/glass/widget/MessageDialog;)Lcom/google/glass/widget/MessageDialog;

    .line 470
    iget-object v0, p0, Lcom/google/glass/maps/InitialLiveCardActivity$3;->this$0:Lcom/google/glass/maps/InitialLiveCardActivity;

    invoke-static {v0}, Lcom/google/glass/maps/InitialLiveCardActivity;->access$200(Lcom/google/glass/maps/InitialLiveCardActivity;)Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->show()V

    .line 471
    return-void

    .line 447
    :cond_0
    sget v0, Lcom/google/glass/maps/R$drawable;->ic_warning_150:I

    goto :goto_0
.end method
