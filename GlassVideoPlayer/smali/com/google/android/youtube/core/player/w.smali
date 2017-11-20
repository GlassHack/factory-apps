.class final Lcom/google/android/youtube/core/player/w;
.super Landroid/os/HandlerThread;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/player/t;

.field private b:Landroid/os/Handler;


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 657
    iget-object v0, p0, Lcom/google/android/youtube/core/player/w;->b:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 658
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/player/i;Landroid/net/Uri;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 640
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object p2, v0, v3

    .line 641
    iget-object v1, p0, Lcom/google/android/youtube/core/player/w;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/w;->b:Landroid/os/Handler;

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 642
    return-void
.end method

.method public final declared-synchronized b()V
    .locals 2

    .prologue
    .line 661
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/core/player/w;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 662
    iget-object v0, p0, Lcom/google/android/youtube/core/player/w;->a:Lcom/google/android/youtube/core/player/t;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/t;->a(Lcom/google/android/youtube/core/player/t;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 663
    monitor-exit p0

    return-void

    .line 661
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized handleMessage(Landroid/os/Message;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 677
    monitor-enter p0

    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v1, :pswitch_data_0

    .line 700
    :goto_0
    monitor-exit p0

    return v0

    .line 679
    :pswitch_0
    :try_start_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 680
    iget-object v3, p0, Lcom/google/android/youtube/core/player/w;->a:Lcom/google/android/youtube/core/player/t;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Lcom/google/android/youtube/core/player/i;

    const/4 v4, 0x1

    aget-object v0, v0, v4

    check-cast v0, Landroid/net/Uri;

    invoke-static {v3, v1, v0}, Lcom/google/android/youtube/core/player/t;->a(Lcom/google/android/youtube/core/player/t;Lcom/google/android/youtube/core/player/i;Landroid/net/Uri;)V

    move v0, v2

    .line 681
    goto :goto_0

    .line 683
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/youtube/core/player/w;->a:Lcom/google/android/youtube/core/player/t;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/t;->b(Lcom/google/android/youtube/core/player/t;)V

    move v0, v2

    .line 684
    goto :goto_0

    .line 686
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/youtube/core/player/w;->a:Lcom/google/android/youtube/core/player/t;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/t;->c(Lcom/google/android/youtube/core/player/t;)V

    move v0, v2

    .line 687
    goto :goto_0

    .line 689
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/youtube/core/player/w;->a:Lcom/google/android/youtube/core/player/t;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/t;->a(Lcom/google/android/youtube/core/player/t;I)V

    move v0, v2

    .line 690
    goto :goto_0

    .line 692
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/youtube/core/player/w;->a:Lcom/google/android/youtube/core/player/t;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/t;->a(Lcom/google/android/youtube/core/player/t;)V

    move v0, v2

    .line 693
    goto :goto_0

    .line 695
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/youtube/core/player/w;->a:Lcom/google/android/youtube/core/player/t;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/t;->a(Lcom/google/android/youtube/core/player/t;)V

    .line 696
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/w;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 697
    iget-object v0, p0, Lcom/google/android/youtube/core/player/w;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    .line 698
    goto :goto_0

    .line 677
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final quit()Z
    .locals 2

    .prologue
    .line 667
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/w;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/google/android/youtube/core/player/w;->b:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 669
    const/4 v0, 0x1

    .line 671
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final start()V
    .locals 2

    .prologue
    .line 635
    invoke-super {p0}, Landroid/os/HandlerThread;->start()V

    .line 636
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/w;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/w;->b:Landroid/os/Handler;

    .line 637
    return-void
.end method
