.class final Lcom/google/maps/api/android/lib6/gmm6/m/g;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/google/maps/api/android/lib6/gmm6/m/d;


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/m/d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/g;->a:Lcom/google/maps/api/android/lib6/gmm6/m/d;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/g;->a:Lcom/google/maps/api/android/lib6/gmm6/m/d;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/m/k;

    invoke-static {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a(Lcom/google/maps/api/android/lib6/gmm6/m/d;Lcom/google/maps/api/android/lib6/gmm6/m/k;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/g;->a:Lcom/google/maps/api/android/lib6/gmm6/m/d;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a(Lcom/google/maps/api/android/lib6/gmm6/m/d;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/g;->a:Lcom/google/maps/api/android/lib6/gmm6/m/d;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/m/h;

    invoke-static {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a(Lcom/google/maps/api/android/lib6/gmm6/m/d;Lcom/google/maps/api/android/lib6/gmm6/m/h;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/g;->a:Lcom/google/maps/api/android/lib6/gmm6/m/d;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->b(Lcom/google/maps/api/android/lib6/gmm6/m/d;)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/g;->a:Lcom/google/maps/api/android/lib6/gmm6/m/d;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->c(Lcom/google/maps/api/android/lib6/gmm6/m/d;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/g;->a:Lcom/google/maps/api/android/lib6/gmm6/m/d;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/maps/api/android/lib6/gmm6/l/ai;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/maps/api/android/lib6/gmm6/m/c;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/m/a/d;

    invoke-static {v3, v1, v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a(Lcom/google/maps/api/android/lib6/gmm6/m/d;Lcom/google/maps/api/android/lib6/gmm6/l/ai;Lcom/google/maps/api/android/lib6/gmm6/m/c;Lcom/google/maps/api/android/lib6/gmm6/m/a/d;)V

    goto :goto_0

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
