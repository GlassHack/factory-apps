.class public Lcom/google/glass/camera/PhotoItemDeletedBroadcastReceiver;
.super Lcom/google/glass/util/TimedBroadcastReceiver;
.source "PhotoItemDeletedBroadcastReceiver.java"


# static fields
.field public static final ACTION_PHOTO_TIMELINE_ITEM_DELETED:Ljava/lang/String; = "com.google.glass.camera.PHOTO_DELETED"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/camera/PhotoItemDeletedBroadcastReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/glass/util/TimedBroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/google/glass/camera/PhotoItemDeletedBroadcastReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method


# virtual methods
.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 27
    const-string v1, "com.google.glass.camera.PHOTO_DELETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    sget-object v1, Lcom/google/glass/camera/PhotoItemDeletedBroadcastReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Photo item deleted."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 32
    .local v0, "applicationContext":Landroid/content/Context;
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 33
    invoke-virtual {v1}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v1

    new-instance v2, Lcom/google/glass/camera/PhotoItemDeletedBroadcastReceiver$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/google/glass/camera/PhotoItemDeletedBroadcastReceiver$1;-><init>(Lcom/google/glass/camera/PhotoItemDeletedBroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-interface {v1, v2}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 51
    .end local v0    # "applicationContext":Landroid/content/Context;
    :cond_0
    return-void
.end method
