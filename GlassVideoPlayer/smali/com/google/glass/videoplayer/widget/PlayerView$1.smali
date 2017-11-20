.class Lcom/google/glass/videoplayer/widget/PlayerView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/videoplayer/VideoPlayer$ViewListener;


# instance fields
.field final synthetic this$0:Lcom/google/glass/videoplayer/widget/PlayerView;

.field final synthetic val$card:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lcom/google/glass/videoplayer/widget/PlayerView;Landroid/widget/FrameLayout;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/google/glass/videoplayer/widget/PlayerView$1;->this$0:Lcom/google/glass/videoplayer/widget/PlayerView;

    iput-object p2, p0, Lcom/google/glass/videoplayer/widget/PlayerView$1;->val$card:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView$1;->this$0:Lcom/google/glass/videoplayer/widget/PlayerView;

    invoke-virtual {v0, p1}, Lcom/google/glass/videoplayer/widget/PlayerView;->showErrorMessage(I)V

    .line 149
    return-void
.end method

.method public onLoad()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView$1;->this$0:Lcom/google/glass/videoplayer/widget/PlayerView;

    invoke-virtual {v0}, Lcom/google/glass/videoplayer/widget/PlayerView;->showLoadingScreen()Z

    .line 105
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView$1;->this$0:Lcom/google/glass/videoplayer/widget/PlayerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/glass/videoplayer/widget/PlayerView;->access$000(Lcom/google/glass/videoplayer/widget/PlayerView;Z)V

    .line 106
    return-void
.end method

.method public onPause(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 138
    if-eqz p1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView$1;->this$0:Lcom/google/glass/videoplayer/widget/PlayerView;

    invoke-virtual {v0, v1}, Lcom/google/glass/videoplayer/widget/PlayerView;->showOverlayAnimation(Z)I

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView$1;->this$0:Lcom/google/glass/videoplayer/widget/PlayerView;

    invoke-static {v0}, Lcom/google/glass/videoplayer/widget/PlayerView;->access$700(Lcom/google/glass/videoplayer/widget/PlayerView;)V

    .line 142
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView$1;->this$0:Lcom/google/glass/videoplayer/widget/PlayerView;

    invoke-static {v0}, Lcom/google/glass/videoplayer/widget/PlayerView;->access$300(Lcom/google/glass/videoplayer/widget/PlayerView;)V

    .line 143
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView$1;->this$0:Lcom/google/glass/videoplayer/widget/PlayerView;

    invoke-static {v0, v1}, Lcom/google/glass/videoplayer/widget/PlayerView;->access$000(Lcom/google/glass/videoplayer/widget/PlayerView;Z)V

    .line 144
    return-void
.end method

.method public onPlay(Z)V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView$1;->val$card:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/glass/videoplayer/widget/PlayerView$1;->this$0:Lcom/google/glass/videoplayer/widget/PlayerView;

    invoke-static {v1}, Lcom/google/glass/videoplayer/widget/PlayerView;->access$100(Lcom/google/glass/videoplayer/widget/PlayerView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 128
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView$1;->val$card:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/glass/videoplayer/widget/PlayerView$1;->this$0:Lcom/google/glass/videoplayer/widget/PlayerView;

    invoke-static {v1}, Lcom/google/glass/videoplayer/widget/PlayerView;->access$200(Lcom/google/glass/videoplayer/widget/PlayerView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 129
    if-eqz p1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView$1;->this$0:Lcom/google/glass/videoplayer/widget/PlayerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/videoplayer/widget/PlayerView;->showOverlayAnimation(Z)I

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView$1;->val$card:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/glass/videoplayer/widget/PlayerView$1;->this$0:Lcom/google/glass/videoplayer/widget/PlayerView;

    invoke-static {v1}, Lcom/google/glass/videoplayer/widget/PlayerView;->access$500(Lcom/google/glass/videoplayer/widget/PlayerView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 133
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView$1;->val$card:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/glass/videoplayer/widget/PlayerView$1;->this$0:Lcom/google/glass/videoplayer/widget/PlayerView;

    invoke-static {v1}, Lcom/google/glass/videoplayer/widget/PlayerView;->access$600(Lcom/google/glass/videoplayer/widget/PlayerView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 134
    return-void
.end method

.method public onReady()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView$1;->val$card:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/glass/videoplayer/widget/PlayerView$1;->this$0:Lcom/google/glass/videoplayer/widget/PlayerView;

    invoke-static {v1}, Lcom/google/glass/videoplayer/widget/PlayerView;->access$100(Lcom/google/glass/videoplayer/widget/PlayerView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 111
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView$1;->val$card:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/glass/videoplayer/widget/PlayerView$1;->this$0:Lcom/google/glass/videoplayer/widget/PlayerView;

    invoke-static {v1}, Lcom/google/glass/videoplayer/widget/PlayerView;->access$200(Lcom/google/glass/videoplayer/widget/PlayerView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 112
    return-void
.end method

.method public onScrubbingStart()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView$1;->this$0:Lcom/google/glass/videoplayer/widget/PlayerView;

    invoke-static {v0}, Lcom/google/glass/videoplayer/widget/PlayerView;->access$300(Lcom/google/glass/videoplayer/widget/PlayerView;)V

    .line 117
    return-void
.end method

.method public onUpdate(III)V
    .locals 5

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView$1;->this$0:Lcom/google/glass/videoplayer/widget/PlayerView;

    invoke-static {v0, p1, p2, p3}, Lcom/google/glass/videoplayer/widget/PlayerView;->access$400(Lcom/google/glass/videoplayer/widget/PlayerView;III)V

    .line 122
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView$1;->this$0:Lcom/google/glass/videoplayer/widget/PlayerView;

    iget-object v0, v0, Lcom/google/glass/videoplayer/widget/PlayerView;->tipsView:Lcom/google/glass/widget/TipsView;

    int-to-long v1, p1

    int-to-long v3, p2

    invoke-static {v1, v2, v3, v4}, Lcom/google/glass/videoplayer/util/Utils;->stringForTime(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TipsView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    return-void
.end method
