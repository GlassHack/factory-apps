.class Lcom/google/glass/videoplayer/VideoPlayer$5;
.super Lcom/google/glass/async/SerialAsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/videoplayer/VideoPlayer;


# direct methods
.method constructor <init>(Lcom/google/glass/videoplayer/VideoPlayer;)V
    .locals 0

    .prologue
    .line 642
    iput-object p1, p0, Lcom/google/glass/videoplayer/VideoPlayer$5;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-direct {p0}, Lcom/google/glass/async/SerialAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs serialDoInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 653
    .line 655
    invoke-virtual {p0}, Lcom/google/glass/videoplayer/VideoPlayer$5;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 672
    :goto_0
    return-object v0

    .line 659
    :cond_0
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$5;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v0}, Lcom/google/glass/videoplayer/VideoPlayer;->access$600(Lcom/google/glass/videoplayer/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 660
    invoke-static {}, Lcom/google/glass/videoplayer/VideoPlayer;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v2, "Stopping playback."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 661
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$5;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v0}, Lcom/google/glass/videoplayer/VideoPlayer;->access$600(Lcom/google/glass/videoplayer/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 662
    const/4 v0, 0x1

    .line 665
    :goto_1
    iget-object v2, p0, Lcom/google/glass/videoplayer/VideoPlayer$5;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    iput-boolean v1, v2, Lcom/google/glass/videoplayer/VideoPlayer;->isPrepared:Z

    .line 666
    invoke-static {}, Lcom/google/glass/videoplayer/VideoPlayer;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Removing surface."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 667
    iget-object v2, p0, Lcom/google/glass/videoplayer/VideoPlayer$5;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v2}, Lcom/google/glass/videoplayer/VideoPlayer;->access$600(Lcom/google/glass/videoplayer/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 669
    invoke-static {}, Lcom/google/glass/videoplayer/VideoPlayer;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Releasing player."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v1}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 670
    iget-object v1, p0, Lcom/google/glass/videoplayer/VideoPlayer$5;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v1}, Lcom/google/glass/videoplayer/VideoPlayer;->access$600(Lcom/google/glass/videoplayer/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 672
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method protected bridge synthetic serialDoInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 642
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/videoplayer/VideoPlayer$5;->serialDoInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected serialOnPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 677
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    invoke-static {}, Lcom/google/glass/videoplayer/VideoPlayer;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Playback stopped after interruption."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 682
    :cond_0
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$5;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v0}, Lcom/google/glass/videoplayer/VideoPlayer;->access$2300(Lcom/google/glass/videoplayer/VideoPlayer;)V

    .line 683
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$5;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/videoplayer/VideoPlayer;->access$602(Lcom/google/glass/videoplayer/VideoPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 684
    return-void
.end method

.method protected bridge synthetic serialOnPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 642
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/google/glass/videoplayer/VideoPlayer$5;->serialOnPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected serialOnPreExecute()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 645
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$5;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v0}, Lcom/google/glass/videoplayer/VideoPlayer;->access$600(Lcom/google/glass/videoplayer/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 646
    invoke-static {}, Lcom/google/glass/videoplayer/VideoPlayer;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Playback already stopped."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 647
    invoke-virtual {p0, v3}, Lcom/google/glass/videoplayer/VideoPlayer$5;->cancel(Z)Z

    .line 649
    :cond_0
    return-void
.end method
