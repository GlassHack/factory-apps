.class Lcom/google/glass/musicplayer/ResultsActivity$LoadingTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private loadingScreen:Lcom/google/glass/widget/MessageDialog;

.field final synthetic this$0:Lcom/google/glass/musicplayer/ResultsActivity;


# direct methods
.method private constructor <init>(Lcom/google/glass/musicplayer/ResultsActivity;)V
    .locals 0

    .prologue
    .line 760
    iput-object p1, p0, Lcom/google/glass/musicplayer/ResultsActivity$LoadingTask;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/musicplayer/ResultsActivity;Lcom/google/glass/musicplayer/ResultsActivity$1;)V
    .locals 0

    .prologue
    .line 760
    invoke-direct {p0, p1}, Lcom/google/glass/musicplayer/ResultsActivity$LoadingTask;-><init>(Lcom/google/glass/musicplayer/ResultsActivity;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 783
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity$LoadingTask;->loadingScreen:Lcom/google/glass/widget/MessageDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity$LoadingTask;->loadingScreen:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity$LoadingTask;->loadingScreen:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->dismiss()V

    .line 786
    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 766
    new-instance v0, Lcom/google/glass/widget/MessageDialog$Builder;

    iget-object v1, p0, Lcom/google/glass/musicplayer/ResultsActivity$LoadingTask;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    iget-object v2, p0, Lcom/google/glass/musicplayer/ResultsActivity$LoadingTask;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    invoke-virtual {v2}, Lcom/google/glass/musicplayer/ResultsActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    sget v1, Lcom/google/glass/musicplayer/R$string;->loading:I

    .line 767
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 768
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setAutoHide(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 769
    invoke-virtual {v0, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setKeepScreenOn(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 770
    invoke-virtual {v0, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setShowProgress(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/glass/musicplayer/ResultsActivity$LoadingTask$1;

    invoke-direct {v1, p0}, Lcom/google/glass/musicplayer/ResultsActivity$LoadingTask$1;-><init>(Lcom/google/glass/musicplayer/ResultsActivity$LoadingTask;)V

    .line 771
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 778
    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity$LoadingTask;->loadingScreen:Lcom/google/glass/widget/MessageDialog;

    .line 779
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity$LoadingTask;->loadingScreen:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->show()V

    .line 780
    return-void
.end method
