.class public Lcom/google/glass/sync/nowtown/BootCompletedReceiver;
.super Lcom/google/glass/util/TimedBroadcastReceiver;
.source "BootCompletedReceiver.java"


# instance fields
.field private final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/glass/util/TimedBroadcastReceiver;-><init>()V

    .line 16
    const-string v0, "glass_sync"

    .line 17
    invoke-static {p0, v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/sync/nowtown/BootCompletedReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 16
    return-void
.end method


# virtual methods
.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/google/glass/sync/nowtown/NotificationService;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, p1, v2}, Lcom/google/glass/util/IntentSender;->startService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 28
    :goto_0
    return-void

    .line 26
    :cond_0
    iget-object v1, p0, Lcom/google/glass/sync/nowtown/BootCompletedReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Unknown action received: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
