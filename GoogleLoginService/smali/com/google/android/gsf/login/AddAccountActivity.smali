.class public Lcom/google/android/gsf/login/AddAccountActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "AddAccountActivity.java"


# static fields
.field private static BEFORE_PROFILE:I

.field private static PROFILE_PROGRESS:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, -0x1

    sput v0, Lcom/google/android/gsf/login/AddAccountActivity;->BEFORE_PROFILE:I

    .line 45
    const/4 v0, 0x0

    sput v0, Lcom/google/android/gsf/login/AddAccountActivity;->PROFILE_PROGRESS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected bundleResultData(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 157
    iget-object v1, p0, Lcom/google/android/gsf/login/AddAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v1, v1, Lcom/google/android/gsf/loginservice/GLSSession;->mOfferMessageHtml:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 159
    if-eqz p1, :cond_1

    .line 160
    move-object v0, p1

    .line 164
    .local v0, "resultData":Landroid/content/Intent;
    :goto_0
    const-string v1, "specialNotificationMsgHtml"

    iget-object v2, p0, Lcom/google/android/gsf/login/AddAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v2, v2, Lcom/google/android/gsf/loginservice/GLSSession;->mOfferMessageHtml:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    .end local v0    # "resultData":Landroid/content/Intent;
    :cond_0
    return-void

    .line 162
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .restart local v0    # "resultData":Landroid/content/Intent;
    goto :goto_0
.end method

.method public doMarketAndSyncWork(Z)V
    .locals 2
    .param p1, "isBackButtonDisabled"    # Z

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AddAccountActivity;->tryGetMarketIntent()Landroid/content/Intent;

    move-result-object v0

    .line 120
    .local v0, "marketIntent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 121
    const-string v1, "noBack"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 122
    const/16 v1, 0x3fc

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/AddAccountActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/login/AddAccountActivity;->launchSyncIntroActivity(Z)V

    goto :goto_0
.end method

.method protected finishGoogleServicesActivity(ILandroid/content/Intent;)V
    .locals 4
    .param p1, "resultCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 202
    iget-object v0, p0, Lcom/google/android/gsf/login/AddAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mShownGoogleServices:Z

    .line 203
    if-eqz p2, :cond_2

    .line 204
    const-string v0, "agreeBackup"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    const-string v0, "GLSActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EXTRA_AGREE_BACKUP="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "agreeBackup"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/google/android/gsf/login/AddAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    const-string v1, "agreeBackup"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mPerformBackup:Z

    .line 209
    :cond_0
    const-string v0, "agreeRestore"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    const-string v0, "GLSActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EXTRA_AGREE_RESTORE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "agreeRestore"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/google/android/gsf/login/AddAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    const-string v1, "agreeRestore"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mPerformRestore:Z

    .line 214
    :cond_1
    const-string v0, "GLSActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EXTRA_AGREE_COMMUNICATION="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "agreePlayEmail"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string v0, "agreePlayEmail"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 217
    iget-object v0, p0, Lcom/google/android/gsf/login/AddAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    const-string v1, "agreePlayEmail"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mAgreedToPlayEmail:Z

    .line 221
    :cond_2
    return-void
.end method

.method protected getGPlusSignUpIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 142
    iget-object v2, p0, Lcom/google/android/gsf/login/AddAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v2, v2, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/oob/SignUp;->newSignUpIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 147
    .local v0, "gplusSignUpIntent":Landroid/content/Intent;
    const/4 v1, 0x2

    .line 148
    .local v1, "theme":I
    const-string v2, "com.google.android.gms.plus.OVERRIDE_THEME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 149
    const-string v2, "GLSActivity"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    const-string v2, "GLSActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GPlus intent to be launched: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and extras: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    return-object v0
.end method

.method protected getGoogleServicesActivityIntent()Landroid/content/Intent;
    .locals 7

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AddAccountActivity;->isSetupWizard()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 172
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.google.android.setupwizard"

    const-string v6, "com.google.android.setupwizard.GoogleServicesActivity"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 179
    .local v0, "intent":Landroid/content/Intent;
    :goto_0
    const/4 v1, 0x1

    .line 180
    .local v1, "setBackup":Z
    const/4 v3, 0x1

    .line 181
    .local v3, "setRestore":Z
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AddAccountActivity;->getGooglePlayCheckBoxDefault()Z

    move-result v2

    .line 183
    .local v2, "setCommunication":Z
    iget-object v4, p0, Lcom/google/android/gsf/login/AddAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v4, v4, Lcom/google/android/gsf/loginservice/GLSSession;->mShownGoogleServices:Z

    if-eqz v4, :cond_0

    .line 184
    iget-object v4, p0, Lcom/google/android/gsf/login/AddAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v1, v4, Lcom/google/android/gsf/loginservice/GLSSession;->mPerformBackup:Z

    .line 185
    iget-object v4, p0, Lcom/google/android/gsf/login/AddAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v3, v4, Lcom/google/android/gsf/loginservice/GLSSession;->mPerformRestore:Z

    .line 186
    iget-object v4, p0, Lcom/google/android/gsf/login/AddAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v2, v4, Lcom/google/android/gsf/loginservice/GLSSession;->mAgreedToPlayEmail:Z

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AddAccountActivity;->isFirstAccount()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gsf/login/AddAccountActivity;->isPrimaryUser()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gsf/login/AddAccountActivity;->backupPackageExists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 190
    const-string v4, "agreeBackup"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 191
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AddAccountActivity;->isSetupWizard()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/gsf/login/AddAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v4, v4, Lcom/google/android/gsf/loginservice/GLSSession;->mCreatingAccount:Z

    if-nez v4, :cond_1

    .line 194
    const-string v4, "agreeRestore"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 197
    :cond_1
    const-string v4, "agreePlayEmail"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 198
    return-object v0

    .line 175
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "setBackup":Z
    .end local v2    # "setCommunication":Z
    .end local v3    # "setRestore":Z
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/google/android/gsf/login/GoogleServicesActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0
.end method

.method public launchSyncIntroActivity(Z)V
    .locals 3
    .param p1, "isBackButtonDisabled"    # Z

    .prologue
    .line 136
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/gsf/login/SyncIntroActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "noBack"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 138
    .local v0, "syncIntroIntent":Landroid/content/Intent;
    const/16 v1, 0x3ed

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/AddAccountActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    .line 139
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    if-nez p1, :cond_0

    .line 52
    iget-object v0, p0, Lcom/google/android/gsf/login/AddAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mShownGoogleServices:Z

    .line 54
    :cond_0
    return-void
.end method

.method public signalAccountInstallation()V
    .locals 4

    .prologue
    .line 67
    iget-object v2, p0, Lcom/google/android/gsf/login/AddAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v2, v2, Lcom/google/android/gsf/loginservice/GLSSession;->mAgreedToPlayTos:Z

    if-eqz v2, :cond_0

    .line 68
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.vending.TOS_ACKED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .local v1, "playIntent":Landroid/content/Intent;
    const-string v2, "com.android.vending"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const-string v2, "TosAckedReceiver.account"

    iget-object v3, p0, Lcom/google/android/gsf/login/AddAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v3, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string v2, "TosAckedReceiver.optIn"

    iget-object v3, p0, Lcom/google/android/gsf/login/AddAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v3, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mAgreedToPlayEmail:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 73
    const-string v2, "com.android.vending.TOS_ACKED"

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gsf/login/AddAccountActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 77
    .end local v1    # "playIntent":Landroid/content/Intent;
    :cond_0
    iget-object v2, p0, Lcom/google/android/gsf/login/AddAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v2, v2, Lcom/google/android/gsf/loginservice/GLSSession;->mAgreedToChromeTosAndPrivacy:Z

    if-eqz v2, :cond_1

    .line 78
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.chrome.TOS_ACKED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, "chromeIntent":Landroid/content/Intent;
    const-string v2, "com.android.chrome"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v2, "TosAckedReceiver.account"

    iget-object v3, p0, Lcom/google/android/gsf/login/AddAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v3, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v2, "com.android.chrome.TOS_ACKED"

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gsf/login/AddAccountActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 83
    .end local v0    # "chromeIntent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public startSessionActivityForResult(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 61
    iput p2, p0, Lcom/google/android/gsf/login/AddAccountActivity;->mNextRequest:I

    .line 62
    invoke-super {p0, p1, p2}, Lcom/google/android/gsf/login/BaseActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    .line 63
    return-void
.end method

.method public tryGetMarketIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    .line 95
    iget-object v3, p0, Lcom/google/android/gsf/login/AddAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v3, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mShowOffer:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gsf/login/AddAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v3, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mOfferIntent:Landroid/content/Intent;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/google/android/gsf/login/AddAccountActivity;->sTestHooks:Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;

    iget-boolean v3, v3, Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;->mSkipCreditCard:Z

    if-nez v3, :cond_2

    .line 97
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gsf/login/AddAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v1, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mOfferIntent:Landroid/content/Intent;

    .line 98
    .local v1, "intent":Landroid/content/Intent;
    sget-object v3, Lcom/google/android/gsf/login/AddAccountActivity;->sTestHooks:Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;

    iget-object v3, v3, Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;->mMarketIntent:Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 99
    sget-object v3, Lcom/google/android/gsf/login/AddAccountActivity;->sTestHooks:Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;

    iget-object v1, v3, Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;->mMarketIntent:Landroid/content/Intent;

    .line 101
    :cond_0
    iget-object v3, p0, Lcom/google/android/gsf/login/AddAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v3, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mUserData:Ljava/util/HashMap;

    sget-object v4, Lcom/google/android/gsf/loginservice/JsonKey;->FIRST_NAME:Lcom/google/android/gsf/loginservice/JsonKey;

    invoke-virtual {v4}, Lcom/google/android/gsf/loginservice/JsonKey;->getWire()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 102
    .local v0, "first":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/gsf/login/AddAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v3, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mUserData:Ljava/util/HashMap;

    sget-object v4, Lcom/google/android/gsf/loginservice/JsonKey;->LAST_NAME:Lcom/google/android/gsf/loginservice/JsonKey;

    invoke-virtual {v4}, Lcom/google/android/gsf/loginservice/JsonKey;->getWire()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 103
    .local v2, "last":Ljava/lang/String;
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 104
    const-string v3, "cardholder_name"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    :cond_1
    const-string v3, "on_initial_setup"

    iget-object v4, p0, Lcom/google/android/gsf/login/AddAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v4, v4, Lcom/google/android/gsf/loginservice/GLSSession;->mSetupWizard:Z

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v0    # "first":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "last":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 111
    :catch_0
    move-exception v3

    .line 115
    :cond_2
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 108
    :catch_1
    move-exception v3

    goto :goto_1
.end method
