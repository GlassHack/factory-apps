.class Lcom/google/android/gsf/login/NameCheckTask$1;
.super Lcom/google/android/gsf/login/CancelableCallbackThread;
.source "NameCheckTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/login/NameCheckTask;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/NameCheckTask;

.field final synthetic val$resultMessage:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/NameCheckTask;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Message;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/android/gsf/login/NameCheckTask$1;->this$0:Lcom/google/android/gsf/login/NameCheckTask;

    iput-object p3, p0, Lcom/google/android/gsf/login/NameCheckTask$1;->val$resultMessage:Landroid/os/Message;

    invoke-direct {p0, p2}, Lcom/google/android/gsf/login/CancelableCallbackThread;-><init>(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method protected runInBackground()V
    .locals 4

    .prologue
    .line 47
    iget-object v1, p0, Lcom/google/android/gsf/login/NameCheckTask$1;->this$0:Lcom/google/android/gsf/login/NameCheckTask;

    invoke-static {v1}, Lcom/google/android/gsf/login/NameCheckTask;->access$100(Lcom/google/android/gsf/login/NameCheckTask;)Lcom/google/android/gsf/loginservice/GLSHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/login/NameCheckTask$1;->this$0:Lcom/google/android/gsf/login/NameCheckTask;

    invoke-static {v2}, Lcom/google/android/gsf/login/NameCheckTask;->access$000(Lcom/google/android/gsf/login/NameCheckTask;)Lcom/google/android/gsf/loginservice/GLSSession;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gsf/loginservice/GLSHelper;->blockingCheckRealName(Lcom/google/android/gsf/loginservice/GLSSession;)Lcom/google/android/gms/auth/firstparty/shared/Status;

    move-result-object v0

    .line 48
    .local v0, "status":Lcom/google/android/gms/auth/firstparty/shared/Status;
    if-eqz v0, :cond_0

    .line 49
    invoke-static {v0}, Lcom/google/android/gsf/loginservice/StatusHelper;->get(Lcom/google/android/gms/auth/firstparty/shared/Status;)Lcom/google/android/gsf/loginservice/StatusHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/login/NameCheckTask$1;->val$resultMessage:Landroid/os/Message;

    invoke-virtual {v1, v2}, Lcom/google/android/gsf/loginservice/StatusHelper;->toMessage(Landroid/os/Message;)V

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/login/NameCheckTask$1;->mIsCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    .line 52
    iget-object v1, p0, Lcom/google/android/gsf/login/NameCheckTask$1;->this$0:Lcom/google/android/gsf/login/NameCheckTask;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gsf/login/NameCheckTask;->ensureDelay(J)V

    .line 54
    :cond_1
    return-void
.end method
