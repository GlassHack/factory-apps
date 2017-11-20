.class final Lcom/google/android/gms/wearable/node/bluetooth/j;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/gms/wearable/node/bluetooth/g;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/node/bluetooth/g;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/google/android/gms/wearable/node/bluetooth/j;->b:Lcom/google/android/gms/wearable/node/bluetooth/g;

    iput-object p2, p0, Lcom/google/android/gms/wearable/node/bluetooth/j;->a:Ljava/lang/String;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 247
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 249
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/wearable/node/bluetooth/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 255
    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 256
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/j;->b:Lcom/google/android/gms/wearable/node/bluetooth/g;

    iget-object v0, v0, Lcom/google/android/gms/wearable/node/bluetooth/g;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_0

    .line 257
    :cond_2
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 258
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/j;->b:Lcom/google/android/gms/wearable/node/bluetooth/g;

    iget-object v0, v0, Lcom/google/android/gms/wearable/node/bluetooth/g;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_0

    .line 259
    :cond_3
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECT_REQUESTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 260
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/j;->b:Lcom/google/android/gms/wearable/node/bluetooth/g;

    iget-object v0, v0, Lcom/google/android/gms/wearable/node/bluetooth/g;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_0

    .line 261
    :cond_4
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    const-string v0, "android.bluetooth.device.extra.BOND_STATE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 263
    packed-switch v0, :pswitch_data_0

    .line 275
    const-string v0, "WearableBluetooth"

    const-string v1, "Unexpected bond state!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 265
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/j;->b:Lcom/google/android/gms/wearable/node/bluetooth/g;

    iget-object v0, v0, Lcom/google/android/gms/wearable/node/bluetooth/g;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_0

    .line 268
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/j;->b:Lcom/google/android/gms/wearable/node/bluetooth/g;

    iget-object v0, v0, Lcom/google/android/gms/wearable/node/bluetooth/g;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_0

    .line 271
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/j;->b:Lcom/google/android/gms/wearable/node/bluetooth/g;

    iget-object v0, v0, Lcom/google/android/gms/wearable/node/bluetooth/g;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_0

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
