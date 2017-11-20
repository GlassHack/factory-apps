.class public abstract Lcom/google/glass/app/InputDetectingActivity;
.super Lcom/google/glass/app/TimedActivity;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/input/InputListener;


# instance fields
.field private touchDetector:Lcom/google/glass/input/TouchDetector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/glass/app/TimedActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/glass/input/InputListener$DismissAction;->SWIPE_DOWN:Lcom/google/glass/input/InputListener$DismissAction;

    invoke-virtual {p0, v0}, Lcom/google/glass/app/InputDetectingActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    .line 42
    return-void
.end method

.method public onConfirm()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreateInternal(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/google/glass/app/TimedActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 31
    new-instance v0, Lcom/google/glass/input/TouchDetector;

    invoke-direct {v0, p0, p0}, Lcom/google/glass/input/TouchDetector;-><init>(Landroid/content/Context;Lcom/google/glass/input/InputListener;)V

    iput-object v0, p0, Lcom/google/glass/app/InputDetectingActivity;->touchDetector:Lcom/google/glass/input/TouchDetector;

    .line 32
    return-void
.end method

.method protected onDisallowedInput()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public onFingerCountChanged(IZ)Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/glass/app/InputDetectingActivity;->touchDetector:Lcom/google/glass/input/TouchDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/app/InputDetectingActivity;->touchDetector:Lcom/google/glass/input/TouchDetector;

    invoke-virtual {v0, p1}, Lcom/google/glass/input/TouchDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepareSwipe(IFFFFII)Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public onSwipe(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method
