.class Lcom/google/android/gsf/login/CreateAccountTask$1;
.super Lcom/google/android/gsf/login/CancelableCallbackThread;
.source "CreateAccountTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/login/CreateAccountTask;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/CreateAccountTask;

.field final synthetic val$resultMessage:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/CreateAccountTask;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Message;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/android/gsf/login/CreateAccountTask$1;->this$0:Lcom/google/android/gsf/login/CreateAccountTask;

    iput-object p3, p0, Lcom/google/android/gsf/login/CreateAccountTask$1;->val$resultMessage:Landroid/os/Message;

    invoke-direct {p0, p2}, Lcom/google/android/gsf/login/CancelableCallbackThread;-><init>(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method protected runInBackground()V
    .locals 4

    .prologue
    .line 57
    iget-object v1, p0, Lcom/google/android/gsf/login/CreateAccountTask$1;->this$0:Lcom/google/android/gsf/login/CreateAccountTask;

    invoke-static {v1}, Lcom/google/android/gsf/login/CreateAccountTask;->access$100(Lcom/google/android/gsf/login/CreateAccountTask;)Lcom/google/android/gsf/loginservice/GLSHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/login/CreateAccountTask$1;->this$0:Lcom/google/android/gsf/login/CreateAccountTask;

    invoke-static {v2}, Lcom/google/android/gsf/login/CreateAccountTask;->access$000(Lcom/google/android/gsf/login/CreateAccountTask;)Lcom/google/android/gsf/loginservice/GLSSession;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gsf/loginservice/GLSHelper;->blockingCreateAccount(Lcom/google/android/gsf/loginservice/GLSSession;)Lcom/google/android/gms/auth/firstparty/shared/Status;

    move-result-object v0

    .line 58
    .local v0, "status":Lcom/google/android/gms/auth/firstparty/shared/Status;
    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/Status;->ALREADY_HAS_GMAIL:Lcom/google/android/gms/auth/firstparty/shared/Status;

    if-ne v0, v1, :cond_0

    .line 66
    sget-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->SUCCESS:Lcom/google/android/gms/auth/firstparty/shared/Status;

    .line 68
    :cond_0
    if-eqz v0, :cond_1

    .line 69
    invoke-static {v0}, Lcom/google/android/gsf/loginservice/StatusHelper;->get(Lcom/google/android/gms/auth/firstparty/shared/Status;)Lcom/google/android/gsf/loginservice/StatusHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/login/CreateAccountTask$1;->val$resultMessage:Landroid/os/Message;

    invoke-virtual {v1, v2}, Lcom/google/android/gsf/loginservice/StatusHelper;->toMessage(Landroid/os/Message;)V

    .line 71
    :cond_1
    iget-object v1, p0, Lcom/google/android/gsf/login/CreateAccountTask$1;->mIsCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_2

    .line 72
    iget-object v1, p0, Lcom/google/android/gsf/login/CreateAccountTask$1;->this$0:Lcom/google/android/gsf/login/CreateAccountTask;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gsf/login/CreateAccountTask;->ensureDelay(J)V

    .line 76
    :cond_2
    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/Status;->SUCCESS:Lcom/google/android/gms/auth/firstparty/shared/Status;

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gsf/login/CreateAccountTask$1;->this$0:Lcom/google/android/gsf/login/CreateAccountTask;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/CreateAccountTask;->getMarket()Lcom/google/android/gsf/login/MarketHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/login/CreateAccountTask$1;->this$0:Lcom/google/android/gsf/login/CreateAccountTask;

    invoke-static {v2}, Lcom/google/android/gsf/login/CreateAccountTask;->access$200(Lcom/google/android/gsf/login/CreateAccountTask;)Lcom/google/android/gsf/loginservice/GLSSession;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gsf/login/MarketHelper;->allowCreditCard(Lcom/google/android/gsf/loginservice/GLSSession;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 77
    iget-object v1, p0, Lcom/google/android/gsf/login/CreateAccountTask$1;->this$0:Lcom/google/android/gsf/login/CreateAccountTask;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/CreateAccountTask;->getMarket()Lcom/google/android/gsf/login/MarketHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/login/CreateAccountTask$1;->this$0:Lcom/google/android/gsf/login/CreateAccountTask;

    invoke-static {v2}, Lcom/google/android/gsf/login/CreateAccountTask;->access$300(Lcom/google/android/gsf/login/CreateAccountTask;)Lcom/google/android/gsf/loginservice/GLSSession;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gsf/login/MarketHelper;->setOffersValues(Lcom/google/android/gsf/loginservice/GLSSession;)V

    .line 79
    :cond_3
    return-void
.end method
