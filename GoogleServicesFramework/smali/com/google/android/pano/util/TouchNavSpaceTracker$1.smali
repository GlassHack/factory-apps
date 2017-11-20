.class Lcom/google/android/pano/util/TouchNavSpaceTracker$1;
.super Landroid/os/Handler;
.source "TouchNavSpaceTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/util/TouchNavSpaceTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/pano/util/TouchNavSpaceTracker;


# direct methods
.method constructor <init>(Lcom/google/android/pano/util/TouchNavSpaceTracker;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker$1;->this$0:Lcom/google/android/pano/util/TouchNavSpaceTracker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 378
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 380
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker$1;->this$0:Lcom/google/android/pano/util/TouchNavSpaceTracker;

    iget-object v0, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mKeyEventListener:Lcom/google/android/pano/util/TouchNavSpaceTracker$KeyEventListener;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker$1;->this$0:Lcom/google/android/pano/util/TouchNavSpaceTracker;

    iget-object v1, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mKeyEventListener:Lcom/google/android/pano/util/TouchNavSpaceTracker$KeyEventListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent;

    invoke-interface {v1, v2, v0}, Lcom/google/android/pano/util/TouchNavSpaceTracker$KeyEventListener;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 378
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
