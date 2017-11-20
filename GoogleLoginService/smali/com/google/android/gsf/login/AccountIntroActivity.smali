.class public Lcom/google/android/gsf/login/AccountIntroActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "AccountIntroActivity.java"


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String;


# instance fields
.field private mCheckedForExternalAccountSetupWorkflow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/google/android/gsf/login/AccountIntroActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/login/AccountIntroActivity;->LOG_PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    return-void
.end method

.method private afterAccountIntro(I)V
    .locals 2
    .param p1, "resultCode"    # I

    .prologue
    const/4 v1, 0x0

    .line 248
    sparse-switch p1, :sswitch_data_0

    .line 272
    :goto_0
    return-void

    .line 250
    :sswitch_0
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/AccountIntroActivity;->setResult(I)V

    .line 251
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->finish()V

    goto :goto_0

    .line 255
    :sswitch_1
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->accountAuthenticatorResultForSkip()V

    .line 256
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/AccountIntroActivity;->setResult(I)V

    .line 257
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->finish()V

    goto :goto_0

    .line 261
    :sswitch_2
    const/16 v0, 0x3f7

    iput v0, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mNextRequest:I

    .line 262
    iget-object v0, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iput-boolean v1, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mCreatingAccount:Z

    .line 263
    invoke-direct {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->checkConnectionAndCheckin()V

    goto :goto_0

    .line 267
    :sswitch_3
    const/16 v0, 0x3f6

    iput v0, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mNextRequest:I

    .line 268
    iget-object v0, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mCreatingAccount:Z

    .line 269
    invoke-direct {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->checkConnectionAndCheckin()V

    goto :goto_0

    .line 248
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7 -> :sswitch_1
        0x8 -> :sswitch_2
        0x9 -> :sswitch_3
    .end sparse-switch
.end method

.method private afterWaitForCheckin()V
    .locals 2

    .prologue
    .line 297
    iget-object v1, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v1, v1, Lcom/google/android/gsf/loginservice/GLSSession;->mIsEduSignin:Z

    if-eqz v1, :cond_0

    .line 298
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/EduLoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 299
    .local v0, "intent":Landroid/content/Intent;
    iget v1, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mNextRequest:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/AccountIntroActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    .line 303
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 302
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->executeStandardAccountSetupFlows()V

    goto :goto_0
.end method

.method private afterWifi()V
    .locals 2

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->haveCheckin(Landroid/content/ContentResolver;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 288
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 289
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x3f0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/AccountIntroActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    .line 294
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 293
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->afterWaitForCheckin()V

    goto :goto_0
.end method

.method private checkConnectionAndCheckin()V
    .locals 2

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->hasNetworkConnection()Z

    move-result v1

    if-nez v1, :cond_0

    .line 277
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/SetupWirelessActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 278
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x3fd

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/AccountIntroActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    .line 282
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 281
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->afterWifi()V

    goto :goto_0
.end method

.method private executeStandardAccountSetupFlows()V
    .locals 4

    .prologue
    .line 309
    iget v2, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mNextRequest:I

    const/16 v3, 0x3f6

    if-ne v2, v3, :cond_0

    .line 310
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/google/android/gsf/login/CreateAccountActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 317
    .local v1, "workflowComponent":Landroid/content/ComponentName;
    :goto_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 318
    .local v0, "intent":Landroid/content/Intent;
    iget v2, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mNextRequest:I

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gsf/login/AccountIntroActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    .line 319
    return-void

    .line 314
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "workflowComponent":Landroid/content/ComponentName;
    :cond_0
    iget-object v2, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/android/gsf/loginservice/GLSSession;->mError:Lcom/google/android/gms/auth/firstparty/shared/Status;

    .line 315
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/google/android/gsf/login/LoginActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v1    # "workflowComponent":Landroid/content/ComponentName;
    goto :goto_0
.end method

.method private maybeSkipAccountSetup()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 428
    sget-object v1, Lcom/google/android/gsf/login/AccountIntroActivity;->sTestHooks:Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;

    iget-boolean v1, v1, Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;->mSkipExistingAccountCheck:Z

    if-nez v1, :cond_0

    .line 429
    iget-object v1, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v1, v1, Lcom/google/android/gsf/loginservice/GLSSession;->mSetupWizard:Z

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.google"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    .line 432
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/gsf/login/AccountIntroActivity;->setSetupWizardResults(Landroid/content/Intent;)V

    .line 433
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/AccountIntroActivity;->onSetupComplete(Z)V

    .line 434
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->finish()V

    .line 435
    const/4 v0, 0x1

    .line 438
    :cond_0
    return v0
.end method

.method private populateCallingAppDescription()V
    .locals 10

    .prologue
    .line 217
    move-object v0, p0

    .line 218
    .local v0, "current":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    .line 219
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 220
    .local v3, "pk":Landroid/content/pm/PackageManager;
    invoke-virtual {v0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v4

    .line 221
    .local v4, "pkgName":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 225
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 228
    :cond_0
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v3, v4, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 229
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    .line 230
    .local v5, "sessionId":Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    new-instance v7, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    iget-object v8, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v9, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v7, v8, v9, v5, v5}, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v7, v6, Lcom/google/android/gsf/loginservice/GLSSession;->mCallingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "sessionId":Ljava/lang/String;
    :goto_0
    return-void

    .line 235
    :catch_0
    move-exception v1

    .line 241
    .local v1, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "GLSActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/google/android/gsf/login/AccountIntroActivity;->LOG_PREFIX:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Unable to get caller ApplicationInfo for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setSetupWizardResults(Landroid/content/Intent;)V
    .locals 4
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 443
    if-nez p1, :cond_0

    .line 444
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 450
    .local v0, "resultData":Landroid/content/Intent;
    :goto_0
    const-string v1, "specialNotificationMsgHtml"

    iget-object v2, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v2, v2, Lcom/google/android/gsf/loginservice/GLSSession;->mOfferMessageHtml:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    const-string v1, "nameCompleted"

    iget-object v2, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v2, v2, Lcom/google/android/gsf/loginservice/GLSSession;->mNameActivityCompleted:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 452
    const-string v1, "photoCompleted"

    iget-object v2, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v2, v2, Lcom/google/android/gsf/loginservice/GLSSession;->mPhotoActivityCompleted:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 454
    sget-object v1, Lcom/google/android/gsf/loginservice/JsonKey;->FIRST_NAME:Lcom/google/android/gsf/loginservice/JsonKey;

    invoke-virtual {v1}, Lcom/google/android/gsf/loginservice/JsonKey;->getWire()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->getUserData()Ljava/util/HashMap;

    move-result-object v1

    sget-object v3, Lcom/google/android/gsf/loginservice/JsonKey;->FIRST_NAME:Lcom/google/android/gsf/loginservice/JsonKey;

    invoke-virtual {v3}, Lcom/google/android/gsf/loginservice/JsonKey;->getWire()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 456
    sget-object v1, Lcom/google/android/gsf/loginservice/JsonKey;->LAST_NAME:Lcom/google/android/gsf/loginservice/JsonKey;

    invoke-virtual {v1}, Lcom/google/android/gsf/loginservice/JsonKey;->getWire()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->getUserData()Ljava/util/HashMap;

    move-result-object v1

    sget-object v3, Lcom/google/android/gsf/loginservice/JsonKey;->LAST_NAME:Lcom/google/android/gsf/loginservice/JsonKey;

    invoke-virtual {v3}, Lcom/google/android/gsf/loginservice/JsonKey;->getWire()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    const-string v1, "mUserData"

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 462
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gsf/login/AccountIntroActivity;->setResult(ILandroid/content/Intent;)V

    .line 463
    return-void

    .line 446
    .end local v0    # "resultData":Landroid/content/Intent;
    :cond_0
    move-object v0, p1

    .restart local v0    # "resultData":Landroid/content/Intent;
    goto :goto_0
.end method

.method private startAccountIntro()V
    .locals 5

    .prologue
    .line 177
    iget-object v2, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v2, v2, Lcom/google/android/gsf/loginservice/GLSSession;->mIsEduSignin:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v2, v2, Lcom/google/android/gsf/loginservice/GLSSession;->mProvisionedEmail:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v2, v2, Lcom/google/android/gsf/loginservice/GLSSession;->mProvisionedName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 179
    :cond_0
    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/google/android/gsf/login/AccountIntroActivity;->afterAccountIntro(I)V

    .line 207
    :goto_0
    return-void

    .line 189
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "GmsCoreAccountSetupWorkflow"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    .line 193
    .local v1, "isGmsCoreAccountSetupWorkflowEnabled":Z
    if-eqz v1, :cond_3

    iget-boolean v2, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mCheckedForExternalAccountSetupWorkflow:Z

    if-nez v2, :cond_3

    .line 195
    const-string v2, "GLSActivity"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 196
    const-string v2, "GLSActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/google/android/gsf/login/AccountIntroActivity;->LOG_PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Use alternate account setup workflow."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mCheckedForExternalAccountSetupWorkflow:Z

    .line 200
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/google/android/gsf/login/PrepareAccountSetupActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 201
    .local v0, "altAccountSetupWorkflow":Landroid/content/Intent;
    const/16 v2, 0x413

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gsf/login/AccountIntroActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 205
    .end local v0    # "altAccountSetupWorkflow":Landroid/content/Intent;
    :cond_3
    invoke-direct {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->startStandardAccountIntro()V

    goto :goto_0
.end method

.method private startStandardAccountIntro()V
    .locals 3

    .prologue
    const/16 v2, 0x408

    .line 322
    iget-object v1, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v1, v1, Lcom/google/android/gsf/loginservice/GLSSession;->mSetupWizard:Z

    if-eqz v1, :cond_0

    .line 323
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/AccountPreIntroUIActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 324
    .local v0, "introIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gsf/login/AccountIntroActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    .line 329
    :goto_0
    return-void

    .line 326
    .end local v0    # "introIntent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/AccountIntroUIActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 327
    .restart local v0    # "introIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gsf/login/AccountIntroActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 333
    sparse-switch p1, :sswitch_data_0

    .line 410
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gsf/login/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 413
    :goto_0
    return-void

    .line 336
    :sswitch_0
    invoke-direct {p0, p2}, Lcom/google/android/gsf/login/AccountIntroActivity;->afterAccountIntro(I)V

    goto :goto_0

    .line 341
    :sswitch_1
    if-nez p2, :cond_0

    .line 344
    iget-object v1, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iput-object v2, v1, Lcom/google/android/gsf/loginservice/GLSSession;->mProvisionedEmail:Ljava/lang/String;

    .line 345
    iget-object v1, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iput-object v2, v1, Lcom/google/android/gsf/loginservice/GLSSession;->mProvisionedName:Ljava/lang/String;

    .line 346
    invoke-direct {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->startAccountIntro()V

    goto :goto_0

    .line 348
    :cond_0
    const-string v1, "GLSActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AccountIntro: activity result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->isSetupWizard()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 350
    invoke-direct {p0, p3}, Lcom/google/android/gsf/login/AccountIntroActivity;->setSetupWizardResults(Landroid/content/Intent;)V

    .line 354
    :goto_1
    iput-boolean v5, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mCallAuthenticatorResponseOnFinish:Z

    .line 357
    iget-object v1, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v1, v1, Lcom/google/android/gsf/loginservice/GLSSession;->mActivities:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 359
    if-ne p2, v4, :cond_2

    .line 360
    iget-object v1, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v1, v1, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/AccountIntroActivity;->accountAuthenticatorResultForAdd(Ljava/lang/String;)V

    .line 365
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->finish()V

    goto :goto_0

    .line 352
    :cond_1
    invoke-virtual {p0, p2}, Lcom/google/android/gsf/login/AccountIntroActivity;->setResult(I)V

    goto :goto_1

    .line 363
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->accountAuthenticatorResultForSkip()V

    goto :goto_2

    .line 374
    :sswitch_2
    invoke-direct {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->afterWaitForCheckin()V

    goto :goto_0

    .line 378
    :sswitch_3
    if-nez p2, :cond_3

    .line 379
    invoke-direct {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->startAccountIntro()V

    goto :goto_0

    .line 381
    :cond_3
    invoke-direct {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->afterWifi()V

    goto :goto_0

    .line 385
    :sswitch_4
    if-eq p2, v4, :cond_4

    .line 389
    invoke-direct {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->startStandardAccountIntro()V

    goto :goto_0

    .line 400
    :cond_4
    iget-object v1, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iput-boolean v5, v1, Lcom/google/android/gsf/loginservice/GLSSession;->mAllowGooglePlus:Z

    .line 401
    iget-object v1, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    const-string v2, "authAccount"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    .line 402
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 404
    .local v0, "postSignInIntent":Landroid/content/Intent;
    sget-object v1, Lcom/google/android/gsf/loginservice/StatusHelper;->SUCCESS:Lcom/google/android/gsf/loginservice/StatusHelper;

    invoke-virtual {v1, v0}, Lcom/google/android/gsf/loginservice/StatusHelper;->toIntent(Landroid/content/Intent;)V

    .line 406
    const/16 v1, 0x3f7

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/AccountIntroActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 333
    :sswitch_data_0
    .sparse-switch
        0x3f0 -> :sswitch_2
        0x3f6 -> :sswitch_1
        0x3f7 -> :sswitch_1
        0x3fd -> :sswitch_3
        0x408 -> :sswitch_0
        0x413 -> :sswitch_4
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 417
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/AccountIntroActivity;->setResult(I)V

    .line 418
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->onBackPressed()V

    .line 419
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x1

    .line 80
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    if-eqz p1, :cond_1

    .line 82
    const-string v9, "useAlternateAccountSetupWorkflow"

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mCheckedForExternalAccountSetupWorkflow:Z

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->maybeSkipAccountSetup()Z

    move-result v9

    if-nez v9, :cond_0

    .line 111
    iget-object v9, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v9, v9, Lcom/google/android/gsf/loginservice/GLSSession;->mCallingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    if-nez v9, :cond_2

    .line 112
    invoke-direct {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->populateCallingAppDescription()V

    .line 115
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 116
    .local v4, "initIntent":Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 117
    .local v3, "extras":Landroid/os/Bundle;
    if-eqz v3, :cond_5

    .line 118
    const-string v9, "allowed_domains"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "dm":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 120
    iget-object v9, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v9, Lcom/google/android/gsf/loginservice/GLSSession;->mAllowedDomains:Ljava/util/ArrayList;

    .line 121
    iget-object v9, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v9, v9, Lcom/google/android/gsf/loginservice/GLSSession;->mAllowedDomains:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_3
    const-string v9, "suppressLoginTos"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 125
    .local v8, "suppressTos":Z
    if-eqz v8, :cond_4

    .line 126
    iget-object v9, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iput-boolean v11, v9, Lcom/google/android/gsf/loginservice/GLSSession;->mTermsOfServiceShown:Z

    .line 127
    iget-object v9, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iput-boolean v11, v9, Lcom/google/android/gsf/loginservice/GLSSession;->mAgreedToPlayTos:Z

    .line 128
    iget-object v9, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iput-boolean v11, v9, Lcom/google/android/gsf/loginservice/GLSSession;->mAgreedToChromeTosAndPrivacy:Z

    .line 129
    iget-object v9, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iput-boolean v11, v9, Lcom/google/android/gsf/loginservice/GLSSession;->mSuppressLoginTos:Z

    .line 132
    :cond_4
    iget-object v9, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    const-string v10, "isEduSignin"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, v9, Lcom/google/android/gsf/loginservice/GLSSession;->mIsEduSignin:Z

    .line 133
    iget-object v9, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    const-string v10, "suppressCreditCardRequestActivity"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, v9, Lcom/google/android/gsf/loginservice/GLSSession;->mSuppressCreditCardRequestActivity:Z

    .line 135
    iget-object v9, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    const-string v10, "suppressGoogleServicesActivity"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, v9, Lcom/google/android/gsf/loginservice/GLSSession;->mSuppressGoogleServicesActivity:Z

    .line 137
    iget-object v9, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    const-string v10, "suppressNameCheck"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, v9, Lcom/google/android/gsf/loginservice/GLSSession;->mSuppressNameCheck:Z

    .line 138
    iget-object v9, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    const-string v10, "suppressLoginTos"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, v9, Lcom/google/android/gsf/loginservice/GLSSession;->mSuppressLoginTos:Z

    .line 143
    .end local v0    # "dm":Ljava/lang/String;
    .end local v8    # "suppressTos":Z
    :cond_5
    iget-object v9, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v9, v9, Lcom/google/android/gsf/loginservice/GLSSession;->mSetupWizard:Z

    if-eqz v9, :cond_6

    .line 144
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "google_setup:provisioned_info"

    invoke-static {v9, v10}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 146
    .local v7, "provisionedInfo":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 148
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 150
    .local v5, "jsonObj":Lorg/json/JSONObject;
    const-string v9, "purchaser_gaia_email"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "email":Ljava/lang/String;
    const-string v9, "purchaser_name"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 152
    .local v6, "name":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 153
    iget-object v9, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iput-object v2, v9, Lcom/google/android/gsf/loginservice/GLSSession;->mProvisionedEmail:Ljava/lang/String;

    .line 154
    iget-object v9, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iput-object v6, v9, Lcom/google/android/gsf/loginservice/GLSSession;->mProvisionedName:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v2    # "email":Ljava/lang/String;
    .end local v5    # "jsonObj":Lorg/json/JSONObject;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "provisionedInfo":Ljava/lang/String;
    :cond_6
    :goto_1
    const-string v9, "GLSActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Starting account intro "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-direct {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->startAccountIntro()V

    goto/16 :goto_0

    .line 156
    .restart local v7    # "provisionedInfo":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 157
    .local v1, "e":Lorg/json/JSONException;
    const-string v9, "GLSActivity"

    const-string v10, "Unable to read provisionedInfo."

    invoke-static {v9, v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 159
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_7
    if-eqz v3, :cond_6

    .line 161
    const-string v9, "purchaser_gaia_email"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 162
    .restart local v2    # "email":Ljava/lang/String;
    const-string v9, "purchaser_name"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 163
    .restart local v6    # "name":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 164
    iget-object v9, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iput-object v2, v9, Lcom/google/android/gsf/loginservice/GLSSession;->mProvisionedEmail:Ljava/lang/String;

    .line 165
    iget-object v9, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iput-object v6, v9, Lcom/google/android/gsf/loginservice/GLSSession;->mProvisionedName:Ljava/lang/String;

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 73
    const-string v0, "useAlternateAccountSetupWorkflow"

    iget-boolean v1, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mCheckedForExternalAccountSetupWorkflow:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 76
    return-void
.end method
