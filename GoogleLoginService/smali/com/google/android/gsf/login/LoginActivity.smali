.class public Lcom/google/android/gsf/login/LoginActivity;
.super Lcom/google/android/gsf/login/AddAccountActivity;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/login/LoginActivity$1;
    }
.end annotation


# instance fields
.field private final LOG_PREFIX:Ljava/lang/String;

.field private final mIsLogVerbose:Z

.field private final mPreExistingAccounts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/android/gsf/login/AddAccountActivity;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/google/android/gsf/login/LoginActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/login/LoginActivity;->LOG_PREFIX:Ljava/lang/String;

    .line 39
    const-string v0, "GLSActivity"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gsf/login/LoginActivity;->mIsLogVerbose:Z

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/login/LoginActivity;->mPreExistingAccounts:Ljava/util/Set;

    return-void
.end method

.method private getGoogleServicesIntentWithBackButtonCheck()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->getGoogleServicesActivityIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "noBack"

    invoke-direct {p0}, Lcom/google/android/gsf/login/LoginActivity;->isGplusAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGplusAllowed()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 426
    iget-boolean v4, p0, Lcom/google/android/gsf/login/LoginActivity;->mIsLogVerbose:Z

    if-eqz v4, :cond_0

    .line 427
    const-string v1, "%s - onActivityResult(GOOGLE_SERVICES_REQUEST) - isEsEnabled: %s, mAlowGooglePlus: %s, mHasGooglePlus: %s "

    .line 430
    .local v1, "tmpl":Ljava/lang/String;
    const-string v4, "%s - onActivityResult(GOOGLE_SERVICES_REQUEST) - isEsEnabled: %s, mAlowGooglePlus: %s, mHasGooglePlus: %s "

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/gsf/login/LoginActivity;->LOG_PREFIX:Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->isESEnabled()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/google/android/gsf/login/LoginActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v7, v7, Lcom/google/android/gsf/loginservice/GLSSession;->mAllowGooglePlus:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/google/android/gsf/login/LoginActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v7, v7, Lcom/google/android/gsf/loginservice/GLSSession;->mHasGooglePlus:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, "msg":Ljava/lang/String;
    const-string v4, "GLSActivity"

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    .end local v0    # "msg":Ljava/lang/String;
    .end local v1    # "tmpl":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->isESEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/gsf/login/LoginActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v4, v4, Lcom/google/android/gsf/loginservice/GLSSession;->mAllowGooglePlus:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/gsf/login/LoginActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v4, v4, Lcom/google/android/gsf/loginservice/GLSSession;->mHasGooglePlus:Z

    if-nez v4, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method private launchPasswordPromptTask()V
    .locals 4

    .prologue
    .line 331
    const/4 v0, 0x0

    .line 334
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/google/android/gsf/login/LoginActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v2, v2, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gsf/login/LoginActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v2, v2, Lcom/google/android/gsf/loginservice/GLSSession;->mIsBrowserFlowRequired:Z

    if-nez v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 335
    .local v1, "result":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 336
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v2, Lcom/google/android/gsf/login/UsernamePasswordActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 337
    .restart local v0    # "intent":Landroid/content/Intent;
    const/16 v2, 0x402

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gsf/login/LoginActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    .line 343
    :goto_1
    return-void

    .line 334
    .end local v1    # "result":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 339
    .restart local v1    # "result":Z
    :cond_2
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v2, Lcom/google/android/gsf/login/BrowserActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 340
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "authAccount"

    iget-object v3, p0, Lcom/google/android/gsf/login/LoginActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v3, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    const/16 v2, 0x3ec

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gsf/login/LoginActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method private onPostAccountSignIn()V
    .locals 3

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/google/android/gsf/login/LoginActivity;->isGplusAllowed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PlusQueryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    .local v0, "plusQueryIntent":Landroid/content/Intent;
    const-string v1, "noBack"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 110
    const/16 v1, 0x3fe

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/LoginActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    .line 117
    .end local v0    # "plusQueryIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gsf/login/LoginActivity;->getGoogleServicesIntentWithBackButtonCheck()Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x411

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gsf/login/LoginActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method


# virtual methods
.method protected handleBack(IILandroid/content/Intent;Lcom/google/android/gms/auth/firstparty/shared/Status;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "status"    # Lcom/google/android/gms/auth/firstparty/shared/Status;

    .prologue
    const/16 v4, 0x3fe

    .line 358
    iget-boolean v1, p0, Lcom/google/android/gsf/login/LoginActivity;->mAddAccount:Z

    if-nez v1, :cond_0

    .line 360
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gsf/login/LoginActivity;->setResult(ILandroid/content/Intent;)V

    .line 361
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->finish()V

    .line 423
    :goto_0
    return-void

    .line 365
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 419
    invoke-virtual {p0, p2}, Lcom/google/android/gsf/login/LoginActivity;->setResult(I)V

    .line 420
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->finish()V

    goto :goto_0

    .line 370
    :sswitch_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/gsf/login/UsernamePasswordActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x402

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gsf/login/LoginActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 377
    :sswitch_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/LoginActivity;->launchSyncIntroActivity(Z)V

    goto :goto_0

    .line 381
    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/gsf/login/PlusFaqActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x3ff

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gsf/login/LoginActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 395
    :sswitch_3
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/gsf/login/PlusQueryActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "noBack"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 397
    .local v0, "gplusSignUpQueryIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0, v4}, Lcom/google/android/gsf/login/LoginActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 401
    .end local v0    # "gplusSignUpQueryIntent":Landroid/content/Intent;
    :sswitch_4
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gsf/login/LoginActivity;->finishGoogleServicesActivity(ILandroid/content/Intent;)V

    .line 402
    invoke-direct {p0}, Lcom/google/android/gsf/login/LoginActivity;->isGplusAllowed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 403
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/gsf/login/PlusQueryActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1, v4}, Lcom/google/android/gsf/login/LoginActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 411
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gsf/login/LoginActivity;->getGoogleServicesIntentWithBackButtonCheck()Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x411

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gsf/login/LoginActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 365
    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_0
        0x3ea -> :sswitch_0
        0x3ec -> :sswitch_0
        0x3fc -> :sswitch_1
        0x405 -> :sswitch_2
        0x411 -> :sswitch_4
        0x412 -> :sswitch_3
    .end sparse-switch
.end method

.method public handleStatus(Lcom/google/android/gms/auth/firstparty/shared/Status;)V
    .locals 3
    .param p1, "status"    # Lcom/google/android/gms/auth/firstparty/shared/Status;

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/google/android/gsf/login/LoginActivity$1;->$SwitchMap$com$google$android$gms$auth$firstparty$shared$Status:[I

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/shared/Status;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 101
    :goto_0
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v1, Lcom/google/android/gsf/login/ShowErrorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .restart local v0    # "intent":Landroid/content/Intent;
    const/16 v1, 0x3f1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/LoginActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    .line 104
    :goto_1
    return-void

    .line 85
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/gsf/login/LoginActivity;->onPostAccountSignIn()V

    goto :goto_1

    .line 88
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/gsf/login/LoginActivity;->launchPasswordPromptTask()V

    goto :goto_1

    .line 91
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v1, Lcom/google/android/gsf/login/CaptchaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    .restart local v0    # "intent":Landroid/content/Intent;
    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/LoginActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 95
    :pswitch_3
    const-string v1, "GLSActivity"

    const-string v2, "LoginActivity#handleStatus: Unexpected NEED_PERMISSION status! Token requests should be routed to Google Play Services."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v9, 0x3ea

    const/4 v8, 0x6

    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    .line 131
    if-ne p2, v5, :cond_0

    .line 133
    invoke-virtual {p0, v5}, Lcom/google/android/gsf/login/LoginActivity;->setResult(I)V

    .line 134
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->finish()V

    .line 324
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-static {p3}, Lcom/google/android/gsf/loginservice/StatusHelper;->fromExtra(Landroid/content/Intent;)Lcom/google/android/gms/auth/firstparty/shared/Status;

    move-result-object v2

    .line 139
    .local v2, "status":Lcom/google/android/gms/auth/firstparty/shared/Status;
    if-nez p2, :cond_1

    .line 140
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/google/android/gsf/login/LoginActivity;->handleBack(IILandroid/content/Intent;Lcom/google/android/gms/auth/firstparty/shared/Status;)V

    goto :goto_0

    .line 144
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 320
    const-string v4, "GLSActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown activity result req="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " rc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gsf/login/AddAccountActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 146
    :sswitch_0
    if-ne p2, v8, :cond_2

    .line 147
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/google/android/gsf/login/BrowserActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v5, 0x3ec

    invoke-virtual {p0, v4, v5}, Lcom/google/android/gsf/login/LoginActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 157
    :cond_2
    :sswitch_1
    if-ne p2, v6, :cond_3

    .line 158
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/google/android/gsf/login/LoginActivityTask;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v4, v9}, Lcom/google/android/gsf/login/LoginActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 162
    :cond_3
    invoke-virtual {p0, v5}, Lcom/google/android/gsf/login/LoginActivity;->setResult(I)V

    .line 163
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->finish()V

    goto :goto_0

    .line 169
    :sswitch_2
    if-ne p2, v6, :cond_4

    .line 172
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->accountAuthenticatorRetryResult()V

    .line 173
    invoke-virtual {p0, v6}, Lcom/google/android/gsf/login/LoginActivity;->setResult(I)V

    .line 178
    :goto_1
    iget-object v4, p0, Lcom/google/android/gsf/login/LoginActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v4, v4, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gsf/login/LoginActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget v5, v5, Lcom/google/android/gsf/loginservice/GLSSession;->mCallingUID:I

    invoke-static {p0, v4, v5}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->cancelPermissionNotification(Landroid/content/Context;Ljava/lang/String;I)V

    .line 180
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->finish()V

    goto :goto_0

    .line 175
    :cond_4
    invoke-virtual {p0, v7, p3}, Lcom/google/android/gsf/login/LoginActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_1

    .line 185
    :sswitch_3
    iget-boolean v4, p0, Lcom/google/android/gsf/login/LoginActivity;->mConfirmCredentials:Z

    if-eqz v4, :cond_5

    .line 187
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/LoginActivity;->accountAuthenticatorResult(Landroid/os/Bundle;)V

    .line 188
    invoke-virtual {p0, v6, p3}, Lcom/google/android/gsf/login/LoginActivity;->setResult(ILandroid/content/Intent;)V

    .line 189
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->finish()V

    goto/16 :goto_0

    .line 193
    :cond_5
    if-ne p2, v6, :cond_7

    .line 194
    iget-boolean v4, p0, Lcom/google/android/gsf/login/LoginActivity;->mAddAccount:Z

    if-nez v4, :cond_6

    .line 196
    iput-boolean v7, p0, Lcom/google/android/gsf/login/LoginActivity;->mCallAuthenticatorResponseOnFinish:Z

    .line 197
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/LoginActivity;->accountAuthenticatorResult(Landroid/os/Bundle;)V

    .line 198
    invoke-virtual {p0, v6, p3}, Lcom/google/android/gsf/login/LoginActivity;->setResult(ILandroid/content/Intent;)V

    .line 200
    iget-object v4, p0, Lcom/google/android/gsf/login/LoginActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v4, v4, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gsf/login/LoginActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v5, v5, Lcom/google/android/gsf/loginservice/GLSSession;->mAccountManagerOptions:Landroid/os/Bundle;

    invoke-static {p0, v4, v5}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->onIntentDone(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 204
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->finish()V

    goto/16 :goto_0

    .line 208
    :cond_6
    invoke-direct {p0}, Lcom/google/android/gsf/login/LoginActivity;->onPostAccountSignIn()V

    goto/16 :goto_0

    .line 210
    :cond_7
    sget-object v4, Lcom/google/android/gms/auth/firstparty/shared/Status;->BAD_AUTHENTICATION:Lcom/google/android/gms/auth/firstparty/shared/Status;

    if-ne v2, v4, :cond_8

    .line 211
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/google/android/gsf/login/ShowErrorActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 212
    .local v1, "showError":Landroid/content/Intent;
    const/16 v4, 0x409

    invoke-virtual {p0, v1, v4}, Lcom/google/android/gsf/login/LoginActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 214
    .end local v1    # "showError":Landroid/content/Intent;
    :cond_8
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/LoginActivity;->handleStatus(Lcom/google/android/gms/auth/firstparty/shared/Status;)V

    goto/16 :goto_0

    .line 222
    :sswitch_4
    invoke-direct {p0}, Lcom/google/android/gsf/login/LoginActivity;->launchPasswordPromptTask()V

    goto/16 :goto_0

    .line 227
    :sswitch_5
    iget-object v4, p0, Lcom/google/android/gsf/login/LoginActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v4, v4, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gsf/login/LoginActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v5, v5, Lcom/google/android/gsf/loginservice/GLSSession;->mAccountManagerOptions:Landroid/os/Bundle;

    invoke-static {p0, v4, v5}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->onIntentDone(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 229
    if-ne p2, v8, :cond_9

    .line 230
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/google/android/gsf/login/BrowserActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v5, 0x3ec

    invoke-virtual {p0, v4, v5}, Lcom/google/android/gsf/login/LoginActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 233
    :cond_9
    const/4 v4, 0x5

    if-ne p2, v4, :cond_a

    .line 234
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/google/android/gsf/login/UsernamePasswordActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v5, 0x402

    invoke-virtual {p0, v4, v5}, Lcom/google/android/gsf/login/LoginActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 237
    :cond_a
    if-ne p2, v6, :cond_b

    .line 239
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/google/android/gsf/login/LoginActivityTask;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v4, v9}, Lcom/google/android/gsf/login/LoginActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 244
    :cond_b
    invoke-virtual {p0, p2}, Lcom/google/android/gsf/login/LoginActivity;->setResult(I)V

    .line 245
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->finish()V

    goto/16 :goto_0

    .line 255
    :sswitch_6
    iget-object v4, p0, Lcom/google/android/gsf/login/LoginActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v4, v4, Lcom/google/android/gsf/loginservice/GLSSession;->mUserSelectedGooglePlus:Z

    if-eqz v4, :cond_c

    .line 256
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->getGPlusSignUpIntent()Landroid/content/Intent;

    move-result-object v4

    const/16 v5, 0x412

    invoke-virtual {p0, v4, v5}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 265
    :cond_c
    invoke-direct {p0}, Lcom/google/android/gsf/login/LoginActivity;->getGoogleServicesIntentWithBackButtonCheck()Landroid/content/Intent;

    move-result-object v4

    const/16 v5, 0x411

    invoke-virtual {p0, v4, v5}, Lcom/google/android/gsf/login/LoginActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 272
    :sswitch_7
    if-ne p2, v6, :cond_d

    .line 274
    iget-object v4, p0, Lcom/google/android/gsf/login/LoginActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iput-boolean v5, v4, Lcom/google/android/gsf/loginservice/GLSSession;->mHasGooglePlus:Z

    .line 277
    :cond_d
    invoke-direct {p0}, Lcom/google/android/gsf/login/LoginActivity;->getGoogleServicesIntentWithBackButtonCheck()Landroid/content/Intent;

    move-result-object v4

    const/16 v5, 0x411

    invoke-virtual {p0, v4, v5}, Lcom/google/android/gsf/login/LoginActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 282
    :sswitch_8
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gsf/login/LoginActivity;->finishGoogleServicesActivity(ILandroid/content/Intent;)V

    .line 283
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->tryGetMarketIntent()Landroid/content/Intent;

    move-result-object v0

    .line 284
    .local v0, "marketIntent":Landroid/content/Intent;
    if-eqz v0, :cond_e

    .line 285
    const/16 v4, 0x3fc

    invoke-virtual {p0, v0, v4}, Lcom/google/android/gsf/login/LoginActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 293
    :cond_e
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/google/android/gsf/login/SyncIntroActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 294
    .local v3, "syncIntroIntent":Landroid/content/Intent;
    const/16 v4, 0x3ed

    invoke-virtual {p0, v3, v4}, Lcom/google/android/gsf/login/LoginActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 300
    .end local v0    # "marketIntent":Landroid/content/Intent;
    .end local v3    # "syncIntroIntent":Landroid/content/Intent;
    :sswitch_9
    if-eqz p3, :cond_f

    .line 301
    iget-object v4, p0, Lcom/google/android/gsf/login/LoginActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    const-string v5, "redeemed_offer_message_html"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/gsf/loginservice/GLSSession;->mOfferMessageHtml:Ljava/lang/String;

    .line 304
    :cond_f
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/google/android/gsf/login/SyncIntroActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 305
    .restart local v3    # "syncIntroIntent":Landroid/content/Intent;
    const/16 v4, 0x3ed

    invoke-virtual {p0, v3, v4}, Lcom/google/android/gsf/login/LoginActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 309
    .end local v3    # "syncIntroIntent":Landroid/content/Intent;
    :sswitch_a
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->signalAccountInstallation()V

    .line 310
    invoke-virtual {p0, v5}, Lcom/google/android/gsf/login/LoginActivity;->onSetupComplete(Z)V

    .line 311
    if-nez p3, :cond_10

    .line 312
    new-instance p3, Landroid/content/Intent;

    .end local p3    # "intent":Landroid/content/Intent;
    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 314
    .restart local p3    # "intent":Landroid/content/Intent;
    :cond_10
    invoke-virtual {p0, p3}, Lcom/google/android/gsf/login/LoginActivity;->bundleResultData(Landroid/content/Intent;)V

    .line 315
    invoke-virtual {p0, v6, p3}, Lcom/google/android/gsf/login/LoginActivity;->setResult(ILandroid/content/Intent;)V

    .line 316
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->finish()V

    goto/16 :goto_0

    .line 144
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_1
        0x3ea -> :sswitch_3
        0x3ec -> :sswitch_1
        0x3ed -> :sswitch_a
        0x3f1 -> :sswitch_5
        0x3fc -> :sswitch_9
        0x3fe -> :sswitch_6
        0x402 -> :sswitch_0
        0x403 -> :sswitch_2
        0x409 -> :sswitch_4
        0x411 -> :sswitch_8
        0x412 -> :sswitch_7
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/AddAccountActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->isFinishing()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    if-nez p1, :cond_4

    .line 51
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v10

    const-string v11, "com.google"

    invoke-virtual {v10, v11}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    .line 52
    .local v3, "accounts":[Landroid/accounts/Account;
    move-object v4, v3

    .local v4, "arr$":[Landroid/accounts/Account;
    array-length v7, v4

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v7, :cond_2

    aget-object v0, v4, v5

    .line 53
    .local v0, "account":Landroid/accounts/Account;
    iget-object v10, p0, Lcom/google/android/gsf/login/LoginActivity;->mPreExistingAccounts:Ljava/util/Set;

    iget-object v11, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 56
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 57
    .local v6, "intent":Landroid/content/Intent;
    sget-object v10, Lcom/google/android/gms/auth/firstparty/shared/Status;->EXTRA_KEY_STATUS:Ljava/lang/String;

    invoke-virtual {v6, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 58
    .local v9, "statusStr":Ljava/lang/String;
    if-nez v9, :cond_3

    sget-object v8, Lcom/google/android/gms/auth/firstparty/shared/Status;->BAD_AUTHENTICATION:Lcom/google/android/gms/auth/firstparty/shared/Status;

    .line 61
    .local v8, "status":Lcom/google/android/gms/auth/firstparty/shared/Status;
    :goto_2
    invoke-virtual {p0, v8}, Lcom/google/android/gsf/login/LoginActivity;->handleStatus(Lcom/google/android/gms/auth/firstparty/shared/Status;)V

    goto :goto_0

    .line 58
    .end local v8    # "status":Lcom/google/android/gms/auth/firstparty/shared/Status;
    :cond_3
    invoke-static {v6}, Lcom/google/android/gsf/loginservice/StatusHelper;->fromIntent(Landroid/content/Intent;)Lcom/google/android/gms/auth/firstparty/shared/Status;

    move-result-object v8

    goto :goto_2

    .line 63
    .end local v3    # "accounts":[Landroid/accounts/Account;
    .end local v4    # "arr$":[Landroid/accounts/Account;
    .end local v5    # "i$":I
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "len$":I
    .end local v9    # "statusStr":Ljava/lang/String;
    :cond_4
    const-string v10, "preExistingAccounts"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "accountNames":[Ljava/lang/String;
    move-object v4, v2

    .local v4, "arr$":[Ljava/lang/String;
    array-length v7, v4

    .restart local v7    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_3
    if-ge v5, v7, :cond_0

    aget-object v1, v4, v5

    .line 65
    .local v1, "accountName":Ljava/lang/String;
    iget-object v10, p0, Lcom/google/android/gsf/login/LoginActivity;->mPreExistingAccounts:Ljava/util/Set;

    invoke-interface {v10, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    add-int/lit8 v5, v5, 0x1

    goto :goto_3
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/AddAccountActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 73
    iget-object v1, p0, Lcom/google/android/gsf/login/LoginActivity;->mPreExistingAccounts:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 74
    .local v0, "accountNames":[Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/gsf/login/LoginActivity;->mPreExistingAccounts:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 75
    const-string v1, "preExistingAccounts"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 76
    return-void
.end method
