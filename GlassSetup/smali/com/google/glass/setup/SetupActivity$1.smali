.class Lcom/google/glass/setup/SetupActivity$1;
.super Ljava/lang/Object;
.source "SetupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/setup/SetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/setup/SetupActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/setup/SetupActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/setup/SetupActivity;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/google/glass/setup/SetupActivity$1;->this$0:Lcom/google/glass/setup/SetupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 112
    invoke-static {}, Lcom/google/glass/setup/SetupActivity;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "NTP timeout occurred, we never got the ACTION_TIME_CHANGED broadcast."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    iget-object v0, p0, Lcom/google/glass/setup/SetupActivity$1;->this$0:Lcom/google/glass/setup/SetupActivity;

    invoke-static {v0}, Lcom/google/glass/setup/SetupActivity;->access$100(Lcom/google/glass/setup/SetupActivity;)Lcom/google/glass/setup/SetupActivity$NtpTimeBroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/setup/SetupActivity$1;->this$0:Lcom/google/glass/setup/SetupActivity;

    invoke-static {v0}, Lcom/google/glass/setup/SetupActivity;->access$100(Lcom/google/glass/setup/SetupActivity;)Lcom/google/glass/setup/SetupActivity$NtpTimeBroadcastReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/setup/SetupActivity$NtpTimeBroadcastReceiver;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/google/glass/setup/SetupActivity$1;->this$0:Lcom/google/glass/setup/SetupActivity;

    sget-object v1, Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;->NETWORK_ERROR:Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;

    sget v2, Lcom/google/glass/setup/R$string;->network_failed_tips:I

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/setup/SetupActivity;->handleSetupError(Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;I)V

    .line 120
    :cond_0
    return-void
.end method
