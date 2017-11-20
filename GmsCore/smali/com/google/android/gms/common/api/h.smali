.class public final Lcom/google/android/gms/common/api/h;
.super Landroid/os/Handler;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 452
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/h;-><init>(Landroid/os/Looper;)V

    .line 453
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 456
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 457
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 469
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/h;->removeMessages(I)V

    .line 470
    return-void
.end method

.method public final a(Lcom/google/android/gms/common/api/ab;Lcom/google/android/gms/common/api/aa;)V
    .locals 2

    .prologue
    .line 460
    const/4 v0, 0x1

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/common/api/h;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/h;->sendMessage(Landroid/os/Message;)Z

    .line 462
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 475
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 487
    const-string v0, "GoogleApi"

    const-string v1, "Don\'t know how to handle this message."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :goto_0
    return-void

    .line 477
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 478
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/common/api/ab;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/aa;

    :try_start_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/common/api/ab;->a(Lcom/google/android/gms/common/api/aa;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/aa;)V

    throw v1

    .line 479
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/f;

    .line 482
    invoke-static {v0}, Lcom/google/android/gms/common/api/f;->a(Lcom/google/android/gms/common/api/f;)V

    goto :goto_0

    .line 475
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
