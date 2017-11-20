.class Lcom/google/android/gsf/login/ChoosePasswordActivity$3;
.super Lcom/google/android/gsf/login/CancelableCallbackThread;
.source "ChoosePasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/login/ChoosePasswordActivity;->ratePassword()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

.field final synthetic val$resultMessage:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/ChoosePasswordActivity;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Message;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$3;->this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

    iput-object p3, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$3;->val$resultMessage:Landroid/os/Message;

    invoke-direct {p0, p2}, Lcom/google/android/gsf/login/CancelableCallbackThread;-><init>(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method protected runInBackground()V
    .locals 3

    .prologue
    .line 127
    iget-object v1, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$3;->this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

    invoke-static {v1}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->access$900(Lcom/google/android/gsf/login/ChoosePasswordActivity;)Lcom/google/android/gsf/loginservice/GLSHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$3;->this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

    invoke-static {v2}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->access$800(Lcom/google/android/gsf/login/ChoosePasswordActivity;)Lcom/google/android/gsf/loginservice/GLSSession;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gsf/loginservice/GLSHelper;->blockingRatePassword(Lcom/google/android/gsf/loginservice/GLSSession;)Lcom/google/android/gms/auth/firstparty/shared/Status;

    move-result-object v0

    .line 128
    .local v0, "status":Lcom/google/android/gms/auth/firstparty/shared/Status;
    if-eqz v0, :cond_0

    .line 129
    invoke-static {v0}, Lcom/google/android/gsf/loginservice/StatusHelper;->get(Lcom/google/android/gms/auth/firstparty/shared/Status;)Lcom/google/android/gsf/loginservice/StatusHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$3;->val$resultMessage:Landroid/os/Message;

    invoke-virtual {v1, v2}, Lcom/google/android/gsf/loginservice/StatusHelper;->toMessage(Landroid/os/Message;)V

    .line 131
    :cond_0
    return-void
.end method
