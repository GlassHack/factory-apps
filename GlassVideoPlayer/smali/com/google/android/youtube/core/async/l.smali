.class public final Lcom/google/android/youtube/core/async/l;
.super Lcom/google/android/youtube/core/async/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/accounts/AccountManager;)V
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lcom/google/android/youtube/core/async/l;->a:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    const-string v1, "com.google"

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/youtube/core/async/a;-><init>(Landroid/accounts/AccountManager;Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method public final a(Landroid/accounts/Account;)Lcom/google/android/youtube/core/model/UserAuth;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/google/android/youtube/core/async/l;->b:Landroid/accounts/AccountManager;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/l;->c:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;->scope:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 68
    if-eqz v1, :cond_0

    .line 69
    new-instance v0, Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/core/async/l;->c:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/youtube/core/model/UserAuth;-><init>(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;Ljava/lang/String;)V

    .line 72
    :goto_0
    return-object v0

    .line 61
    :catch_0
    move-exception v1

    .line 62
    const-string v2, "blockingGetUserAuth failed with AuthenticatorException"

    invoke-static {v2, v1}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 64
    :catch_1
    move-exception v1

    .line 65
    const-string v2, "blockingGetUserAuth failed with IOException"

    invoke-static {v2, v1}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 71
    :cond_0
    const-string v1, "got null authToken for the selected account"

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :catch_2
    move-exception v1

    goto :goto_0
.end method
