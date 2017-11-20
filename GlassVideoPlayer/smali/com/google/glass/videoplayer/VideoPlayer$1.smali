.class Lcom/google/glass/videoplayer/VideoPlayer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/videoplayer/ScrubbingDetector$Listener;


# instance fields
.field final synthetic this$0:Lcom/google/glass/videoplayer/VideoPlayer;


# direct methods
.method constructor <init>(Lcom/google/glass/videoplayer/VideoPlayer;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/google/glass/videoplayer/VideoPlayer$1;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrubbing(F)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 199
    iget-object v1, p0, Lcom/google/glass/videoplayer/VideoPlayer$1;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v1}, Lcom/google/glass/videoplayer/VideoPlayer;->access$000(Lcom/google/glass/videoplayer/VideoPlayer;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    :goto_0
    return v0

    .line 202
    :cond_0
    const/4 v2, 0x1

    .line 203
    iget-object v1, p0, Lcom/google/glass/videoplayer/VideoPlayer$1;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v1}, Lcom/google/glass/videoplayer/VideoPlayer;->access$500(Lcom/google/glass/videoplayer/VideoPlayer;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/google/glass/videoplayer/widget/TimeBarView;->convertPositionDeltaToTimestampDelta(FI)I

    move-result v1

    .line 205
    iget-object v3, p0, Lcom/google/glass/videoplayer/VideoPlayer$1;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v3}, Lcom/google/glass/videoplayer/VideoPlayer;->access$200(Lcom/google/glass/videoplayer/VideoPlayer;)I

    move-result v3

    add-int/2addr v1, v3

    .line 206
    invoke-static {}, Lcom/google/glass/videoplayer/VideoPlayer;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x2c

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "onScrubbing, newScrubberTimeMs = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    if-gez v1, :cond_1

    move v1, v0

    .line 214
    :goto_1
    iget-object v2, p0, Lcom/google/glass/videoplayer/VideoPlayer$1;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v2}, Lcom/google/glass/videoplayer/VideoPlayer;->access$300(Lcom/google/glass/videoplayer/VideoPlayer;)Lcom/google/glass/videoplayer/VideoPlayer$ViewListener;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/videoplayer/VideoPlayer$1;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v3}, Lcom/google/glass/videoplayer/VideoPlayer;->access$500(Lcom/google/glass/videoplayer/VideoPlayer;)I

    move-result v3

    iget-object v4, p0, Lcom/google/glass/videoplayer/VideoPlayer$1;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    iget v4, v4, Lcom/google/glass/videoplayer/VideoPlayer;->bufferedPercent:I

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/videoplayer/VideoPlayer$ViewListener;->onUpdate(III)V

    .line 215
    iget-object v2, p0, Lcom/google/glass/videoplayer/VideoPlayer$1;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v2, v0}, Lcom/google/glass/videoplayer/VideoPlayer;->access$102(Lcom/google/glass/videoplayer/VideoPlayer;I)I

    move v0, v1

    .line 216
    goto :goto_0

    .line 210
    :cond_1
    iget-object v3, p0, Lcom/google/glass/videoplayer/VideoPlayer$1;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v3}, Lcom/google/glass/videoplayer/VideoPlayer;->access$500(Lcom/google/glass/videoplayer/VideoPlayer;)I

    move-result v3

    if-le v1, v3, :cond_2

    .line 212
    iget-object v1, p0, Lcom/google/glass/videoplayer/VideoPlayer$1;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v1}, Lcom/google/glass/videoplayer/VideoPlayer;->access$500(Lcom/google/glass/videoplayer/VideoPlayer;)I

    move-result v1

    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_1

    :cond_2
    move v0, v1

    move v1, v2

    goto :goto_1
.end method

.method public onScrubbingEnd()V
    .locals 4

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$1;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v0}, Lcom/google/glass/videoplayer/VideoPlayer;->access$000(Lcom/google/glass/videoplayer/VideoPlayer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$1;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    iget-object v1, p0, Lcom/google/glass/videoplayer/VideoPlayer$1;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v1}, Lcom/google/glass/videoplayer/VideoPlayer;->access$100(Lcom/google/glass/videoplayer/VideoPlayer;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/glass/videoplayer/VideoPlayer;->access$202(Lcom/google/glass/videoplayer/VideoPlayer;I)I

    .line 192
    invoke-static {}, Lcom/google/glass/videoplayer/VideoPlayer;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/videoplayer/VideoPlayer$1;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v1}, Lcom/google/glass/videoplayer/VideoPlayer;->access$100(Lcom/google/glass/videoplayer/VideoPlayer;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x3c

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "onScrubbingEnd: currentTimeMs = scrubberTimeMs = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$1;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v0}, Lcom/google/glass/videoplayer/VideoPlayer;->access$300(Lcom/google/glass/videoplayer/VideoPlayer;)Lcom/google/glass/videoplayer/VideoPlayer$ViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/videoplayer/VideoPlayer$ViewListener;->onLoad()V

    .line 194
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$1;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-virtual {v0}, Lcom/google/glass/videoplayer/VideoPlayer;->play()V

    goto :goto_0
.end method

.method public onScrubbingStart()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 177
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$1;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v0}, Lcom/google/glass/videoplayer/VideoPlayer;->access$000(Lcom/google/glass/videoplayer/VideoPlayer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$1;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    iget-object v1, p0, Lcom/google/glass/videoplayer/VideoPlayer$1;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v1}, Lcom/google/glass/videoplayer/VideoPlayer;->access$200(Lcom/google/glass/videoplayer/VideoPlayer;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/glass/videoplayer/VideoPlayer;->access$102(Lcom/google/glass/videoplayer/VideoPlayer;I)I

    .line 181
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$1;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-virtual {v0, v4}, Lcom/google/glass/videoplayer/VideoPlayer;->pause(Z)V

    .line 182
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$1;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v0}, Lcom/google/glass/videoplayer/VideoPlayer;->access$300(Lcom/google/glass/videoplayer/VideoPlayer;)Lcom/google/glass/videoplayer/VideoPlayer$ViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/videoplayer/VideoPlayer$ViewListener;->onScrubbingStart()V

    .line 183
    invoke-static {}, Lcom/google/glass/videoplayer/VideoPlayer;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/videoplayer/VideoPlayer$1;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v1}, Lcom/google/glass/videoplayer/VideoPlayer;->access$100(Lcom/google/glass/videoplayer/VideoPlayer;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Scrubbing started (scrubberTimeMs, currentTimeMs) = ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onTap()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 221
    iget-object v1, p0, Lcom/google/glass/videoplayer/VideoPlayer$1;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v1}, Lcom/google/glass/videoplayer/VideoPlayer;->access$000(Lcom/google/glass/videoplayer/VideoPlayer;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    const/4 v0, 0x0

    .line 229
    :goto_0
    return v0

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/google/glass/videoplayer/VideoPlayer$1;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v1}, Lcom/google/glass/videoplayer/VideoPlayer;->access$600(Lcom/google/glass/videoplayer/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 225
    iget-object v1, p0, Lcom/google/glass/videoplayer/VideoPlayer$1;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-virtual {v1, v0}, Lcom/google/glass/videoplayer/VideoPlayer;->pause(Z)V

    goto :goto_0

    .line 227
    :cond_1
    iget-object v1, p0, Lcom/google/glass/videoplayer/VideoPlayer$1;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-virtual {v1}, Lcom/google/glass/videoplayer/VideoPlayer;->play()V

    goto :goto_0
.end method
