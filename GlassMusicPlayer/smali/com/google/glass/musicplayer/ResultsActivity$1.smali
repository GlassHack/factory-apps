.class Lcom/google/glass/musicplayer/ResultsActivity$1;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/musicplayer/ResultsActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/musicplayer/ResultsActivity;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/glass/musicplayer/ResultsActivity$1;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 124
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 137
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity$1;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    invoke-static {v0}, Lcom/google/glass/musicplayer/ResultsActivity;->access$100(Lcom/google/glass/musicplayer/ResultsActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Unexpected handler message type=%d found. Not processing message."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    :goto_0
    return-void

    .line 128
    :pswitch_0
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 129
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/musicplayer/ResultsActivity$1$1;

    invoke-direct {v1, p0}, Lcom/google/glass/musicplayer/ResultsActivity$1$1;-><init>(Lcom/google/glass/musicplayer/ResultsActivity$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
