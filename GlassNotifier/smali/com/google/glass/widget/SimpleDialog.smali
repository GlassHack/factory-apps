.class public abstract Lcom/google/glass/widget/SimpleDialog;
.super Landroid/app/Dialog;
.source "SimpleDialog.java"

# interfaces
.implements Lcom/google/glass/input/InputListener;


# instance fields
.field private final soundManager:Lcom/google/glass/sound/SoundManager;

.field private final touchDetector:Lcom/google/glass/input/TouchDetector;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    sget v0, Lcom/google/glass/common/R$style;->ContextualDialogTheme:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 20
    new-instance v0, Lcom/google/glass/input/TouchDetector;

    invoke-direct {v0, p1, p0}, Lcom/google/glass/input/TouchDetector;-><init>(Landroid/content/Context;Lcom/google/glass/input/InputListener;)V

    iput-object v0, p0, Lcom/google/glass/widget/SimpleDialog;->touchDetector:Lcom/google/glass/input/TouchDetector;

    .line 21
    new-instance v0, Lcom/google/glass/sound/SoundManager;

    invoke-direct {v0, p1}, Lcom/google/glass/sound/SoundManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/widget/SimpleDialog;->soundManager:Lcom/google/glass/sound/SoundManager;

    .line 22
    invoke-virtual {p0}, Lcom/google/glass/widget/SimpleDialog;->getLayoutId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/SimpleDialog;->setContentView(I)V

    .line 23
    return-void
.end method


# virtual methods
.method public abstract getLayoutId()I
.end method

.method public onConfirm()Z
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/widget/SimpleDialog;->soundManager:Lcom/google/glass/sound/SoundManager;

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 34
    invoke-virtual {p0}, Lcom/google/glass/widget/SimpleDialog;->dismiss()V

    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 1
    .param p1, "dismissAction"    # Lcom/google/glass/input/InputListener$DismissAction;

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public onFingerCountChanged(IZ)Z
    .locals 1
    .param p1, "count"    # I
    .param p2, "wentDown"    # Z

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/glass/widget/SimpleDialog;->touchDetector:Lcom/google/glass/input/TouchDetector;

    invoke-virtual {v0, p1}, Lcom/google/glass/input/TouchDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onPrepareSwipe(IFFFFII)Z
    .locals 1
    .param p1, "fingerCount"    # I
    .param p2, "accumulatorX"    # F
    .param p3, "accumulatorY"    # F
    .param p4, "velocityX"    # F
    .param p5, "velocityY"    # F
    .param p6, "numSwipesX"    # I
    .param p7, "numSwipesY"    # I

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public onSwipe(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 1
    .param p1, "fingerCount"    # I
    .param p2, "direction"    # Lcom/google/glass/input/SwipeDirection;

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method
