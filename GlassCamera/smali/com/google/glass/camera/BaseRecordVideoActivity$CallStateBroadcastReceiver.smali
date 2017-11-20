.class Lcom/google/glass/camera/BaseRecordVideoActivity$CallStateBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "BaseRecordVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/camera/BaseRecordVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallStateBroadcastReceiver"
.end annotation


# instance fields
.field private final callLogger:Lcom/google/glass/logging/FormattingLogger;

.field final synthetic this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;


# direct methods
.method private constructor <init>(Lcom/google/glass/camera/BaseRecordVideoActivity;)V
    .locals 3

    .prologue
    .line 1155
    iput-object p1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$CallStateBroadcastReceiver;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    .line 1156
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.glass.action.PHONE_CALL_STATE_CHANGED"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 1152
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$CallStateBroadcastReceiver;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    .line 1153
    invoke-static {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$400(Lcom/google/glass/camera/BaseRecordVideoActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "callStateReceiver"

    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$CallStateBroadcastReceiver;->callLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 1157
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/camera/BaseRecordVideoActivity;Lcom/google/glass/camera/BaseRecordVideoActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/camera/BaseRecordVideoActivity;
    .param p2, "x1"    # Lcom/google/glass/camera/BaseRecordVideoActivity$1;

    .prologue
    .line 1151
    invoke-direct {p0, p1}, Lcom/google/glass/camera/BaseRecordVideoActivity$CallStateBroadcastReceiver;-><init>(Lcom/google/glass/camera/BaseRecordVideoActivity;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$CallStateBroadcastReceiver;->callLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$CallStateBroadcastReceiver;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v0, p2}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$3500(Lcom/google/glass/camera/BaseRecordVideoActivity;Landroid/content/Intent;)V

    .line 1162
    return-void
.end method
