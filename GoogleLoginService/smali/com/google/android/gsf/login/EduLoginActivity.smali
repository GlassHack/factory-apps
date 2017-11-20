.class public Lcom/google/android/gsf/login/EduLoginActivity;
.super Lcom/google/android/gsf/login/AddAccountActivity;
.source "EduLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/login/EduLoginActivity$1;
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

    const-class v1, Lcom/google/android/gsf/login/EduLoginActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/login/EduLoginActivity;->LOG_PREFIX:Ljava/lang/String;

    .line 39
    const-string v0, "GLSActivity"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gsf/login/EduLoginActivity;->mIsLogVerbose:Z

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/login/EduLoginActivity;->mPreExistingAccounts:Ljava/util/Set;

    return-void
.end method

.method private finishLogin(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 248
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/EduLoginActivity;->onSetupComplete(Z)V

    .line 249
    if-nez p1, :cond_0

    .line 250
    new-instance p1, Landroid/content/Intent;

    .end local p1    # "intent":Landroid/content/Intent;
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 252
    .restart local p1    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/login/EduLoginActivity;->bundleResultData(Landroid/content/Intent;)V

    .line 253
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gsf/login/EduLoginActivity;->setResult(ILandroid/content/Intent;)V

    .line 254
    invoke-virtual {p0}, Lcom/google/android/gsf/login/EduLoginActivity;->finish()V

    .line 255
    return-void
.end method

.method private launchPasswordPromptTask()V
    .locals 4

    .prologue
    .line 259
    const/4 v0, 0x0

    .line 262
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/google/android/gsf/login/EduLoginActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v2, v2, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gsf/login/EduLoginActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v2, v2, Lcom/google/android/gsf/loginservice/GLSSession;->mIsBrowserFlowRequired:Z

    if-nez v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 263
    .local v1, "result":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 264
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v2, Lcom/google/android/gsf/login/UsernamePasswordActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 265
    .restart local v0    # "intent":Landroid/content/Intent;
    const/16 v2, 0x402

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gsf/login/EduLoginActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    .line 271
    :goto_1
    return-void

    .line 262
    .end local v1    # "result":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 267
    .restart local v1    # "result":Z
    :cond_2
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v2, Lcom/google/android/gsf/login/BrowserActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 268
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "authAccount"

    iget-object v3, p0, Lcom/google/android/gsf/login/EduLoginActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v3, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    const/16 v2, 0x3ec

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gsf/login/EduLoginActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method private removeAnyNewAccounts()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 274
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 275
    .local v1, "accountManager":Landroid/accounts/AccountManager;
    const-string v6, "com.google"

    invoke-virtual {v1, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 276
    .local v2, "accounts":[Landroid/accounts/Account;
    move-object v3, v2

    .local v3, "arr$":[Landroid/accounts/Account;
    array-length v5, v3

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v3, v4

    .line 277
    .local v0, "account":Landroid/accounts/Account;
    iget-object v6, p0, Lcom/google/android/gsf/login/EduLoginActivity;->mPreExistingAccounts:Ljava/util/Set;

    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 278
    const-string v6, "GLSActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EduLoginActivity: removing pre-existing account: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-virtual {v1, v0, v9, v9}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 276
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 282
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_1
    return-void
.end method


# virtual methods
.method protected handleBack(IILandroid/content/Intent;Lcom/google/android/gms/auth/firstparty/shared/Status;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "status"    # Lcom/google/android/gms/auth/firstparty/shared/Status;

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/google/android/gsf/login/EduLoginActivity;->mAddAccount:Z

    if-nez v0, :cond_0

    .line 288
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gsf/login/EduLoginActivity;->setResult(ILandroid/content/Intent;)V

    .line 289
    invoke-virtual {p0}, Lcom/google/android/gsf/login/EduLoginActivity;->finish()V

    .line 316
    :goto_0
    return-void

    .line 293
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 312
    invoke-virtual {p0, p2}, Lcom/google/android/gsf/login/EduLoginActivity;->setResult(I)V

    .line 313
    invoke-virtual {p0}, Lcom/google/android/gsf/login/EduLoginActivity;->finish()V

    goto :goto_0

    .line 299
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/UsernamePasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x402

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/EduLoginActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 305
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PlusFaqActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3ff

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/EduLoginActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 293
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_0
        0x3ea -> :sswitch_0
        0x3ec -> :sswitch_0
        0x405 -> :sswitch_1
        0x409 -> :sswitch_0
    .end sparse-switch
.end method

.method public handleStatus(Lcom/google/android/gms/auth/firstparty/shared/Status;)V
    .locals 3
    .param p1, "status"    # Lcom/google/android/gms/auth/firstparty/shared/Status;

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/google/android/gsf/login/EduLoginActivity$1;->$SwitchMap$com$google$android$gms$auth$firstparty$shared$Status:[I

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/shared/Status;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 95
    :goto_0
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v1, Lcom/google/android/gsf/login/ShowErrorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    .restart local v0    # "intent":Landroid/content/Intent;
    const/16 v1, 0x3f1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/EduLoginActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    .line 98
    :goto_1
    return-void

    .line 82
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/gsf/login/EduLoginActivity;->launchPasswordPromptTask()V

    goto :goto_1

    .line 85
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v1, Lcom/google/android/gsf/login/CaptchaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    .restart local v0    # "intent":Landroid/content/Intent;
    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/EduLoginActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 89
    :pswitch_2
    const-string v1, "GLSActivity"

    const-string v2, "EduLoginActivity#handleStatus: Unexpected NEED_PERMISSION status! Token requests should be routed to Google Play Services."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v7, 0x3ea

    const/4 v6, 0x6

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 110
    if-ne p2, v3, :cond_0

    .line 111
    const/16 v2, 0x409

    if-ne p1, v2, :cond_2

    .line 113
    const/4 p2, 0x0

    .line 122
    :cond_0
    invoke-static {p3}, Lcom/google/android/gsf/loginservice/StatusHelper;->fromExtra(Landroid/content/Intent;)Lcom/google/android/gms/auth/firstparty/shared/Status;

    move-result-object v1

    .line 123
    .local v1, "status":Lcom/google/android/gms/auth/firstparty/shared/Status;
    if-nez p2, :cond_3

    .line 124
    invoke-virtual {p0}, Lcom/google/android/gsf/login/EduLoginActivity;->isSetupWizard()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    const-string v2, "GLSActivity"

    const-string v3, "EduLoginActivity: removing any pre-existing accounts since the setup wizard was canceled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-direct {p0}, Lcom/google/android/gsf/login/EduLoginActivity;->removeAnyNewAccounts()V

    .line 129
    :cond_1
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/google/android/gsf/login/EduLoginActivity;->handleBack(IILandroid/content/Intent;Lcom/google/android/gms/auth/firstparty/shared/Status;)V

    .line 245
    .end local v1    # "status":Lcom/google/android/gms/auth/firstparty/shared/Status;
    :goto_0
    return-void

    .line 116
    :cond_2
    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/EduLoginActivity;->setResult(I)V

    .line 117
    invoke-virtual {p0}, Lcom/google/android/gsf/login/EduLoginActivity;->finish()V

    goto :goto_0

    .line 133
    .restart local v1    # "status":Lcom/google/android/gms/auth/firstparty/shared/Status;
    :cond_3
    sparse-switch p1, :sswitch_data_0

    .line 241
    const-string v2, "GLSActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown activity result req="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " rc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gsf/login/AddAccountActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 135
    :sswitch_0
    if-ne p2, v6, :cond_4

    .line 136
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/google/android/gsf/login/BrowserActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v3, 0x3ec

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gsf/login/EduLoginActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 146
    :cond_4
    :sswitch_1
    if-ne p2, v4, :cond_5

    .line 147
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/google/android/gsf/login/LoginActivityTask;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2, v7}, Lcom/google/android/gsf/login/EduLoginActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 151
    :cond_5
    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/EduLoginActivity;->setResult(I)V

    .line 152
    invoke-virtual {p0}, Lcom/google/android/gsf/login/EduLoginActivity;->finish()V

    goto :goto_0

    .line 158
    :sswitch_2
    if-ne p2, v4, :cond_6

    .line 161
    invoke-virtual {p0}, Lcom/google/android/gsf/login/EduLoginActivity;->accountAuthenticatorRetryResult()V

    .line 162
    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/EduLoginActivity;->setResult(I)V

    .line 167
    :goto_1
    iget-object v2, p0, Lcom/google/android/gsf/login/EduLoginActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v2, v2, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gsf/login/EduLoginActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget v3, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mCallingUID:I

    invoke-static {p0, v2, v3}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->cancelPermissionNotification(Landroid/content/Context;Ljava/lang/String;I)V

    .line 169
    invoke-virtual {p0}, Lcom/google/android/gsf/login/EduLoginActivity;->finish()V

    goto :goto_0

    .line 164
    :cond_6
    invoke-virtual {p0, v5, p3}, Lcom/google/android/gsf/login/EduLoginActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_1

    .line 174
    :sswitch_3
    iget-boolean v2, p0, Lcom/google/android/gsf/login/EduLoginActivity;->mConfirmCredentials:Z

    if-eqz v2, :cond_7

    .line 176
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/EduLoginActivity;->accountAuthenticatorResult(Landroid/os/Bundle;)V

    .line 177
    invoke-virtual {p0, v4, p3}, Lcom/google/android/gsf/login/EduLoginActivity;->setResult(ILandroid/content/Intent;)V

    .line 178
    invoke-virtual {p0}, Lcom/google/android/gsf/login/EduLoginActivity;->finish()V

    goto :goto_0

    .line 182
    :cond_7
    if-ne p2, v4, :cond_9

    .line 183
    iget-boolean v2, p0, Lcom/google/android/gsf/login/EduLoginActivity;->mAddAccount:Z

    if-nez v2, :cond_8

    .line 185
    iput-boolean v5, p0, Lcom/google/android/gsf/login/EduLoginActivity;->mCallAuthenticatorResponseOnFinish:Z

    .line 186
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/EduLoginActivity;->accountAuthenticatorResult(Landroid/os/Bundle;)V

    .line 187
    invoke-virtual {p0, v4, p3}, Lcom/google/android/gsf/login/EduLoginActivity;->setResult(ILandroid/content/Intent;)V

    .line 189
    iget-object v2, p0, Lcom/google/android/gsf/login/EduLoginActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v2, v2, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gsf/login/EduLoginActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v3, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mAccountManagerOptions:Landroid/os/Bundle;

    invoke-static {p0, v2, v3}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->onIntentDone(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 193
    invoke-virtual {p0}, Lcom/google/android/gsf/login/EduLoginActivity;->finish()V

    goto/16 :goto_0

    .line 197
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gsf/login/EduLoginActivity;->signalAccountInstallation()V

    .line 198
    invoke-direct {p0, p3}, Lcom/google/android/gsf/login/EduLoginActivity;->finishLogin(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 200
    :cond_9
    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/Status;->BAD_AUTHENTICATION:Lcom/google/android/gms/auth/firstparty/shared/Status;

    if-ne v1, v2, :cond_a

    .line 201
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/google/android/gsf/login/ShowErrorActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 202
    .local v0, "showError":Landroid/content/Intent;
    const/16 v2, 0x409

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gsf/login/EduLoginActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 204
    .end local v0    # "showError":Landroid/content/Intent;
    :cond_a
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/EduLoginActivity;->handleStatus(Lcom/google/android/gms/auth/firstparty/shared/Status;)V

    goto/16 :goto_0

    .line 212
    :sswitch_4
    invoke-direct {p0}, Lcom/google/android/gsf/login/EduLoginActivity;->launchPasswordPromptTask()V

    goto/16 :goto_0

    .line 217
    :sswitch_5
    iget-object v2, p0, Lcom/google/android/gsf/login/EduLoginActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v2, v2, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gsf/login/EduLoginActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v3, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mAccountManagerOptions:Landroid/os/Bundle;

    invoke-static {p0, v2, v3}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->onIntentDone(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 219
    if-ne p2, v6, :cond_b

    .line 220
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/google/android/gsf/login/BrowserActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v3, 0x3ec

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gsf/login/EduLoginActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 223
    :cond_b
    const/4 v2, 0x5

    if-ne p2, v2, :cond_c

    .line 224
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/google/android/gsf/login/UsernamePasswordActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v3, 0x402

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gsf/login/EduLoginActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 227
    :cond_c
    if-ne p2, v4, :cond_d

    .line 229
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/google/android/gsf/login/LoginActivityTask;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2, v7}, Lcom/google/android/gsf/login/EduLoginActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 234
    :cond_d
    invoke-virtual {p0, p2}, Lcom/google/android/gsf/login/EduLoginActivity;->setResult(I)V

    .line 235
    invoke-virtual {p0}, Lcom/google/android/gsf/login/EduLoginActivity;->finish()V

    goto/16 :goto_0

    .line 133
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_1
        0x3ea -> :sswitch_3
        0x3ec -> :sswitch_1
        0x3f1 -> :sswitch_5
        0x402 -> :sswitch_0
        0x403 -> :sswitch_2
        0x409 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/AddAccountActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/google/android/gsf/login/EduLoginActivity;->isFinishing()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    if-nez p1, :cond_3

    .line 51
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v8

    const-string v9, "com.google"

    invoke-virtual {v8, v9}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    .line 52
    .local v3, "accounts":[Landroid/accounts/Account;
    move-object v4, v3

    .local v4, "arr$":[Landroid/accounts/Account;
    array-length v6, v4

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v0, v4, v5

    .line 53
    .local v0, "account":Landroid/accounts/Account;
    iget-object v8, p0, Lcom/google/android/gsf/login/EduLoginActivity;->mPreExistingAccounts:Ljava/util/Set;

    iget-object v9, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 56
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gsf/login/EduLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gsf/loginservice/StatusHelper;->fromIntent(Landroid/content/Intent;)Lcom/google/android/gms/auth/firstparty/shared/Status;

    move-result-object v7

    .line 57
    .local v7, "status":Lcom/google/android/gms/auth/firstparty/shared/Status;
    invoke-virtual {p0, v7}, Lcom/google/android/gsf/login/EduLoginActivity;->handleStatus(Lcom/google/android/gms/auth/firstparty/shared/Status;)V

    goto :goto_0

    .line 59
    .end local v3    # "accounts":[Landroid/accounts/Account;
    .end local v4    # "arr$":[Landroid/accounts/Account;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "status":Lcom/google/android/gms/auth/firstparty/shared/Status;
    :cond_3
    const-string v8, "preExistingAccounts"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "accountNames":[Ljava/lang/String;
    move-object v4, v2

    .local v4, "arr$":[Ljava/lang/String;
    array-length v6, v4

    .restart local v6    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_2
    if-ge v5, v6, :cond_0

    aget-object v1, v4, v5

    .line 61
    .local v1, "accountName":Ljava/lang/String;
    iget-object v8, p0, Lcom/google/android/gsf/login/EduLoginActivity;->mPreExistingAccounts:Ljava/util/Set;

    invoke-interface {v8, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/AddAccountActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 69
    iget-object v1, p0, Lcom/google/android/gsf/login/EduLoginActivity;->mPreExistingAccounts:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 70
    .local v0, "accountNames":[Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/gsf/login/EduLoginActivity;->mPreExistingAccounts:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 71
    const-string v1, "preExistingAccounts"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 72
    return-void
.end method
