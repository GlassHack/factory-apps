.class Lcom/google/android/gsf/login/PrepareAccountSetupActivity$1;
.super Landroid/os/AsyncTask;
.source "PrepareAccountSetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/login/PrepareAccountSetupActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Landroid/app/PendingIntent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/PrepareAccountSetupActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/PrepareAccountSetupActivity;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/android/gsf/login/PrepareAccountSetupActivity$1;->this$0:Lcom/google/android/gsf/login/PrepareAccountSetupActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Landroid/app/PendingIntent;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 49
    iget-object v7, p0, Lcom/google/android/gsf/login/PrepareAccountSetupActivity$1;->this$0:Lcom/google/android/gsf/login/PrepareAccountSetupActivity;

    invoke-virtual {v7}, Lcom/google/android/gsf/login/PrepareAccountSetupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 50
    .local v2, "context":Landroid/content/Context;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    .line 51
    .local v5, "sessionId":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v6, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 53
    .local v6, "uid":I
    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    invoke-direct {v0, v3, v6, v5, v5}, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 58
    .local v0, "appDesc":Lcom/google/android/gms/auth/firstparty/shared/AppDescription;
    new-instance v7, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;

    invoke-direct {v7, v0}, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;-><init>(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;)V

    iget-object v8, p0, Lcom/google/android/gsf/login/PrepareAccountSetupActivity$1;->this$0:Lcom/google/android/gsf/login/PrepareAccountSetupActivity;

    invoke-static {v8}, Lcom/google/android/gsf/login/PrepareAccountSetupActivity;->access$100(Lcom/google/android/gsf/login/PrepareAccountSetupActivity;)Lcom/google/android/gsf/loginservice/GLSSession;

    move-result-object v8

    iget-boolean v8, v8, Lcom/google/android/gsf/loginservice/GLSSession;->mSetupWizard:Z

    invoke-virtual {v7, v8}, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->setBackupAccount(Z)Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/gsf/login/PrepareAccountSetupActivity$1;->this$0:Lcom/google/android/gsf/login/PrepareAccountSetupActivity;

    invoke-static {v8}, Lcom/google/android/gsf/login/PrepareAccountSetupActivity;->access$000(Lcom/google/android/gsf/login/PrepareAccountSetupActivity;)Lcom/google/android/gsf/loginservice/GLSSession;

    move-result-object v8

    iget-object v8, v8, Lcom/google/android/gsf/loginservice/GLSSession;->mAccountManagerOptions:Landroid/os/Bundle;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->setOptions(Landroid/os/Bundle;)Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;

    move-result-object v4

    .line 61
    .local v4, "req":Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;
    new-instance v1, Lcom/google/android/gms/auth/firstparty/delegate/AccountSetupWorkflowServiceClient;

    invoke-direct {v1, v2}, Lcom/google/android/gms/auth/firstparty/delegate/AccountSetupWorkflowServiceClient;-><init>(Landroid/content/Context;)V

    .line 63
    .local v1, "client":Lcom/google/android/gms/auth/firstparty/delegate/AccountSetupWorkflowServiceClient;
    invoke-virtual {v1, v4}, Lcom/google/android/gms/auth/firstparty/delegate/AccountSetupWorkflowServiceClient;->getAccountSetupWorkflowIntent(Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;)Landroid/app/PendingIntent;

    move-result-object v7

    return-object v7
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/login/PrepareAccountSetupActivity$1;->doInBackground([Ljava/lang/Object;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/app/PendingIntent;)V
    .locals 9
    .param p1, "result"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 71
    iget-object v0, p0, Lcom/google/android/gsf/login/PrepareAccountSetupActivity$1;->this$0:Lcom/google/android/gsf/login/PrepareAccountSetupActivity;

    invoke-static {v0, v2}, Lcom/google/android/gsf/login/PrepareAccountSetupActivity;->access$202(Lcom/google/android/gsf/login/PrepareAccountSetupActivity;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 75
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 76
    if-nez p1, :cond_0

    .line 77
    const-string v0, "GLSActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/android/gsf/login/PrepareAccountSetupActivity;->access$300()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Could not retrieve setup workflow result."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/google/android/gsf/login/PrepareAccountSetupActivity$1;->this$0:Lcom/google/android/gsf/login/PrepareAccountSetupActivity;

    invoke-virtual {v0, v8}, Lcom/google/android/gsf/login/PrepareAccountSetupActivity;->setResult(I)V

    .line 81
    iget-object v0, p0, Lcom/google/android/gsf/login/PrepareAccountSetupActivity$1;->this$0:Lcom/google/android/gsf/login/PrepareAccountSetupActivity;

    invoke-virtual {v0}, Lcom/google/android/gsf/login/PrepareAccountSetupActivity;->finish()V

    .line 84
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    .line 85
    .local v1, "sender":Landroid/content/IntentSender;
    iget-object v0, p0, Lcom/google/android/gsf/login/PrepareAccountSetupActivity$1;->this$0:Lcom/google/android/gsf/login/PrepareAccountSetupActivity;

    const/16 v2, 0x413

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gsf/login/PrepareAccountSetupActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v1    # "sender":Landroid/content/IntentSender;
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v7

    .line 93
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "GLSActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/android/gsf/login/PrepareAccountSetupActivity;->access$300()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " error initiateing setup workflow."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    iget-object v0, p0, Lcom/google/android/gsf/login/PrepareAccountSetupActivity$1;->this$0:Lcom/google/android/gsf/login/PrepareAccountSetupActivity;

    invoke-virtual {v0, v8}, Lcom/google/android/gsf/login/PrepareAccountSetupActivity;->setResult(I)V

    .line 97
    iget-object v0, p0, Lcom/google/android/gsf/login/PrepareAccountSetupActivity$1;->this$0:Lcom/google/android/gsf/login/PrepareAccountSetupActivity;

    invoke-virtual {v0}, Lcom/google/android/gsf/login/PrepareAccountSetupActivity;->finish()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 45
    check-cast p1, Landroid/app/PendingIntent;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/login/PrepareAccountSetupActivity$1;->onPostExecute(Landroid/app/PendingIntent;)V

    return-void
.end method
