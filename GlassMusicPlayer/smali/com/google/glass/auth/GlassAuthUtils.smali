.class public Lcom/google/glass/auth/GlassAuthUtils;
.super Lcom/google/glass/auth/BaseAuthUtils;
.source "SourceFile"


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
.field private final accountDataClient:Lcom/google/android/gms/auth/firstparty/dataservice/a;


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
    invoke-static {}, Lcom/google/android/gms/a/a/a;->a()Lcom/google/android/gms/a/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/a/a/a;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/firstparty/dataservice/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/auth/GlassAuthUtils;->accountDataClient:Lcom/google/android/gms/auth/firstparty/dataservice/a;

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
    .locals 4

    .prologue
    .line 405
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/auth/GlassAuthUtils;->accountDataClient:Lcom/google/android/gms/auth/firstparty/dataservice/a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/a;->a(Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 414
    :goto_0
    return-object v0

    .line 406
    :catch_0
    move-exception v0

    .line 409
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 411
    instance-of v2, v1, Landroid/os/RemoteException;

    if-nez v2, :cond_0

    instance-of v2, v1, Ljava/lang/InterruptedException;

    if-eqz v2, :cond_1

    .line 413
    :cond_0
    sget-object v0, Lcom/google/glass/auth/GlassAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Silencing error trying to get authentication token."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 414
    const/4 v0, 0x0

    goto :goto_0

    .line 417
    :cond_1
    throw v0
.end method


# virtual methods
.method public addGoogleAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/glass/auth/AuthUtils$AddAccountListener;)Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 234
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 235
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    const-string v0, "username"

    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v0, "password"

    invoke-virtual {v4, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :goto_0
    iget-object v0, p0, Lcom/google/glass/auth/GlassAuthUtils;->accountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    move-object v3, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    .line 247
    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    .line 251
    new-instance v1, Lcom/google/glass/auth/GlassAuthUtils$2;

    invoke-direct {v1, p0, v0, p1, p5}, Lcom/google/glass/auth/GlassAuthUtils$2;-><init>(Lcom/google/glass/auth/GlassAuthUtils;Landroid/accounts/AccountManagerFuture;Ljava/lang/String;Lcom/google/glass/auth/AuthUtils$AddAccountListener;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v8, [Ljava/lang/Void;

    .line 320
    invoke-virtual {v1, v0, v2}, Lcom/google/glass/auth/GlassAuthUtils$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    .line 322
    sget-object v1, Lcom/google/glass/auth/GlassAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Performing synchronous account creation, blocking until done"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 323
    if-eqz p4, :cond_4

    .line 325
    :try_start_0
    invoke-virtual {v0}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 326
    if-eqz v0, :cond_3

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
    :goto_1
    return v0

    .line 238
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 239
    const-string v1, "password"

    const-string v3, "code:"

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 241
    :cond_2
    sget-object v0, Lcom/google/glass/auth/GlassAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Login failed, need password or token."

    new-array v2, v8, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v8

    .line 242
    goto :goto_1

    .line 329
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

    .line 333
    :catch_0
    move-exception v0

    move v0, v8

    goto :goto_1

    .line 335
    :catch_1
    move-exception v0

    move v0, v8

    goto :goto_1

    .line 339
    :cond_4
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public createAuthHeaders()Ljava/util/Map;
    .locals 3

    .prologue
    .line 73
    invoke-super {p0}, Lcom/google/glass/auth/BaseAuthUtils;->createAuthHeaders()Ljava/util/Map;

    move-result-object v0

    .line 74
    if-nez v0, :cond_0

    .line 75
    const/4 v0, 0x0

    .line 80
    :goto_0
    return-object v0

    .line 78
    :cond_0
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    .line 79
    const-string v2, "X-Goog-Device-Info-Serial-Number"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public deleteAllAccounts(Ljava/lang/Runnable;)V
    .locals 2

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
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 104
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 106
    invoke-virtual {p0}, Lcom/google/glass/auth/GlassAuthUtils;->getGoogleAccount()Landroid/accounts/Account;

    move-result-object v1

    .line 109
    if-nez v1, :cond_0

    .line 110
    sget-object v1, Lcom/google/glass/auth/GlassAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "There is no account. Cannot get auth token."

    new-array v3, v8, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    :goto_0
    return-object v0

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/auth/GlassAuthUtils;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 117
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 118
    new-instance v4, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 119
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v4, v5, v6, v3, v3}, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 120
    new-instance v3, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {v3, v1, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v3, v4}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->a(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    move-result-object v1

    .line 127
    sget-object v3, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;->GRANTED:Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->a(Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    .line 130
    invoke-direct {p0, v1}, Lcom/google/glass/auth/GlassAuthUtils;->tryGetToken(Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v1

    .line 131
    if-nez v1, :cond_1

    .line 132
    sget-object v1, Lcom/google/glass/auth/GlassAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Could not get TokenResponse"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 136
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->a()Lcom/google/android/gms/auth/firstparty/shared/Status;

    move-result-object v3

    .line 137
    sget-object v4, Lcom/google/glass/auth/GlassAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Got response from server: [status=%s] [notifyAuthFailure=%s]"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/google/android/gms/auth/firstparty/shared/Status;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    .line 138
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v9

    .line 137
    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    sget-object v4, Lcom/google/android/gms/auth/firstparty/shared/Status;->SUCCESS:Lcom/google/android/gms/auth/firstparty/shared/Status;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/auth/firstparty/shared/Status;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz p2, :cond_2

    .line 142
    sget-object v3, Lcom/google/glass/auth/GlassAuthUtils$4;->$SwitchMap$com$google$android$gms$auth$firstparty$shared$Status:[I

    invoke-virtual {v1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->a()Lcom/google/android/gms/auth/firstparty/shared/Status;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/auth/firstparty/shared/Status;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 153
    sget-object v2, Lcom/google/glass/auth/GlassAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Cannot notify user for this response status [status=%s]."

    new-array v4, v9, [Ljava/lang/Object;

    .line 154
    invoke-virtual {v1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->a()Lcom/google/android/gms/auth/firstparty/shared/Status;

    move-result-object v5

    aput-object v5, v4, v8

    .line 153
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->b()Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 163
    sget-object v1, Lcom/google/glass/auth/GlassAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Auth token was empty."

    new-array v3, v8, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 144
    :pswitch_0
    sget-object v3, Lcom/google/glass/auth/GlassAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Sending broadcast to notify Glass that Device Management is required."

    new-array v5, v8, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v3

    sget-object v4, Lcom/google/glass/auth/GlassAuthUtils;->DEVICE_MANAGEMENT_REQUIRED_INTENT:Landroid/content/Intent;

    invoke-virtual {v3, v2, v4}, Lcom/google/glass/util/IntentSender;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 149
    :pswitch_1
    sget-object v3, Lcom/google/glass/auth/GlassAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Sending broadcast to notify Glass that a relogin is required."

    new-array v5, v8, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v3

    sget-object v4, Lcom/google/glass/auth/GlassAuthUtils;->RELOGIN_REQUIRED_INTENT:Landroid/content/Intent;

    invoke-virtual {v3, v2, v4}, Lcom/google/glass/util/IntentSender;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 167
    goto/16 :goto_0

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
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 85
    iget-object v2, p0, Lcom/google/glass/auth/GlassAuthUtils;->accountManager:Landroid/accounts/AccountManager;

    if-nez v2, :cond_1

    .line 86
    sget-object v2, Lcom/google/glass/auth/GlassAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Account manager was null."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v1}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    :cond_0
    :goto_0
    return-object v0

    .line 90
    :cond_1
    iget-object v2, p0, Lcom/google/glass/auth/GlassAuthUtils;->accountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v2}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v3

    .line 91
    if-eqz v3, :cond_0

    .line 94
    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 95
    const-string v5, "com.google"

    iget-object v6, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v0, v1

    .line 96
    goto :goto_0

    .line 94
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method public restartSetupProcess(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 347
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/auth/GlassAuthUtils;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/glass/util/SetupHelper;->wasSetupFinished(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 354
    if-eqz v0, :cond_0

    .line 355
    sget-object v1, Lcom/google/glass/auth/GlassAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Setup was previously finished, re-enabling."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 356
    iget-object v1, p0, Lcom/google/glass/auth/GlassAuthUtils;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/glass/util/SetupHelper;->checkAndEnableSetup(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 397
    :goto_0
    return-void

    .line 348
    :catch_0
    move-exception v0

    .line 349
    sget-object v1, Lcom/google/glass/auth/GlassAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Setup does not seem to be installed, skipping reset."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 360
    :cond_0
    sget-object v1, Lcom/google/glass/auth/GlassAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Setup was never finished, NOT re-enabling."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 363
    :cond_1
    new-instance v1, Lcom/google/glass/auth/GlassAuthUtils$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/glass/auth/GlassAuthUtils$3;-><init>(Lcom/google/glass/auth/GlassAuthUtils;ZZ)V

    invoke-virtual {p0, v1}, Lcom/google/glass/auth/GlassAuthUtils;->deleteAllAccounts(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public updateCredentials(Landroid/accounts/AccountManagerCallback;Ljava/lang/String;)Landroid/accounts/AccountManagerFuture;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 173
    invoke-virtual {p0}, Lcom/google/glass/auth/GlassAuthUtils;->getGoogleAccount()Landroid/accounts/Account;

    move-result-object v1

    .line 174
    if-nez v1, :cond_0

    .line 175
    sget-object v0, Lcom/google/glass/auth/GlassAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "updateCredentials: no Google account exists"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    :goto_0
    return-object v4

    .line 182
    :cond_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 183
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
