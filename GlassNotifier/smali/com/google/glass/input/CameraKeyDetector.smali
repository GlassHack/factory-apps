.class public final Lcom/google/glass/input/CameraKeyDetector;
.super Ljava/lang/Object;
.source "CameraKeyDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/input/CameraKeyDetector$CameraButtonListener;
    }
.end annotation


# instance fields
.field private final listener:Lcom/google/glass/input/CameraKeyDetector$CameraButtonListener;


# direct methods
.method public constructor <init>(Lcom/google/glass/input/CameraKeyDetector$CameraButtonListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/glass/input/CameraKeyDetector$CameraButtonListener;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/input/CameraKeyDetector$CameraButtonListener;

    iput-object v0, p0, Lcom/google/glass/input/CameraKeyDetector;->listener:Lcom/google/glass/input/CameraKeyDetector$CameraButtonListener;

    .line 24
    return-void
.end method

.method private dispatchOnCameraButtonPressed(Z)Z
    .locals 1
    .param p1, "isLongPress"    # Z

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/glass/input/CameraKeyDetector;->listener:Lcom/google/glass/input/CameraKeyDetector$CameraButtonListener;

    invoke-interface {v0, p1}, Lcom/google/glass/input/CameraKeyDetector$CameraButtonListener;->onCameraButtonPressed(Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 27
    packed-switch p1, :pswitch_data_0

    .line 32
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 29
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 30
    const/4 v0, 0x1

    goto :goto_0

    .line 27
    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 37
    packed-switch p1, :pswitch_data_0

    .line 41
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 39
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/glass/input/CameraKeyDetector;->dispatchOnCameraButtonPressed(Z)Z

    move-result v0

    goto :goto_0

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 46
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 63
    :cond_0
    :goto_0
    return v0

    .line 48
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    invoke-direct {p0, v1}, Lcom/google/glass/input/CameraKeyDetector;->dispatchOnCameraButtonPressed(Z)Z

    move-result v0

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method
