.class Lcom/google/glass/home/HomeApplication$RetryGcmRegistrationBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "HomeApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/HomeApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RetryGcmRegistrationBroadcastReceiver"
.end annotation


# instance fields
.field private final registerGcmRunnable:Ljava/lang/Runnable;

.field private retryDelayMs:J

.field private final retryGcmRegistrationReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

.field final synthetic this$0:Lcom/google/glass/home/HomeApplication;


# direct methods
.method private constructor <init>(Lcom/google/glass/home/HomeApplication;)V
    .locals 3

    .prologue
    .line 654
    iput-object p1, p0, Lcom/google/glass/home/HomeApplication$RetryGcmRegistrationBroadcastReceiver;->this$0:Lcom/google/glass/home/HomeApplication;

    .line 655
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "retry_gcm_register"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 641
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$RetryGcmRegistrationBroadcastReceiver;->this$0:Lcom/google/glass/home/HomeApplication;

    .line 642
    invoke-static {v0}, Lcom/google/glass/home/HomeApplication;->access$000(Lcom/google/glass/home/HomeApplication;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/HomeApplication$RetryGcmRegistrationBroadcastReceiver;->retryGcmRegistrationReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 644
    invoke-static {}, Lcom/google/glass/home/HomeApplication;->access$1500()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/home/HomeApplication$RetryGcmRegistrationBroadcastReceiver;->retryDelayMs:J

    .line 647
    new-instance v0, Lcom/google/glass/home/HomeApplication$RetryGcmRegistrationBroadcastReceiver$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/HomeApplication$RetryGcmRegistrationBroadcastReceiver$1;-><init>(Lcom/google/glass/home/HomeApplication$RetryGcmRegistrationBroadcastReceiver;)V

    iput-object v0, p0, Lcom/google/glass/home/HomeApplication$RetryGcmRegistrationBroadcastReceiver;->registerGcmRunnable:Ljava/lang/Runnable;

    .line 656
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/home/HomeApplication;Lcom/google/glass/home/HomeApplication$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/home/HomeApplication;
    .param p2, "x1"    # Lcom/google/glass/home/HomeApplication$1;

    .prologue
    .line 640
    invoke-direct {p0, p1}, Lcom/google/glass/home/HomeApplication$RetryGcmRegistrationBroadcastReceiver;-><init>(Lcom/google/glass/home/HomeApplication;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$RetryGcmRegistrationBroadcastReceiver;->retryGcmRegistrationReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 660
    invoke-virtual {p0}, Lcom/google/glass/home/HomeApplication$RetryGcmRegistrationBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Received intent: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v5

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 661
    const-string v0, "retry_gcm_register"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    iget-wide v0, p0, Lcom/google/glass/home/HomeApplication$RetryGcmRegistrationBroadcastReceiver;->retryDelayMs:J

    invoke-static {}, Lcom/google/glass/home/HomeApplication;->access$1600()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 665
    invoke-virtual {p0}, Lcom/google/glass/home/HomeApplication$RetryGcmRegistrationBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    .line 666
    invoke-static {}, Lcom/google/glass/home/HomeApplication;->access$1600()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x4d

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Cancelling GCM retry as we\'ve gone past time limit of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    .line 665
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 671
    :cond_1
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$RetryGcmRegistrationBroadcastReceiver;->this$0:Lcom/google/glass/home/HomeApplication;

    invoke-static {v0}, Lcom/google/glass/home/HomeApplication;->access$1700(Lcom/google/glass/home/HomeApplication;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/HomeApplication$RetryGcmRegistrationBroadcastReceiver;->registerGcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 672
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$RetryGcmRegistrationBroadcastReceiver;->this$0:Lcom/google/glass/home/HomeApplication;

    invoke-static {v0}, Lcom/google/glass/home/HomeApplication;->access$1700(Lcom/google/glass/home/HomeApplication;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/HomeApplication$RetryGcmRegistrationBroadcastReceiver;->registerGcmRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/google/glass/home/HomeApplication$RetryGcmRegistrationBroadcastReceiver;->retryDelayMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 675
    iget-wide v0, p0, Lcom/google/glass/home/HomeApplication$RetryGcmRegistrationBroadcastReceiver;->retryDelayMs:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/glass/home/HomeApplication$RetryGcmRegistrationBroadcastReceiver;->retryDelayMs:J

    goto :goto_0
.end method
