.class Lcom/google/glass/videoplayer/VideoPlayer$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic this$1:Lcom/google/glass/videoplayer/VideoPlayer$4;


# direct methods
.method constructor <init>(Lcom/google/glass/videoplayer/VideoPlayer$4;)V
    .locals 0

    .prologue
    .line 534
    iput-object p1, p0, Lcom/google/glass/videoplayer/VideoPlayer$4$1;->this$1:Lcom/google/glass/videoplayer/VideoPlayer$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    .prologue
    .line 537
    invoke-static {}, Lcom/google/glass/videoplayer/VideoPlayer;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Playback stopped after completion."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 538
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$4$1;->this$1:Lcom/google/glass/videoplayer/VideoPlayer$4;

    iget-object v0, v0, Lcom/google/glass/videoplayer/VideoPlayer$4;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v0}, Lcom/google/glass/videoplayer/VideoPlayer;->access$2100(Lcom/google/glass/videoplayer/VideoPlayer;)Lcom/google/glass/videoplayer/util/EventLogAggregator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/videoplayer/VideoPlayer$4$1;->this$1:Lcom/google/glass/videoplayer/VideoPlayer$4;

    iget-object v1, v1, Lcom/google/glass/videoplayer/VideoPlayer$4;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v1}, Lcom/google/glass/videoplayer/VideoPlayer;->access$1700(Lcom/google/glass/videoplayer/VideoPlayer;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/videoplayer/VideoPlayer$4$1;->this$1:Lcom/google/glass/videoplayer/VideoPlayer$4;

    iget-object v2, v2, Lcom/google/glass/videoplayer/VideoPlayer$4;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v2}, Lcom/google/glass/videoplayer/VideoPlayer;->access$500(Lcom/google/glass/videoplayer/VideoPlayer;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/videoplayer/util/EventLogAggregator;->logVideoStopped(Ljava/lang/String;I)V

    .line 539
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$4$1;->this$1:Lcom/google/glass/videoplayer/VideoPlayer$4;

    iget-object v0, v0, Lcom/google/glass/videoplayer/VideoPlayer$4;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v0}, Lcom/google/glass/videoplayer/VideoPlayer;->access$2200(Lcom/google/glass/videoplayer/VideoPlayer;)Lcom/google/glass/videoplayer/VideoPlayer$ControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/videoplayer/VideoPlayer$ControllerListener;->onEnd()V

    .line 540
    return-void
.end method
