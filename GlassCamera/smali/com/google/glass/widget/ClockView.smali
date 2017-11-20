.class public Lcom/google/glass/widget/ClockView;
.super Landroid/widget/TextView;
.source "ClockView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/widget/ClockView$TimeBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final timeReceiverLogger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final clockExecutor:Ljava/util/concurrent/Executor;

.field private final timeReceiver:Lcom/google/glass/widget/ClockView$TimeBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/ClockView;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 30
    sget-object v0, Lcom/google/glass/widget/ClockView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "timeReceiver"

    .line 31
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/ClockView;->timeReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/widget/ClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance v0, Lcom/google/glass/widget/ClockView$TimeBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/widget/ClockView$TimeBroadcastReceiver;-><init>(Lcom/google/glass/widget/ClockView;Lcom/google/glass/widget/ClockView$1;)V

    iput-object v0, p0, Lcom/google/glass/widget/ClockView;->timeReceiver:Lcom/google/glass/widget/ClockView$TimeBroadcastReceiver;

    .line 36
    new-instance v0, Lcom/google/glass/async/PriorityThreadFactory;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/glass/widget/ClockView;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 37
    invoke-interface {v2}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/glass/async/PriorityThreadFactory;-><init>(ILjava/lang/String;)V

    .line 36
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/widget/ClockView;->clockExecutor:Ljava/util/concurrent/Executor;

    .line 45
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/ClockView;->setGravity(I)V

    .line 46
    invoke-direct {p0}, Lcom/google/glass/widget/ClockView;->updateTime()V

    .line 47
    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/widget/ClockView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/widget/ClockView;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/glass/widget/ClockView;->updateTime()V

    return-void
.end method

.method static synthetic access$200()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/glass/widget/ClockView;->timeReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private updateTime()V
    .locals 5

    .prologue
    .line 61
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 62
    .local v0, "currentTime":J
    new-instance v2, Lcom/google/glass/widget/ClockView$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/glass/widget/ClockView$1;-><init>(Lcom/google/glass/widget/ClockView;J)V

    iget-object v3, p0, Lcom/google/glass/widget/ClockView;->clockExecutor:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    .line 72
    invoke-virtual {v2, v3, v4}, Lcom/google/glass/widget/ClockView$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 73
    return-void
.end method


# virtual methods
.method public onLoad()V
    .locals 3

    .prologue
    .line 50
    iget-object v1, p0, Lcom/google/glass/widget/ClockView;->timeReceiver:Lcom/google/glass/widget/ClockView$TimeBroadcastReceiver;

    .line 51
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/widget/ClockView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 50
    invoke-virtual {v1, v0, v2}, Lcom/google/glass/widget/ClockView$TimeBroadcastReceiver;->registerAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    .line 52
    invoke-direct {p0}, Lcom/google/glass/widget/ClockView;->updateTime()V

    .line 53
    return-void
.end method

.method public onUnload()V
    .locals 3

    .prologue
    .line 56
    iget-object v1, p0, Lcom/google/glass/widget/ClockView;->timeReceiver:Lcom/google/glass/widget/ClockView$TimeBroadcastReceiver;

    .line 57
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/widget/ClockView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 56
    invoke-virtual {v1, v0, v2}, Lcom/google/glass/widget/ClockView$TimeBroadcastReceiver;->unregisterAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    .line 58
    return-void
.end method
