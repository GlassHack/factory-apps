.class public final Lcom/google/glass/settings/HeadGestureSettingsReceiver;
.super Lcom/google/glass/util/TimedBroadcastReceiver;
.source "HeadGestureSettingsReceiver.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/HeadGestureSettingsReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/glass/util/TimedBroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/google/glass/settings/HeadGestureSettingsReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private loadAndExecuteSettingsAsync(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 32
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/settings/HeadGestureSettingsReceiver$1;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/settings/HeadGestureSettingsReceiver$1;-><init>(Lcom/google/glass/settings/HeadGestureSettingsReceiver;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 42
    return-void
.end method


# virtual methods
.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    sget-object v1, Lcom/google/glass/settings/HeadGestureSettingsReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Boot complete.  Loading and setting the user head gesture settings..."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    invoke-direct {p0, p1}, Lcom/google/glass/settings/HeadGestureSettingsReceiver;->loadAndExecuteSettingsAsync(Landroid/content/Context;)V

    .line 27
    :cond_0
    return-void
.end method
