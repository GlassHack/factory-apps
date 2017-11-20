.class public Lcom/google/glass/logging/CompanionLogReader;
.super Ljava/lang/Object;
.source "CompanionLogReader.java"


# static fields
.field static final NO_COMPANION_LOG_FOUND:Ljava/lang/String; = "no companion log found."
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final READ_TIMEOUT_MS:J = 0x3e8L

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private volatile companionLog:Ljava/lang/String;

.field private final countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private final incoming:Landroid/os/Messenger;

.field final incomingHandler:Landroid/os/Handler;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final uniqueId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/CompanionLogReader;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v3, "no companion log found."

    iput-object v3, p0, Lcom/google/glass/logging/CompanionLogReader;->companionLog:Ljava/lang/String;

    .line 33
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v8}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v3, p0, Lcom/google/glass/logging/CompanionLogReader;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 35
    new-instance v3, Lcom/google/glass/logging/CompanionLogReader$1;

    .line 36
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/google/glass/logging/CompanionLogReader$1;-><init>(Lcom/google/glass/logging/CompanionLogReader;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/google/glass/logging/CompanionLogReader;->incomingHandler:Landroid/os/Handler;

    .line 68
    new-instance v3, Landroid/os/Messenger;

    iget-object v4, p0, Lcom/google/glass/logging/CompanionLogReader;->incomingHandler:Landroid/os/Handler;

    invoke-direct {v3, v4}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/google/glass/logging/CompanionLogReader;->incoming:Landroid/os/Messenger;

    .line 71
    invoke-static {}, Lcom/google/glass/companion/CompanionMessagingUtil;->getNextUniqueId()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/glass/logging/CompanionLogReader;->uniqueId:J

    .line 72
    invoke-static {}, Lcom/google/glass/companion/CompanionMessagingUtil;->newEnvelope()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v2

    .line 73
    .local v2, "envelope":Lcom/google/glass/companion/Proto$Envelope;
    new-instance v1, Lcom/google/glass/companion/Proto$CompanionInfo;

    invoke-direct {v1}, Lcom/google/glass/companion/Proto$CompanionInfo;-><init>()V

    .line 74
    .local v1, "companionInfo":Lcom/google/glass/companion/Proto$CompanionInfo;
    iget-wide v3, p0, Lcom/google/glass/logging/CompanionLogReader;->uniqueId:J

    iput-wide v3, v1, Lcom/google/glass/companion/Proto$CompanionInfo;->id:J

    .line 75
    invoke-virtual {v1, v9}, Lcom/google/glass/companion/Proto$CompanionInfo;->setRequestNetwork(Z)Lcom/google/glass/companion/Proto$CompanionInfo;

    .line 76
    invoke-virtual {v1, v8}, Lcom/google/glass/companion/Proto$CompanionInfo;->setRequestLog(Z)Lcom/google/glass/companion/Proto$CompanionInfo;

    .line 77
    invoke-virtual {v2, v1}, Lcom/google/glass/companion/Proto$Envelope;->setCompanionInfo(Lcom/google/glass/companion/Proto$CompanionInfo;)Lcom/google/glass/companion/Proto$Envelope;

    .line 78
    iget-object v3, p0, Lcom/google/glass/logging/CompanionLogReader;->incoming:Landroid/os/Messenger;

    invoke-static {v2, v3}, Lcom/google/glass/companion/CompanionMessagingUtil;->createBundle(Lcom/google/glass/companion/Proto$Envelope;Landroid/os/Messenger;)Landroid/os/Bundle;

    move-result-object v0

    .line 80
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v3, Lcom/google/glass/logging/CompanionLogReader;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Requesting companion log with %s at time %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/google/glass/logging/CompanionLogReader;->uniqueId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Envelope;->getTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    invoke-static {}, Lcom/google/glass/logging/CompanionBundleSenderProvider;->getInstance()Lcom/google/glass/logging/CompanionBundleSenderProvider;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/glass/logging/CompanionBundleSenderProvider;->get(Landroid/content/Context;)Lcom/google/glass/logging/CompanionBundleSender;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/google/glass/logging/CompanionBundleSender;->sendBundleToCompanion(Landroid/os/Bundle;)V

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/logging/CompanionLogReader;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/glass/logging/CompanionLogReader;

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/google/glass/logging/CompanionLogReader;->uniqueId:J

    return-wide v0
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/google/glass/logging/CompanionLogReader;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/logging/CompanionLogReader;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/logging/CompanionLogReader;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/glass/logging/CompanionLogReader;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/glass/logging/CompanionLogReader;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/logging/CompanionLogReader;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/google/glass/logging/CompanionLogReader;->companionLog:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public read()Ljava/lang/String;
    .locals 4

    .prologue
    .line 89
    const-wide/16 v1, 0x3e8

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/glass/logging/CompanionLogReader;->read(JLjava/util/concurrent/TimeUnit;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 92
    :goto_0
    return-object v1

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v1, Lcom/google/glass/logging/CompanionLogReader;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Interrupted while reading companion log."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    iget-object v1, p0, Lcom/google/glass/logging/CompanionLogReader;->companionLog:Ljava/lang/String;

    goto :goto_0
.end method

.method read(JLjava/util/concurrent/TimeUnit;)Ljava/lang/String;
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/glass/logging/CompanionLogReader;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    sget-object v0, Lcom/google/glass/logging/CompanionLogReader;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Timeout reading companion log"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/google/glass/logging/CompanionLogReader;->companionLog:Ljava/lang/String;

    return-object v0
.end method
