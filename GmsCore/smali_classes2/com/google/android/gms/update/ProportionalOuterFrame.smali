.class public Lcom/google/android/gms/update/ProportionalOuterFrame;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 50
    iput v0, p0, Lcom/google/android/gms/update/ProportionalOuterFrame;->a:I

    .line 51
    iput v0, p0, Lcom/google/android/gms/update/ProportionalOuterFrame;->b:I

    .line 52
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 56
    invoke-virtual {p0}, Lcom/google/android/gms/update/ProportionalOuterFrame;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 57
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 58
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 59
    iget v3, p0, Lcom/google/android/gms/update/ProportionalOuterFrame;->a:I

    int-to-float v2, v2

    const v4, 0x7f0b0146

    invoke-virtual {v0, v4, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v4

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/update/ProportionalOuterFrame;->a:I

    .line 62
    iget v2, p0, Lcom/google/android/gms/update/ProportionalOuterFrame;->b:I

    int-to-float v1, v1

    const v3, 0x7f0b0132

    invoke-virtual {v0, v3, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/update/ProportionalOuterFrame;->b:I

    .line 65
    const v1, 0x7f0b0144

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 66
    iget v1, p0, Lcom/google/android/gms/update/ProportionalOuterFrame;->b:I

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/update/ProportionalOuterFrame;->b:I

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/google/android/gms/update/ProportionalOuterFrame;->setPadding(IIII)V

    .line 71
    const v0, 0x7f0d0076

    invoke-virtual {p0, v0}, Lcom/google/android/gms/update/ProportionalOuterFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_0

    .line 73
    iget v1, p0, Lcom/google/android/gms/update/ProportionalOuterFrame;->a:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 75
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 76
    return-void
.end method
