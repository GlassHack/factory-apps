.class public Lcom/google/android/gsf/login/BottomScrollView;
.super Landroid/widget/ScrollView;
.source "BottomScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/login/BottomScrollView$BottomScrollListener;
    }
.end annotation


# instance fields
.field private mActive:Z

.field private mFirst:Z

.field private mLastHeight:I

.field private mListener:Lcom/google/android/gsf/login/BottomScrollView$BottomScrollListener;

.field private mScrollThreshold:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 33
    iput-boolean v0, p0, Lcom/google/android/gsf/login/BottomScrollView;->mActive:Z

    .line 35
    iput-boolean v0, p0, Lcom/google/android/gsf/login/BottomScrollView;->mFirst:Z

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x1

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-boolean v0, p0, Lcom/google/android/gsf/login/BottomScrollView;->mActive:Z

    .line 35
    iput-boolean v0, p0, Lcom/google/android/gsf/login/BottomScrollView;->mFirst:Z

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x1

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    iput-boolean v0, p0, Lcom/google/android/gsf/login/BottomScrollView;->mActive:Z

    .line 35
    iput-boolean v0, p0, Lcom/google/android/gsf/login/BottomScrollView;->mFirst:Z

    .line 47
    return-void
.end method

.method private checkScroll()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/gsf/login/BottomScrollView;->mListener:Lcom/google/android/gsf/login/BottomScrollView$BottomScrollListener;

    if-eqz v0, :cond_0

    .line 90
    iget-boolean v0, p0, Lcom/google/android/gsf/login/BottomScrollView;->mActive:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gsf/login/BottomScrollView;->getScrollY()I

    move-result v0

    iget v1, p0, Lcom/google/android/gsf/login/BottomScrollView;->mScrollThreshold:I

    if-lt v0, v1, :cond_1

    .line 91
    iget-object v0, p0, Lcom/google/android/gsf/login/BottomScrollView;->mListener:Lcom/google/android/gsf/login/BottomScrollView$BottomScrollListener;

    invoke-interface {v0}, Lcom/google/android/gsf/login/BottomScrollView$BottomScrollListener;->onScrolledToBottom()V

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gsf/login/BottomScrollView;->mFirst:Z

    if-eqz v0, :cond_0

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gsf/login/BottomScrollView;->mFirst:Z

    .line 94
    iget-object v0, p0, Lcom/google/android/gsf/login/BottomScrollView;->mListener:Lcom/google/android/gsf/login/BottomScrollView$BottomScrollListener;

    invoke-interface {v0}, Lcom/google/android/gsf/login/BottomScrollView$BottomScrollListener;->onRequiresScroll()V

    goto :goto_0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v3, 0x0

    .line 65
    iget-boolean v1, p0, Lcom/google/android/gsf/login/BottomScrollView;->mActive:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    sub-int v1, p5, p3

    iget v2, p0, Lcom/google/android/gsf/login/BottomScrollView;->mLastHeight:I

    if-ge v1, v2, :cond_0

    .line 66
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gsf/login/BottomScrollView;->mActive:Z

    .line 68
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/ScrollView;->onLayout(ZIIII)V

    .line 69
    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/BottomScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 70
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/BottomScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v1, p5

    add-int/2addr v1, p3

    invoke-virtual {p0}, Lcom/google/android/gsf/login/BottomScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/gsf/login/BottomScrollView;->mScrollThreshold:I

    .line 74
    :cond_1
    sub-int v1, p5, p3

    if-lez v1, :cond_2

    .line 75
    invoke-direct {p0}, Lcom/google/android/gsf/login/BottomScrollView;->checkScroll()V

    .line 77
    :cond_2
    sub-int v1, p5, p3

    iput v1, p0, Lcom/google/android/gsf/login/BottomScrollView;->mLastHeight:I

    .line 78
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 82
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 83
    if-eq p4, p2, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/google/android/gsf/login/BottomScrollView;->checkScroll()V

    .line 86
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/google/android/gsf/login/BottomScrollView;->mFirst:Z

    .line 55
    iput-boolean v0, p0, Lcom/google/android/gsf/login/BottomScrollView;->mActive:Z

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gsf/login/BottomScrollView;->mLastHeight:I

    .line 57
    return-void
.end method

.method public setBottomScrollListener(Lcom/google/android/gsf/login/BottomScrollView$BottomScrollListener;)V
    .locals 0
    .param p1, "l"    # Lcom/google/android/gsf/login/BottomScrollView$BottomScrollListener;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/android/gsf/login/BottomScrollView;->mListener:Lcom/google/android/gsf/login/BottomScrollView$BottomScrollListener;

    .line 51
    return-void
.end method
