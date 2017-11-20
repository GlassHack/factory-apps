.class Lcom/google/glass/boutique/AuthTokenPollingRunnable;
.super Ljava/lang/Object;
.source "AuthTokenPollingRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/boutique/AuthTokenPollingRunnable$Callback;
    }
.end annotation


# static fields
.field private static final POLLING_INTERVAL_SLEEP_MILLIS:J = 0xbb8L

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final account:Landroid/accounts/Account;

.field private final accountManager:Landroid/accounts/AccountManager;

.field private final authTokenType:Ljava/lang/String;

.field private final callback:Lcom/google/glass/boutique/AuthTokenPollingRunnable$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/boutique/AuthTokenPollingRunnable;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method constructor <init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/accounts/AccountManager;Lcom/google/glass/boutique/AuthTokenPollingRunnable$Callback;)V
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "accountManager"    # Landroid/accounts/AccountManager;
    .param p4, "callback"    # Lcom/google/glass/boutique/AuthTokenPollingRunnable$Callback;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "null account"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/google/glass/boutique/AuthTokenPollingRunnable;->account:Landroid/accounts/Account;

    .line 47
    const-string v0, "null authTokenType"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/glass/boutique/AuthTokenPollingRunnable;->authTokenType:Ljava/lang/String;

    .line 48
    const-string v0, "null accountManager"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    iput-object v0, p0, Lcom/google/glass/boutique/AuthTokenPollingRunnable;->accountManager:Landroid/accounts/AccountManager;

    .line 49
    const-string v0, "null callback"

    invoke-static {p4, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/boutique/AuthTokenPollingRunnable$Callback;

    iput-object v0, p0, Lcom/google/glass/boutique/AuthTokenPollingRunnable;->callback:Lcom/google/glass/boutique/AuthTokenPollingRunnable$Callback;

    .line 50
    return-void
.end method

.method private tryGetResultBlocking(Landroid/accounts/AccountManagerFuture;)Landroid/os/Bundle;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "resultFuture":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :cond_0
    invoke-static {}, Lcom/google/glass/util/ThreadUtil;->throwIfInterrupted()V

    .line 107
    const-wide/16 v2, 0x1

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v2, v3, v4}, Landroid/accounts/AccountManagerFuture;->getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .local v1, "result":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 114
    .end local v1    # "result":Landroid/os/Bundle;
    :goto_0
    return-object v1

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/google/glass/boutique/AuthTokenPollingRunnable;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Error getting auth token result for accountType: [%s], authTokenType: [%s]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/glass/boutique/AuthTokenPollingRunnable;->account:Landroid/accounts/Account;

    iget-object v6, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/glass/boutique/AuthTokenPollingRunnable;->authTokenType:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private waitForAuthTokenBlocking()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 78
    :goto_0
    invoke-static {}, Lcom/google/glass/util/ThreadUtil;->throwIfInterrupted()V

    .line 79
    iget-object v0, p0, Lcom/google/glass/boutique/AuthTokenPollingRunnable;->accountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/google/glass/boutique/AuthTokenPollingRunnable;->account:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/glass/boutique/AuthTokenPollingRunnable;->authTokenType:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v8

    .line 83
    .local v8, "resultFuture":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    invoke-direct {p0, v8}, Lcom/google/glass/boutique/AuthTokenPollingRunnable;->tryGetResultBlocking(Landroid/accounts/AccountManagerFuture;)Landroid/os/Bundle;

    move-result-object v7

    .line 84
    .local v7, "result":Landroid/os/Bundle;
    if-eqz v7, :cond_0

    const-string v0, "authtoken"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 85
    :cond_0
    const-wide/16 v0, 0xbb8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 89
    :cond_1
    const-string v0, "authtoken"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 55
    :try_start_0
    sget-object v2, Lcom/google/glass/boutique/AuthTokenPollingRunnable;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Polling system for auth token. account.type: [%s], authTokenType: [%s]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/glass/boutique/AuthTokenPollingRunnable;->account:Landroid/accounts/Account;

    iget-object v6, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/glass/boutique/AuthTokenPollingRunnable;->authTokenType:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    invoke-direct {p0}, Lcom/google/glass/boutique/AuthTokenPollingRunnable;->waitForAuthTokenBlocking()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "authToken":Ljava/lang/String;
    sget-object v2, Lcom/google/glass/boutique/AuthTokenPollingRunnable;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Found auth token for account.type: [%s], authTokenType: [%s]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/glass/boutique/AuthTokenPollingRunnable;->account:Landroid/accounts/Account;

    iget-object v6, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/glass/boutique/AuthTokenPollingRunnable;->authTokenType:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    iget-object v2, p0, Lcom/google/glass/boutique/AuthTokenPollingRunnable;->callback:Lcom/google/glass/boutique/AuthTokenPollingRunnable$Callback;

    iget-object v3, p0, Lcom/google/glass/boutique/AuthTokenPollingRunnable;->account:Landroid/accounts/Account;

    iget-object v4, p0, Lcom/google/glass/boutique/AuthTokenPollingRunnable;->authTokenType:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v0}, Lcom/google/glass/boutique/AuthTokenPollingRunnable$Callback;->onAuthTokenFound(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v0    # "authToken":Ljava/lang/String;
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Ljava/lang/InterruptedException;
    sget-object v2, Lcom/google/glass/boutique/AuthTokenPollingRunnable;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Interrupted while waiting for auth token. account.type: [%s], authTokenType: [%s]"

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/boutique/AuthTokenPollingRunnable;->account:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/google/glass/boutique/AuthTokenPollingRunnable;->authTokenType:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
