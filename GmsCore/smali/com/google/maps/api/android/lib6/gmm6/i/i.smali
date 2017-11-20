.class final Lcom/google/maps/api/android/lib6/gmm6/i/i;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/google/maps/api/android/lib6/gmm6/i/h;


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/i/h;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/i/i;->a:Lcom/google/maps/api/android/lib6/gmm6/i/h;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown message "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/i;->a:Lcom/google/maps/api/android/lib6/gmm6/i/h;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/i/h;->b(Lcom/google/maps/api/android/lib6/gmm6/i/h;)Landroid/view/GestureDetector$OnGestureListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/i/i;->a:Lcom/google/maps/api/android/lib6/gmm6/i/h;

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/i/h;->a(Lcom/google/maps/api/android/lib6/gmm6/i/h;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/i;->a:Lcom/google/maps/api/android/lib6/gmm6/i/h;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/i/h;->c(Lcom/google/maps/api/android/lib6/gmm6/i/h;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/i;->a:Lcom/google/maps/api/android/lib6/gmm6/i/h;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/i/h;->d(Lcom/google/maps/api/android/lib6/gmm6/i/h;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/i;->a:Lcom/google/maps/api/android/lib6/gmm6/i/h;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/i/h;->e(Lcom/google/maps/api/android/lib6/gmm6/i/h;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/i;->a:Lcom/google/maps/api/android/lib6/gmm6/i/h;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/i/h;->d(Lcom/google/maps/api/android/lib6/gmm6/i/h;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/i/i;->a:Lcom/google/maps/api/android/lib6/gmm6/i/h;

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/i/h;->a(Lcom/google/maps/api/android/lib6/gmm6/i/h;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
