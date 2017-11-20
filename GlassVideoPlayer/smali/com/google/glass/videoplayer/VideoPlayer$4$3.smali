.class Lcom/google/glass/videoplayer/VideoPlayer$4$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field final synthetic this$1:Lcom/google/glass/videoplayer/VideoPlayer$4;


# direct methods
.method constructor <init>(Lcom/google/glass/videoplayer/VideoPlayer$4;)V
    .locals 0

    .prologue
    .line 556
    iput-object p1, p0, Lcom/google/glass/videoplayer/VideoPlayer$4$3;->this$1:Lcom/google/glass/videoplayer/VideoPlayer$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 559
    invoke-static {}, Lcom/google/glass/videoplayer/VideoPlayer;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "MediaPlayer error. what = %s, extra = %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 560
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$4$3;->this$1:Lcom/google/glass/videoplayer/VideoPlayer$4;

    iget-object v0, v0, Lcom/google/glass/videoplayer/VideoPlayer$4;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v0, v5}, Lcom/google/glass/videoplayer/VideoPlayer;->access$1602(Lcom/google/glass/videoplayer/VideoPlayer;Z)Z

    .line 561
    return v4
.end method
