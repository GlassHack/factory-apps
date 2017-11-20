.class Lcom/google/glass/videoplayer/widget/PlayerView$11;
.super Lcom/google/glass/util/SimpleAnimationListener;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/videoplayer/widget/PlayerView;


# direct methods
.method constructor <init>(Lcom/google/glass/videoplayer/widget/PlayerView;)V
    .locals 0

    .prologue
    .line 387
    iput-object p1, p0, Lcom/google/glass/videoplayer/widget/PlayerView$11;->this$0:Lcom/google/glass/videoplayer/widget/PlayerView;

    invoke-direct {p0}, Lcom/google/glass/util/SimpleAnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 391
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView$11;->this$0:Lcom/google/glass/videoplayer/widget/PlayerView;

    iget-object v0, v0, Lcom/google/glass/videoplayer/widget/PlayerView;->timebarView:Lcom/google/glass/videoplayer/widget/TimeBarView;

    invoke-virtual {v0, v1}, Lcom/google/glass/videoplayer/widget/TimeBarView;->setVisibility(I)V

    .line 392
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView$11;->this$0:Lcom/google/glass/videoplayer/widget/PlayerView;

    iget-object v0, v0, Lcom/google/glass/videoplayer/widget/PlayerView;->tipsView:Lcom/google/glass/widget/TipsView;

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TipsView;->setVisibility(I)V

    .line 393
    return-void
.end method
