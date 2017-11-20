.class Lcom/google/glass/videoplayer/youtube/IdToStreamConverter$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/google/glass/videoplayer/youtube/IdToStreamConverter$1;

.field final synthetic val$playUrl:Ljava/lang/String;

.field final synthetic val$thumbnailUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/videoplayer/youtube/IdToStreamConverter$1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/google/glass/videoplayer/youtube/IdToStreamConverter$1$1;->this$1:Lcom/google/glass/videoplayer/youtube/IdToStreamConverter$1;

    iput-object p2, p0, Lcom/google/glass/videoplayer/youtube/IdToStreamConverter$1$1;->val$thumbnailUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/glass/videoplayer/youtube/IdToStreamConverter$1$1;->val$playUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/glass/videoplayer/youtube/IdToStreamConverter$1$1;->this$1:Lcom/google/glass/videoplayer/youtube/IdToStreamConverter$1;

    iget-object v0, v0, Lcom/google/glass/videoplayer/youtube/IdToStreamConverter$1;->val$videoPlayer:Lcom/google/glass/videoplayer/VideoPlayer;

    sget-object v1, Lcom/google/glass/videoplayer/util/State;->LOADING:Lcom/google/glass/videoplayer/util/State;

    invoke-virtual {v0, v1}, Lcom/google/glass/videoplayer/VideoPlayer;->isState(Lcom/google/glass/videoplayer/util/State;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/google/glass/videoplayer/youtube/IdToStreamConverter$1$1;->this$1:Lcom/google/glass/videoplayer/youtube/IdToStreamConverter$1;

    iget-object v0, v0, Lcom/google/glass/videoplayer/youtube/IdToStreamConverter$1;->val$playerView:Lcom/google/glass/videoplayer/widget/PlayerView;

    iget-object v1, p0, Lcom/google/glass/videoplayer/youtube/IdToStreamConverter$1$1;->val$thumbnailUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/glass/videoplayer/widget/PlayerView;->setThumbnailUrl(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/google/glass/videoplayer/youtube/IdToStreamConverter$1$1;->this$1:Lcom/google/glass/videoplayer/youtube/IdToStreamConverter$1;

    iget-object v0, v0, Lcom/google/glass/videoplayer/youtube/IdToStreamConverter$1;->val$videoPlayer:Lcom/google/glass/videoplayer/VideoPlayer;

    iget-object v1, p0, Lcom/google/glass/videoplayer/youtube/IdToStreamConverter$1$1;->val$playUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/glass/videoplayer/VideoPlayer;->setUrl(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/google/glass/videoplayer/youtube/IdToStreamConverter$1$1;->this$1:Lcom/google/glass/videoplayer/youtube/IdToStreamConverter$1;

    iget-object v0, v0, Lcom/google/glass/videoplayer/youtube/IdToStreamConverter$1;->val$videoPlayer:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-virtual {v0}, Lcom/google/glass/videoplayer/VideoPlayer;->play()V

    goto :goto_0
.end method
