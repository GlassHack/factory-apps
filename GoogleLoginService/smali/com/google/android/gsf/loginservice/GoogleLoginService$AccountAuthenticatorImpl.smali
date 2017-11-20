.class Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;
.super Landroid/accounts/AbstractAccountAuthenticator;
.source "GoogleLoginService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/loginservice/GoogleLoginService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccountAuthenticatorImpl"
.end annotation


# instance fields
.field private final mAccountManager:Landroid/accounts/AccountManager;

.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;


# direct methods
.method public constructor <init>(Lcom/google/android/gsf/loginservice/GoogleLoginService;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    .line 245
    invoke-direct {p0, p2}, Landroid/accounts/AbstractAccountAuthenticator;-><init>(Landroid/content/Context;)V

    .line 246
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mContext:Landroid/content/Context;

    .line 247
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mAccountManager:Landroid/accounts/AccountManager;

    .line 248
    return-void
.end method

.method private isAccountPresent(Ljava/lang/String;)Z
    .locals 7
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 562
    iget-object v6, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 563
    .local v0, "am":Landroid/accounts/AccountManager;
    const-string v6, "com.google"

    invoke-virtual {v0, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    .line 564
    .local v3, "googleAccounts":[Landroid/accounts/Account;
    move-object v1, v3

    .local v1, "arr$":[Landroid/accounts/Account;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v1, v4

    .line 565
    .local v2, "googleAccount":Landroid/accounts/Account;
    iget-object v6, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 566
    const/4 v6, 0x1

    .line 569
    .end local v2    # "googleAccount":Landroid/accounts/Account;
    :goto_1
    return v6

    .line 564
    .restart local v2    # "googleAccount":Landroid/accounts/Account;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 569
    .end local v2    # "googleAccount":Landroid/accounts/Account;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private multiProcessHopFix(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 557
    const-string v0, "hasAccountManagerOptions"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 558
    invoke-virtual {p1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 559
    return-void
.end method


# virtual methods
.method public addAccount(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 33
    .param p1, "response"    # Landroid/accounts/AccountAuthenticatorResponse;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "requiredFeatures"    # [Ljava/lang/String;
    .param p5, "options"    # Landroid/os/Bundle;

    .prologue
    .line 422
    if-nez p5, :cond_0

    .line 423
    new-instance p5, Landroid/os/Bundle;

    .end local p5    # "options":Landroid/os/Bundle;
    invoke-direct/range {p5 .. p5}, Landroid/os/Bundle;-><init>()V

    .line 425
    .restart local p5    # "options":Landroid/os/Bundle;
    :cond_0
    invoke-static {}, Lcom/google/android/gsf/loginservice/GLSSession;->newUncachedSession()Lcom/google/android/gsf/loginservice/GLSSession;

    move-result-object v24

    .line 426
    .local v24, "session":Lcom/google/android/gsf/loginservice/GLSSession;
    sget-object v30, Lcom/google/android/gsf/loginservice/GoogleLoginService;->KEY_CALLER_UID:Ljava/lang/String;

    const/16 v31, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 427
    .local v10, "callerUid":I
    move-object/from16 v0, v24

    iput v10, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mCallingUID:I

    .line 428
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/google/android/gsf/loginservice/GLSSession;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    .line 429
    const-string v30, "pendingIntent"

    move-object/from16 v0, p5

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v30

    check-cast v30, Landroid/app/PendingIntent;

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/google/android/gsf/loginservice/GLSSession;->mPendingIntent:Landroid/app/PendingIntent;

    .line 430
    move-object/from16 v0, p5

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/google/android/gsf/loginservice/GLSSession;->mAccountManagerOptions:Landroid/os/Bundle;

    .line 431
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v25

    .line 432
    .local v25, "sessionId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 433
    .local v7, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v30, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    iget-object v0, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    iget v0, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v32, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move/from16 v2, v32

    move-object/from16 v3, v25

    move-object/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/google/android/gsf/loginservice/GLSSession;->mCallingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    .line 439
    const-string v30, "setupWizard"

    const/16 v31, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 440
    .local v18, "isSetupWizard":Z
    new-instance v12, Lcom/google/android/gsf/loginservice/AuthConfig;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-direct {v12, v0}, Lcom/google/android/gsf/loginservice/AuthConfig;-><init>(Landroid/content/Context;)V

    .line 441
    .local v12, "config":Lcom/google/android/gsf/loginservice/AuthConfig;
    if-eqz v18, :cond_1

    .line 443
    const-string v30, "domain"

    move-object/from16 v0, p5

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v26

    .line 444
    .local v26, "tmpDomains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v26, :cond_1

    .line 445
    new-instance v6, Ljava/util/HashSet;

    move-object/from16 v0, v26

    invoke-direct {v6, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 446
    .local v6, "allowedDomains":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v12, v6}, Lcom/google/android/gsf/loginservice/AuthConfig;->setAllowedDomains(Ljava/util/Collection;)V

    .line 449
    .end local v6    # "allowedDomains":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v26    # "tmpDomains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const-string v30, "password"

    move-object/from16 v0, p5

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 450
    .local v20, "password":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_7

    .line 451
    new-instance v23, Landroid/os/Bundle;

    invoke-direct/range {v23 .. v23}, Landroid/os/Bundle;-><init>()V

    .line 452
    .local v23, "resultBundle":Landroid/os/Bundle;
    const/16 v22, 0x0

    .line 453
    .local v22, "res":Landroid/content/Intent;
    new-instance v11, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-direct {v11, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;-><init>(Landroid/content/Context;)V

    .line 455
    .local v11, "client":Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;
    new-instance v30, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;

    invoke-direct/range {v30 .. v30}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;-><init>()V

    move-object/from16 v0, v30

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->setSetupWizardInProgress(Z)Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;

    move-result-object v30

    const-string v31, "created"

    const/16 v32, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v31

    invoke-virtual/range {v30 .. v31}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->setAccountCreationInProgress(Z)Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;

    move-result-object v30

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mCallingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->setCallingAppDescription(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;

    move-result-object v21

    .line 464
    .local v21, "request":Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;
    new-instance v30, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    invoke-direct/range {v30 .. v30}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;-><init>()V

    const-string v31, "useBrowser"

    move-object/from16 v0, p5

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v31

    invoke-virtual/range {v30 .. v31}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->setBrowserAuthenticationRequired(Z)Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    move-result-object v5

    .line 466
    .local v5, "accountCreds":Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;
    const-string v30, "code:"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_2

    .line 467
    const/16 v30, 0x5

    move-object/from16 v0, v20

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    .line 468
    .local v27, "token":Ljava/lang/String;
    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->setAuthorizationCode(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    .line 488
    .end local v27    # "token":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->setAccountCredentials(Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;

    .line 490
    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->signIn(Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v28

    .line 491
    .local v28, "tokenRes":Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->getToken()Ljava/lang/String;

    move-result-object v30

    if-eqz v30, :cond_6

    .line 494
    const-string v30, "authAccount"

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->getAccountName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const-string v30, "accountType"

    const-string v31, "com.google"

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    .end local v5    # "accountCreds":Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;
    .end local v11    # "client":Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;
    .end local v21    # "request":Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;
    .end local v22    # "res":Landroid/content/Intent;
    .end local v23    # "resultBundle":Landroid/os/Bundle;
    .end local v28    # "tokenRes":Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    :goto_1
    return-object v23

    .line 470
    .restart local v5    # "accountCreds":Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;
    .restart local v11    # "client":Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;
    .restart local v21    # "request":Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;
    .restart local v22    # "res":Landroid/content/Intent;
    .restart local v23    # "resultBundle":Landroid/os/Bundle;
    :cond_2
    const-string v30, "username"

    move-object/from16 v0, p5

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 471
    .local v29, "username":Ljava/lang/String;
    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->setAccountName(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    .line 472
    move-object/from16 v0, v29

    invoke-virtual {v12, v0}, Lcom/google/android/gsf/loginservice/AuthConfig;->isDomainAllowed(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_3

    .line 473
    const-string v30, "errorCode"

    const/16 v31, 0x8

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 477
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->isAccountPresent(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_4

    .line 479
    const/16 v23, 0x0

    goto :goto_1

    .line 481
    :cond_4
    const-string v30, "oauth1:"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_5

    .line 482
    const/16 v30, 0x7

    move-object/from16 v0, v20

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    .line 483
    .restart local v27    # "token":Ljava/lang/String;
    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->setLongLivedLoginToken(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    goto :goto_0

    .line 485
    .end local v27    # "token":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->setPassword(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    goto/16 :goto_0

    .line 499
    .end local v29    # "username":Ljava/lang/String;
    .restart local v28    # "tokenRes":Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    :cond_6
    const-string v30, "errorCode"

    const/16 v31, 0x8

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 506
    .end local v5    # "accountCreds":Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;
    .end local v11    # "client":Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;
    .end local v21    # "request":Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;
    .end local v22    # "res":Landroid/content/Intent;
    .end local v23    # "resultBundle":Landroid/os/Bundle;
    .end local v28    # "tokenRes":Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    :cond_7
    const/4 v13, 0x0

    .line 507
    .local v13, "creationFlags":I
    if-eqz p4, :cond_c

    .line 508
    move-object/from16 v8, p4

    .local v8, "arr$":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v19, v0

    .local v19, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_c

    aget-object v15, v8, v16

    .line 509
    .local v15, "f":Ljava/lang/String;
    const-string v30, "hosted_or_google"

    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_9

    .line 510
    or-int/lit8 v13, v13, 0x1

    .line 511
    or-int/lit8 v13, v13, 0x2

    .line 508
    :cond_8
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 512
    :cond_9
    const-string v30, "google"

    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_a

    .line 513
    or-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 514
    :cond_a
    const-string v30, "youtubelinked"

    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_b

    .line 515
    or-int/lit8 v13, v13, 0x4

    goto :goto_3

    .line 516
    :cond_b
    const-string v30, "saml"

    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_8

    .line 517
    or-int/lit8 v13, v13, 0x8

    goto :goto_3

    .line 522
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v15    # "f":Ljava/lang/String;
    .end local v16    # "i$":I
    .end local v19    # "len$":I
    :cond_c
    new-instance v17, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const-class v31, Lcom/google/android/gsf/login/AccountIntroActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 523
    .local v17, "intent":Landroid/content/Intent;
    const-string v30, "isTop"

    const/16 v31, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 524
    const-string v30, "addAccount"

    const/16 v31, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 525
    const-string v30, "hasMultipleUsers"

    const-string v31, "hasMultipleUsers"

    const/16 v32, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v31

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 527
    const-string v30, "accountAuthenticatorResponse"

    move-object/from16 v0, p5

    move-object/from16 v1, v30

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 528
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->multiProcessHopFix(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 529
    invoke-virtual {v12}, Lcom/google/android/gsf/loginservice/AuthConfig;->getAllowedDomains()Ljava/util/ArrayList;

    move-result-object v14

    .line 530
    .local v14, "domainWhitelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v14, :cond_d

    .line 531
    const-string v30, "allowed_domains"

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v14}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 535
    :cond_d
    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/loginservice/GLSSession;->addSession(Landroid/content/Intent;)V

    .line 536
    const/high16 v30, 0x80000

    move-object/from16 v0, v17

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 539
    const-string v30, "firstRun"

    const-string v31, "firstRun"

    const/16 v32, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v31

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 541
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 542
    .local v9, "bundle":Landroid/os/Bundle;
    const-string v30, "intent"

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object/from16 v23, v9

    .line 543
    goto/16 :goto_1
.end method

.method public addAccountFromCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5
    .param p1, "response"    # Landroid/accounts/AccountAuthenticatorResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "accountCredentials"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x2

    .line 629
    const-string v2, "GLSActivity"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 630
    const-string v2, "GLSActivity"

    const-string v3, "Inside addAccountFromCredentials"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 633
    .local v1, "result":Landroid/os/Bundle;
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;

    iget-object v2, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;-><init>(Landroid/content/Context;)V

    .line 634
    .local v0, "client":Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;
    iget-object v2, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, p3}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->installAccountFromExportData(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 635
    const-string v2, "booleanResult"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 636
    const-string v2, "GLSActivity"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 637
    const-string v2, "GLSActivity"

    const-string v3, "addAccountFromCredentials: account add successful"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_1
    :goto_0
    return-object v1

    .line 641
    :cond_2
    const-string v2, "GLSActivity"

    const-string v3, "addAccountFromCredentials: account add failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    const-string v2, "booleanResult"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public confirmCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 14
    .param p1, "response"    # Landroid/accounts/AccountAuthenticatorResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    .line 364
    if-eqz p3, :cond_1

    const-string v11, "password"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 365
    const-string v11, "password"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 366
    .local v5, "password":Ljava/lang/String;
    new-instance v11, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    invoke-direct {v11}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;-><init>()V

    move-object/from16 v0, p2

    iget-object v12, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->setAccountName(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->setPassword(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    move-result-object v1

    .line 369
    .local v1, "accountCreds":Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;
    new-instance v11, Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;

    invoke-direct {v11}, Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;-><init>()V

    invoke-virtual {v11, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;->setAccountCredentials(Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;)Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;

    move-result-object v6

    .line 374
    .local v6, "req":Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;
    new-instance v3, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;

    iget-object v11, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mContext:Landroid/content/Context;

    invoke-direct {v3, v11}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;-><init>(Landroid/content/Context;)V

    .line 376
    .local v3, "client":Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;
    invoke-virtual {v3, v6}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->confirmCredentials(Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v7

    .line 377
    .local v7, "res":Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    sget-object v11, Lcom/google/android/gms/auth/firstparty/shared/Status;->SUCCESS:Lcom/google/android/gms/auth/firstparty/shared/Status;

    invoke-virtual {v7}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->getStatus()Lcom/google/android/gms/auth/firstparty/shared/Status;

    move-result-object v12

    if-ne v11, v12, :cond_0

    const/4 v10, 0x1

    .line 378
    .local v10, "verified":Z
    :goto_0
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 379
    .local v8, "result":Landroid/os/Bundle;
    const-string v11, "booleanResult"

    invoke-virtual {v8, v11, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 410
    .end local v1    # "accountCreds":Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;
    .end local v3    # "client":Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;
    .end local v5    # "password":Ljava/lang/String;
    .end local v6    # "req":Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;
    .end local v7    # "res":Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .end local v8    # "result":Landroid/os/Bundle;
    .end local v10    # "verified":Z
    :goto_1
    return-object v8

    .line 377
    .restart local v1    # "accountCreds":Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;
    .restart local v3    # "client":Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;
    .restart local v5    # "password":Ljava/lang/String;
    .restart local v6    # "req":Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;
    .restart local v7    # "res":Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 384
    .end local v1    # "accountCreds":Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;
    .end local v3    # "client":Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;
    .end local v5    # "password":Ljava/lang/String;
    .end local v6    # "req":Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;
    .end local v7    # "res":Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    :cond_1
    new-instance v4, Landroid/content/Intent;

    iget-object v11, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mContext:Landroid/content/Context;

    const-class v12, Lcom/google/android/gsf/login/LoginActivity;

    invoke-direct {v4, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 386
    .local v4, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/google/android/gsf/loginservice/GLSSession;->newUncachedSession()Lcom/google/android/gsf/loginservice/GLSSession;

    move-result-object v9

    .line 388
    .local v9, "session":Lcom/google/android/gsf/loginservice/GLSSession;
    iput-object p1, v9, Lcom/google/android/gsf/loginservice/GLSSession;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    .line 389
    if-eqz p3, :cond_2

    .line 390
    move-object/from16 v0, p3

    iput-object v0, v9, Lcom/google/android/gsf/loginservice/GLSSession;->mAccountManagerOptions:Landroid/os/Bundle;

    .line 391
    const-string v11, "pendingIntent"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/app/PendingIntent;

    iput-object v11, v9, Lcom/google/android/gsf/loginservice/GLSSession;->mPendingIntent:Landroid/app/PendingIntent;

    .line 392
    move-object/from16 v0, p3

    invoke-direct {p0, v4, v0}, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->multiProcessHopFix(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 394
    :cond_2
    invoke-virtual {v9, v4}, Lcom/google/android/gsf/loginservice/GLSSession;->addSession(Landroid/content/Intent;)V

    .line 395
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    iput v11, v9, Lcom/google/android/gsf/loginservice/GLSSession;->mCallingUID:I

    .line 396
    const-string v11, "accountAuthenticatorResponse"

    iget-object v12, v9, Lcom/google/android/gsf/loginservice/GLSSession;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 398
    const-string v11, "authAccount"

    move-object/from16 v0, p2

    iget-object v12, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    sget-object v11, Lcom/google/android/gsf/loginservice/RequestKey;->SERVICE:Lcom/google/android/gsf/loginservice/RequestKey;

    invoke-virtual {v11}, Lcom/google/android/gsf/loginservice/RequestKey;->getWire()Ljava/lang/String;

    move-result-object v11

    const-string v12, "SID"

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    const-string v11, "pendingIntent"

    iget-object v12, v9, Lcom/google/android/gsf/loginservice/GLSSession;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 401
    sget-object v11, Lcom/google/android/gms/auth/firstparty/shared/Status;->BAD_AUTHENTICATION:Lcom/google/android/gms/auth/firstparty/shared/Status;

    iput-object v11, v9, Lcom/google/android/gsf/loginservice/GLSSession;->mError:Lcom/google/android/gms/auth/firstparty/shared/Status;

    .line 402
    sget-object v11, Lcom/google/android/gsf/loginservice/StatusHelper;->BAD_AUTHENTICATION:Lcom/google/android/gsf/loginservice/StatusHelper;

    invoke-virtual {v11, v4}, Lcom/google/android/gsf/loginservice/StatusHelper;->toIntent(Landroid/content/Intent;)V

    .line 403
    const-string v11, "authFailedMessage"

    iget-object v12, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mContext:Landroid/content/Context;

    const v13, 0x7f0700f7

    invoke-virtual {v12, v13}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 406
    const-string v11, "confirmCredentials"

    const/4 v12, 0x1

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 408
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 409
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v11, "intent"

    invoke-virtual {v2, v11, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object v8, v2

    .line 410
    goto :goto_1
.end method

.method public editProperties(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p1, "response"    # Landroid/accounts/AccountAuthenticatorResponse;
    .param p2, "accountType"    # Ljava/lang/String;

    .prologue
    .line 357
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAccountCredentialsForCloning(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;)Landroid/os/Bundle;
    .locals 6
    .param p1, "response"    # Landroid/accounts/AccountAuthenticatorResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .prologue
    .line 609
    const-string v3, "GLSActivity"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 610
    const-string v3, "GLSActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inside getAccountCredentialsForCloning, account: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_0
    new-instance v2, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;

    iget-object v3, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;-><init>(Landroid/content/Context;)V

    .line 613
    .local v2, "client":Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;
    iget-object v3, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->getAccountExportData(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 614
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 615
    const-string v3, "GLSActivity"

    const-string v4, "getAccountCredentialsForCloning: Bundle was null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "bundle":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 617
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v3, "booleanResult"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object v1, v0

    .line 621
    .end local v0    # "bundle":Landroid/os/Bundle;
    .local v1, "bundle":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 620
    .end local v1    # "bundle":Ljava/lang/Object;
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    const-string v3, "booleanResult"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object v1, v0

    .line 621
    .restart local v1    # "bundle":Ljava/lang/Object;
    goto :goto_0
.end method

.method public getAuthToken(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 15
    .param p1, "accountAuthResponse"    # Landroid/accounts/AccountAuthenticatorResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "loginOptions"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .prologue
    .line 265
    if-nez p4, :cond_0

    .line 266
    new-instance p4, Landroid/os/Bundle;

    .end local p4    # "loginOptions":Landroid/os/Bundle;
    invoke-direct/range {p4 .. p4}, Landroid/os/Bundle;-><init>()V

    .line 268
    .restart local p4    # "loginOptions":Landroid/os/Bundle;
    :cond_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 269
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "the mService is empty: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 275
    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual/range {p4 .. p4}, Landroid/os/Bundle;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 276
    :cond_2
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "Login Options cannot be null or empty."

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 279
    :cond_3
    const-string v12, "notifyOnAuthFailure"

    const/4 v13, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v12, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 281
    .local v8, "notifyOnAuthFailure":Z
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 282
    .local v2, "accountName":Ljava/lang/String;
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 283
    .local v10, "result":Landroid/os/Bundle;
    const-string v12, "accountType"

    const-string v13, "com.google"

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v12, "authAccount"

    invoke-virtual {v10, v12, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 289
    .local v3, "binderIdentity":J
    invoke-direct {p0, v2}, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->isAccountPresent(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 290
    const-string v12, "GLSActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getAuthToken called with non existant account: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const-string v12, "errorCode"

    const/16 v13, 0x8

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 294
    const-string v12, "errorMessage"

    const-string v13, "no such account"

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :goto_0
    return-object v10

    .line 299
    :cond_4
    :try_start_0
    iget-object v12, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {v12, v2, v0, v1}, Lcom/google/android/gms/auth/GoogleAuthUtil;->getToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v11

    .line 304
    .local v11, "token":Ljava/lang/String;
    if-eqz v11, :cond_5

    .line 305
    const-string v12, "authtoken"

    invoke-virtual {v10, v12, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gms/auth/UserRecoverableAuthException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/auth/GoogleAuthException; {:try_start_0 .. :try_end_0} :catch_2

    .line 342
    .end local v11    # "token":Ljava/lang/String;
    :cond_5
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 307
    :catch_0
    move-exception v9

    .line 308
    .local v9, "recover":Lcom/google/android/gms/auth/UserRecoverableAuthException;
    invoke-virtual {v9}, Lcom/google/android/gms/auth/UserRecoverableAuthException;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 309
    .local v7, "message":Ljava/lang/String;
    const-string v12, "GLSActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Received a UserRecoverableAuthException: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    if-eqz v8, :cond_7

    .line 311
    const-string v12, "DeviceManagementRequiredOrSyncDisabled"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 312
    const-string v12, "GLSActivity"

    const-string v13, "Sending broadcast to notify Glass that Device Management is required."

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v12, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    new-instance v13, Landroid/content/Intent;

    const-string v14, "com.google.glass.action.DEVICE_MANAGEMENT_REQUIRED"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->sendBroadcast(Landroid/content/Intent;)V

    .line 323
    :goto_2
    invoke-virtual {v9}, Lcom/google/android/gms/auth/UserRecoverableAuthException;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 324
    .local v6, "intent":Landroid/content/Intent;
    const-string v12, "isTop"

    const/4 v13, 0x1

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 325
    const-string v12, "response"

    move-object/from16 v0, p1

    invoke-virtual {v6, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 326
    const/high16 v12, 0x10000000

    invoke-virtual {v6, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 329
    const-string v12, "intent"

    invoke-virtual {v10, v12, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 330
    const-string v12, "errorMessage"

    invoke-virtual {v9}, Lcom/google/android/gms/auth/UserRecoverableAuthException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 316
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_6
    const-string v12, "GLSActivity"

    const-string v13, "Sending broadcast to notify Glass that a relogin is required."

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v12, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    new-instance v13, Landroid/content/Intent;

    const-string v14, "com.google.glass.action.RELOGIN_REQUIRED"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    .line 320
    :cond_7
    const-string v12, "GLSActivity"

    const-string v13, "Not notifying on failure."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 331
    .end local v7    # "message":Ljava/lang/String;
    .end local v9    # "recover":Lcom/google/android/gms/auth/UserRecoverableAuthException;
    :catch_1
    move-exception v5

    .line 332
    .local v5, "e":Ljava/io/IOException;
    const-string v12, "GLSActivity"

    invoke-static {v12, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 333
    new-instance v12, Landroid/accounts/NetworkErrorException;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/accounts/NetworkErrorException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 334
    .end local v5    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v5

    .line 335
    .local v5, "e":Lcom/google/android/gms/auth/GoogleAuthException;
    const-string v12, "GLSActivity"

    invoke-static {v12, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 336
    const-string v12, "errorCode"

    const/4 v13, 0x1

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 340
    const-string v12, "errorMessage"

    invoke-virtual {v5}, Lcom/google/android/gms/auth/GoogleAuthException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public getAuthTokenLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "authTokenType"    # Ljava/lang/String;

    .prologue
    .line 348
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->getAuthTokenLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "label":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 352
    .end local p1    # "authTokenType":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "authTokenType":Ljava/lang/String;
    :cond_0
    move-object p1, v0

    goto :goto_0
.end method

.method public hasFeatures(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .param p1, "response"    # Landroid/accounts/AccountAuthenticatorResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "features"    # [Ljava/lang/String;

    .prologue
    .line 254
    iget-object v2, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    iget-object v3, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-static {v2, v3, p2, p3}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$000(Lcom/google/android/gsf/loginservice/GoogleLoginService;Landroid/accounts/AccountManager;Landroid/accounts/Account;[Ljava/lang/String;)Z

    move-result v0

    .line 256
    .local v0, "hasFeatures":Z
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 257
    .local v1, "result":Landroid/os/Bundle;
    const-string v2, "booleanResult"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 258
    return-object v1
.end method

.method public updateCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7
    .param p1, "response"    # Landroid/accounts/AccountAuthenticatorResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "loginOptions"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 575
    invoke-static {}, Lcom/google/android/gsf/loginservice/GLSSession;->newUncachedSession()Lcom/google/android/gsf/loginservice/GLSSession;

    move-result-object v2

    .line 576
    .local v2, "session":Lcom/google/android/gsf/loginservice/GLSSession;
    iput-object p1, v2, Lcom/google/android/gsf/loginservice/GLSSession;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    .line 578
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mContext:Landroid/content/Context;

    const-class v4, Lcom/google/android/gsf/login/LoginActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 579
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p4, :cond_0

    .line 580
    iput-object p4, v2, Lcom/google/android/gsf/loginservice/GLSSession;->mAccountManagerOptions:Landroid/os/Bundle;

    .line 581
    const-string v3, "pendingIntent"

    invoke-virtual {p4, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    iput-object v3, v2, Lcom/google/android/gsf/loginservice/GLSSession;->mPendingIntent:Landroid/app/PendingIntent;

    .line 582
    invoke-direct {p0, v1, p4}, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->multiProcessHopFix(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 586
    :cond_0
    invoke-virtual {v2, v1}, Lcom/google/android/gsf/loginservice/GLSSession;->addSession(Landroid/content/Intent;)V

    .line 587
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    iput v3, v2, Lcom/google/android/gsf/loginservice/GLSSession;->mCallingUID:I

    .line 588
    const-string v3, "accountAuthenticatorResponse"

    iget-object v4, v2, Lcom/google/android/gsf/loginservice/GLSSession;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 590
    const-string v3, "authAccount"

    iget-object v4, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 591
    sget-object v3, Lcom/google/android/gsf/loginservice/RequestKey;->SERVICE:Lcom/google/android/gsf/loginservice/RequestKey;

    invoke-virtual {v3}, Lcom/google/android/gsf/loginservice/RequestKey;->getWire()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SID"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 592
    const-string v3, "pendingIntent"

    iget-object v4, v2, Lcom/google/android/gsf/loginservice/GLSSession;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 593
    sget-object v3, Lcom/google/android/gms/auth/firstparty/shared/Status;->BAD_AUTHENTICATION:Lcom/google/android/gms/auth/firstparty/shared/Status;

    iput-object v3, v2, Lcom/google/android/gsf/loginservice/GLSSession;->mError:Lcom/google/android/gms/auth/firstparty/shared/Status;

    .line 594
    sget-object v3, Lcom/google/android/gsf/loginservice/StatusHelper;->BAD_AUTHENTICATION:Lcom/google/android/gsf/loginservice/StatusHelper;

    invoke-virtual {v3, v1}, Lcom/google/android/gsf/loginservice/StatusHelper;->toIntent(Landroid/content/Intent;)V

    .line 595
    const-string v3, "authFailedMessage"

    iget-object v4, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->mContext:Landroid/content/Context;

    const v5, 0x7f0700f7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 597
    const-string v3, "updateCredentials"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 599
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 600
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "intent"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 601
    const-string v3, "isTop"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 602
    return-object v0
.end method
