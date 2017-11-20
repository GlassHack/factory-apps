.class Lcom/google/glass/logging/UserFeedbackActivity$1;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "UserFeedbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/logging/UserFeedbackActivity;->onConfirm()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/logging/UserFeedbackActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/logging/UserFeedbackActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/logging/UserFeedbackActivity;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/google/glass/logging/UserFeedbackActivity$1;->this$0:Lcom/google/glass/logging/UserFeedbackActivity;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed()V
    .locals 3

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity$1;->this$0:Lcom/google/glass/logging/UserFeedbackActivity;

    invoke-static {v0}, Lcom/google/glass/logging/UserFeedbackActivity;->access$000(Lcom/google/glass/logging/UserFeedbackActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Confirmation cancelled"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 315
    return-void
.end method

.method public onDone()V
    .locals 3

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity$1;->this$0:Lcom/google/glass/logging/UserFeedbackActivity;

    invoke-static {v0}, Lcom/google/glass/logging/UserFeedbackActivity;->access$000(Lcom/google/glass/logging/UserFeedbackActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Confirmation done"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    iget-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity$1;->this$0:Lcom/google/glass/logging/UserFeedbackActivity;

    invoke-virtual {v0}, Lcom/google/glass/logging/UserFeedbackActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 321
    sget-object v0, Lcom/google/glass/logging/UserFeedbackActivity$State;->SENT:Lcom/google/glass/logging/UserFeedbackActivity$State;

    iget-object v1, p0, Lcom/google/glass/logging/UserFeedbackActivity$1;->this$0:Lcom/google/glass/logging/UserFeedbackActivity;

    invoke-static {v1}, Lcom/google/glass/logging/UserFeedbackActivity;->access$100(Lcom/google/glass/logging/UserFeedbackActivity;)Lcom/google/glass/logging/UserFeedbackActivity$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/logging/UserFeedbackActivity$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity$1;->this$0:Lcom/google/glass/logging/UserFeedbackActivity;

    sget-object v1, Lcom/google/glass/logging/UserFeedbackActivity$State;->SENT:Lcom/google/glass/logging/UserFeedbackActivity$State;

    invoke-static {v0, v1}, Lcom/google/glass/logging/UserFeedbackActivity;->access$102(Lcom/google/glass/logging/UserFeedbackActivity;Lcom/google/glass/logging/UserFeedbackActivity$State;)Lcom/google/glass/logging/UserFeedbackActivity$State;

    .line 323
    iget-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity$1;->this$0:Lcom/google/glass/logging/UserFeedbackActivity;

    invoke-static {v0}, Lcom/google/glass/logging/UserFeedbackActivity;->access$200(Lcom/google/glass/logging/UserFeedbackActivity;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->USER_FEEDBACK_SENT:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 325
    invoke-static {}, Lcom/google/glass/logging/UserFeedbackActivity;->access$300()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/logging/UserFeedbackActivity$1$1;

    invoke-direct {v1, p0}, Lcom/google/glass/logging/UserFeedbackActivity$1$1;-><init>(Lcom/google/glass/logging/UserFeedbackActivity$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 352
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 353
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/logging/UserFeedbackActivity$1$2;

    invoke-direct {v1, p0}, Lcom/google/glass/logging/UserFeedbackActivity$1$2;-><init>(Lcom/google/glass/logging/UserFeedbackActivity$1;)V

    invoke-interface {v0, v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 360
    :cond_0
    return-void
.end method
