.class public Lcom/google/glass/maps/ViewMask;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addMask(Landroid/widget/FrameLayout;)V
    .locals 7

    .prologue
    const v6, -0xbbbbbc

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 31
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 33
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 35
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 37
    sget v3, Lcom/google/glass/maps/R$dimen;->glass_screen_width:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3, v4, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 38
    invoke-virtual {p0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 42
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 44
    sget v3, Lcom/google/glass/maps/R$dimen;->glass_screen_height:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v2, v4, v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 45
    invoke-virtual {p0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    return-void
.end method

.method public static addMaskIfNeeded(Landroid/widget/FrameLayout;)V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/google/android/maps/driveabout/b;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    invoke-static {p0}, Lcom/google/glass/maps/ViewMask;->addMask(Landroid/widget/FrameLayout;)V

    .line 28
    :cond_0
    return-void
.end method
