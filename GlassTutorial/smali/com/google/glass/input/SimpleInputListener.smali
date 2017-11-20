.class public Lcom/google/glass/input/SimpleInputListener;
.super Ljava/lang/Object;
.source "SimpleInputListener.java"

# interfaces
.implements Lcom/google/glass/input/InputListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm()Z
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    return v0
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 1
    .param p1, "dismissAction"    # Lcom/google/glass/input/InputListener$DismissAction;

    .prologue
    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public onFingerCountChanged(IZ)Z
    .locals 1
    .param p1, "count"    # I
    .param p2, "wentDown"    # Z

    .prologue
    .line 22
    const/4 v0, 0x0

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
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public onSwipe(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 1
    .param p1, "fingerCount"    # I
    .param p2, "direction"    # Lcom/google/glass/input/SwipeDirection;

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method
