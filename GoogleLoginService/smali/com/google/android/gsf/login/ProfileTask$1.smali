.class Lcom/google/android/gsf/login/ProfileTask$1;
.super Lcom/google/android/gsf/login/CancelableCallbackThread;
.source "ProfileTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/login/ProfileTask;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/ProfileTask;

.field final synthetic val$resultMessage:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/ProfileTask;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Message;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/android/gsf/login/ProfileTask$1;->this$0:Lcom/google/android/gsf/login/ProfileTask;

    iput-object p3, p0, Lcom/google/android/gsf/login/ProfileTask$1;->val$resultMessage:Landroid/os/Message;

    invoke-direct {p0, p2}, Lcom/google/android/gsf/login/CancelableCallbackThread;-><init>(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method protected runInBackground()V
    .locals 4

    .prologue
    .line 46
    iget-object v1, p0, Lcom/google/android/gsf/login/ProfileTask$1;->this$0:Lcom/google/android/gsf/login/ProfileTask;

    invoke-static {v1}, Lcom/google/android/gsf/login/ProfileTask;->access$100(Lcom/google/android/gsf/login/ProfileTask;)Lcom/google/android/gsf/loginservice/GLSHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/login/ProfileTask$1;->this$0:Lcom/google/android/gsf/login/ProfileTask;

    invoke-static {v2}, Lcom/google/android/gsf/login/ProfileTask;->access$000(Lcom/google/android/gsf/login/ProfileTask;)Lcom/google/android/gsf/loginservice/GLSSession;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gsf/loginservice/GLSHelper;->blockingCreateProfile(Lcom/google/android/gsf/loginservice/GLSSession;)Lcom/google/android/gms/auth/firstparty/shared/Status;

    move-result-object v0

    .line 47
    .local v0, "status":Lcom/google/android/gms/auth/firstparty/shared/Status;
    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/Status;->SUCCESS:Lcom/google/android/gms/auth/firstparty/shared/Status;

    if-eq v0, v1, :cond_0

    .line 48
    sget-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->GPLUS_PROFILE_ERROR:Lcom/google/android/gms/auth/firstparty/shared/Status;

    .line 50
    :cond_0
    invoke-static {v0}, Lcom/google/android/gsf/loginservice/StatusHelper;->get(Lcom/google/android/gms/auth/firstparty/shared/Status;)Lcom/google/android/gsf/loginservice/StatusHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/login/ProfileTask$1;->val$resultMessage:Landroid/os/Message;

    invoke-virtual {v1, v2}, Lcom/google/android/gsf/loginservice/StatusHelper;->toMessage(Landroid/os/Message;)V

    .line 51
    iget-object v1, p0, Lcom/google/android/gsf/login/ProfileTask$1;->mIsCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    .line 52
    iget-object v1, p0, Lcom/google/android/gsf/login/ProfileTask$1;->this$0:Lcom/google/android/gsf/login/ProfileTask;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gsf/login/ProfileTask;->ensureDelay(J)V

    .line 54
    :cond_1
    return-void
.end method
