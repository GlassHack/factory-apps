.class Lcom/google/glass/videoplayer/VideoPlayer$4$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# instance fields
.field final synthetic this$1:Lcom/google/glass/videoplayer/VideoPlayer$4;


# direct methods
.method constructor <init>(Lcom/google/glass/videoplayer/VideoPlayer$4;)V
    .locals 0

    .prologue
    .line 543
    iput-object p1, p0, Lcom/google/glass/videoplayer/VideoPlayer$4$2;->this$1:Lcom/google/glass/videoplayer/VideoPlayer$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 546
    const/16 v0, 0x2bd

    if-ne p2, v0, :cond_1

    .line 547
    invoke-static {}, Lcom/google/glass/videoplayer/VideoPlayer;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Video buffering started"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 552
    :cond_0
    :goto_0
    return v3

    .line 548
    :cond_1
    const/16 v0, 0x2be

    if-ne p2, v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$4$2;->this$1:Lcom/google/glass/videoplayer/VideoPlayer$4;

    iget-object v0, v0, Lcom/google/glass/videoplayer/VideoPlayer$4;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v0}, Lcom/google/glass/videoplayer/VideoPlayer;->access$300(Lcom/google/glass/videoplayer/VideoPlayer;)Lcom/google/glass/videoplayer/VideoPlayer$ViewListener;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/google/glass/videoplayer/VideoPlayer$ViewListener;->onPlay(Z)V

    .line 550
    invoke-static {}, Lcom/google/glass/videoplayer/VideoPlayer;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Video buffering ended"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
