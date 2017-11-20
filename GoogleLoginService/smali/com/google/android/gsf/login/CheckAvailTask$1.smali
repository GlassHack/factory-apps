.class Lcom/google/android/gsf/login/CheckAvailTask$1;
.super Lcom/google/android/gsf/login/CancelableCallbackThread;
.source "CheckAvailTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/login/CheckAvailTask;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/CheckAvailTask;

.field final synthetic val$resultMessage:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/CheckAvailTask;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Message;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/google/android/gsf/login/CheckAvailTask$1;->this$0:Lcom/google/android/gsf/login/CheckAvailTask;

    iput-object p3, p0, Lcom/google/android/gsf/login/CheckAvailTask$1;->val$resultMessage:Landroid/os/Message;

    invoke-direct {p0, p2}, Lcom/google/android/gsf/login/CancelableCallbackThread;-><init>(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method protected runInBackground()V
    .locals 5

    .prologue
    .line 60
    iget-object v2, p0, Lcom/google/android/gsf/login/CheckAvailTask$1;->this$0:Lcom/google/android/gsf/login/CheckAvailTask;

    invoke-static {v2}, Lcom/google/android/gsf/login/CheckAvailTask;->access$100(Lcom/google/android/gsf/login/CheckAvailTask;)Lcom/google/android/gsf/loginservice/GLSHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gsf/login/CheckAvailTask$1;->this$0:Lcom/google/android/gsf/login/CheckAvailTask;

    invoke-static {v3}, Lcom/google/android/gsf/login/CheckAvailTask;->access$000(Lcom/google/android/gsf/login/CheckAvailTask;)Lcom/google/android/gsf/loginservice/GLSSession;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gsf/loginservice/GLSHelper;->blockingCheckAccountName(Lcom/google/android/gsf/loginservice/GLSSession;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;

    move-result-object v0

    .line 61
    .local v0, "res":Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;
    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;->getStatus()Lcom/google/android/gms/auth/firstparty/shared/Status;

    move-result-object v1

    .line 62
    .local v1, "status":Lcom/google/android/gms/auth/firstparty/shared/Status;
    iget-object v2, p0, Lcom/google/android/gsf/login/CheckAvailTask$1;->this$0:Lcom/google/android/gsf/login/CheckAvailTask;

    invoke-static {v2}, Lcom/google/android/gsf/login/CheckAvailTask;->access$200(Lcom/google/android/gsf/login/CheckAvailTask;)Lcom/google/android/gsf/loginservice/GLSSession;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;->getAccountNameSuggestions()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Lcom/google/android/gsf/loginservice/GLSSession;->mAccountNameSuggestions:Ljava/util/ArrayList;

    .line 64
    iget-object v2, p0, Lcom/google/android/gsf/login/CheckAvailTask$1;->this$0:Lcom/google/android/gsf/login/CheckAvailTask;

    invoke-static {v2}, Lcom/google/android/gsf/login/CheckAvailTask;->access$300(Lcom/google/android/gsf/login/CheckAvailTask;)Lcom/google/android/gsf/loginservice/GLSSession;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;->getDetail()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gsf/loginservice/GLSSession;->mAccountNameCheckDetail:Ljava/lang/String;

    .line 66
    iget-object v2, p0, Lcom/google/android/gsf/login/CheckAvailTask$1;->this$0:Lcom/google/android/gsf/login/CheckAvailTask;

    invoke-static {v2}, Lcom/google/android/gsf/login/CheckAvailTask;->access$400(Lcom/google/android/gsf/login/CheckAvailTask;)Lcom/google/android/gsf/loginservice/GLSSession;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;->getCaptchaChallenge()Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gsf/loginservice/GLSHelper;->updateSessionWithCaptchaChallenge(Lcom/google/android/gsf/loginservice/GLSSession;Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;)V

    .line 69
    if-eqz v1, :cond_0

    .line 70
    invoke-static {v1}, Lcom/google/android/gsf/loginservice/StatusHelper;->get(Lcom/google/android/gms/auth/firstparty/shared/Status;)Lcom/google/android/gsf/loginservice/StatusHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gsf/login/CheckAvailTask$1;->val$resultMessage:Landroid/os/Message;

    invoke-virtual {v2, v3}, Lcom/google/android/gsf/loginservice/StatusHelper;->toMessage(Landroid/os/Message;)V

    .line 72
    :cond_0
    iget-object v2, p0, Lcom/google/android/gsf/login/CheckAvailTask$1;->mIsCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_1

    .line 73
    iget-object v2, p0, Lcom/google/android/gsf/login/CheckAvailTask$1;->this$0:Lcom/google/android/gsf/login/CheckAvailTask;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gsf/login/CheckAvailTask;->ensureDelay(J)V

    .line 75
    :cond_1
    return-void
.end method
