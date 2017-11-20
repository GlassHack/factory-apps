.class Lcom/google/glass/camera/RecordingService$StorageBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "RecordingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/camera/RecordingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StorageBroadcastReceiver"
.end annotation


# instance fields
.field private final storageReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

.field final synthetic this$0:Lcom/google/glass/camera/RecordingService;


# direct methods
.method private constructor <init>(Lcom/google/glass/camera/RecordingService;)V
    .locals 3

    .prologue
    .line 194
    iput-object p1, p0, Lcom/google/glass/camera/RecordingService$StorageBroadcastReceiver;->this$0:Lcom/google/glass/camera/RecordingService;

    .line 195
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.DEVICE_STORAGE_FULL"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 192
    invoke-static {}, Lcom/google/glass/camera/RecordingService;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "storageReceiver"

    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/RecordingService$StorageBroadcastReceiver;->storageReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 196
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/camera/RecordingService;Lcom/google/glass/camera/RecordingService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/camera/RecordingService;
    .param p2, "x1"    # Lcom/google/glass/camera/RecordingService$1;

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/google/glass/camera/RecordingService$StorageBroadcastReceiver;-><init>(Lcom/google/glass/camera/RecordingService;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/glass/camera/RecordingService$StorageBroadcastReceiver;->storageReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 200
    const-string v0, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/google/glass/camera/RecordingService$StorageBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Received a low storage warning, stopping recording."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    iget-object v0, p0, Lcom/google/glass/camera/RecordingService$StorageBroadcastReceiver;->this$0:Lcom/google/glass/camera/RecordingService;

    iget-object v0, v0, Lcom/google/glass/camera/RecordingService;->state:Lcom/google/glass/camera/RecordingService$RecordingState;

    sget-object v1, Lcom/google/glass/camera/RecordingService$RecordingState;->RECORDING:Lcom/google/glass/camera/RecordingService$RecordingState;

    if-ne v0, v1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/google/glass/camera/RecordingService$StorageBroadcastReceiver;->this$0:Lcom/google/glass/camera/RecordingService;

    invoke-virtual {v0}, Lcom/google/glass/camera/RecordingService;->stopRecording()V

    .line 204
    iget-object v0, p0, Lcom/google/glass/camera/RecordingService$StorageBroadcastReceiver;->this$0:Lcom/google/glass/camera/RecordingService;

    invoke-static {v0}, Lcom/google/glass/camera/RecordingService;->access$1200(Lcom/google/glass/camera/RecordingService;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->DEVICE_STORAGE_BLOCK_USER_ACTION:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 208
    :cond_0
    return-void
.end method
