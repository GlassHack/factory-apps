.class final Lcom/google/glass/share/ShareLocationActivity$MapRenderedHandler;
.super Ljava/lang/Object;
.source "ShareLocationActivity.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/share/ShareLocationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MapRenderedHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/share/ShareLocationActivity;


# direct methods
.method private constructor <init>(Lcom/google/glass/share/ShareLocationActivity;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/google/glass/share/ShareLocationActivity$MapRenderedHandler;->this$0:Lcom/google/glass/share/ShareLocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/share/ShareLocationActivity;Lcom/google/glass/share/ShareLocationActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/share/ShareLocationActivity;
    .param p2, "x1"    # Lcom/google/glass/share/ShareLocationActivity$1;

    .prologue
    .line 265
    invoke-direct {p0, p1}, Lcom/google/glass/share/ShareLocationActivity$MapRenderedHandler;-><init>(Lcom/google/glass/share/ShareLocationActivity;)V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/glass/share/ShareLocationActivity$MapRenderedHandler;->this$0:Lcom/google/glass/share/ShareLocationActivity;

    invoke-static {v0}, Lcom/google/glass/share/ShareLocationActivity;->access$900(Lcom/google/glass/share/ShareLocationActivity;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/share/ShareLocationActivity$MapRenderedHandler;->this$0:Lcom/google/glass/share/ShareLocationActivity;

    invoke-static {v0}, Lcom/google/glass/share/ShareLocationActivity;->access$900(Lcom/google/glass/share/ShareLocationActivity;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/google/glass/share/ShareLocationActivity$MapRenderedHandler;->this$0:Lcom/google/glass/share/ShareLocationActivity;

    invoke-static {v0}, Lcom/google/glass/share/ShareLocationActivity;->access$700(Lcom/google/glass/share/ShareLocationActivity;)V

    .line 280
    :cond_0
    return-void
.end method

.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "renderedMap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/glass/share/ShareLocationActivity$MapRenderedHandler;->this$0:Lcom/google/glass/share/ShareLocationActivity;

    iget-object v0, v0, Lcom/google/glass/share/ShareLocationActivity;->mapView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 269
    iget-object v0, p0, Lcom/google/glass/share/ShareLocationActivity$MapRenderedHandler;->this$0:Lcom/google/glass/share/ShareLocationActivity;

    invoke-static {v0}, Lcom/google/glass/share/ShareLocationActivity;->access$1200(Lcom/google/glass/share/ShareLocationActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/google/glass/share/ShareLocationActivity$MapRenderedHandler;->this$0:Lcom/google/glass/share/ShareLocationActivity;

    invoke-static {v0}, Lcom/google/glass/share/ShareLocationActivity;->access$1300(Lcom/google/glass/share/ShareLocationActivity;)Lcom/google/glass/widget/SliderView;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    .line 271
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    new-instance v3, Lcom/google/glass/share/ShareLocationActivity$GracePeriodHandler;

    iget-object v4, p0, Lcom/google/glass/share/ShareLocationActivity$MapRenderedHandler;->this$0:Lcom/google/glass/share/ShareLocationActivity;

    invoke-direct {v3, v4}, Lcom/google/glass/share/ShareLocationActivity$GracePeriodHandler;-><init>(Lcom/google/glass/share/ShareLocationActivity;)V

    .line 270
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/widget/SliderView;->startProgress(JLandroid/animation/Animator$AnimatorListener;)V

    .line 272
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 265
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/google/glass/share/ShareLocationActivity$MapRenderedHandler;->onSuccess(Landroid/graphics/Bitmap;)V

    return-void
.end method
