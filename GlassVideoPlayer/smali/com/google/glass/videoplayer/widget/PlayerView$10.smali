.class Lcom/google/glass/videoplayer/widget/PlayerView$10;
.super Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/videoplayer/widget/PlayerView;


# direct methods
.method constructor <init>(Lcom/google/glass/videoplayer/widget/PlayerView;Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Ljava/lang/String;III)V
    .locals 7

    .prologue
    .line 315
    iput-object p1, p0, Lcom/google/glass/videoplayer/widget/PlayerView$10;->this$0:Lcom/google/glass/videoplayer/widget/PlayerView;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Ljava/lang/String;III)V

    return-void
.end method


# virtual methods
.method protected bindContent(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView$10;->this$0:Lcom/google/glass/videoplayer/widget/PlayerView;

    iget-object v0, v0, Lcom/google/glass/videoplayer/widget/PlayerView;->thumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 324
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView$10;->this$0:Lcom/google/glass/videoplayer/widget/PlayerView;

    iget-object v0, v0, Lcom/google/glass/videoplayer/widget/PlayerView;->overlayView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 325
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView$10;->this$0:Lcom/google/glass/videoplayer/widget/PlayerView;

    iget-object v0, v0, Lcom/google/glass/videoplayer/widget/PlayerView;->thumbnailView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 326
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView$10;->this$0:Lcom/google/glass/videoplayer/widget/PlayerView;

    iget-object v0, v0, Lcom/google/glass/videoplayer/widget/PlayerView;->thumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 327
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 328
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 329
    return-void
.end method

.method protected bridge synthetic bindContent(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 315
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/google/glass/videoplayer/widget/PlayerView$10;->bindContent(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected prepareContent(F)V
    .locals 0

    .prologue
    .line 319
    return-void
.end method
