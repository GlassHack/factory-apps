.class final Lcom/google/android/youtube/core/player/x;
.super Landroid/os/HandlerThread;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/player/t;

.field private final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private e:Landroid/os/Handler;


# direct methods
.method static synthetic a(Lcom/google/android/youtube/core/player/x;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Lcom/google/android/youtube/core/player/x;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/core/player/x;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 896
    iget-object v0, p0, Lcom/google/android/youtube/core/player/x;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 916
    iget-object v0, p0, Lcom/google/android/youtube/core/player/x;->a:Lcom/google/android/youtube/core/player/t;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/t;->f(Lcom/google/android/youtube/core/player/t;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 917
    iget-object v0, p0, Lcom/google/android/youtube/core/player/x;->e:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 918
    iget-object v0, p0, Lcom/google/android/youtube/core/player/x;->e:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 920
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 923
    iget-object v0, p0, Lcom/google/android/youtube/core/player/x;->a:Lcom/google/android/youtube/core/player/t;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/t;->f(Lcom/google/android/youtube/core/player/t;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 924
    iget-object v0, p0, Lcom/google/android/youtube/core/player/x;->e:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 926
    :cond_0
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 940
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 971
    :goto_0
    return v0

    .line 942
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/youtube/core/player/x;->a:Lcom/google/android/youtube/core/player/t;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/t;->g(Lcom/google/android/youtube/core/player/t;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/i;

    .line 943
    if-eqz v0, :cond_2

    .line 945
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/youtube/core/player/i;->e()I

    move-result v2

    .line 946
    invoke-interface {v0}, Lcom/google/android/youtube/core/player/i;->f()I

    move-result v0

    .line 947
    iget-object v3, p0, Lcom/google/android/youtube/core/player/x;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 948
    if-lez v2, :cond_1

    .line 949
    iget-object v3, p0, Lcom/google/android/youtube/core/player/x;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 951
    iget-object v3, p0, Lcom/google/android/youtube/core/player/x;->a:Lcom/google/android/youtube/core/player/t;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/google/android/youtube/core/player/t;->b(Lcom/google/android/youtube/core/player/t;I)V

    .line 953
    :cond_0
    iget-object v3, p0, Lcom/google/android/youtube/core/player/x;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 954
    iget-object v3, p0, Lcom/google/android/youtube/core/player/x;->a:Lcom/google/android/youtube/core/player/t;

    iget-object v4, p0, Lcom/google/android/youtube/core/player/x;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-static {v3, v2, v4, v0}, Lcom/google/android/youtube/core/player/t;->a(Lcom/google/android/youtube/core/player/t;III)V

    .line 956
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/core/player/x;->e:Landroid/os/Handler;

    const/4 v2, 0x1

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v0, v1

    .line 964
    goto :goto_0

    .line 957
    :catch_0
    move-exception v0

    .line 959
    const-string v2, "Error calling mediaPlayer"

    invoke-static {v2, v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 962
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/x;->b()V

    goto :goto_1

    .line 967
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/youtube/core/player/x;->e:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 968
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/x;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    move v0, v1

    .line 969
    goto :goto_0

    .line 940
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final quit()Z
    .locals 2

    .prologue
    .line 930
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/x;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 931
    iget-object v0, p0, Lcom/google/android/youtube/core/player/x;->e:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 932
    const/4 v0, 0x1

    .line 934
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final start()V
    .locals 2

    .prologue
    .line 911
    invoke-super {p0}, Landroid/os/HandlerThread;->start()V

    .line 912
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/x;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/x;->e:Landroid/os/Handler;

    .line 913
    return-void
.end method
