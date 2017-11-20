.class public final Lcom/google/android/gms/common/ui/ScrollViewWithEvents;
.super Landroid/widget/ScrollView;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private a:Lcom/google/android/gms/common/ui/d;

.field private b:Lcom/google/android/gms/common/ui/c;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/ui/ScrollViewWithEvents;->b(I)Z

    move-result v0

    .line 117
    iget-boolean v1, p0, Lcom/google/android/gms/common/ui/ScrollViewWithEvents;->c:Z

    if-eq v0, v1, :cond_0

    .line 118
    iput-boolean v0, p0, Lcom/google/android/gms/common/ui/ScrollViewWithEvents;->c:Z

    .line 119
    iget-object v0, p0, Lcom/google/android/gms/common/ui/ScrollViewWithEvents;->a:Lcom/google/android/gms/common/ui/d;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/google/android/gms/common/ui/ScrollViewWithEvents;->a:Lcom/google/android/gms/common/ui/d;

    iget-boolean v0, p0, Lcom/google/android/gms/common/ui/ScrollViewWithEvents;->c:Z

    .line 123
    :cond_0
    return-void
.end method

.method private b(I)Z
    .locals 2

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/google/android/gms/common/ui/ScrollViewWithEvents;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/ui/ScrollViewWithEvents;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/ui/ScrollViewWithEvents;->getHeight()I

    move-result v1

    add-int/2addr v1, p1

    sub-int/2addr v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/google/android/gms/common/ui/ScrollViewWithEvents;->getScrollY()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/ui/ScrollViewWithEvents;->b(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/common/ui/ScrollViewWithEvents;->c:Z

    .line 69
    iget-boolean v0, p0, Lcom/google/android/gms/common/ui/ScrollViewWithEvents;->c:Z

    return v0
.end method

.method protected final onAttachedToWindow()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Landroid/widget/ScrollView;->onAttachedToWindow()V

    .line 84
    invoke-virtual {p0}, Lcom/google/android/gms/common/ui/ScrollViewWithEvents;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 85
    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Landroid/widget/ScrollView;->onDetachedFromWindow()V

    .line 90
    invoke-virtual {p0}, Lcom/google/android/gms/common/ui/ScrollViewWithEvents;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 91
    return-void
.end method

.method public final onGlobalLayout()V
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/google/android/gms/common/ui/ScrollViewWithEvents;->getScrollY()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/ui/ScrollViewWithEvents;->a(I)V

    .line 136
    return-void
.end method

.method protected final onScrollChanged(IIII)V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 97
    iget-object v0, p0, Lcom/google/android/gms/common/ui/ScrollViewWithEvents;->b:Lcom/google/android/gms/common/ui/c;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/google/android/gms/common/ui/ScrollViewWithEvents;->b:Lcom/google/android/gms/common/ui/c;

    .line 102
    :cond_0
    if-ne p2, p4, :cond_2

    .line 112
    :cond_1
    :goto_0
    return-void

    .line 107
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/common/ui/ScrollViewWithEvents;->c:Z

    if-nez v0, :cond_3

    if-le p2, p4, :cond_1

    .line 111
    :cond_3
    invoke-direct {p0, p2}, Lcom/google/android/gms/common/ui/ScrollViewWithEvents;->a(I)V

    goto :goto_0
.end method
