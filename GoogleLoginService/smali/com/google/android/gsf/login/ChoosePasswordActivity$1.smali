.class Lcom/google/android/gsf/login/ChoosePasswordActivity$1;
.super Landroid/os/Handler;
.source "ChoosePasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/login/ChoosePasswordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/ChoosePasswordActivity;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$1;->this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 67
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    .line 68
    iget-object v2, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$1;->this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->access$002(Lcom/google/android/gsf/login/ChoosePasswordActivity;Lcom/google/android/gsf/login/CancelableCallbackThread;)Lcom/google/android/gsf/login/CancelableCallbackThread;

    .line 69
    invoke-static {p1}, Lcom/google/android/gsf/loginservice/StatusHelper;->fromMessage(Landroid/os/Message;)Lcom/google/android/gms/auth/firstparty/shared/Status;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/auth/firstparty/shared/Status;->SUCCESS:Lcom/google/android/gms/auth/firstparty/shared/Status;

    if-ne v2, v3, :cond_5

    .line 70
    iget-object v2, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$1;->this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

    invoke-virtual {v2}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->getUserData()Ljava/util/HashMap;

    move-result-object v2

    sget-object v3, Lcom/google/android/gsf/loginservice/JsonKey;->STRENGTH:Lcom/google/android/gsf/loginservice/JsonKey;

    invoke-virtual {v3}, Lcom/google/android/gsf/loginservice/JsonKey;->getWire()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 71
    .local v1, "strength":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 72
    iget-object v2, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$1;->this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->access$102(Lcom/google/android/gsf/login/ChoosePasswordActivity;I)I

    .line 73
    iget-object v2, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$1;->this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

    invoke-static {v2}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->access$200(Lcom/google/android/gsf/login/ChoosePasswordActivity;)Landroid/widget/ProgressBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$1;->this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

    invoke-static {v2}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->access$200(Lcom/google/android/gsf/login/ChoosePasswordActivity;)Landroid/widget/ProgressBar;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$1;->this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

    invoke-static {v3}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->access$100(Lcom/google/android/gsf/login/ChoosePasswordActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 77
    :cond_0
    iget-object v2, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$1;->this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

    invoke-static {v2}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->access$100(Lcom/google/android/gsf/login/ChoosePasswordActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$1;->this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

    invoke-static {v3}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->access$300(Lcom/google/android/gsf/login/ChoosePasswordActivity;)[Ljava/lang/CharSequence;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_4

    iget-object v2, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$1;->this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

    invoke-static {v2}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->access$100(Lcom/google/android/gsf/login/ChoosePasswordActivity;)I

    move-result v0

    .line 78
    .local v0, "detailIndex":I
    :goto_0
    iget-object v2, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$1;->this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

    invoke-static {v2}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->access$400(Lcom/google/android/gsf/login/ChoosePasswordActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$1;->this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

    invoke-static {v3}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->access$300(Lcom/google/android/gsf/login/ChoosePasswordActivity;)[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v2, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$1;->this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

    invoke-virtual {v2}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->isXLargeScreen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    iget-object v2, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$1;->this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

    invoke-static {v2}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->access$400(Lcom/google/android/gsf/login/ChoosePasswordActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$1;->this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

    invoke-static {v3}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->access$500(Lcom/google/android/gsf/login/ChoosePasswordActivity;)[I

    move-result-object v3

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    .end local v0    # "detailIndex":I
    .end local v1    # "strength":Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$1;->this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

    invoke-static {v2}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->access$600(Lcom/google/android/gsf/login/ChoosePasswordActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 91
    iget-object v2, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$1;->this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

    invoke-static {v2}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->access$700(Lcom/google/android/gsf/login/ChoosePasswordActivity;)V

    .line 93
    :cond_2
    iget-object v2, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$1;->this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

    invoke-virtual {v2}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->updateWidgetState()V

    .line 95
    :cond_3
    return-void

    .line 77
    .restart local v1    # "strength":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$1;->this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

    invoke-static {v2}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->access$300(Lcom/google/android/gsf/login/ChoosePasswordActivity;)[Ljava/lang/CharSequence;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 86
    .end local v1    # "strength":Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$1;->this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

    iget-boolean v2, v2, Lcom/google/android/gsf/login/ChoosePasswordActivity;->LOCAL_LOGV:Z

    if-eqz v2, :cond_6

    const-string v2, "GLSActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Password rating failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_6
    iget-object v2, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$1;->this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->access$102(Lcom/google/android/gsf/login/ChoosePasswordActivity;I)I

    goto :goto_1
.end method
