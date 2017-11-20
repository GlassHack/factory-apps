.class public Lcom/google/glass/voice/network/DirectGwsRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AUTH_TOKEN_LOOKUP_TIMEOUT_MS:J

.field public static final HTTP_TIMEOUT_MS:I

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final authUtils:Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;

.field private final cookies:Lcom/google/glass/voice/network/Cookies;

.field private final locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/network/DirectGwsRequest;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 39
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/google/glass/voice/network/DirectGwsRequest;->HTTP_TIMEOUT_MS:I

    .line 41
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/voice/network/DirectGwsRequest;->AUTH_TOKEN_LOOKUP_TIMEOUT_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/location/LocationManagerHelper;)V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {p1}, Lcom/google/glass/voice/network/Cookies;->create(Landroid/content/Context;)Lcom/google/glass/voice/network/Cookies;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/DirectGwsRequest;->cookies:Lcom/google/glass/voice/network/Cookies;

    .line 49
    new-instance v0, Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;

    invoke-static {}, Lcom/google/glass/auth/AuthUtilsProvider;->getInstance()Lcom/google/glass/auth/AuthUtilsProvider;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/glass/auth/AuthUtilsProvider;->get(Landroid/content/Context;)Lcom/google/glass/auth/AuthUtils;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;-><init>(Lcom/google/glass/auth/AuthUtils;)V

    iput-object v0, p0, Lcom/google/glass/voice/network/DirectGwsRequest;->authUtils:Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;

    .line 50
    iput-object p2, p0, Lcom/google/glass/voice/network/DirectGwsRequest;->locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/network/DirectGwsRequest;)Lcom/google/glass/location/LocationManagerHelper;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/glass/voice/network/DirectGwsRequest;->locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/voice/network/DirectGwsRequest;)Lcom/google/glass/voice/network/Cookies;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/glass/voice/network/DirectGwsRequest;->cookies:Lcom/google/glass/voice/network/Cookies;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/voice/network/DirectGwsRequest;)Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/glass/voice/network/DirectGwsRequest;->authUtils:Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;

    return-object v0
.end method

.method static synthetic access$300()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/glass/voice/network/DirectGwsRequest;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method


# virtual methods
.method public getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    return-object v0
.end method

.method public sendGwsRequest(Ljava/lang/String;ZLcom/google/glass/voice/network/GwsResponseHandler;)V
    .locals 2

    .prologue
    .line 66
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 67
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/voice/network/DirectGwsRequest$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/glass/voice/network/DirectGwsRequest$1;-><init>(Lcom/google/glass/voice/network/DirectGwsRequest;Ljava/lang/String;ZLcom/google/glass/voice/network/GwsResponseHandler;)V

    invoke-interface {v0, v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 163
    return-void
.end method
