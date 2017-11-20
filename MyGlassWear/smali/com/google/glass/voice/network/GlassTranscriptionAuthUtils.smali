.class public Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;
.super Ljava/lang/Object;
.source "GlassTranscriptionAuthUtils.java"


# static fields
.field private static final GOOGLE_DOT_COM_ACCOUNT_SUFFIX:Ljava/lang/String; = "google.com"

.field static final NOTIFY_ON_AUTH:Z

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private authUtils:Lcom/google/glass/auth/AuthUtils;

.field private backgroundExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/auth/AuthUtils;)V
    .locals 1
    .param p1, "authUtils"    # Lcom/google/glass/auth/AuthUtils;

    .prologue
    .line 38
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/google/glass/auth/AuthUtils;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/google/glass/auth/AuthUtils;)V
    .locals 0
    .param p1, "backgroundExecutor"    # Ljava/util/concurrent/ExecutorService;
    .param p2, "authUtils"    # Lcom/google/glass/auth/AuthUtils;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    .line 34
    iput-object p2, p0, Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;->authUtils:Lcom/google/glass/auth/AuthUtils;

    .line 35
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;)Lcom/google/glass/auth/AuthUtils;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;->authUtils:Lcom/google/glass/auth/AuthUtils;

    return-object v0
.end method

.method private getTokenWithTimeout(JLjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "timeoutMs"    # J
    .param p3, "tokenType"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 74
    sget-object v1, Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "getTokenWithTimeout [timeoutMs=%s, tokenType=%s]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object p3, v3, v6

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils$1;-><init>(Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;JLjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 82
    invoke-interface {v1, p1, p2, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2

    .line 92
    :goto_0
    return-object v1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v1, Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Interrupted while waiting for auth token; [tokenType=%s]"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p3, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 92
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1
    const-string v1, ""

    goto :goto_0

    .line 86
    :catch_1
    move-exception v0

    .line 87
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    sget-object v1, Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Timed out waiting for auth token; [tokenType=%s]"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p3, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 88
    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_2
    move-exception v0

    .line 89
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    sget-object v1, Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Exception acquiring auth token; [tokenType=%s]"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p3, v3, v5

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private isTranscriptionAndSearchAuthEnabled()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 42
    iget-object v4, p0, Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;->authUtils:Lcom/google/glass/auth/AuthUtils;

    invoke-interface {v4}, Lcom/google/glass/auth/AuthUtils;->getGoogleAccount()Landroid/accounts/Account;

    move-result-object v1

    .line 43
    .local v1, "googleAccount":Landroid/accounts/Account;
    if-nez v1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v3

    .line 47
    :cond_1
    iget-object v0, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 48
    .local v0, "accountName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 49
    sget-object v4, Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "No account name found for Google account; forbidding transcription auth."

    new-array v6, v3, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 57
    :cond_2
    const-string v4, "google.com"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    .line 58
    .local v2, "isGoogleDotComAccount":Z
    if-eqz v2, :cond_3

    .line 59
    sget-object v4, Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Not allowing transcription authentication for google.com account"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    :cond_3
    if-nez v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getPersonalizationAuthToken(J)Ljava/lang/String;
    .locals 1
    .param p1, "timeoutMs"    # J

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;->isTranscriptionAndSearchAuthEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    const-string v0, ""

    .line 100
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "oauth2:https://www.googleapis.com/auth/speech/personalization"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;->getTokenWithTimeout(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSearchAuthToken(J)Ljava/lang/String;
    .locals 2
    .param p1, "timeoutMs"    # J

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;->isTranscriptionAndSearchAuthEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    const-string v1, ""

    .line 70
    :goto_0
    return-object v1

    .line 69
    :cond_0
    const-string v0, "oauth2:https://www.googleapis.com/auth/googlenow"

    .line 70
    .local v0, "tokenType":Ljava/lang/String;
    const-string v1, "oauth2:https://www.googleapis.com/auth/googlenow"

    invoke-direct {p0, p1, p2, v1}, Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;->getTokenWithTimeout(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public invalidatePersonalizationAuthToken()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;->authUtils:Lcom/google/glass/auth/AuthUtils;

    const-string v1, "oauth2:https://www.googleapis.com/auth/speech/personalization"

    invoke-interface {v0, v1}, Lcom/google/glass/auth/AuthUtils;->invalidateAuthToken(Ljava/lang/String;)V

    .line 105
    return-void
.end method
