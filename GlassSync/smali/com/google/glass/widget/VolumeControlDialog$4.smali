.class Lcom/google/glass/widget/VolumeControlDialog$4;
.super Lcom/google/android/glass/widget/CardScrollView;
.source "VolumeControlDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/widget/VolumeControlDialog;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/VolumeControlDialog;

.field final synthetic val$gestureDetector:Lcom/google/android/glass/touchpad/GestureDetector;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/VolumeControlDialog;Landroid/content/Context;Lcom/google/android/glass/touchpad/GestureDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/widget/VolumeControlDialog;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/google/glass/widget/VolumeControlDialog$4;->this$0:Lcom/google/glass/widget/VolumeControlDialog;

    iput-object p3, p0, Lcom/google/glass/widget/VolumeControlDialog$4;->val$gestureDetector:Lcom/google/android/glass/touchpad/GestureDetector;

    invoke-direct {p0, p2}, Lcom/google/android/glass/widget/CardScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/glass/widget/VolumeControlDialog$4;->val$gestureDetector:Lcom/google/android/glass/touchpad/GestureDetector;

    invoke-virtual {v0, p1}, Lcom/google/android/glass/touchpad/GestureDetector;->onMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const/4 v0, 0x1

    .line 137
    :goto_0
    return v0

    .line 136
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 137
    invoke-super {p0, p1}, Lcom/google/android/glass/widget/CardScrollView;->dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
