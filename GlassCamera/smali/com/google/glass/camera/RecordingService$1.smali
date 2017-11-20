.class Lcom/google/glass/camera/RecordingService$1;
.super Ljava/lang/Object;
.source "RecordingService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/camera/RecordingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/RecordingService;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/RecordingService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/camera/RecordingService;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/glass/camera/RecordingService$1;->this$0:Lcom/google/glass/camera/RecordingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 76
    iget-object v1, p0, Lcom/google/glass/camera/RecordingService$1;->this$0:Lcom/google/glass/camera/RecordingService;

    invoke-static {v1}, Lcom/google/glass/camera/RecordingService;->access$100(Lcom/google/glass/camera/RecordingService;)Lcom/google/glass/android/os/PowerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/glass/android/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    invoke-static {}, Lcom/google/glass/camera/RecordingService;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Waking screen up to remind user that they are still recording..."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    iget-object v1, p0, Lcom/google/glass/camera/RecordingService$1;->this$0:Lcom/google/glass/camera/RecordingService;

    invoke-static {v1, v4}, Lcom/google/glass/camera/RecordingService;->access$302(Lcom/google/glass/camera/RecordingService;Z)Z

    .line 79
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.action.RECORD_VIDEO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, "resumeRecordingIntent":Landroid/content/Intent;
    const-string v1, "resume_recording"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 81
    const v1, 0x10002000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 84
    iget-object v1, p0, Lcom/google/glass/camera/RecordingService$1;->this$0:Lcom/google/glass/camera/RecordingService;

    invoke-static {v1}, Lcom/google/glass/camera/RecordingService;->access$400(Lcom/google/glass/camera/RecordingService;)V

    .line 85
    iget-object v1, p0, Lcom/google/glass/camera/RecordingService$1;->this$0:Lcom/google/glass/camera/RecordingService;

    invoke-virtual {v1, v0}, Lcom/google/glass/camera/RecordingService;->startActivity(Landroid/content/Intent;)V

    .line 86
    invoke-static {}, Lcom/google/glass/camera/RecordingService;->access$600()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/camera/RecordingService$1;->this$0:Lcom/google/glass/camera/RecordingService;

    invoke-static {v2}, Lcom/google/glass/camera/RecordingService;->access$500(Lcom/google/glass/camera/RecordingService;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0xfa0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 88
    .end local v0    # "resumeRecordingIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
