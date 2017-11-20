.class final Lcom/google/android/location/fused/br;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/fused/bq;


# direct methods
.method constructor <init>(Lcom/google/android/location/fused/bq;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/android/location/fused/br;->a:Lcom/google/android/location/fused/bq;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 76
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 109
    :goto_0
    return-void

    .line 78
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/location/fused/br;->a:Lcom/google/android/location/fused/bq;

    iget-object v1, v0, Lcom/google/android/location/fused/bq;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/fused/br;->a:Lcom/google/android/location/fused/bq;

    iget-object v0, v0, Lcom/google/android/location/fused/bq;->b:Lcom/google/android/location/fused/ap;

    invoke-interface {v0}, Lcom/google/android/location/fused/ap;->a()V

    .line 80
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 81
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/location/fused/br;->a:Lcom/google/android/location/fused/bq;

    iget-object v1, v0, Lcom/google/android/location/fused/bq;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 84
    :try_start_1
    iget-object v0, p0, Lcom/google/android/location/fused/br;->a:Lcom/google/android/location/fused/bq;

    iget-object v0, v0, Lcom/google/android/location/fused/bq;->b:Lcom/google/android/location/fused/ap;

    invoke-interface {v0}, Lcom/google/android/location/fused/ap;->b()V

    .line 85
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 86
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/location/fused/br;->a:Lcom/google/android/location/fused/bq;

    iget-object v2, v0, Lcom/google/android/location/fused/bq;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 89
    :try_start_2
    iget-object v0, p0, Lcom/google/android/location/fused/br;->a:Lcom/google/android/location/fused/bq;

    iget-object v3, v0, Lcom/google/android/location/fused/bq;->b:Lcom/google/android/location/fused/ap;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    invoke-interface {v3, v0, v1}, Lcom/google/android/location/fused/ap;->a(Ljava/util/Collection;Z)V

    .line 91
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v2

    throw v0

    .line 89
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 92
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/location/fused/br;->a:Lcom/google/android/location/fused/bq;

    iget-object v1, v0, Lcom/google/android/location/fused/bq;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    :try_start_3
    iget-object v0, p0, Lcom/google/android/location/fused/br;->a:Lcom/google/android/location/fused/bq;

    iget-object v0, v0, Lcom/google/android/location/fused/bq;->b:Lcom/google/android/location/fused/ap;

    invoke-interface {v0}, Lcom/google/android/location/fused/ap;->c()V

    .line 96
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0

    .line 97
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/location/fused/br;->a:Lcom/google/android/location/fused/bq;

    iget-object v1, v0, Lcom/google/android/location/fused/bq;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 100
    :try_start_4
    iget-object v0, p0, Lcom/google/android/location/fused/br;->a:Lcom/google/android/location/fused/bq;

    iget-object v0, v0, Lcom/google/android/location/fused/bq;->b:Lcom/google/android/location/fused/ap;

    invoke-interface {v0}, Lcom/google/android/location/fused/ap;->d()V

    .line 101
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_0

    :catchall_4
    move-exception v0

    monitor-exit v1

    throw v0

    .line 102
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/location/fused/br;->a:Lcom/google/android/location/fused/bq;

    iget-object v1, v0, Lcom/google/android/location/fused/bq;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 105
    :try_start_5
    iget-object v0, p0, Lcom/google/android/location/fused/br;->a:Lcom/google/android/location/fused/bq;

    iget-object v2, v0, Lcom/google/android/location/fused/bq;->b:Lcom/google/android/location/fused/ap;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v0, v3}, Lcom/google/android/location/fused/ap;->a(Landroid/location/Location;I)V

    .line 106
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_0

    :catchall_5
    move-exception v0

    monitor-exit v1

    throw v0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
