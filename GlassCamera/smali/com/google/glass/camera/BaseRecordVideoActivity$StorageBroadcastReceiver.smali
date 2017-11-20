.class Lcom/google/glass/camera/BaseRecordVideoActivity$StorageBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "BaseRecordVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/camera/BaseRecordVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StorageBroadcastReceiver"
.end annotation


# instance fields
.field private final storageReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

.field final synthetic this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;


# direct methods
.method private constructor <init>(Lcom/google/glass/camera/BaseRecordVideoActivity;)V
    .locals 3

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$StorageBroadcastReceiver;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    .line 167
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.DEVICE_STORAGE_FULL"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$StorageBroadcastReceiver;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    .line 164
    invoke-static {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$400(Lcom/google/glass/camera/BaseRecordVideoActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "storageReceiver"

    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$StorageBroadcastReceiver;->storageReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 168
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/camera/BaseRecordVideoActivity;Lcom/google/glass/camera/BaseRecordVideoActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/camera/BaseRecordVideoActivity;
    .param p2, "x1"    # Lcom/google/glass/camera/BaseRecordVideoActivity$1;

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/google/glass/camera/BaseRecordVideoActivity$StorageBroadcastReceiver;-><init>(Lcom/google/glass/camera/BaseRecordVideoActivity;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$StorageBroadcastReceiver;->storageReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 172
    const-string v0, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$StorageBroadcastReceiver;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-virtual {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->isRecordingOngoing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity$StorageBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Received a low storage warning, stopping recording."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$StorageBroadcastReceiver;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-virtual {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->stopRecording()V

    .line 176
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$StorageBroadcastReceiver;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$600(Lcom/google/glass/camera/BaseRecordVideoActivity;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->DEVICE_STORAGE_BLOCK_USER_ACTION:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 180
    :cond_0
    return-void
.end method
