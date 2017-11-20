.class final Lcom/google/android/location/fused/p;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/fused/g;

.field final synthetic b:Lcom/google/android/location/fused/o;


# direct methods
.method constructor <init>(Lcom/google/android/location/fused/o;Landroid/os/Looper;Lcom/google/android/location/fused/g;)V
    .locals 0

    .prologue
    .line 1421
    iput-object p1, p0, Lcom/google/android/location/fused/p;->b:Lcom/google/android/location/fused/o;

    iput-object p3, p0, Lcom/google/android/location/fused/p;->a:Lcom/google/android/location/fused/g;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1424
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1462
    :goto_0
    return-void

    .line 1426
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/location/fused/s;

    .line 1428
    iget-object v1, p0, Lcom/google/android/location/fused/p;->b:Lcom/google/android/location/fused/o;

    iget-object v1, v1, Lcom/google/android/location/fused/o;->b:Lcom/google/android/location/fused/g;

    iget-object v2, v0, Lcom/google/android/location/fused/s;->a:Lcom/google/android/gms/location/internal/LocationRequestInternal;

    iget-object v3, v0, Lcom/google/android/location/fused/s;->e:Lcom/google/android/gms/location/h;

    iget-boolean v0, v0, Lcom/google/android/location/fused/s;->b:Z

    invoke-static {v1, v2, v3, v0}, Lcom/google/android/location/fused/g;->a(Lcom/google/android/location/fused/g;Lcom/google/android/gms/location/internal/LocationRequestInternal;Lcom/google/android/gms/location/h;Z)V

    .line 1434
    iget-object v0, p0, Lcom/google/android/location/fused/p;->b:Lcom/google/android/location/fused/o;

    invoke-static {v0}, Lcom/google/android/location/fused/o;->a(Lcom/google/android/location/fused/o;)V

    goto :goto_0

    .line 1437
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/location/fused/s;

    .line 1439
    iget-object v1, p0, Lcom/google/android/location/fused/p;->b:Lcom/google/android/location/fused/o;

    iget-object v1, v1, Lcom/google/android/location/fused/o;->b:Lcom/google/android/location/fused/g;

    iget-object v2, v0, Lcom/google/android/location/fused/s;->a:Lcom/google/android/gms/location/internal/LocationRequestInternal;

    iget-object v3, v0, Lcom/google/android/location/fused/s;->d:Landroid/app/PendingIntent;

    iget-boolean v0, v0, Lcom/google/android/location/fused/s;->b:Z

    invoke-static {v1, v2, v3, v0}, Lcom/google/android/location/fused/g;->a(Lcom/google/android/location/fused/g;Lcom/google/android/gms/location/internal/LocationRequestInternal;Landroid/app/PendingIntent;Z)V

    .line 1443
    iget-object v0, p0, Lcom/google/android/location/fused/p;->b:Lcom/google/android/location/fused/o;

    invoke-static {v0}, Lcom/google/android/location/fused/o;->a(Lcom/google/android/location/fused/o;)V

    goto :goto_0

    .line 1446
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/location/h;

    .line 1447
    iget-object v1, p0, Lcom/google/android/location/fused/p;->b:Lcom/google/android/location/fused/o;

    iget-object v1, v1, Lcom/google/android/location/fused/o;->b:Lcom/google/android/location/fused/g;

    invoke-static {v1, v0}, Lcom/google/android/location/fused/g;->a(Lcom/google/android/location/fused/g;Lcom/google/android/gms/location/h;)V

    .line 1448
    iget-object v0, p0, Lcom/google/android/location/fused/p;->b:Lcom/google/android/location/fused/o;

    invoke-static {v0}, Lcom/google/android/location/fused/o;->a(Lcom/google/android/location/fused/o;)V

    goto :goto_0

    .line 1451
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/PendingIntent;

    .line 1452
    iget-object v1, p0, Lcom/google/android/location/fused/p;->b:Lcom/google/android/location/fused/o;

    iget-object v1, v1, Lcom/google/android/location/fused/o;->b:Lcom/google/android/location/fused/g;

    invoke-static {v1, v0}, Lcom/google/android/location/fused/g;->a(Lcom/google/android/location/fused/g;Landroid/app/PendingIntent;)V

    .line 1453
    iget-object v0, p0, Lcom/google/android/location/fused/p;->b:Lcom/google/android/location/fused/o;

    invoke-static {v0}, Lcom/google/android/location/fused/o;->a(Lcom/google/android/location/fused/o;)V

    goto :goto_0

    .line 1456
    :pswitch_4
    iget-object v1, p0, Lcom/google/android/location/fused/p;->b:Lcom/google/android/location/fused/o;

    iget-object v1, v1, Lcom/google/android/location/fused/o;->b:Lcom/google/android/location/fused/g;

    iget-object v1, v1, Lcom/google/android/location/fused/g;->a:Lcom/google/android/location/fused/bc;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/google/android/location/fused/bc;->c(Z)V

    goto :goto_0

    .line 1459
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/location/fused/p;->b:Lcom/google/android/location/fused/o;

    iget-object v0, v0, Lcom/google/android/location/fused/o;->b:Lcom/google/android/location/fused/g;

    iget-object v1, v0, Lcom/google/android/location/fused/g;->a:Lcom/google/android/location/fused/bc;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    iget-object v2, v1, Lcom/google/android/location/fused/bc;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, v1, Lcom/google/android/location/fused/bc;->d:Z

    if-eqz v3, :cond_1

    invoke-static {v0}, Lcom/google/android/location/o/w;->f(Landroid/location/Location;)V

    iput-object v0, v1, Lcom/google/android/location/fused/bc;->e:Landroid/location/Location;

    iget-object v3, v1, Lcom/google/android/location/fused/bc;->c:[Landroid/location/Location;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    iget-object v0, v1, Lcom/google/android/location/fused/bc;->a:Lcom/google/android/location/fused/aq;

    iget-object v1, v1, Lcom/google/android/location/fused/bc;->c:[Landroid/location/Location;

    invoke-interface {v0, v1}, Lcom/google/android/location/fused/aq;->a([Landroid/location/Location;)V

    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 1424
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
