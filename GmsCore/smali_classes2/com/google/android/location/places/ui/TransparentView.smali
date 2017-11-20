.class public Lcom/google/android/location/places/ui/TransparentView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 0

    .prologue
    .line 41
    iput p1, p0, Lcom/google/android/location/places/ui/TransparentView;->b:I

    .line 42
    iput p2, p0, Lcom/google/android/location/places/ui/TransparentView;->c:I

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/google/android/location/places/ui/TransparentView;->setMeasuredDimension(II)V

    .line 44
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/android/location/places/ui/TransparentView;->a:Landroid/view/View;

    .line 38
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/TransparentView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 70
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onMeasure(II)V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/location/places/ui/TransparentView;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 49
    iget v0, p0, Lcom/google/android/location/places/ui/TransparentView;->b:I

    iget v1, p0, Lcom/google/android/location/places/ui/TransparentView;->c:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/location/places/ui/TransparentView;->setMeasuredDimension(II)V

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/location/places/ui/TransparentView;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/TransparentView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/google/android/location/places/ui/TransparentView;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 60
    iget-object v0, p0, Lcom/google/android/location/places/ui/TransparentView;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 61
    const/4 v0, 0x1

    .line 63
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
