.class public Lcom/google/android/gsf/login/LoginActivityTask;
.super Lcom/google/android/gsf/login/BackgroundTask;
.source "LoginActivityTask.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final mPostAddCond:Ljava/util/concurrent/locks/Condition;

.field final mPostAddLock:Ljava/util/concurrent/locks/Lock;

.field final mPostAddTime:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/android/gsf/login/BackgroundTask;-><init>()V

    .line 55
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mPostAddLock:Ljava/util/concurrent/locks/Lock;

    .line 56
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mPostAddLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mPostAddCond:Ljava/util/concurrent/locks/Condition;

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mPostAddTime:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/login/LoginActivityTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/LoginActivityTask;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mConfirmCredentials:Z

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/gsf/login/LoginActivityTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/LoginActivityTask;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mAddAccount:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/google/android/gsf/login/LoginActivityTask;)Lcom/google/android/gsf/loginservice/GLSSession;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/LoginActivityTask;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/gsf/login/LoginActivityTask;)Lcom/google/android/gsf/loginservice/GLSSession;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/LoginActivityTask;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/gsf/login/LoginActivityTask;)Lcom/google/android/gsf/loginservice/GLSSession;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/LoginActivityTask;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/gsf/login/LoginActivityTask;)Lcom/google/android/gsf/loginservice/GLSSession;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/LoginActivityTask;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/gsf/login/LoginActivityTask;)Lcom/google/android/gsf/loginservice/GLSSession;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/LoginActivityTask;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/gsf/login/LoginActivityTask;Landroid/os/Message;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/login/LoginActivityTask;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/google/android/gsf/login/LoginActivityTask;->updateAccount(Landroid/os/Message;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/gsf/login/LoginActivityTask;)Lcom/google/android/gsf/loginservice/GLSSession;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/LoginActivityTask;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/gsf/login/LoginActivityTask;)Lcom/google/android/gsf/loginservice/GLSSession;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/LoginActivityTask;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/gsf/login/LoginActivityTask;)Lcom/google/android/gsf/loginservice/GLSSession;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/LoginActivityTask;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/gsf/login/LoginActivityTask;)Lcom/google/android/gsf/loginservice/GLSHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/LoginActivityTask;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mGlsHelper:Lcom/google/android/gsf/loginservice/GLSHelper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/gsf/login/LoginActivityTask;)Lcom/google/android/gsf/loginservice/GLSSession;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/LoginActivityTask;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/gsf/login/LoginActivityTask;)Lcom/google/android/gsf/loginservice/GLSSession;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/LoginActivityTask;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/gsf/login/LoginActivityTask;)Lcom/google/android/gsf/loginservice/GLSHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/LoginActivityTask;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mGlsHelper:Lcom/google/android/gsf/loginservice/GLSHelper;

    return-object v0
.end method

.method private updateAccount(Landroid/os/Message;Ljava/lang/String;)V
    .locals 7
    .param p1, "resultMessage"    # Landroid/os/Message;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 237
    const/4 v1, 0x0

    .line 240
    .local v1, "res":Landroid/content/Intent;
    iget-object v3, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v3, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mAccessToken:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 241
    iget-object v3, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mGlsHelper:Lcom/google/android/gsf/loginservice/GLSHelper;

    iget-object v4, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v5, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v5, v5, Lcom/google/android/gsf/loginservice/GLSSession;->mAccessToken:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivityTask;->isSetupWizard()Z

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gsf/loginservice/GLSHelper;->blockingAddWithRequestToken(Lcom/google/android/gsf/loginservice/GLSSession;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 257
    :goto_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "intent"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 258
    invoke-static {v1}, Lcom/google/android/gsf/loginservice/StatusHelper;->fromIntent(Landroid/content/Intent;)Lcom/google/android/gms/auth/firstparty/shared/Status;

    move-result-object v2

    .line 259
    .local v2, "status":Lcom/google/android/gms/auth/firstparty/shared/Status;
    invoke-static {v2}, Lcom/google/android/gsf/loginservice/StatusHelper;->get(Lcom/google/android/gms/auth/firstparty/shared/Status;)Lcom/google/android/gsf/loginservice/StatusHelper;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/gsf/loginservice/StatusHelper;->toMessage(Landroid/os/Message;)V

    .line 260
    return-void

    .line 245
    .end local v2    # "status":Lcom/google/android/gms/auth/firstparty/shared/Status;
    :cond_0
    if-eqz p2, :cond_1

    .line 246
    iget-object v3, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mGlsHelper:Lcom/google/android/gsf/loginservice/GLSHelper;

    iget-object v4, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v4, v4, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    invoke-virtual {v3, v4, p2, v5}, Lcom/google/android/gsf/loginservice/GLSHelper;->blockingAddWithPassword(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gsf/loginservice/GLSSession;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    .line 251
    :cond_1
    const-string v0, "Auth token flows are supported by the legacy auth delegate!"

    .line 252
    .local v0, "msg":Ljava/lang/String;
    const-string v3, "GLSActivity"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public confirmCredentials(Landroid/os/Message;Ljava/lang/String;)V
    .locals 11
    .param p1, "resultMessage"    # Landroid/os/Message;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 269
    new-instance v7, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    invoke-direct {v7}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;-><init>()V

    iget-object v10, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v10, v10, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    invoke-virtual {v7, v10}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->setAccountName(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    move-result-object v7

    invoke-virtual {v7, p2}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->setPassword(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    move-result-object v0

    .line 272
    .local v0, "accountCreds":Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;
    new-instance v7, Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;

    invoke-direct {v7}, Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;-><init>()V

    invoke-virtual {v7, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;->setAccountCredentials(Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;)Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;

    move-result-object v5

    .line 274
    .local v5, "req":Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;
    iget-object v7, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v7, v7, Lcom/google/android/gsf/loginservice/GLSSession;->mCaptchaAnswer:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v7, v7, Lcom/google/android/gsf/loginservice/GLSSession;->mCaptchaToken:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 275
    new-instance v1, Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    iget-object v7, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v7, v7, Lcom/google/android/gsf/loginservice/GLSSession;->mCaptchaToken:Ljava/lang/String;

    iget-object v10, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v10, v10, Lcom/google/android/gsf/loginservice/GLSSession;->mCaptchaAnswer:Ljava/lang/String;

    invoke-direct {v1, v7, v10}, Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    .local v1, "captchaSolution":Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;
    invoke-virtual {v5, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;->setCaptchaSolution(Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;)Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;

    .line 280
    .end local v1    # "captchaSolution":Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;
    :cond_0
    new-instance v2, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;

    invoke-direct {v2, p0}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;-><init>(Landroid/content/Context;)V

    .line 282
    .local v2, "client":Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;
    invoke-virtual {v2, v5}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->confirmCredentials(Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v3

    .line 283
    .local v3, "confirmRes":Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    invoke-virtual {v3}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->getStatus()Lcom/google/android/gms/auth/firstparty/shared/Status;

    move-result-object v4

    .line 284
    .local v4, "ok":Lcom/google/android/gms/auth/firstparty/shared/Status;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 285
    .local v6, "res":Landroid/content/Intent;
    const-string v7, "authAccount"

    iget-object v10, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v10, v10, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    invoke-virtual {v6, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    const-string v7, "accountType"

    const-string v10, "com.google"

    invoke-virtual {v6, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    const-string v10, "booleanResult"

    sget-object v7, Lcom/google/android/gms/auth/firstparty/shared/Status;->SUCCESS:Lcom/google/android/gms/auth/firstparty/shared/Status;

    if-ne v4, v7, :cond_1

    move v7, v8

    :goto_0
    invoke-virtual {v6, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 290
    const-string v7, "confirmResult"

    sget-object v10, Lcom/google/android/gms/auth/firstparty/shared/Status;->SUCCESS:Lcom/google/android/gms/auth/firstparty/shared/Status;

    if-ne v4, v10, :cond_2

    :goto_1
    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 291
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "intent"

    invoke-virtual {v7, v8, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 293
    sget-object v7, Lcom/google/android/gms/auth/firstparty/shared/Status;->SUCCESS:Lcom/google/android/gms/auth/firstparty/shared/Status;

    if-ne v4, v7, :cond_3

    .line 294
    sget-object v7, Lcom/google/android/gsf/loginservice/StatusHelper;->SUCCESS:Lcom/google/android/gsf/loginservice/StatusHelper;

    invoke-virtual {v7, p1}, Lcom/google/android/gsf/loginservice/StatusHelper;->toMessage(Landroid/os/Message;)V

    .line 298
    :goto_2
    return-void

    :cond_1
    move v7, v9

    .line 288
    goto :goto_0

    :cond_2
    move v8, v9

    .line 290
    goto :goto_1

    .line 296
    :cond_3
    sget-object v7, Lcom/google/android/gsf/loginservice/StatusHelper;->BAD_AUTHENTICATION:Lcom/google/android/gsf/loginservice/StatusHelper;

    invoke-virtual {v7, p1}, Lcom/google/android/gsf/loginservice/StatusHelper;->toMessage(Landroid/os/Message;)V

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mCancelButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 75
    iget-boolean v0, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mCancelable:Z

    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivityTask;->onCancel()V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mCancelButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 80
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mPostAddLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mPostAddTime:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 83
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mPostAddCond:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mPostAddLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mPostAddLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BackgroundTask;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v0, 0x7f070113

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/LoginActivityTask;->setMessage(I)V

    .line 66
    const v0, 0x7f070112

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/LoginActivityTask;->setTitle(I)V

    .line 67
    return-void
.end method

.method protected onError(Lcom/google/android/gms/auth/firstparty/shared/Status;Landroid/content/Intent;)V
    .locals 1
    .param p1, "status"    # Lcom/google/android/gms/auth/firstparty/shared/Status;
    .param p2, "res"    # Landroid/content/Intent;

    .prologue
    .line 302
    sget-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->BAD_AUTHENTICATION:Lcom/google/android/gms/auth/firstparty/shared/Status;

    if-ne p1, v0, :cond_0

    .line 303
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gsf/login/LoginActivityTask;->setResult(ILandroid/content/Intent;)V

    .line 304
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivityTask;->finish()V

    .line 308
    :goto_0
    return-void

    .line 306
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/gsf/login/BackgroundTask;->onError(Lcom/google/android/gms/auth/firstparty/shared/Status;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public start()V
    .locals 9

    .prologue
    .line 94
    invoke-super {p0}, Lcom/google/android/gsf/login/BackgroundTask;->start()V

    .line 96
    iget-object v7, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v7, v7, Lcom/google/android/gsf/loginservice/GLSSession;->mAccessToken:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v7, v7, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    if-nez v7, :cond_1

    :cond_0
    iget-boolean v7, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mAddAccount:Z

    if-nez v7, :cond_2

    .line 123
    :cond_1
    iget-object v7, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 125
    .local v5, "resultMessage":Landroid/os/Message;
    new-instance v7, Lcom/google/android/gsf/login/LoginActivityTask$1;

    invoke-direct {v7, p0, v5, v5}, Lcom/google/android/gsf/login/LoginActivityTask$1;-><init>(Lcom/google/android/gsf/login/LoginActivityTask;Landroid/os/Message;Landroid/os/Message;)V

    iput-object v7, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mTaskThread:Lcom/google/android/gsf/login/CancelableCallbackThread;

    .line 232
    iget-object v7, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mTaskThread:Lcom/google/android/gsf/login/CancelableCallbackThread;

    invoke-virtual {v7}, Lcom/google/android/gsf/login/CancelableCallbackThread;->start()V

    .line 233
    .end local v5    # "resultMessage":Landroid/os/Message;
    :goto_0
    return-void

    .line 100
    :cond_2
    iget-object v7, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v6, v7, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    .line 101
    .local v6, "username":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 102
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    const-string v8, "com.google"

    invoke-virtual {v7, v8}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 104
    .local v1, "accounts":[Landroid/accounts/Account;
    move-object v2, v1

    .local v2, "arr$":[Landroid/accounts/Account;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v0, v2, v3

    .line 105
    .local v0, "account":Landroid/accounts/Account;
    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 109
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivityTask;->isSetupWizard()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 110
    const/4 v7, -0x1

    invoke-virtual {p0, v7}, Lcom/google/android/gsf/login/LoginActivityTask;->setResult(I)V

    .line 111
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivityTask;->finish()V

    goto :goto_0

    .line 113
    :cond_3
    const/4 v7, 0x4

    sget-object v8, Lcom/google/android/gms/auth/firstparty/shared/Status;->EXISTING_USERNAME:Lcom/google/android/gms/auth/firstparty/shared/Status;

    invoke-virtual {p0, v8}, Lcom/google/android/gsf/login/LoginActivityTask;->createErrorIntent(Lcom/google/android/gms/auth/firstparty/shared/Status;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/google/android/gsf/login/LoginActivityTask;->setResult(ILandroid/content/Intent;)V

    .line 115
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivityTask;->finish()V

    goto :goto_0

    .line 104
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method
