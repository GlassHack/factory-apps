.class public Lcom/google/glass/camera/ui/ViewfinderCropMarksView;
.super Lcom/google/glass/widget/CropMarksView;
.source "ViewfinderCropMarksView.java"


# static fields
.field static final ANIMATION_DURATION_MS:J = 0x12cL

.field private static final ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final PICTURE_PROGRESS:F = 0.0f

.field private static final PREVIEW_PROGRESS:F = 1.0f


# instance fields
.field private final blinkOnCloseListener:Lcom/google/glass/util/SimpleAnimatorListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/google/glass/camera/ui/ViewfinderCropMarksView;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/camera/ui/ViewfinderCropMarksView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/camera/ui/ViewfinderCropMarksView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/widget/CropMarksView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    new-instance v0, Lcom/google/glass/camera/ui/ViewfinderCropMarksView$1;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/ui/ViewfinderCropMarksView$1;-><init>(Lcom/google/glass/camera/ui/ViewfinderCropMarksView;)V

    iput-object v0, p0, Lcom/google/glass/camera/ui/ViewfinderCropMarksView;->blinkOnCloseListener:Lcom/google/glass/util/SimpleAnimatorListener;

    .line 55
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/google/glass/camera/ui/ViewfinderCropMarksView;->setProgress(F)V

    .line 56
    return-void
.end method


# virtual methods
.method public blink()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x64

    const-wide/16 v6, 0x5

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 65
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 66
    .local v2, "blinkOut":Landroid/view/animation/Animation;
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 67
    invoke-virtual {v2, v8, v9}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 68
    invoke-virtual {v2, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 69
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 70
    .local v1, "blinkIn":Landroid/view/animation/Animation;
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 71
    invoke-virtual {v1, v8, v9}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 72
    invoke-virtual {v1, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 74
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 75
    .local v0, "animation":Landroid/view/animation/AnimationSet;
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 76
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 77
    invoke-virtual {p0, v0}, Lcom/google/glass/camera/ui/ViewfinderCropMarksView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 78
    return-void
.end method

.method public play()V
    .locals 2

    .prologue
    .line 60
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/camera/ui/ViewfinderCropMarksView;->play(Landroid/animation/Animator$AnimatorListener;Z)V

    .line 61
    return-void
.end method

.method play(Landroid/animation/Animator$AnimatorListener;Z)V
    .locals 3
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;
    .param p2, "reversed"    # Z

    .prologue
    const/4 v1, 0x2

    .line 84
    if-eqz p2, :cond_1

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    .line 85
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 87
    .local v0, "animator":Landroid/animation/ValueAnimator;
    :goto_0
    new-instance v1, Lcom/google/glass/camera/ui/ViewfinderCropMarksView$2;

    invoke-direct {v1, p0}, Lcom/google/glass/camera/ui/ViewfinderCropMarksView$2;-><init>(Lcom/google/glass/camera/ui/ViewfinderCropMarksView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 94
    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 97
    :cond_0
    sget-object v1, Lcom/google/glass/camera/ui/ViewfinderCropMarksView;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 98
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 100
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 101
    return-void

    .line 85
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_1
    new-array v1, v1, [F

    fill-array-data v1, :array_1

    .line 86
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_0

    .line 84
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 85
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public shrinkAndBlink()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/glass/camera/ui/ViewfinderCropMarksView;->blinkOnCloseListener:Lcom/google/glass/util/SimpleAnimatorListener;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/camera/ui/ViewfinderCropMarksView;->play(Landroid/animation/Animator$AnimatorListener;Z)V

    .line 106
    return-void
.end method
