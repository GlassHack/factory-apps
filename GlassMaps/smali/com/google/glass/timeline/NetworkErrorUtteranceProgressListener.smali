.class Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;
.super Lcom/google/glass/util/TtsHelper$NoOpUtteranceProgressListener;
.source "SourceFile"


# instance fields
.field private final context:Landroid/content/Context;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private final textToSynthesize:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/glass/util/TtsHelper$NoOpUtteranceProgressListener;-><init>()V

    .line 18
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 24
    iput-object p1, p0, Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;->context:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;->textToSynthesize:Ljava/lang/String;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;)Z
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;->isConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;)Lcom/google/glass/app/GlassError;
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;->getSomethingWentWrongError()Lcom/google/glass/app/GlassError;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;)Lcom/google/glass/app/GlassError;
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;->getNetworkError()Lcom/google/glass/app/GlassError;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;->textToSynthesize:Ljava/lang/String;

    return-object v0
.end method

.method private getNetworkError()Lcom/google/glass/app/GlassError;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/google/glass/app/GlassError;

    invoke-direct {v0}, Lcom/google/glass/app/GlassError;-><init>()V

    sget v1, Lcom/google/glass/common/R$string;->error_tts_network_connectivity:I

    .line 51
    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$string;->error_tap_connection_settings:I

    .line 52
    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setSecondaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$drawable;->ic_cloud_sad_150:I

    .line 53
    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setIconId(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;->context:Landroid/content/Context;

    .line 54
    invoke-static {v1}, Lcom/google/glass/util/SettingsHelper;->getGoToSettingsRunnable(Landroid/content/Context;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setOnConfirmRunnable(Ljava/lang/Runnable;)Lcom/google/glass/app/GlassError;

    move-result-object v0

    return-object v0
.end method

.method private getSomethingWentWrongError()Lcom/google/glass/app/GlassError;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lcom/google/glass/app/GlassError;

    invoke-direct {v0}, Lcom/google/glass/app/GlassError;-><init>()V

    sget v1, Lcom/google/glass/common/R$string;->error_unknown_tts_error:I

    .line 43
    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$string;->error_tap_to_try_again:I

    .line 44
    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setSecondaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$drawable;->ic_warning_150:I

    .line 45
    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setIconId(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    .line 46
    invoke-direct {p0}, Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;->getTryAgainRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setOnConfirmRunnable(Ljava/lang/Runnable;)Lcom/google/glass/app/GlassError;

    move-result-object v0

    return-object v0
.end method

.method private getTryAgainRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener$2;

    invoke-direct {v0, p0}, Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener$2;-><init>(Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;)V

    return-object v0
.end method

.method private isConnected()Z
    .locals 2

    .prologue
    .line 69
    invoke-static {}, Lcom/google/glass/android/net/ConnectivityManagerProvider;->getInstance()Lcom/google/glass/android/net/ConnectivityManagerProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/android/net/ConnectivityManagerProvider;->from(Landroid/content/Context;)Lcom/google/glass/android/net/ConnectivityManager;

    move-result-object v0

    .line 70
    invoke-interface {v0}, Lcom/google/glass/android/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 30
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener$1;

    invoke-direct {v1, p0}, Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener$1;-><init>(Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 39
    return-void
.end method
