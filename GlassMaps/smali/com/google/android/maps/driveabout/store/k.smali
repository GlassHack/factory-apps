.class final Lcom/google/android/maps/driveabout/store/k;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/store/i;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/store/i;)V
    .locals 0

    .prologue
    .line 591
    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/k;->a:Lcom/google/android/maps/driveabout/store/i;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 594
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 614
    :goto_0
    return-void

    .line 596
    :pswitch_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/k;->a:Lcom/google/android/maps/driveabout/store/i;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/maps/driveabout/store/p;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/store/i;->a(Lcom/google/android/maps/driveabout/store/i;Lcom/google/android/maps/driveabout/store/p;)V

    goto :goto_0

    .line 599
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/k;->a:Lcom/google/android/maps/driveabout/store/i;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/store/i;->a(Lcom/google/android/maps/driveabout/store/i;)V

    goto :goto_0

    .line 602
    :pswitch_2
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/k;->a:Lcom/google/android/maps/driveabout/store/i;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/maps/driveabout/store/m;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/store/i;->a(Lcom/google/android/maps/driveabout/store/i;Lcom/google/android/maps/driveabout/store/m;)V

    goto :goto_0

    .line 605
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/k;->a:Lcom/google/android/maps/driveabout/store/i;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/store/i;->b(Lcom/google/android/maps/driveabout/store/i;)V

    goto :goto_0

    .line 608
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    monitor-enter v1

    .line 609
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 610
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 611
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/k;->a:Lcom/google/android/maps/driveabout/store/i;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/store/i;->c(Lcom/google/android/maps/driveabout/store/i;)V

    goto :goto_0

    .line 610
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 594
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
