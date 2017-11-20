.class public final Landroid/support/v7/internal/widget/ProgressBarCompat;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final e:[I


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Landroid/view/animation/Transformation;

.field private n:Landroid/view/animation/AlphaAnimation;

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:Landroid/graphics/drawable/Drawable;

.field private q:Landroid/graphics/drawable/Drawable;

.field private r:Z

.field private s:Landroid/view/animation/Interpolator;

.field private t:Landroid/support/v7/internal/widget/z;

.field private u:J

.field private v:Z

.field private w:J

.field private x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v7/internal/widget/ProgressBarCompat;->e:[I

    return-void

    :array_0
    .array-data 4
        0x1010136
        0x1010137
        0x1010138
        0x1010139
        0x101013a
        0x101013b
        0x101013c
        0x101013d
        0x101013e
        0x101013f
        0x101011f
        0x1010140
        0x1010120
        0x1010141
    .end array-data
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/ProgressBarCompat;Landroid/support/v7/internal/widget/z;)Landroid/support/v7/internal/widget/z;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->t:Landroid/support/v7/internal/widget/z;

    return-object p1
.end method

.method private a()V
    .locals 4

    .prologue
    .line 614
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarCompat;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    :goto_0
    return-void

    .line 618
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->o:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_1

    .line 619
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->v:Z

    .line 620
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->n:Landroid/view/animation/AlphaAnimation;

    .line 634
    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarCompat;->postInvalidate()V

    goto :goto_0

    .line 622
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->s:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_2

    .line 623
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->s:Landroid/view/animation/Interpolator;

    .line 626
    :cond_2
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->m:Landroid/view/animation/Transformation;

    .line 627
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->n:Landroid/view/animation/AlphaAnimation;

    .line 628
    iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->n:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->i:I

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 629
    iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->n:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 630
    iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->n:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->j:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 631
    iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->n:Landroid/view/animation/AlphaAnimation;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->s:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 632
    iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->n:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartTime(J)V

    goto :goto_1
.end method

.method private declared-synchronized a(I)V
    .locals 1

    .prologue
    .line 466
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ProgressBarCompat;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    monitor-exit p0

    return-void

    .line 466
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(II)V
    .locals 5

    .prologue
    .line 419
    monitor-enter p0

    :try_start_0
    iget v1, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->h:I

    if-lez v1, :cond_2

    int-to-float v1, p2

    iget v2, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->h:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    move v3, v1

    .line 420
    :goto_0
    iget-object v2, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->q:Landroid/graphics/drawable/Drawable;

    .line 421
    if-eqz v2, :cond_3

    .line 422
    const/4 v1, 0x0

    .line 424
    instance-of v4, v2, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v4, :cond_0

    .line 425
    move-object v0, v2

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    move-object v1, v0

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 428
    :cond_0
    const v4, 0x461c4000    # 10000.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 429
    if-eqz v1, :cond_1

    move-object v2, v1

    :cond_1
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    :goto_1
    monitor-exit p0

    return-void

    .line 419
    :cond_2
    const/4 v1, 0x0

    move v3, v1

    goto :goto_0

    .line 431
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarCompat;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 419
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized a(IIZ)V
    .locals 4

    .prologue
    .line 436
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->u:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 437
    invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/widget/ProgressBarCompat;->a(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    :goto_0
    monitor-exit p0

    return-void

    .line 440
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->t:Landroid/support/v7/internal/widget/z;

    if-eqz v0, :cond_1

    .line 442
    iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->t:Landroid/support/v7/internal/widget/z;

    .line 444
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->t:Landroid/support/v7/internal/widget/z;

    .line 445
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v7/internal/widget/z;->a(IIZ)V

    .line 450
    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ProgressBarCompat;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 436
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 448
    :cond_1
    :try_start_2
    new-instance v0, Landroid/support/v7/internal/widget/z;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/support/v7/internal/widget/z;-><init>(Landroid/support/v7/internal/widget/ProgressBarCompat;IIZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/ProgressBarCompat;II)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/widget/ProgressBarCompat;->a(II)V

    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 641
    iput-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->n:Landroid/view/animation/AlphaAnimation;

    .line 642
    iput-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->m:Landroid/view/animation/Transformation;

    .line 643
    iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->o:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->o:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 645
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->v:Z

    .line 647
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarCompat;->postInvalidate()V

    .line 648
    return-void
.end method

.method private declared-synchronized b(I)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 470
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 486
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 474
    :cond_1
    if-gez p1, :cond_3

    .line 478
    :goto_1
    :try_start_1
    iget v1, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->h:I

    if-le v0, v1, :cond_2

    .line 479
    iget v0, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->h:I

    .line 482
    :cond_2
    iget v1, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->f:I

    if-eq v0, v1, :cond_0

    .line 483
    iput v0, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->f:I

    .line 484
    const v0, 0x102000d

    iget v1, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->f:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v7/internal/widget/ProgressBarCompat;->a(IIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 470
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move v0, p1

    goto :goto_1
.end method

.method private c()V
    .locals 2

    .prologue
    .line 830
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarCompat;->getDrawableState()[I

    move-result-object v0

    .line 832
    iget-object v1, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->p:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 833
    iget-object v1, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 836
    :cond_0
    iget-object v1, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 837
    iget-object v1, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 839
    :cond_1
    return-void
.end method

.method private declared-synchronized c(I)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 501
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 517
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 505
    :cond_1
    if-gez p1, :cond_3

    .line 509
    :goto_1
    :try_start_1
    iget v1, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->h:I

    if-le v0, v1, :cond_2

    .line 510
    iget v0, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->h:I

    .line 513
    :cond_2
    iget v1, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->g:I

    if-eq v0, v1, :cond_0

    .line 514
    iput v0, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->g:I

    .line 515
    const v0, 0x102000f

    iget v1, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->g:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v7/internal/widget/ProgressBarCompat;->a(IIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 501
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move v0, p1

    goto :goto_1
.end method


# virtual methods
.method protected final drawableStateChanged()V
    .locals 0

    .prologue
    .line 825
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 826
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ProgressBarCompat;->c()V

    .line 827
    return-void
.end method

.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .prologue
    .line 714
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->x:Z

    if-nez v0, :cond_0

    .line 715
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/ProgressBarCompat;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 716
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 717
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarCompat;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarCompat;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    .line 718
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarCompat;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarCompat;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    .line 720
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v5

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v3, v4, v1, v0}, Landroid/support/v7/internal/widget/ProgressBarCompat;->invalidate(IIII)V

    .line 726
    :cond_0
    :goto_0
    return-void

    .line 723
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected final onAttachedToWindow()V
    .locals 1

    .prologue
    .line 903
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 904
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->k:Z

    if-eqz v0, :cond_0

    .line 905
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ProgressBarCompat;->a()V

    .line 907
    :cond_0
    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 911
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->k:Z

    if-eqz v0, :cond_0

    .line 912
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ProgressBarCompat;->b()V

    .line 914
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->t:Landroid/support/v7/internal/widget/z;

    if-eqz v0, :cond_1

    .line 915
    iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->t:Landroid/support/v7/internal/widget/z;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ProgressBarCompat;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 920
    :cond_1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 921
    return-void
.end method

.method protected final declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0xc8

    .line 773
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 775
    iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->q:Landroid/graphics/drawable/Drawable;

    .line 776
    if-eqz v0, :cond_1

    .line 779
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 780
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarCompat;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarCompat;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 781
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarCompat;->getDrawingTime()J

    move-result-wide v2

    .line 782
    iget-object v1, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->n:Landroid/view/animation/AlphaAnimation;

    if-eqz v1, :cond_0

    .line 783
    iget-object v1, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->n:Landroid/view/animation/AlphaAnimation;

    iget-object v4, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->m:Landroid/view/animation/Transformation;

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/animation/AlphaAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 784
    iget-object v1, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->m:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    .line 786
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->x:Z

    .line 787
    const v2, 0x461c4000    # 10000.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 789
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->x:Z

    .line 791
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->w:J

    sub-long/2addr v2, v4

    cmp-long v1, v2, v6

    if-ltz v1, :cond_0

    .line 792
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->w:J

    .line 793
    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v2, v3}, Landroid/support/v7/internal/widget/ProgressBarCompat;->postInvalidateDelayed(J)V

    .line 796
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 797
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 798
    iget-boolean v1, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->v:Z

    if-eqz v1, :cond_1

    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_1

    .line 799
    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 800
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->v:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 803
    :cond_1
    monitor-exit p0

    return-void

    .line 789
    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_3
    iput-boolean v1, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->x:Z

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 773
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized onMeasure(II)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 807
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->q:Landroid/graphics/drawable/Drawable;

    .line 811
    if-eqz v2, :cond_0

    .line 812
    iget v0, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->a:I

    iget v1, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->b:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 813
    iget v0, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->c:I

    iget v3, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->d:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 815
    :goto_0
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ProgressBarCompat;->c()V

    .line 816
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarCompat;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarCompat;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 817
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarCompat;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarCompat;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 819
    invoke-static {v1, p1}, Landroid/support/v7/internal/widget/ProgressBarCompat;->resolveSize(II)I

    move-result v1

    invoke-static {v0, p2}, Landroid/support/v7/internal/widget/ProgressBarCompat;->resolveSize(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/support/v7/internal/widget/ProgressBarCompat;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 821
    monitor-exit p0

    return-void

    .line 807
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 894
    check-cast p1, Landroid/support/v7/internal/widget/ProgressBarCompat$SavedState;

    .line 895
    invoke-virtual {p1}, Landroid/support/v7/internal/widget/ProgressBarCompat$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 897
    iget v0, p1, Landroid/support/v7/internal/widget/ProgressBarCompat$SavedState;->a:I

    invoke-direct {p0, v0}, Landroid/support/v7/internal/widget/ProgressBarCompat;->a(I)V

    .line 898
    iget v0, p1, Landroid/support/v7/internal/widget/ProgressBarCompat$SavedState;->b:I

    invoke-direct {p0, v0}, Landroid/support/v7/internal/widget/ProgressBarCompat;->c(I)V

    .line 899
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 883
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 884
    new-instance v1, Landroid/support/v7/internal/widget/ProgressBarCompat$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v7/internal/widget/ProgressBarCompat$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 886
    iget v0, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->f:I

    iput v0, v1, Landroid/support/v7/internal/widget/ProgressBarCompat$SavedState;->a:I

    .line 887
    iget v0, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->g:I

    iput v0, v1, Landroid/support/v7/internal/widget/ProgressBarCompat$SavedState;->b:I

    .line 889
    return-object v1
.end method

.method protected final onSizeChanged(IIII)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 730
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarCompat;->getPaddingRight()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarCompat;->getPaddingLeft()I

    move-result v2

    sub-int v3, v0, v2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarCompat;->getPaddingBottom()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarCompat;->getPaddingTop()I

    move-result v2

    sub-int v2, v0, v2

    iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->l:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->o:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v4, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v0, v0

    int-to-float v4, v4

    div-float/2addr v0, v4

    int-to-float v4, p1

    int-to-float v5, p2

    div-float/2addr v4, v5

    cmpl-float v5, v0, v4

    if-eqz v5, :cond_2

    cmpl-float v4, v4, v0

    if-lez v4, :cond_1

    int-to-float v3, p2

    mul-float/2addr v0, v3

    float-to-int v3, v0

    sub-int v0, p1, v3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v3, v0

    move v4, v3

    move v3, v2

    move v2, v1

    :goto_0
    iget-object v5, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v0, v2, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->p:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 731
    :cond_0
    return-void

    .line 730
    :cond_1
    int-to-float v2, p1

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v0, v4, v0

    mul-float/2addr v0, v2

    float-to-int v2, v0

    sub-int v0, p2, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    move v4, v3

    move v3, v2

    move v2, v0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    move v4, v3

    move v3, v2

    move v2, v1

    goto :goto_0

    :cond_3
    move v4, v3

    move v3, v2

    goto :goto_1
.end method

.method protected final onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 698
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_0

    .line 699
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 702
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->k:Z

    if-eqz v0, :cond_2

    .line 704
    if-eq p2, v1, :cond_1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    .line 705
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ProgressBarCompat;->b()V

    .line 710
    :cond_2
    :goto_0
    return-void

    .line 707
    :cond_3
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ProgressBarCompat;->a()V

    goto :goto_0
.end method

.method public final postInvalidate()V
    .locals 1

    .prologue
    .line 386
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->r:Z

    if-nez v0, :cond_0

    .line 387
    invoke-super {p0}, Landroid/view/View;->postInvalidate()V

    .line 389
    :cond_0
    return-void
.end method

.method public final setVisibility(I)V
    .locals 1

    .prologue
    .line 682
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ProgressBarCompat;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 683
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 685
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->k:Z

    if-eqz v0, :cond_1

    .line 687
    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 688
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ProgressBarCompat;->b()V

    .line 694
    :cond_1
    :goto_0
    return-void

    .line 690
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ProgressBarCompat;->a()V

    goto :goto_0
.end method

.method protected final verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->p:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ProgressBarCompat;->o:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
