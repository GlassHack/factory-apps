.class public final Lcom/google/glass/input/CameraKeyDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final listener:Lcom/google/glass/input/CameraKeyDetector$CameraButtonListener;


# direct methods
.method public constructor <init>(Lcom/google/glass/input/CameraKeyDetector$CameraButtonListener;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/input/CameraKeyDetector$CameraButtonListener;

    iput-object v0, p0, Lcom/google/glass/input/CameraKeyDetector;->listener:Lcom/google/glass/input/CameraKeyDetector$CameraButtonListener;

    .line 25
    return-void
.end method

.method private dispatchOnCameraButtonPressed(Z)Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/glass/input/CameraKeyDetector;->listener:Lcom/google/glass/input/CameraKeyDetector$CameraButtonListener;

    invoke-interface {v0, p1}, Lcom/google/glass/input/CameraKeyDetector$CameraButtonListener;->onCameraButtonPressed(Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 28
    packed-switch p1, :pswitch_data_0

    .line 33
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 30
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 31
    const/4 v0, 0x1

    goto :goto_0

    .line 28
    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method public final onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 38
    packed-switch p1, :pswitch_data_0

    .line 42
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 40
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/glass/input/CameraKeyDetector;->dispatchOnCameraButtonPressed(Z)Z

    move-result v0

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 47
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 64
    :cond_0
    :goto_0
    return v0

    .line 49
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 62
    invoke-direct {p0, v1}, Lcom/google/glass/input/CameraKeyDetector;->dispatchOnCameraButtonPressed(Z)Z

    move-result v0

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method
