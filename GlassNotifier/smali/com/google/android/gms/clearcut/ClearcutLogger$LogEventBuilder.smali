.class public Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/clearcut/ClearcutLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LogEventBuilder"
.end annotation


# instance fields
.field private RT:Ljava/lang/String;

.field private RU:I

.field private RV:Ljava/lang/String;

.field private RW:Ljava/lang/String;

.field private final RY:Lcom/google/android/gms/clearcut/ClearcutLogger$MessageProducer;

.field private final RZ:Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;

.field private Sa:Z

.field final synthetic Sb:Lcom/google/android/gms/clearcut/ClearcutLogger;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/clearcut/ClearcutLogger;Lcom/google/android/gms/clearcut/ClearcutLogger$MessageProducer;)V
    .locals 1
    .param p2, "extensionProducer"    # Lcom/google/android/gms/clearcut/ClearcutLogger$MessageProducer;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;-><init>(Lcom/google/android/gms/clearcut/ClearcutLogger;[BLcom/google/android/gms/clearcut/ClearcutLogger$MessageProducer;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/clearcut/ClearcutLogger;Lcom/google/android/gms/clearcut/ClearcutLogger$MessageProducer;Lcom/google/android/gms/clearcut/ClearcutLogger$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/clearcut/ClearcutLogger;
    .param p2, "x1"    # Lcom/google/android/gms/clearcut/ClearcutLogger$MessageProducer;
    .param p3, "x2"    # Lcom/google/android/gms/clearcut/ClearcutLogger$1;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;-><init>(Lcom/google/android/gms/clearcut/ClearcutLogger;Lcom/google/android/gms/clearcut/ClearcutLogger$MessageProducer;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/clearcut/ClearcutLogger;[B)V
    .locals 1
    .param p2, "extensionBytes"    # [B

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;-><init>(Lcom/google/android/gms/clearcut/ClearcutLogger;[BLcom/google/android/gms/clearcut/ClearcutLogger$MessageProducer;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/clearcut/ClearcutLogger;[BLcom/google/android/gms/clearcut/ClearcutLogger$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/clearcut/ClearcutLogger;
    .param p2, "x1"    # [B
    .param p3, "x2"    # Lcom/google/android/gms/clearcut/ClearcutLogger$1;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;-><init>(Lcom/google/android/gms/clearcut/ClearcutLogger;[B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/clearcut/ClearcutLogger;[BLcom/google/android/gms/clearcut/ClearcutLogger$MessageProducer;)V
    .locals 4
    .param p2, "extensionBytes"    # [B
    .param p3, "extensionProducer"    # Lcom/google/android/gms/clearcut/ClearcutLogger$MessageProducer;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->Sb:Lcom/google/android/gms/clearcut/ClearcutLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->Sb:Lcom/google/android/gms/clearcut/ClearcutLogger;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/ClearcutLogger;->a(Lcom/google/android/gms/clearcut/ClearcutLogger;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->RU:I

    iget-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->Sb:Lcom/google/android/gms/clearcut/ClearcutLogger;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/ClearcutLogger;->b(Lcom/google/android/gms/clearcut/ClearcutLogger;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->RT:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->Sb:Lcom/google/android/gms/clearcut/ClearcutLogger;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/ClearcutLogger;->c(Lcom/google/android/gms/clearcut/ClearcutLogger;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->RV:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->Sb:Lcom/google/android/gms/clearcut/ClearcutLogger;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/ClearcutLogger;->d(Lcom/google/android/gms/clearcut/ClearcutLogger;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->RW:Ljava/lang/String;

    new-instance v0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;

    invoke-direct {v0}, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->RZ:Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->Sa:Z

    invoke-static {p1}, Lcom/google/android/gms/clearcut/ClearcutLogger;->c(Lcom/google/android/gms/clearcut/ClearcutLogger;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->RV:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/ClearcutLogger;->d(Lcom/google/android/gms/clearcut/ClearcutLogger;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->RW:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->RZ:Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/ClearcutLogger;->e(Lcom/google/android/gms/clearcut/ClearcutLogger;)Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->eventTimeMs:J

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->RZ:Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;

    iput-object p2, v0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->sourceExtension:[B

    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->RY:Lcom/google/android/gms/clearcut/ClearcutLogger$MessageProducer;

    return-void
.end method


# virtual methods
.method public getLogEventParcelable()Lcom/google/android/gms/clearcut/LogEventParcelable;
    .locals 9

    new-instance v8, Lcom/google/android/gms/clearcut/LogEventParcelable;

    new-instance v0, Lcom/google/android/gms/internal/ss;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->Sb:Lcom/google/android/gms/clearcut/ClearcutLogger;

    invoke-static {v1}, Lcom/google/android/gms/clearcut/ClearcutLogger;->f(Lcom/google/android/gms/clearcut/ClearcutLogger;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->Sb:Lcom/google/android/gms/clearcut/ClearcutLogger;

    invoke-static {v2}, Lcom/google/android/gms/clearcut/ClearcutLogger;->g(Lcom/google/android/gms/clearcut/ClearcutLogger;)I

    move-result v2

    iget v3, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->RU:I

    iget-object v4, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->RT:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->RV:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->RW:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ss;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->RZ:Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;

    iget-object v2, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->RY:Lcom/google/android/gms/clearcut/ClearcutLogger$MessageProducer;

    invoke-direct {v8, v0, v1, v2}, Lcom/google/android/gms/clearcut/LogEventParcelable;-><init>(Lcom/google/android/gms/internal/ss;Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;Lcom/google/android/gms/clearcut/ClearcutLogger$MessageProducer;)V

    return-object v8
.end method

.method public log(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .param p1, "apiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    iget-boolean v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->Sa:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "do not reuse LogEventBuilder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->Sa:Z

    iget-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->Sb:Lcom/google/android/gms/clearcut/ClearcutLogger;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/ClearcutLogger;->h(Lcom/google/android/gms/clearcut/ClearcutLogger;)Lcom/google/android/gms/clearcut/ClearcutLoggerApi;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->getLogEventParcelable()Lcom/google/android/gms/clearcut/LogEventParcelable;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/clearcut/ClearcutLoggerApi;->logEvent(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public logAsync(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .param p1, "apiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    iget-boolean v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->Sa:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "do not reuse LogEventBuilder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->Sa:Z

    iget-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->Sb:Lcom/google/android/gms/clearcut/ClearcutLogger;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/ClearcutLogger;->h(Lcom/google/android/gms/clearcut/ClearcutLogger;)Lcom/google/android/gms/clearcut/ClearcutLoggerApi;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->getLogEventParcelable()Lcom/google/android/gms/clearcut/LogEventParcelable;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/clearcut/ClearcutLoggerApi;->logEventAsync(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public setEventCode(I)Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;
    .locals 1
    .param p1, "eventCode"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->RZ:Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;

    iput p1, v0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->eventCode:I

    return-object p0
.end method

.method public setEventFlowId(I)Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;
    .locals 1
    .param p1, "eventFlowId"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->RZ:Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;

    iput p1, v0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->eventFlowId:I

    return-object p0
.end method

.method public setLogSource(I)Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;
    .locals 0
    .param p1, "logSource"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iput p1, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->RU:I

    return-object p0
.end method

.method public setLogSourceName(Ljava/lang/String;)Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;
    .locals 0
    .param p1, "logSourceName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->RT:Ljava/lang/String;

    return-object p0
.end method

.method public setLoggingId(Ljava/lang/String;)Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;
    .locals 0
    .param p1, "loggingId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->RW:Ljava/lang/String;

    return-object p0
.end method

.method public setTag(Ljava/lang/String;)Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->RZ:Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;

    iput-object p1, v0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public setUploadAccountName(Ljava/lang/String;)Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;
    .locals 0
    .param p1, "uploadAccountName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->RV:Ljava/lang/String;

    return-object p0
.end method
