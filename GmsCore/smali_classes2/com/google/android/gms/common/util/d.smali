.class public final Lcom/google/android/gms/common/util/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/app/Activity;D)V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    .line 39
    cmpl-double v0, p1, v4

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/c/a/ah;->a(Z)V

    .line 40
    cmpl-double v0, p1, v4

    if-lez v0, :cond_2

    :goto_1
    const-string v0, "Either width or height resize factor must be > 0"

    invoke-static {v1, v0}, Lcom/google/c/a/ah;->a(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    cmpl-double v3, p1, v4

    if-lez v3, :cond_0

    const v3, 0x7f090006

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lez v3, :cond_0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v4, v0

    mul-double/2addr v4, p1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    double-to-int v0, v4

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_0
    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 41
    return-void

    :cond_1
    move v0, v2

    .line 39
    goto :goto_0

    :cond_2
    move v1, v2

    .line 40
    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_2
.end method
