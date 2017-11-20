.class public final Lcom/google/android/location/places/ui/bl;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/places/ui/bl;->a:Landroid/view/View$OnTouchListener;

    .line 19
    return-void
.end method


# virtual methods
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/location/places/ui/bl;->a:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/google/android/location/places/ui/bl;->a:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    const/4 v0, 0x1

    .line 34
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/google/android/location/places/ui/bl;->a:Landroid/view/View$OnTouchListener;

    .line 24
    return-void
.end method
