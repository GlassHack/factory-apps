.class Lcom/google/glass/home/timeline/active/MusicPlayerView$3;
.super Ljava/lang/Object;
.source "MusicPlayerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/active/MusicPlayerView;->setActivated(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/active/MusicPlayerView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/active/MusicPlayerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/home/timeline/active/MusicPlayerView;

    .prologue
    .line 534
    iput-object p1, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView$3;->this$0:Lcom/google/glass/home/timeline/active/MusicPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 540
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView$3;->this$0:Lcom/google/glass/home/timeline/active/MusicPlayerView;

    invoke-static {v0}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->access$200(Lcom/google/glass/home/timeline/active/MusicPlayerView;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView$3;->this$0:Lcom/google/glass/home/timeline/active/MusicPlayerView;

    invoke-static {v2}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->access$300(Lcom/google/glass/home/timeline/active/MusicPlayerView;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 557
    :goto_0
    return-void

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView$3;->this$0:Lcom/google/glass/home/timeline/active/MusicPlayerView;

    invoke-static {v0}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->access$400(Lcom/google/glass/home/timeline/active/MusicPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 544
    invoke-static {}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "onPrepareOptionsMenu was triggered, menu was used."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 545
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView$3;->this$0:Lcom/google/glass/home/timeline/active/MusicPlayerView;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->access$500(Lcom/google/glass/home/timeline/active/MusicPlayerView;I)V

    goto :goto_0

    .line 549
    :cond_1
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView$3;->this$0:Lcom/google/glass/home/timeline/active/MusicPlayerView;

    invoke-static {v0}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->access$600(Lcom/google/glass/home/timeline/active/MusicPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 550
    invoke-static {}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "onUnload was triggered, Music card was dismissed."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 551
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView$3;->this$0:Lcom/google/glass/home/timeline/active/MusicPlayerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->access$500(Lcom/google/glass/home/timeline/active/MusicPlayerView;I)V

    goto :goto_0

    .line 553
    :cond_2
    invoke-static {}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "onUnload wasn\'t triggered, Music card was swiped away."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 555
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView$3;->this$0:Lcom/google/glass/home/timeline/active/MusicPlayerView;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->access$500(Lcom/google/glass/home/timeline/active/MusicPlayerView;I)V

    goto :goto_0
.end method
