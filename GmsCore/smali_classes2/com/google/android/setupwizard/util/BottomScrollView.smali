.class public Lcom/google/android/setupwizard/util/BottomScrollView;
.super Landroid/widget/ScrollView;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private a:Lcom/google/android/setupwizard/util/a;

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/setupwizard/util/BottomScrollView;->c:Z

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/setupwizard/util/BottomScrollView;->c:Z

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/setupwizard/util/BottomScrollView;->c:Z

    .line 48
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/setupwizard/util/BottomScrollView;->a:Lcom/google/android/setupwizard/util/a;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/google/android/setupwizard/util/BottomScrollView;->getScrollY()I

    move-result v0

    iget v1, p0, Lcom/google/android/setupwizard/util/BottomScrollView;->b:I

    if-lt v0, v1, :cond_1

    .line 78
    iget-object v0, p0, Lcom/google/android/setupwizard/util/BottomScrollView;->a:Lcom/google/android/setupwizard/util/a;

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/setupwizard/util/BottomScrollView;->c:Z

    if-nez v0, :cond_0

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/setupwizard/util/BottomScrollView;->c:Z

    .line 81
    iget-object v0, p0, Lcom/google/android/setupwizard/util/BottomScrollView;->a:Lcom/google/android/setupwizard/util/a;

    goto :goto_0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-super/range {p0 .. p5}, Landroid/widget/ScrollView;->onLayout(ZIIII)V

    .line 57
    invoke-virtual {p0, v2}, Lcom/google/android/setupwizard/util/BottomScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0, v2}, Lcom/google/android/setupwizard/util/BottomScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr v0, p5

    add-int/2addr v0, p3

    invoke-virtual {p0}, Lcom/google/android/setupwizard/util/BottomScrollView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/setupwizard/util/BottomScrollView;->b:I

    .line 62
    :cond_0
    sub-int v0, p5, p3

    if-lez v0, :cond_1

    .line 63
    invoke-direct {p0}, Lcom/google/android/setupwizard/util/BottomScrollView;->a()V

    .line 65
    :cond_1
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 70
    if-eq p4, p2, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/google/android/setupwizard/util/BottomScrollView;->a()V

    .line 73
    :cond_0
    return-void
.end method
