.class public Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final tickReceiverLogger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final listeners:Ljava/util/Set;

.field private final tickReceiver:Lcom/google/glass/timeline/ui/TimestampUpdateReceiver$TickBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 20
    sget-object v0, Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "tickReceiver"

    .line 21
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;->tickReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/google/glass/timeline/ui/TimestampUpdateReceiver$TickBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/timeline/ui/TimestampUpdateReceiver$TickBroadcastReceiver;-><init>(Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;Lcom/google/glass/timeline/ui/TimestampUpdateReceiver$1;)V

    iput-object v0, p0, Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;->tickReceiver:Lcom/google/glass/timeline/ui/TimestampUpdateReceiver$TickBroadcastReceiver;

    .line 33
    new-instance v0, Lcom/google/android/b/a;

    invoke-direct {v0}, Lcom/google/android/b/a;-><init>()V

    iput-object v0, p0, Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;->listeners:Ljava/util/Set;

    .line 35
    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;->notifyListeners()V

    return-void
.end method

.method static synthetic access$200()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;->tickReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private notifyListeners()V
    .locals 5

    .prologue
    .line 64
    sget-object v0, Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Notifying %s listeners to update."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;->listeners:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/timeline/ui/TimestampUpdateReceiver$Listener;

    .line 66
    invoke-interface {v0}, Lcom/google/glass/timeline/ui/TimestampUpdateReceiver$Listener;->onUpdate()V

    goto :goto_0

    .line 68
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/google/glass/timeline/ui/TimestampUpdateReceiver$Listener;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    return-void
.end method

.method public register(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 49
    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;->tickReceiver:Lcom/google/glass/timeline/ui/TimestampUpdateReceiver$TickBroadcastReceiver;

    .line 50
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 49
    invoke-virtual {v1, v0, p1}, Lcom/google/glass/timeline/ui/TimestampUpdateReceiver$TickBroadcastReceiver;->registerAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    .line 54
    invoke-direct {p0}, Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;->notifyListeners()V

    .line 55
    return-void
.end method

.method public removeListener(Lcom/google/glass/timeline/ui/TimestampUpdateReceiver$Listener;)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 59
    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;->tickReceiver:Lcom/google/glass/timeline/ui/TimestampUpdateReceiver$TickBroadcastReceiver;

    .line 60
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 59
    invoke-virtual {v1, v0, p1}, Lcom/google/glass/timeline/ui/TimestampUpdateReceiver$TickBroadcastReceiver;->unregisterAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    .line 61
    return-void
.end method
