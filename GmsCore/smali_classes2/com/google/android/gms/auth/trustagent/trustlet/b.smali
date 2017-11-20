.class final Lcom/google/android/gms/auth/trustagent/trustlet/b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/trustagent/trustlet/a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/trustagent/trustlet/a;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/b;->a:Lcom/google/android/gms/auth/trustagent/trustlet/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/16 v3, 0xc

    .line 60
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 61
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 63
    if-ne v0, v3, :cond_1

    .line 64
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/b;->a:Lcom/google/android/gms/auth/trustagent/trustlet/a;

    iget-object v0, v0, Lcom/google/android/gms/auth/trustagent/trustlet/a;->b:Lcom/google/android/gms/auth/trustagent/trustlet/c;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/auth/trustagent/trustlet/c;->a(Z)V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/b;->a:Lcom/google/android/gms/auth/trustagent/trustlet/a;

    iget-object v0, v0, Lcom/google/android/gms/auth/trustagent/trustlet/a;->b:Lcom/google/android/gms/auth/trustagent/trustlet/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/auth/trustagent/trustlet/c;->a(Z)V

    .line 67
    const-string v0, "Coffee - BluetoothConnectionTracker"

    const-string v1, "Bluetooth adapter off, revoking trust"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/b;->a:Lcom/google/android/gms/auth/trustagent/trustlet/a;

    iget-object v0, v0, Lcom/google/android/gms/auth/trustagent/trustlet/a;->b:Lcom/google/android/gms/auth/trustagent/trustlet/c;

    invoke-interface {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/c;->a()V

    goto :goto_0

    .line 70
    :cond_2
    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    :cond_3
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 76
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    .line 77
    if-eq v1, v3, :cond_4

    .line 78
    const-string v2, "Coffee - BluetoothConnectionTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Connection chnaged to a not yet bonded paired Bluetooth device  address: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bond state: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/b;->a:Lcom/google/android/gms/auth/trustagent/trustlet/a;

    iget-object v0, v0, Lcom/google/android/gms/auth/trustagent/trustlet/a;->b:Lcom/google/android/gms/auth/trustagent/trustlet/c;

    invoke-interface {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/c;->a()V

    goto :goto_0
.end method
