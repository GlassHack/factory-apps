.class Lcom/google/glass/widget/CropMarksView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/CropMarksView;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/CropMarksView;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/google/glass/widget/CropMarksView$1;->this$0:Lcom/google/glass/widget/CropMarksView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/glass/widget/CropMarksView$1;->this$0:Lcom/google/glass/widget/CropMarksView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/CropMarksView;->setProgress(F)V

    .line 115
    iget-object v0, p0, Lcom/google/glass/widget/CropMarksView$1;->this$0:Lcom/google/glass/widget/CropMarksView;

    invoke-virtual {v0}, Lcom/google/glass/widget/CropMarksView;->invalidate()V

    .line 116
    return-void
.end method
