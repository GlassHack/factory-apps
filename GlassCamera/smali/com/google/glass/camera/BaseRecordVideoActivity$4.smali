.class Lcom/google/glass/camera/BaseRecordVideoActivity$4;
.super Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;
.source "BaseRecordVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/BaseRecordVideoActivity;->createExtendVideoTipRunnable()Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/BaseRecordVideoActivity;IZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/camera/BaseRecordVideoActivity;
    .param p2, "tipResId"    # I
    .param p3, "shouldTimeout"    # Z

    .prologue
    .line 356
    iput-object p1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$4;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;-><init>(Lcom/google/glass/camera/BaseRecordVideoActivity;IZ)V

    return-void
.end method


# virtual methods
.method getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$4;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$400(Lcom/google/glass/camera/BaseRecordVideoActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/extendVideoTipRunnable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method onTipHidden()V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$4;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    iget-object v0, v0, Lcom/google/glass/camera/BaseRecordVideoActivity;->batteryStateReceiver:Lcom/google/glass/camera/BaseRecordVideoActivity$BatteryStateBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$4;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$1700(Lcom/google/glass/camera/BaseRecordVideoActivity;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/BaseRecordVideoActivity$BatteryStateBroadcastReceiver;->register(Lcom/google/glass/context/BroadcastReceiverRegistrar;)Landroid/content/Intent;

    .line 360
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$4;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$1800(Lcom/google/glass/camera/BaseRecordVideoActivity;)Lcom/google/glass/camera/BaseRecordVideoActivity$StorageBroadcastReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$4;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$1700(Lcom/google/glass/camera/BaseRecordVideoActivity;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/BaseRecordVideoActivity$StorageBroadcastReceiver;->register(Lcom/google/glass/context/BroadcastReceiverRegistrar;)Landroid/content/Intent;

    .line 361
    return-void
.end method
