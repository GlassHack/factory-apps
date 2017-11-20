.class public Lcom/google/glass/notifier/NotificationReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "NotificationReceiver.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/notifier/NotificationReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 18
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.glass.companion.ACTION_NOTIFICATIONS_UPDATE"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method private notify(Lcom/google/glass/notifier/NotificationWrapper;Z)V
    .locals 2
    .param p1, "notification"    # Lcom/google/glass/notifier/NotificationWrapper;
    .param p2, "dismiss"    # Z

    .prologue
    .line 52
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 54
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/notifier/NotificationReceiver$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/glass/notifier/NotificationReceiver$1;-><init>(Lcom/google/glass/notifier/NotificationReceiver;ZLcom/google/glass/notifier/NotificationWrapper;)V

    .line 55
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 68
    return-void
.end method


# virtual methods
.method protected getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/glass/notifier/NotificationReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public handleResponseIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 34
    const-string v3, "notification_update_bytes"

    .line 35
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 36
    .local v1, "inputResponseBytes":[B
    if-nez v1, :cond_0

    .line 37
    sget-object v3, Lcom/google/glass/notifier/NotificationReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Empty bundle."

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    :goto_0
    return-void

    .line 42
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/google/glass/companion/nano/Proto$Notification;->parseFrom([B)Lcom/google/glass/companion/nano/Proto$Notification;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 48
    .local v2, "notification":Lcom/google/glass/companion/nano/Proto$Notification;
    new-instance v3, Lcom/google/glass/notifier/NotificationWrapper;

    invoke-direct {v3, v2}, Lcom/google/glass/notifier/NotificationWrapper;-><init>(Lcom/google/glass/companion/nano/Proto$Notification;)V

    invoke-virtual {v2}, Lcom/google/glass/companion/nano/Proto$Notification;->getDismiss()Z

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/google/glass/notifier/NotificationReceiver;->notify(Lcom/google/glass/notifier/NotificationWrapper;Z)V

    goto :goto_0

    .line 43
    .end local v2    # "notification":Lcom/google/glass/companion/nano/Proto$Notification;
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    sget-object v3, Lcom/google/glass/notifier/NotificationReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Unable to parse Notification received"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 28
    sget-object v0, Lcom/google/glass/notifier/NotificationReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Notification received"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    invoke-virtual {p0, p2}, Lcom/google/glass/notifier/NotificationReceiver;->handleResponseIntent(Landroid/content/Intent;)V

    .line 30
    return-void
.end method
