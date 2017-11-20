.class Lcom/google/glass/videoplayer/VideoPlayer$4$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# instance fields
.field final synthetic this$1:Lcom/google/glass/videoplayer/VideoPlayer$4;


# direct methods
.method constructor <init>(Lcom/google/glass/videoplayer/VideoPlayer$4;)V
    .locals 0

    .prologue
    .line 593
    iput-object p1, p0, Lcom/google/glass/videoplayer/VideoPlayer$4$4;->this$1:Lcom/google/glass/videoplayer/VideoPlayer$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 596
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 597
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$4$4;->this$1:Lcom/google/glass/videoplayer/VideoPlayer$4;

    iget-object v0, v0, Lcom/google/glass/videoplayer/VideoPlayer$4;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    iput p2, v0, Lcom/google/glass/videoplayer/VideoPlayer;->bufferedPercent:I

    .line 600
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$4$4;->this$1:Lcom/google/glass/videoplayer/VideoPlayer$4;

    iget-object v0, v0, Lcom/google/glass/videoplayer/VideoPlayer$4;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v0}, Lcom/google/glass/videoplayer/VideoPlayer;->access$500(Lcom/google/glass/videoplayer/VideoPlayer;)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 601
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$4$4;->this$1:Lcom/google/glass/videoplayer/VideoPlayer$4;

    iget-object v0, v0, Lcom/google/glass/videoplayer/VideoPlayer$4;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    iget v0, v0, Lcom/google/glass/videoplayer/VideoPlayer;->bufferedPercent:I

    iget-object v2, p0, Lcom/google/glass/videoplayer/VideoPlayer$4$4;->this$1:Lcom/google/glass/videoplayer/VideoPlayer$4;

    iget-object v2, v2, Lcom/google/glass/videoplayer/VideoPlayer$4;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v2}, Lcom/google/glass/videoplayer/VideoPlayer;->access$200(Lcom/google/glass/videoplayer/VideoPlayer;)I

    move-result v2

    iget-object v3, p0, Lcom/google/glass/videoplayer/VideoPlayer$4$4;->this$1:Lcom/google/glass/videoplayer/VideoPlayer$4;

    iget-object v3, v3, Lcom/google/glass/videoplayer/VideoPlayer$4;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v3}, Lcom/google/glass/videoplayer/VideoPlayer;->access$500(Lcom/google/glass/videoplayer/VideoPlayer;)I

    move-result v3

    div-int/2addr v2, v3

    if-lt v0, v2, :cond_0

    .line 602
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$4$4;->this$1:Lcom/google/glass/videoplayer/VideoPlayer$4;

    iget-object v0, v0, Lcom/google/glass/videoplayer/VideoPlayer$4;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    iget-boolean v0, v0, Lcom/google/glass/videoplayer/VideoPlayer;->shouldShowPlayBar:Z

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$4$4;->this$1:Lcom/google/glass/videoplayer/VideoPlayer$4;

    iget-object v0, v0, Lcom/google/glass/videoplayer/VideoPlayer$4;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v0}, Lcom/google/glass/videoplayer/VideoPlayer;->access$300(Lcom/google/glass/videoplayer/VideoPlayer;)Lcom/google/glass/videoplayer/VideoPlayer$ViewListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/glass/videoplayer/VideoPlayer$ViewListener;->onPlay(Z)V

    .line 604
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$4$4;->this$1:Lcom/google/glass/videoplayer/VideoPlayer$4;

    iget-object v0, v0, Lcom/google/glass/videoplayer/VideoPlayer$4;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    iput-boolean v1, v0, Lcom/google/glass/videoplayer/VideoPlayer;->shouldShowPlayBar:Z

    .line 607
    :cond_0
    invoke-static {}, Lcom/google/glass/videoplayer/VideoPlayer;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iget-object v2, p0, Lcom/google/glass/videoplayer/VideoPlayer$4$4;->this$1:Lcom/google/glass/videoplayer/VideoPlayer$4;

    iget-object v2, v2, Lcom/google/glass/videoplayer/VideoPlayer$4;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    iget v2, v2, Lcom/google/glass/videoplayer/VideoPlayer;->bufferedPercent:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x2d

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Buffer update listener called on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v1}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 609
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 600
    goto :goto_0
.end method
