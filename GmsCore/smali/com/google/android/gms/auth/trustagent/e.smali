.class final Lcom/google/android/gms/auth/trustagent/e;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/trustagent/d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/trustagent/d;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/e;->a:Lcom/google/android/gms/auth/trustagent/d;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v9, 0x1

    .line 52
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 54
    const-string v1, "android.bluetooth.device.extra.BOND_STATE"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 55
    if-nez v0, :cond_1

    .line 56
    const-string v0, "Coffee - BluetoothLure"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No Bluetooth device in broadcast "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 60
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/e;->a:Lcom/google/android/gms/auth/trustagent/d;

    iget-object v2, v1, Lcom/google/android/gms/auth/trustagent/d;->a:Landroid/content/Context;

    const v3, 0x7f100067

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/auth/trustagent/d;->a:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    iget-object v5, v1, Lcom/google/android/gms/auth/trustagent/d;->a:Landroid/content/Context;

    const-class v6, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentTrustedDevicesSettings;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v3, v4, v2}, Lcom/google/android/gms/auth/trustagent/ConfirmUserCredentialAndStartActivity;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/gms/auth/trustagent/d;->a:Landroid/content/Context;

    invoke-static {v4, v9, v3, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.google.android.gms.auth.trustagent.ADD_DEVICE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/google/android/gms/auth/trustagent/d;->a:Landroid/content/Context;

    const-class v6, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentTrustedDevicesSettings;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v5, "bluetooth_device_address"

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    invoke-virtual {v5}, Ljava/util/Random;->nextInt()I

    move-result v5

    const-string v6, "com.google.android.gms.auth.TrustAgentIdOfNotificationToClose"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v6, v1, Lcom/google/android/gms/auth/trustagent/d;->a:Landroid/content/Context;

    invoke-static {v6, v4, v2}, Lcom/google/android/gms/auth/trustagent/ConfirmUserCredentialAndStartActivity;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object v4, v1, Lcom/google/android/gms/auth/trustagent/d;->a:Landroid/content/Context;

    const/4 v6, 0x2

    invoke-static {v4, v6, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v4, Landroid/support/v4/app/bb;

    iget-object v6, v1, Lcom/google/android/gms/auth/trustagent/d;->a:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/support/v4/app/bb;-><init>(Landroid/content/Context;)V

    iget-object v6, v1, Lcom/google/android/gms/auth/trustagent/d;->a:Landroid/content/Context;

    const v7, 0x7f10006a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/support/v4/app/bb;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/bb;

    move-result-object v4

    iget-object v6, v1, Lcom/google/android/gms/auth/trustagent/d;->a:Landroid/content/Context;

    const v7, 0x7f100069

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/support/v4/app/bb;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/bb;

    move-result-object v4

    new-instance v6, Landroid/support/v4/app/ba;

    invoke-direct {v6}, Landroid/support/v4/app/ba;-><init>()V

    iget-object v7, v1, Lcom/google/android/gms/auth/trustagent/d;->a:Landroid/content/Context;

    const v8, 0x7f100068

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/at;->a(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/support/v4/app/ba;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/ba;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/support/v4/app/bb;->a(Landroid/support/v4/app/bm;)Landroid/support/v4/app/bb;

    move-result-object v0

    const v4, 0x7f02006f

    invoke-virtual {v0, v4}, Landroid/support/v4/app/bb;->a(I)Landroid/support/v4/app/bb;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/bb;->b()Landroid/support/v4/app/bb;

    move-result-object v0

    iput-object v3, v0, Landroid/support/v4/app/bb;->d:Landroid/app/PendingIntent;

    iget-object v3, v1, Lcom/google/android/gms/auth/trustagent/d;->a:Landroid/content/Context;

    const v4, 0x7f100066

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Landroid/support/v4/app/bb;->t:Ljava/util/ArrayList;

    new-instance v6, Landroid/support/v4/app/ax;

    const v7, 0x7f02006c

    invoke-direct {v6, v7, v3, v2}, Landroid/support/v4/app/ax;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/support/v4/app/bb;->c()Landroid/app/Notification;

    move-result-object v2

    iget-object v0, v1, Lcom/google/android/gms/auth/trustagent/d;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method
