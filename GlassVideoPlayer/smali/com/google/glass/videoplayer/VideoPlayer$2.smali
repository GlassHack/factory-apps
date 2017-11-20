.class Lcom/google/glass/videoplayer/VideoPlayer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/videoplayer/VideoPlayer;


# direct methods
.method constructor <init>(Lcom/google/glass/videoplayer/VideoPlayer;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/google/glass/videoplayer/VideoPlayer$2;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 323
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 324
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$2;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v0}, Lcom/google/glass/videoplayer/VideoPlayer;->access$600(Lcom/google/glass/videoplayer/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$2;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v0}, Lcom/google/glass/videoplayer/VideoPlayer;->access$700(Lcom/google/glass/videoplayer/VideoPlayer;)Lcom/google/glass/videoplayer/ScrubbingDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/videoplayer/ScrubbingDetector;->isScrubbing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$2;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    iget-boolean v0, v0, Lcom/google/glass/videoplayer/VideoPlayer;->isPrepared:Z

    if-nez v0, :cond_2

    .line 327
    :cond_0
    invoke-static {}, Lcom/google/glass/videoplayer/VideoPlayer;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Updating the time stamp canceled."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    :cond_1
    :goto_0
    return-void

    .line 331
    :cond_2
    invoke-static {}, Lcom/google/glass/videoplayer/VideoPlayer;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Updating the time stamp."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$2;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v0}, Lcom/google/glass/videoplayer/VideoPlayer;->access$300(Lcom/google/glass/videoplayer/VideoPlayer;)Lcom/google/glass/videoplayer/VideoPlayer$ViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/videoplayer/VideoPlayer$2;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v1}, Lcom/google/glass/videoplayer/VideoPlayer;->access$600(Lcom/google/glass/videoplayer/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    iget-object v2, p0, Lcom/google/glass/videoplayer/VideoPlayer$2;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v2}, Lcom/google/glass/videoplayer/VideoPlayer;->access$500(Lcom/google/glass/videoplayer/VideoPlayer;)I

    move-result v2

    iget-object v3, p0, Lcom/google/glass/videoplayer/VideoPlayer$2;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    iget v3, v3, Lcom/google/glass/videoplayer/VideoPlayer;->bufferedPercent:I

    invoke-interface {v0, v1, v2, v3}, Lcom/google/glass/videoplayer/VideoPlayer$ViewListener;->onUpdate(III)V

    .line 333
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/glass/videoplayer/VideoPlayer$2;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v2}, Lcom/google/glass/videoplayer/VideoPlayer;->access$800(Lcom/google/glass/videoplayer/VideoPlayer;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$2;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v0}, Lcom/google/glass/videoplayer/VideoPlayer;->access$1000(Lcom/google/glass/videoplayer/VideoPlayer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/videoplayer/VideoPlayer$2;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v1}, Lcom/google/glass/videoplayer/VideoPlayer;->access$900(Lcom/google/glass/videoplayer/VideoPlayer;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x85

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
