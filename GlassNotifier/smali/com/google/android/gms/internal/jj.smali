.class public Lcom/google/android/gms/internal/jj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/clearcut/ClearcutLoggerApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/jj$b;,
        Lcom/google/android/gms/internal/jj$a;
    }
.end annotation


# instance fields
.field private Sc:Ljava/util/concurrent/ExecutorService;

.field private final mQ:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/jj;->mQ:Ljava/lang/Object;

    return-void
.end method

.method private final a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/jj$a;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/internal/jj$a",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/jj;->mQ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jj;->Sc:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/jj;->Sc:Ljava/util/concurrent/ExecutorService;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/jj;->Sc:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/jj$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/jj$1;-><init>(Lcom/google/android/gms/internal/jj;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/jj$a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object p2

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static a(Lcom/google/android/gms/clearcut/LogEventParcelable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->extensionProducer:Lcom/google/android/gms/clearcut/ClearcutLogger$MessageProducer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->logEvent:Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;

    iget-object v0, v0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->sourceExtension:[B

    array-length v0, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->logEvent:Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->extensionProducer:Lcom/google/android/gms/clearcut/ClearcutLogger$MessageProducer;

    invoke-interface {v1}, Lcom/google/android/gms/clearcut/ClearcutLogger$MessageProducer;->toProtoBytes()[B

    move-result-object v1

    iput-object v1, v0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->sourceExtension:[B

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->logEvent:Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;

    invoke-static {v0}, Lcom/google/android/gms/internal/xt;->toByteArray(Lcom/google/android/gms/internal/xt;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->logEventBytes:[B

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/clearcut/LogEventParcelable;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/jj;->a(Lcom/google/android/gms/clearcut/LogEventParcelable;)V

    return-void
.end method


# virtual methods
.method public flush(Lcom/google/android/gms/common/api/GoogleApiClient;JLjava/util/concurrent/TimeUnit;)Z
    .locals 6
    .param p1, "apiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "waitTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v1, Lcom/google/android/gms/internal/jj$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/jj$2;-><init>(Lcom/google/android/gms/internal/jj;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/concurrent/CountDownLatch;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/jj;->mQ:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/jj;->Sc:Ljava/util/concurrent/ExecutorService;

    if-nez v3, :cond_0

    invoke-interface {p1, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0, p2, p3, p4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    :goto_1
    return v0

    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/google/android/gms/internal/jj;->Sc:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/google/android/gms/internal/jj$3;

    invoke-direct {v4, p0, p1, v1}, Lcom/google/android/gms/internal/jj$3;-><init>(Lcom/google/android/gms/internal/jj;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/jj$a;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public logEvent(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .param p1, "apiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "logEvent"    # Lcom/google/android/gms/clearcut/LogEventParcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/clearcut/LogEventParcelable;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {p2}, Lcom/google/android/gms/internal/jj;->a(Lcom/google/android/gms/clearcut/LogEventParcelable;)V

    new-instance v0, Lcom/google/android/gms/internal/jj$b;

    invoke-direct {v0, p2, p1}, Lcom/google/android/gms/internal/jj$b;-><init>(Lcom/google/android/gms/clearcut/LogEventParcelable;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;

    move-result-object v0

    return-object v0
.end method

.method public logEventAsync(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .param p1, "apiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "logEvent"    # Lcom/google/android/gms/clearcut/LogEventParcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/clearcut/LogEventParcelable;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/jj$b;

    invoke-direct {v0, p2, p1}, Lcom/google/android/gms/internal/jj$b;-><init>(Lcom/google/android/gms/clearcut/LogEventParcelable;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/jj;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/jj$a;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method
