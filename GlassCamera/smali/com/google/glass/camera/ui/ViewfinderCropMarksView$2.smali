.class Lcom/google/glass/camera/ui/ViewfinderCropMarksView$2;
.super Ljava/lang/Object;
.source "ViewfinderCropMarksView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/ui/ViewfinderCropMarksView;->play(Landroid/animation/Animator$AnimatorListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/ui/ViewfinderCropMarksView;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/ui/ViewfinderCropMarksView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/camera/ui/ViewfinderCropMarksView;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/glass/camera/ui/ViewfinderCropMarksView$2;->this$0:Lcom/google/glass/camera/ui/ViewfinderCropMarksView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 90
    iget-object v1, p0, Lcom/google/glass/camera/ui/ViewfinderCropMarksView$2;->this$0:Lcom/google/glass/camera/ui/ViewfinderCropMarksView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/glass/camera/ui/ViewfinderCropMarksView;->setProgress(F)V

    .line 91
    iget-object v0, p0, Lcom/google/glass/camera/ui/ViewfinderCropMarksView$2;->this$0:Lcom/google/glass/camera/ui/ViewfinderCropMarksView;

    invoke-virtual {v0}, Lcom/google/glass/camera/ui/ViewfinderCropMarksView;->invalidate()V

    .line 92
    return-void
.end method
