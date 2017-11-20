.class final Lcom/google/android/location/network/c;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/network/NetworkLocationProvider;


# direct methods
.method constructor <init>(Lcom/google/android/location/network/NetworkLocationProvider;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/android/location/network/c;->a:Lcom/google/android/location/network/NetworkLocationProvider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 76
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 95
    :goto_0
    return-void

    .line 78
    :pswitch_0
    const-string v0, "GmsNetworkLocationProvi"

    const-string v1, "ENABLE"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/google/android/location/network/c;->a:Lcom/google/android/location/network/NetworkLocationProvider;

    invoke-static {v0}, Lcom/google/android/location/network/NetworkLocationProvider;->a(Lcom/google/android/location/network/NetworkLocationProvider;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/a/b;->a(Landroid/content/Context;)V

    .line 81
    iget-object v0, p0, Lcom/google/android/location/network/c;->a:Lcom/google/android/location/network/NetworkLocationProvider;

    invoke-static {v0}, Lcom/google/android/location/network/NetworkLocationProvider;->b(Lcom/google/android/location/network/NetworkLocationProvider;)Lcom/google/android/location/o/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/o/y;->a()V

    goto :goto_0

    .line 85
    :pswitch_1
    const-string v0, "GmsNetworkLocationProvi"

    const-string v1, "DISABLE"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/google/android/location/network/c;->a:Lcom/google/android/location/network/NetworkLocationProvider;

    invoke-static {v0}, Lcom/google/android/location/network/NetworkLocationProvider;->b(Lcom/google/android/location/network/NetworkLocationProvider;)Lcom/google/android/location/o/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/o/y;->b()V

    goto :goto_0

    .line 89
    :pswitch_2
    const-string v0, "GmsNetworkLocationProvi"

    const-string v1, "SET-REQUEST"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v1, p0, Lcom/google/android/location/network/c;->a:Lcom/google/android/location/network/NetworkLocationProvider;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/location/network/d;

    invoke-static {v1, v0}, Lcom/google/android/location/network/NetworkLocationProvider;->a(Lcom/google/android/location/network/NetworkLocationProvider;Lcom/google/android/location/network/d;)Lcom/google/android/location/network/d;

    .line 91
    iget-object v0, p0, Lcom/google/android/location/network/c;->a:Lcom/google/android/location/network/NetworkLocationProvider;

    invoke-static {v0}, Lcom/google/android/location/network/NetworkLocationProvider;->c(Lcom/google/android/location/network/NetworkLocationProvider;)V

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
