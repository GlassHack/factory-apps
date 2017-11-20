.class Lcom/google/glass/camera/BaseRecordVideoActivity$1;
.super Lcom/google/glass/util/SafeServiceConnection;
.source "BaseRecordVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/camera/BaseRecordVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/BaseRecordVideoActivity;Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/camera/BaseRecordVideoActivity;
    .param p2, "x0"    # Landroid/content/ComponentName;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$1;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-direct {p0, p2}, Lcom/google/glass/util/SafeServiceConnection;-><init>(Landroid/content/ComponentName;)V

    return-void
.end method


# virtual methods
.method protected getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$1;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$400(Lcom/google/glass/camera/BaseRecordVideoActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onServiceConnectedInternal(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$1;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    check-cast p2, Lcom/google/glass/camera/RecordingService$LocalBinder;

    .end local p2    # "service":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/google/glass/camera/RecordingService$LocalBinder;->getService()Lcom/google/glass/camera/RecordingService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$002(Lcom/google/glass/camera/BaseRecordVideoActivity;Lcom/google/glass/camera/RecordingService;)Lcom/google/glass/camera/RecordingService;

    .line 136
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$1;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$100(Lcom/google/glass/camera/BaseRecordVideoActivity;)V

    .line 137
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$1;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$200(Lcom/google/glass/camera/BaseRecordVideoActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$1;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$300(Lcom/google/glass/camera/BaseRecordVideoActivity;)V

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$1;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-virtual {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->startRecording()V

    goto :goto_0
.end method

.method public onServiceDisconnectedInternal(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "isError"    # Z

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$1;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$002(Lcom/google/glass/camera/BaseRecordVideoActivity;Lcom/google/glass/camera/RecordingService;)Lcom/google/glass/camera/RecordingService;

    .line 131
    return-void
.end method
