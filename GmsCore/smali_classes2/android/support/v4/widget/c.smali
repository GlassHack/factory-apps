.class final Landroid/support/v4/widget/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v4/widget/a;


# direct methods
.method private constructor <init>(Landroid/support/v4/widget/a;)V
    .locals 0

    .prologue
    .line 684
    iput-object p1, p0, Landroid/support/v4/widget/c;->a:Landroid/support/v4/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/widget/a;B)V
    .locals 0

    .prologue
    .line 684
    invoke-direct {p0, p1}, Landroid/support/v4/widget/c;-><init>(Landroid/support/v4/widget/a;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v0, 0x0

    .line 687
    iget-object v1, p0, Landroid/support/v4/widget/c;->a:Landroid/support/v4/widget/a;

    invoke-static {v1}, Landroid/support/v4/widget/a;->a(Landroid/support/v4/widget/a;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 715
    :goto_0
    return-void

    .line 691
    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/c;->a:Landroid/support/v4/widget/a;

    invoke-static {v1}, Landroid/support/v4/widget/a;->b(Landroid/support/v4/widget/a;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 692
    iget-object v1, p0, Landroid/support/v4/widget/c;->a:Landroid/support/v4/widget/a;

    invoke-static {v1}, Landroid/support/v4/widget/a;->c(Landroid/support/v4/widget/a;)Z

    .line 693
    iget-object v1, p0, Landroid/support/v4/widget/c;->a:Landroid/support/v4/widget/a;

    invoke-static {v1}, Landroid/support/v4/widget/a;->d(Landroid/support/v4/widget/a;)Landroid/support/v4/widget/b;

    move-result-object v1

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/support/v4/widget/b;->e:J

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Landroid/support/v4/widget/b;->i:J

    iget-wide v2, v1, Landroid/support/v4/widget/b;->e:J

    iput-wide v2, v1, Landroid/support/v4/widget/b;->f:J

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, v1, Landroid/support/v4/widget/b;->j:F

    iput v0, v1, Landroid/support/v4/widget/b;->g:I

    iput v0, v1, Landroid/support/v4/widget/b;->h:I

    .line 696
    :cond_1
    iget-object v1, p0, Landroid/support/v4/widget/c;->a:Landroid/support/v4/widget/a;

    invoke-static {v1}, Landroid/support/v4/widget/a;->d(Landroid/support/v4/widget/a;)Landroid/support/v4/widget/b;

    move-result-object v1

    .line 697
    iget-wide v2, v1, Landroid/support/v4/widget/b;->i:J

    cmp-long v2, v2, v8

    if-lez v2, :cond_2

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Landroid/support/v4/widget/b;->i:J

    iget v6, v1, Landroid/support/v4/widget/b;->k:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/widget/c;->a:Landroid/support/v4/widget/a;

    invoke-static {v0}, Landroid/support/v4/widget/a;->e(Landroid/support/v4/widget/a;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 698
    :cond_3
    iget-object v0, p0, Landroid/support/v4/widget/c;->a:Landroid/support/v4/widget/a;

    invoke-static {v0}, Landroid/support/v4/widget/a;->f(Landroid/support/v4/widget/a;)Z

    goto :goto_0

    .line 702
    :cond_4
    iget-object v0, p0, Landroid/support/v4/widget/c;->a:Landroid/support/v4/widget/a;

    invoke-static {v0}, Landroid/support/v4/widget/a;->g(Landroid/support/v4/widget/a;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 703
    iget-object v0, p0, Landroid/support/v4/widget/c;->a:Landroid/support/v4/widget/a;

    invoke-static {v0}, Landroid/support/v4/widget/a;->h(Landroid/support/v4/widget/a;)Z

    .line 704
    iget-object v0, p0, Landroid/support/v4/widget/c;->a:Landroid/support/v4/widget/a;

    invoke-static {v0}, Landroid/support/v4/widget/a;->i(Landroid/support/v4/widget/a;)V

    .line 707
    :cond_5
    iget-wide v2, v1, Landroid/support/v4/widget/b;->f:J

    cmp-long v0, v2, v8

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot compute scroll delta before calling start()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/widget/b;->a(J)F

    move-result v0

    const/high16 v4, -0x3f800000    # -4.0f

    mul-float/2addr v4, v0

    mul-float/2addr v4, v0

    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v0, v5

    add-float/2addr v0, v4

    iget-wide v4, v1, Landroid/support/v4/widget/b;->f:J

    sub-long v4, v2, v4

    iput-wide v2, v1, Landroid/support/v4/widget/b;->f:J

    long-to-float v2, v4

    mul-float/2addr v2, v0

    iget v3, v1, Landroid/support/v4/widget/b;->c:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/support/v4/widget/b;->g:I

    long-to-float v2, v4

    mul-float/2addr v0, v2

    iget v2, v1, Landroid/support/v4/widget/b;->d:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/support/v4/widget/b;->h:I

    .line 709
    iget v0, v1, Landroid/support/v4/widget/b;->g:I

    .line 710
    iget v0, v1, Landroid/support/v4/widget/b;->h:I

    .line 711
    iget-object v1, p0, Landroid/support/v4/widget/c;->a:Landroid/support/v4/widget/a;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/a;->a(I)V

    .line 714
    iget-object v0, p0, Landroid/support/v4/widget/c;->a:Landroid/support/v4/widget/a;

    invoke-static {v0}, Landroid/support/v4/widget/a;->j(Landroid/support/v4/widget/a;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/support/v4/view/ax;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method
