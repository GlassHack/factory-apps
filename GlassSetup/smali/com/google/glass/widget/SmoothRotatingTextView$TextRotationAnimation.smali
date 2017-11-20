.class public abstract Lcom/google/glass/widget/SmoothRotatingTextView$TextRotationAnimation;
.super Ljava/lang/Object;
.source "SmoothRotatingTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/widget/SmoothRotatingTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TextRotationAnimation"
.end annotation


# instance fields
.field protected finishedAnimationCount:I

.field protected smoothRotatingTextView:Lcom/google/glass/widget/SmoothRotatingTextView;

.field private totalAnimationCount:I


# direct methods
.method public constructor <init>(Lcom/google/glass/widget/SmoothRotatingTextView;)V
    .locals 0
    .param p1, "smoothRotatingTextView"    # Lcom/google/glass/widget/SmoothRotatingTextView;

    .prologue
    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput-object p1, p0, Lcom/google/glass/widget/SmoothRotatingTextView$TextRotationAnimation;->smoothRotatingTextView:Lcom/google/glass/widget/SmoothRotatingTextView;

    .line 288
    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/widget/SmoothRotatingTextView$TextRotationAnimation;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/widget/SmoothRotatingTextView$TextRotationAnimation;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 281
    invoke-direct {p0, p1, p2}, Lcom/google/glass/widget/SmoothRotatingTextView$TextRotationAnimation;->startRotation(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private startRotation(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "currentTextView"    # Landroid/view/View;
    .param p2, "nextTextView"    # Landroid/view/View;

    .prologue
    .line 291
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView$TextRotationAnimation;->finishedAnimationCount:I

    .line 292
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/widget/SmoothRotatingTextView$TextRotationAnimation;->runAnimation(Landroid/view/View;Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView$TextRotationAnimation;->totalAnimationCount:I

    .line 293
    return-void
.end method


# virtual methods
.method protected onAnimationEnd()V
    .locals 2

    .prologue
    .line 308
    iget v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView$TextRotationAnimation;->finishedAnimationCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView$TextRotationAnimation;->finishedAnimationCount:I

    .line 310
    iget v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView$TextRotationAnimation;->finishedAnimationCount:I

    iget v1, p0, Lcom/google/glass/widget/SmoothRotatingTextView$TextRotationAnimation;->totalAnimationCount:I

    if-ne v0, v1, :cond_0

    .line 311
    iget-object v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView$TextRotationAnimation;->smoothRotatingTextView:Lcom/google/glass/widget/SmoothRotatingTextView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/glass/widget/SmoothRotatingTextView;->isNextAnimationScheduled:Z

    .line 313
    iget-object v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView$TextRotationAnimation;->smoothRotatingTextView:Lcom/google/glass/widget/SmoothRotatingTextView;

    invoke-virtual {v0}, Lcom/google/glass/widget/SmoothRotatingTextView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView$TextRotationAnimation;->smoothRotatingTextView:Lcom/google/glass/widget/SmoothRotatingTextView;

    invoke-virtual {v0}, Lcom/google/glass/widget/SmoothRotatingTextView;->scheduleNextRotation()V

    .line 317
    :cond_0
    return-void
.end method

.method protected abstract runAnimation(Landroid/view/View;Landroid/view/View;)I
.end method
