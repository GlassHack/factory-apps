.class final Lcom/google/maps/api/android/lib6/gmm6/streetview/g;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/google/maps/api/android/lib6/gmm6/streetview/f;


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/streetview/f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/g;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/f;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown message id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/g;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/f;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    invoke-static {v2, v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->a(Lcom/google/maps/api/android/lib6/gmm6/streetview/f;ZLcom/google/maps/api/android/lib6/gmm6/streetview/q;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/g;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/f;

    iget v0, p1, Landroid/os/Message;->arg1:I

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/g;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/f;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->b(I)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/g;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/f;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->a()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
