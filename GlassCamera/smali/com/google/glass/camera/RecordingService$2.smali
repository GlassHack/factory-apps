.class Lcom/google/glass/camera/RecordingService$2;
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
    .line 95
    iput-object p1, p0, Lcom/google/glass/camera/RecordingService$2;->this$0:Lcom/google/glass/camera/RecordingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 98
    invoke-static {}, Lcom/google/glass/camera/RecordingService;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Turning screen off..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    iget-object v0, p0, Lcom/google/glass/camera/RecordingService$2;->this$0:Lcom/google/glass/camera/RecordingService;

    invoke-virtual {v0}, Lcom/google/glass/camera/RecordingService;->releaseWakeLock()V

    .line 102
    iget-object v0, p0, Lcom/google/glass/camera/RecordingService$2;->this$0:Lcom/google/glass/camera/RecordingService;

    invoke-static {v0}, Lcom/google/glass/camera/RecordingService;->access$700(Lcom/google/glass/camera/RecordingService;)V

    .line 103
    return-void
.end method
