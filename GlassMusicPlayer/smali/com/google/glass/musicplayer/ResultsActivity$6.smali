.class Lcom/google/glass/musicplayer/ResultsActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/musicplayer/ResultsActivity;

.field final synthetic val$bundle:Lcom/google/glass/musicplayer/cards/Card;


# direct methods
.method constructor <init>(Lcom/google/glass/musicplayer/ResultsActivity;Lcom/google/glass/musicplayer/cards/Card;)V
    .locals 0

    .prologue
    .line 605
    iput-object p1, p0, Lcom/google/glass/musicplayer/ResultsActivity$6;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    iput-object p2, p0, Lcom/google/glass/musicplayer/ResultsActivity$6;->val$bundle:Lcom/google/glass/musicplayer/cards/Card;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 609
    invoke-static {}, Lcom/google/glass/musicplayer/ResultsActivity;->access$000()Lcom/google/glass/musicplayer/BundleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/musicplayer/ResultsActivity$6;->val$bundle:Lcom/google/glass/musicplayer/cards/Card;

    invoke-virtual {v0, v1}, Lcom/google/glass/musicplayer/BundleManager;->getAutoplaySong(Lcom/google/glass/musicplayer/cards/Card;)Lcom/google/glass/musicplayer/cards/Song;

    move-result-object v0

    .line 610
    iget-object v1, p0, Lcom/google/glass/musicplayer/ResultsActivity$6;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    invoke-static {v1}, Lcom/google/glass/musicplayer/ResultsActivity;->access$1000(Lcom/google/glass/musicplayer/ResultsActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/musicplayer/ResultsActivity$6;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    invoke-static {v2}, Lcom/google/glass/musicplayer/ResultsActivity;->access$900(Lcom/google/glass/musicplayer/ResultsActivity;)Lcom/google/glass/musicplayer/ResultsActivity$LoadingTask;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 612
    iget-object v1, p0, Lcom/google/glass/musicplayer/ResultsActivity$6;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    invoke-static {v1}, Lcom/google/glass/musicplayer/ResultsActivity;->access$900(Lcom/google/glass/musicplayer/ResultsActivity;)Lcom/google/glass/musicplayer/ResultsActivity$LoadingTask;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 613
    iget-object v1, p0, Lcom/google/glass/musicplayer/ResultsActivity$6;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    invoke-static {v1}, Lcom/google/glass/musicplayer/ResultsActivity;->access$900(Lcom/google/glass/musicplayer/ResultsActivity;)Lcom/google/glass/musicplayer/ResultsActivity$LoadingTask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/musicplayer/ResultsActivity$LoadingTask;->dismiss()V

    .line 614
    iget-object v1, p0, Lcom/google/glass/musicplayer/ResultsActivity$6;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/glass/musicplayer/ResultsActivity;->access$902(Lcom/google/glass/musicplayer/ResultsActivity;Lcom/google/glass/musicplayer/ResultsActivity$LoadingTask;)Lcom/google/glass/musicplayer/ResultsActivity$LoadingTask;

    .line 617
    :cond_0
    if-nez v0, :cond_1

    .line 618
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity$6;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    invoke-static {v0}, Lcom/google/glass/musicplayer/ResultsActivity;->access$100(Lcom/google/glass/musicplayer/ResultsActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "No top song found for bundle %s"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/musicplayer/ResultsActivity$6;->val$bundle:Lcom/google/glass/musicplayer/cards/Card;

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 619
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity$6;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    sget v1, Lcom/google/glass/musicplayer/R$string;->error_autoplay_failed:I

    sget v2, Lcom/google/glass/musicplayer/R$string;->error_autoplay_failed_secondary:I

    const/4 v3, 0x7

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/glass/musicplayer/ResultsActivity;->access$1100(Lcom/google/glass/musicplayer/ResultsActivity;IIIZ)V

    .line 627
    :goto_0
    return-void

    .line 622
    :cond_1
    iget-object v1, p0, Lcom/google/glass/musicplayer/ResultsActivity$6;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    invoke-static {v1, v0, v3}, Lcom/google/glass/musicplayer/ResultsActivity;->access$1200(Lcom/google/glass/musicplayer/ResultsActivity;Lcom/google/glass/musicplayer/cards/Card;I)V

    .line 624
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity$6;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    invoke-static {v0}, Lcom/google/glass/musicplayer/ResultsActivity;->access$500(Lcom/google/glass/musicplayer/ResultsActivity;)V

    .line 625
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity$6;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    invoke-virtual {v0}, Lcom/google/glass/musicplayer/ResultsActivity;->finish()V

    goto :goto_0
.end method
