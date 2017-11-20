.class Lcom/google/glass/videoplayer/widget/PlayerView$8;
.super Lcom/google/glass/util/SimpleAnimationListener;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/videoplayer/widget/PlayerView;

.field final synthetic val$animFadeOut:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Lcom/google/glass/videoplayer/widget/PlayerView;Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/google/glass/videoplayer/widget/PlayerView$8;->this$0:Lcom/google/glass/videoplayer/widget/PlayerView;

    iput-object p2, p0, Lcom/google/glass/videoplayer/widget/PlayerView$8;->val$animFadeOut:Landroid/view/animation/Animation;

    invoke-direct {p0}, Lcom/google/glass/util/SimpleAnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView$8;->this$0:Lcom/google/glass/videoplayer/widget/PlayerView;

    iget-object v0, v0, Lcom/google/glass/videoplayer/widget/PlayerView;->overlayView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/glass/videoplayer/widget/PlayerView$8;->val$animFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 298
    return-void
.end method
