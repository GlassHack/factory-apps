.class final Lcom/google/maps/api/android/lib6/gmm6/m/o;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/google/maps/api/android/lib6/gmm6/m/n;


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/m/n;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/o;->a:Lcom/google/maps/api/android/lib6/gmm6/m/n;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/o;->a:Lcom/google/maps/api/android/lib6/gmm6/m/n;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/m/p;

    invoke-static {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/n;->a(Lcom/google/maps/api/android/lib6/gmm6/m/n;Lcom/google/maps/api/android/lib6/gmm6/m/p;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/o;->a:Lcom/google/maps/api/android/lib6/gmm6/m/n;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/n;->a(Lcom/google/maps/api/android/lib6/gmm6/m/n;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/o;->a:Lcom/google/maps/api/android/lib6/gmm6/m/n;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/m/a/c;

    invoke-static {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/n;->a(Lcom/google/maps/api/android/lib6/gmm6/m/n;Lcom/google/maps/api/android/lib6/gmm6/m/a/c;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/o;->a:Lcom/google/maps/api/android/lib6/gmm6/m/n;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/m/a/c;

    invoke-static {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/n;->b(Lcom/google/maps/api/android/lib6/gmm6/m/n;Lcom/google/maps/api/android/lib6/gmm6/m/a/c;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
