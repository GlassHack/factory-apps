.class public Lcom/google/android/gms/auth/login/ProportionalOuterFrame;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 8

    .prologue
    const-wide v6, 0x3fa999999999999aL    # 0.05

    .line 55
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 56
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 57
    int-to-double v2, v0

    mul-double/2addr v2, v6

    double-to-int v2, v2

    const/4 v3, 0x0

    int-to-double v4, v0

    mul-double/2addr v4, v6

    double-to-int v0, v4

    int-to-double v4, v1

    const-wide v6, 0x3fa47ae147ae147bL    # 0.04

    mul-double/2addr v4, v6

    double-to-int v1, v4

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/google/android/gms/auth/login/ProportionalOuterFrame;->setPadding(IIII)V

    .line 62
    const v0, 0x7f0d0076

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/ProportionalOuterFrame;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 63
    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/ProportionalOuterFrame;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 66
    int-to-double v2, v0

    const-wide v4, 0x3fc3333333333333L    # 0.15

    mul-double/2addr v2, v4

    double-to-int v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 68
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 69
    return-void
.end method
