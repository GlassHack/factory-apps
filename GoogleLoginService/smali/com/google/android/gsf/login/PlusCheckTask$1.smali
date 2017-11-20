.class Lcom/google/android/gsf/login/PlusCheckTask$1;
.super Lcom/google/android/gsf/login/CancelableCallbackThread;
.source "PlusCheckTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/login/PlusCheckTask;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/PlusCheckTask;

.field final synthetic val$resultMessage:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/PlusCheckTask;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Message;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/google/android/gsf/login/PlusCheckTask$1;->this$0:Lcom/google/android/gsf/login/PlusCheckTask;

    iput-object p3, p0, Lcom/google/android/gsf/login/PlusCheckTask$1;->val$resultMessage:Landroid/os/Message;

    invoke-direct {p0, p2}, Lcom/google/android/gsf/login/CancelableCallbackThread;-><init>(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method protected runInBackground()V
    .locals 5

    .prologue
    .line 28
    iget-object v1, p0, Lcom/google/android/gsf/login/PlusCheckTask$1;->this$0:Lcom/google/android/gsf/login/PlusCheckTask;

    invoke-static {v1}, Lcom/google/android/gsf/login/PlusCheckTask;->access$300(Lcom/google/android/gsf/login/PlusCheckTask;)Lcom/google/android/gsf/loginservice/GLSHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/login/PlusCheckTask$1;->this$0:Lcom/google/android/gsf/login/PlusCheckTask;

    invoke-static {v2}, Lcom/google/android/gsf/login/PlusCheckTask;->access$000(Lcom/google/android/gsf/login/PlusCheckTask;)Lcom/google/android/gsf/loginservice/GLSSession;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gsf/login/PlusCheckTask$1;->this$0:Lcom/google/android/gsf/login/PlusCheckTask;

    invoke-static {v3}, Lcom/google/android/gsf/login/PlusCheckTask;->access$100(Lcom/google/android/gsf/login/PlusCheckTask;)Lcom/google/android/gsf/loginservice/GLSSession;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mCaptchaToken:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gsf/login/PlusCheckTask$1;->this$0:Lcom/google/android/gsf/login/PlusCheckTask;

    invoke-static {v4}, Lcom/google/android/gsf/login/PlusCheckTask;->access$200(Lcom/google/android/gsf/login/PlusCheckTask;)Lcom/google/android/gsf/loginservice/GLSSession;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gsf/loginservice/GLSSession;->mCaptchaAnswer:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gsf/loginservice/GLSHelper;->blockingGetGplusInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;

    move-result-object v0

    .line 33
    .local v0, "r":Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;
    iget-object v1, p0, Lcom/google/android/gsf/login/PlusCheckTask$1;->this$0:Lcom/google/android/gsf/login/PlusCheckTask;

    invoke-static {v1}, Lcom/google/android/gsf/login/PlusCheckTask;->access$400(Lcom/google/android/gsf/login/PlusCheckTask;)Lcom/google/android/gsf/loginservice/GLSSession;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->isAllowed()Z

    move-result v2

    iput-boolean v2, v1, Lcom/google/android/gsf/loginservice/GLSSession;->mAllowGooglePlus:Z

    .line 34
    iget-object v1, p0, Lcom/google/android/gsf/login/PlusCheckTask$1;->this$0:Lcom/google/android/gsf/login/PlusCheckTask;

    invoke-static {v1}, Lcom/google/android/gsf/login/PlusCheckTask;->access$500(Lcom/google/android/gsf/login/PlusCheckTask;)Lcom/google/android/gsf/loginservice/GLSSession;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->getRopRevision()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gsf/loginservice/GLSSession;->mRopRevision:Ljava/lang/String;

    .line 35
    iget-object v1, p0, Lcom/google/android/gsf/login/PlusCheckTask$1;->this$0:Lcom/google/android/gsf/login/PlusCheckTask;

    invoke-static {v1}, Lcom/google/android/gsf/login/PlusCheckTask;->access$600(Lcom/google/android/gsf/login/PlusCheckTask;)Lcom/google/android/gsf/loginservice/GLSSession;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->getRopText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gsf/loginservice/GLSSession;->mRopText:Ljava/lang/String;

    .line 37
    sget-object v1, Lcom/google/android/gsf/loginservice/StatusHelper;->SUCCESS:Lcom/google/android/gsf/loginservice/StatusHelper;

    iget-object v2, p0, Lcom/google/android/gsf/login/PlusCheckTask$1;->val$resultMessage:Landroid/os/Message;

    invoke-virtual {v1, v2}, Lcom/google/android/gsf/loginservice/StatusHelper;->toMessage(Landroid/os/Message;)V

    .line 38
    return-void
.end method
