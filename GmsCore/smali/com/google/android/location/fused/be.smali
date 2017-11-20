.class final Lcom/google/android/location/fused/be;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/fused/NlpLocationReceiverService;


# direct methods
.method constructor <init>(Lcom/google/android/location/fused/NlpLocationReceiverService;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/google/android/location/fused/be;->a:Lcom/google/android/location/fused/NlpLocationReceiverService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 60
    invoke-static {}, Lcom/google/android/location/fused/NlpLocationReceiverService;->a()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/fused/w;

    .line 61
    if-nez v0, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 84
    const-string v0, "GCoreFlp"

    const-string v1, "unknown message when trying to process location"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 67
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/location/Location;

    .line 68
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/location/fused/w;->a(Landroid/location/Location;Lcom/google/h/a/b/a/c;)V

    goto :goto_0

    .line 71
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 72
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 73
    if-eq v1, v5, :cond_4

    .line 74
    iget-object v3, v0, Lcom/google/android/location/fused/w;->c:Lcom/google/android/location/fused/bf;

    invoke-virtual {v3}, Lcom/google/android/location/fused/bf;->d()Z

    move-result v3

    iget-object v4, v0, Lcom/google/android/location/fused/w;->c:Lcom/google/android/location/fused/bf;

    invoke-virtual {v4, v1}, Lcom/google/android/location/fused/bf;->a(I)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v0, Lcom/google/android/location/fused/w;->c:Lcom/google/android/location/fused/bf;

    invoke-virtual {v4}, Lcom/google/android/location/fused/bf;->d()Z

    move-result v4

    if-eq v4, v3, :cond_3

    const-string v3, "GCoreFlp"

    invoke-static {v3, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "Wifi availability changed, mNlpWifiStatus=%s"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-static {v3, v4}, Lcom/google/android/location/fused/ax;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v1, v0, Lcom/google/android/location/fused/w;->d:Lcom/google/android/location/fused/ad;

    iget-object v3, v0, Lcom/google/android/location/fused/w;->c:Lcom/google/android/location/fused/bf;

    invoke-virtual {v1, v3}, Lcom/google/android/location/fused/ad;->a(Lcom/google/android/location/fused/bf;)V

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/location/fused/w;->f()V

    .line 76
    :cond_4
    if-eq v2, v5, :cond_0

    .line 77
    iget-object v1, v0, Lcom/google/android/location/fused/w;->c:Lcom/google/android/location/fused/bf;

    invoke-virtual {v1}, Lcom/google/android/location/fused/bf;->c()Z

    move-result v1

    iget-object v3, v0, Lcom/google/android/location/fused/w;->c:Lcom/google/android/location/fused/bf;

    invoke-virtual {v3, v2}, Lcom/google/android/location/fused/bf;->b(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/google/android/location/fused/w;->c:Lcom/google/android/location/fused/bf;

    invoke-virtual {v3}, Lcom/google/android/location/fused/bf;->c()Z

    move-result v3

    if-eq v3, v1, :cond_6

    const-string v1, "GCoreFlp"

    invoke-static {v1, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "Cell status changed, mNlpCellStatus=%s"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v6

    invoke-static {v1, v3}, Lcom/google/android/location/fused/ax;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    iget-object v1, v0, Lcom/google/android/location/fused/w;->d:Lcom/google/android/location/fused/ad;

    iget-object v2, v0, Lcom/google/android/location/fused/w;->c:Lcom/google/android/location/fused/bf;

    invoke-virtual {v1, v2}, Lcom/google/android/location/fused/ad;->a(Lcom/google/android/location/fused/bf;)V

    :cond_6
    invoke-virtual {v0}, Lcom/google/android/location/fused/w;->f()V

    goto/16 :goto_0

    .line 81
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/location/ActivityRecognitionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a()Lcom/google/android/gms/location/DetectedActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    sget-object v2, Lcom/google/h/a/b/b/u;->a:Lcom/google/h/a/b/b/u;

    :goto_1
    invoke-virtual {v1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->d()J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    mul-long/2addr v4, v6

    iget-object v1, v0, Lcom/google/android/location/fused/w;->b:Lcom/google/h/a/b/b/t;

    invoke-interface {v1, v4, v5, v2}, Lcom/google/h/a/b/b/t;->a(JLcom/google/h/a/b/b/u;)V

    invoke-virtual {v0, v4, v5}, Lcom/google/android/location/fused/w;->a(J)V

    goto/16 :goto_0

    :pswitch_3
    sget-object v2, Lcom/google/h/a/b/b/u;->b:Lcom/google/h/a/b/b/u;

    goto :goto_1

    :pswitch_4
    sget-object v2, Lcom/google/h/a/b/b/u;->c:Lcom/google/h/a/b/b/u;

    goto :goto_1

    :pswitch_5
    sget-object v2, Lcom/google/h/a/b/b/u;->d:Lcom/google/h/a/b/b/u;

    goto :goto_1

    :pswitch_6
    sget-object v2, Lcom/google/h/a/b/b/u;->e:Lcom/google/h/a/b/b/u;

    goto :goto_1

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 81
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
