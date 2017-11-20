.class public Lcom/google/glass/auth/GlassAuthUtils;
.super Lcom/google/glass/auth/BaseAuthUtils;
.source "GlassAuthUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/auth/GlassAuthUtils$4;
    }
.end annotation


# static fields
.field static final DEVICE_MANAGEMENT_REQUIRED_INTENT:Landroid/content/Intent;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final RELOGIN_REQUIRED_INTENT:Landroid/content/Intent;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final accountDataClient:Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/auth/GlassAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 53
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.action.DEVICE_MANAGEMENT_REQUIRED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/auth/GlassAuthUtils;->DEVICE_MANAGEMENT_REQUIRED_INTENT:Landroid/content/Intent;

    .line 60
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.action.RELOGIN_REQUIRED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/auth/GlassAuthUtils;->RELOGIN_REQUIRED_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/accounts/AccountManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountManager"    # Landroid/accounts/AccountManager;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/google/glass/auth/BaseAuthUtils;-><init>(Landroid/content/Context;Landroid/accounts/AccountManager;)V

    .line 67
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isGlass()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 68
    invoke-static {}, Lcom/google/android/gms/glass/auth/GoogleAccountDataServiceClientProvider;->getInstance()Lcom/google/android/gms/glass/auth/GoogleAccountDataServiceClientProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/glass/auth/GoogleAccountDataServiceClientProvider;->get(Landroid/content/Context;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/auth/GlassAuthUtils;->accountDataClient:Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;

    .line 69
    return-void

    .line 67
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/google/glass/auth/GlassAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private tryGetToken(Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 5
    .param p1, "request"    # Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    .prologue
    .line 405
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/auth/GlassAuthUtils;->accountDataClient:Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->getToken(Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 414
    :goto_0
    return-object v2

    .line 406
    :catch_0
    move-exception v1

    .line 409
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 411
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v2, v0, Landroid/os/RemoteException;

    if-nez v2, :cond_0

    instance-of v2, v0, Ljava/lang/InterruptedException;

    if-eqz v2, :cond_1

    .line 413
    :cond_0
    sget-object v2, Lcom/google/glass/auth/GlassAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Silencing error trying to get authentication token."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 414
    const/4 v2, 0x0

    goto :goto_0

    .line 417
    :cond_1
    throw v1
.end method


# virtual methods
.method public addGoogleAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/glass/auth/AuthUtils$AddAccountListener;)Z
    .locals 13
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "synchronous"    # Z
    .param p5, "addAccountListener"    # Lcom/google/glass/auth/AuthUtils$AddAccountListener;

    .prologue
    .line 234
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 235
    .local v5, "options":Landroid/os/Bundle;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 236
    const-string/jumbo v1, "username"

    invoke-virtual {v5, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v1, "password"

    invoke-virtual {v5, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :goto_0
    iget-object v1, p0, Lcom/google/glass/auth/GlassAuthUtils;->accountManager:Landroid/accounts/AccountManager;

    const-string v2, "com.google"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 247
    invoke-virtual/range {v1 .. v8}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v9

    .line 251
    .local v9, "addAccountFuture":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    new-instance v1, Lcom/google/glass/auth/GlassAuthUtils$2;

    move-object/from16 v0, p5

    invoke-direct {v1, p0, v9, p1, v0}, Lcom/google/glass/auth/GlassAuthUtils$2;-><init>(Lcom/google/glass/auth/GlassAuthUtils;Landroid/accounts/AccountManagerFuture;Ljava/lang/String;Lcom/google/glass/auth/AuthUtils$AddAccountListener;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    .line 320
    invoke-virtual {v1, v2, v3}, Lcom/google/glass/auth/GlassAuthUtils$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v11

    .line 322
    .local v11, "newAccountTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    sget-object v1, Lcom/google/glass/auth/GlassAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Performing synchronous account creation, blocking until done"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 323
    if-eqz p4, :cond_4

    .line 325
    :try_start_0
    invoke-virtual {v11}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 326
    .local v12, "result":Z
    if-eqz v12, :cond_3

    .line 327
    sget-object v1, Lcom/google/glass/auth/GlassAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Account created"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 339
    .end local v9    # "addAccountFuture":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    .end local v11    # "newAccountTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    .end local v12    # "result":Z
    :goto_1
    return v12

    .line 238
    :cond_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 239
    const-string v2, "password"

    const-string v3, "code:"

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 241
    :cond_2
    sget-object v1, Lcom/google/glass/auth/GlassAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Login failed, need password or token."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    const/4 v12, 0x0

    goto :goto_1

    .line 329
    .restart local v9    # "addAccountFuture":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    .restart local v11    # "newAccountTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    .restart local v12    # "result":Z
    :cond_3
    :try_start_1
    sget-object v1, Lcom/google/glass/auth/GlassAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Account not created"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 332
    .end local v12    # "result":Z
    :catch_0
    move-exception v10

    .line 333
    .local v10, "e":Ljava/lang/InterruptedException;
    const/4 v12, 0x0

    goto :goto_1

    .line 334
    .end local v10    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v10

    .line 335
    .local v10, "e":Ljava/util/concurrent/ExecutionException;
    const/4 v12, 0x0

    goto :goto_1

    .line 339
    .end local v10    # "e":Ljava/util/concurrent/ExecutionException;
    :cond_4
    const/4 v12, 0x1

    goto :goto_1
.end method

.method public createAuthHeaders()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    invoke-super {p0}, Lcom/google/glass/auth/BaseAuthUtils;->createAuthHeaders()Ljava/util/Map;

    move-result-object v0

    .line 74
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 75
    const/4 v0, 0x0

    .line 80
    .end local v0    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object v0

    .line 78
    .restart local v0    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "serialNumber":Ljava/lang/String;
    const-string v2, "X-Goog-Device-Info-Serial-Number"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public deleteAllAccounts(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 194
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/auth/GlassAuthUtils$1;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/auth/GlassAuthUtils$1;-><init>(Lcom/google/glass/auth/GlassAuthUtils;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 228
    return-void
.end method

.method public getAuthToken(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 13
    .param p1, "authTokenType"    # Ljava/lang/String;
    .param p2, "notifyAuthFailure"    # Z

    .prologue
    .line 104
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 106
    invoke-virtual {p0}, Lcom/google/glass/auth/GlassAuthUtils;->getGoogleAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 109
    .local v0, "account":Landroid/accounts/Account;
    if-nez v0, :cond_1

    .line 110
    sget-object v8, Lcom/google/glass/auth/GlassAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "There is no account. Cannot get auth token."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    const/4 v2, 0x0

    .line 167
    :cond_0
    :goto_0
    return-object v2

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/auth/GlassAuthUtils;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 117
    .local v3, "context":Landroid/content/Context;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    .line 118
    .local v6, "sessionId":Ljava/lang/String;
    new-instance v1, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 119
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v1, v8, v9, v6, v6}, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 120
    .local v1, "appDescription":Lcom/google/android/gms/auth/firstparty/shared/AppDescription;
    new-instance v8, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    iget-object v9, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {v8, v9, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v8, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->setCallingAppDescription(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    move-result-object v4

    .line 127
    .local v4, "request":Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;
    sget-object v8, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;->GRANTED:Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->setConsent(Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    .line 130
    invoke-direct {p0, v4}, Lcom/google/glass/auth/GlassAuthUtils;->tryGetToken(Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v5

    .line 131
    .local v5, "response":Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    if-nez v5, :cond_2

    .line 132
    sget-object v8, Lcom/google/glass/auth/GlassAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Could not get TokenResponse"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    const/4 v2, 0x0

    goto :goto_0

    .line 136
    :cond_2
    invoke-virtual {v5}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->getStatus()Lcom/google/android/gms/auth/firstparty/shared/Status;

    move-result-object v7

    .line 137
    .local v7, "status":Lcom/google/android/gms/auth/firstparty/shared/Status;
    sget-object v8, Lcom/google/glass/auth/GlassAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Got response from server: [status=%s] [notifyAuthFailure=%s]"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v7}, Lcom/google/android/gms/auth/firstparty/shared/Status;->name()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    .line 138
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    .line 137
    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    sget-object v8, Lcom/google/android/gms/auth/firstparty/shared/Status;->SUCCESS:Lcom/google/android/gms/auth/firstparty/shared/Status;

    invoke-virtual {v8, v7}, Lcom/google/android/gms/auth/firstparty/shared/Status;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    if-eqz p2, :cond_3

    .line 142
    sget-object v8, Lcom/google/glass/auth/GlassAuthUtils$4;->$SwitchMap$com$google$android$gms$auth$firstparty$shared$Status:[I

    invoke-virtual {v5}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->getStatus()Lcom/google/android/gms/auth/firstparty/shared/Status;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/auth/firstparty/shared/Status;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 153
    sget-object v8, Lcom/google/glass/auth/GlassAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Cannot notify user for this response status [status=%s]."

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 154
    invoke-virtual {v5}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->getStatus()Lcom/google/android/gms/auth/firstparty/shared/Status;

    move-result-object v12

    aput-object v12, v10, v11

    .line 153
    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    :cond_3
    :goto_1
    invoke-virtual {v5}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->getToken()Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, "authToken":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 163
    sget-object v8, Lcom/google/glass/auth/GlassAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Auth token was empty."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 144
    .end local v2    # "authToken":Ljava/lang/String;
    :pswitch_0
    sget-object v8, Lcom/google/glass/auth/GlassAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Sending broadcast to notify Glass that Device Management is required."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v8

    sget-object v9, Lcom/google/glass/auth/GlassAuthUtils;->DEVICE_MANAGEMENT_REQUIRED_INTENT:Landroid/content/Intent;

    invoke-virtual {v8, v3, v9}, Lcom/google/glass/util/IntentSender;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 149
    :pswitch_1
    sget-object v8, Lcom/google/glass/auth/GlassAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Sending broadcast to notify Glass that a relogin is required."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v8

    sget-object v9, Lcom/google/glass/auth/GlassAuthUtils;->RELOGIN_REQUIRED_INTENT:Landroid/content/Intent;

    invoke-virtual {v8, v3, v9}, Lcom/google/glass/util/IntentSender;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getGoogleAccount()Landroid/accounts/Account;
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 85
    iget-object v4, p0, Lcom/google/glass/auth/GlassAuthUtils;->accountManager:Landroid/accounts/AccountManager;

    if-nez v4, :cond_1

    .line 86
    sget-object v4, Lcom/google/glass/auth/GlassAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Account manager was null."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v4, v5, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    .line 99
    :cond_0
    :goto_0
    return-object v0

    .line 90
    :cond_1
    iget-object v4, p0, Lcom/google/glass/auth/GlassAuthUtils;->accountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v4}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 91
    .local v1, "accounts":[Landroid/accounts/Account;
    if-nez v1, :cond_2

    move-object v0, v2

    .line 92
    goto :goto_0

    .line 94
    :cond_2
    array-length v4, v1

    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v0, v1, v3

    .line 95
    .local v0, "a":Landroid/accounts/Account;
    const-string v5, "com.google"

    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 94
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "a":Landroid/accounts/Account;
    :cond_3
    move-object v0, v2

    .line 99
    goto :goto_0
.end method

.method public restartSetupProcess(Z)V
    .locals 5
    .param p1, "reboot"    # Z

    .prologue
    const/4 v4, 0x0

    .line 347
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/auth/GlassAuthUtils;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/glass/util/SetupHelper;->wasSetupFinished(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 354
    .local v1, "wasSetupFinished":Z
    if-eqz v1, :cond_0

    .line 355
    sget-object v2, Lcom/google/glass/auth/GlassAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Setup was previously finished, re-enabling."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 356
    iget-object v2, p0, Lcom/google/glass/auth/GlassAuthUtils;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/glass/util/SetupHelper;->checkAndEnableSetup(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 397
    .end local v1    # "wasSetupFinished":Z
    :goto_0
    return-void

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/google/glass/auth/GlassAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Setup does not seem to be installed, skipping reset."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 360
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "wasSetupFinished":Z
    :cond_0
    sget-object v2, Lcom/google/glass/auth/GlassAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Setup was never finished, NOT re-enabling."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 363
    :cond_1
    new-instance v2, Lcom/google/glass/auth/GlassAuthUtils$3;

    invoke-direct {v2, p0, p1, v1}, Lcom/google/glass/auth/GlassAuthUtils$3;-><init>(Lcom/google/glass/auth/GlassAuthUtils;ZZ)V

    invoke-virtual {p0, v2}, Lcom/google/glass/auth/GlassAuthUtils;->deleteAllAccounts(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public updateCredentials(Landroid/accounts/AccountManagerCallback;Ljava/lang/String;)Landroid/accounts/AccountManagerFuture;
    .locals 7
    .param p2, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    const/4 v4, 0x0

    .line 173
    invoke-virtual {p0}, Lcom/google/glass/auth/GlassAuthUtils;->getGoogleAccount()Landroid/accounts/Account;

    move-result-object v1

    .line 174
    .local v1, "account":Landroid/accounts/Account;
    if-nez v1, :cond_0

    .line 175
    sget-object v0, Lcom/google/glass/auth/GlassAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string/jumbo v2, "updateCredentials: no Google account exists"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v0, v2, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    :goto_0
    return-object v4

    .line 182
    :cond_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 183
    .local v3, "options":Landroid/os/Bundle;
    const-string v2, "password"

    const-string v5, "code:"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/google/glass/auth/GlassAuthUtils;->accountManager:Landroid/accounts/AccountManager;

    const-string v2, "android"

    move-object v5, p1

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->updateCredentials(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v4

    goto :goto_0

    .line 183
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method
