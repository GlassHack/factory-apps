.class Lcom/google/glass/videoplayer/WatchActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/videoplayer/VideoPlayer$ControllerListener;


# instance fields
.field final synthetic this$0:Lcom/google/glass/videoplayer/WatchActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/videoplayer/WatchActivity;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/glass/videoplayer/WatchActivity$2;->this$0:Lcom/google/glass/videoplayer/WatchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/glass/videoplayer/WatchActivity$2;->this$0:Lcom/google/glass/videoplayer/WatchActivity;

    invoke-virtual {v0}, Lcom/google/glass/videoplayer/WatchActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/google/glass/videoplayer/WatchActivity$2;->this$0:Lcom/google/glass/videoplayer/WatchActivity;

    invoke-virtual {v0}, Lcom/google/glass/videoplayer/WatchActivity;->finish()V

    .line 131
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/glass/videoplayer/WatchActivity$2;->this$0:Lcom/google/glass/videoplayer/WatchActivity;

    invoke-static {v0}, Lcom/google/glass/videoplayer/WatchActivity;->access$200(Lcom/google/glass/videoplayer/WatchActivity;)V

    .line 124
    return-void
.end method

.method public onPlay()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/glass/videoplayer/WatchActivity$2;->this$0:Lcom/google/glass/videoplayer/WatchActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/glass/videoplayer/WatchActivity;->access$102(Lcom/google/glass/videoplayer/WatchActivity;Z)Z

    .line 118
    iget-object v0, p0, Lcom/google/glass/videoplayer/WatchActivity$2;->this$0:Lcom/google/glass/videoplayer/WatchActivity;

    invoke-static {v0}, Lcom/google/glass/videoplayer/WatchActivity;->access$200(Lcom/google/glass/videoplayer/WatchActivity;)V

    .line 119
    return-void
.end method
