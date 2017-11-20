.class Lcom/google/glass/setup/SetupActivity$NtpTimeBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "SetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/setup/SetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NtpTimeBroadcastReceiver"
.end annotation


# instance fields
.field private final btDeviceForPair:Ljava/lang/String;

.field private final now:Landroid/text/format/Time;

.field private final password:Ljava/lang/String;

.field private final synchronous:Z

.field final synthetic this$0:Lcom/google/glass/setup/SetupActivity;

.field private final token:Ljava/lang/String;

.field private final username:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/glass/setup/SetupActivity;Landroid/text/format/Time;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p2, "now"    # Landroid/text/format/Time;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "token"    # Ljava/lang/String;
    .param p6, "btDeviceForPair"    # Ljava/lang/String;
    .param p7, "synchronous"    # Z

    .prologue
    .line 686
    iput-object p1, p0, Lcom/google/glass/setup/SetupActivity$NtpTimeBroadcastReceiver;->this$0:Lcom/google/glass/setup/SetupActivity;

    .line 687
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.TIME_SET"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 688
    iput-object p2, p0, Lcom/google/glass/setup/SetupActivity$NtpTimeBroadcastReceiver;->now:Landroid/text/format/Time;

    .line 689
    iput-object p3, p0, Lcom/google/glass/setup/SetupActivity$NtpTimeBroadcastReceiver;->username:Ljava/lang/String;

    .line 690
    iput-object p4, p0, Lcom/google/glass/setup/SetupActivity$NtpTimeBroadcastReceiver;->password:Ljava/lang/String;

    .line 691
    iput-object p5, p0, Lcom/google/glass/setup/SetupActivity$NtpTimeBroadcastReceiver;->token:Ljava/lang/String;

    .line 692
    iput-object p6, p0, Lcom/google/glass/setup/SetupActivity$NtpTimeBroadcastReceiver;->btDeviceForPair:Ljava/lang/String;

    .line 693
    iput-boolean p7, p0, Lcom/google/glass/setup/SetupActivity$NtpTimeBroadcastReceiver;->synchronous:Z

    .line 694
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/setup/SetupActivity;Landroid/text/format/Time;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/glass/setup/SetupActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/setup/SetupActivity;
    .param p2, "x1"    # Landroid/text/format/Time;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # Z
    .param p8, "x7"    # Lcom/google/glass/setup/SetupActivity$1;

    .prologue
    .line 676
    invoke-direct/range {p0 .. p7}, Lcom/google/glass/setup/SetupActivity$NtpTimeBroadcastReceiver;-><init>(Lcom/google/glass/setup/SetupActivity;Landroid/text/format/Time;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 713
    invoke-static {}, Lcom/google/glass/setup/SetupActivity;->access$1300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    .line 698
    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/google/glass/setup/SetupActivity$NtpTimeBroadcastReceiver;->this$0:Lcom/google/glass/setup/SetupActivity;

    iget-object v0, v0, Lcom/google/glass/setup/SetupActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/setup/SetupActivity$NtpTimeBroadcastReceiver;->this$0:Lcom/google/glass/setup/SetupActivity;

    invoke-static {v1}, Lcom/google/glass/setup/SetupActivity;->access$1100(Lcom/google/glass/setup/SetupActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 702
    iget-object v0, p0, Lcom/google/glass/setup/SetupActivity$NtpTimeBroadcastReceiver;->now:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 703
    invoke-virtual {p0}, Lcom/google/glass/setup/SetupActivity$NtpTimeBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Time set to %s, continuing with setup."

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/setup/SetupActivity$NtpTimeBroadcastReceiver;->now:Landroid/text/format/Time;

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 704
    iget-object v0, p0, Lcom/google/glass/setup/SetupActivity$NtpTimeBroadcastReceiver;->this$0:Lcom/google/glass/setup/SetupActivity;

    invoke-virtual {p0, v0}, Lcom/google/glass/setup/SetupActivity$NtpTimeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 707
    iget-object v0, p0, Lcom/google/glass/setup/SetupActivity$NtpTimeBroadcastReceiver;->this$0:Lcom/google/glass/setup/SetupActivity;

    iget-object v1, p0, Lcom/google/glass/setup/SetupActivity$NtpTimeBroadcastReceiver;->username:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/setup/SetupActivity$NtpTimeBroadcastReceiver;->password:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/glass/setup/SetupActivity$NtpTimeBroadcastReceiver;->token:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/glass/setup/SetupActivity$NtpTimeBroadcastReceiver;->btDeviceForPair:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/glass/setup/SetupActivity$NtpTimeBroadcastReceiver;->synchronous:Z

    invoke-static/range {v0 .. v5}, Lcom/google/glass/setup/SetupActivity;->access$1200(Lcom/google/glass/setup/SetupActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 709
    :cond_0
    return-void
.end method
