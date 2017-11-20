.class final Lcom/google/android/gms/wearable/node/bluetooth/f;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/google/android/gms/wearable/node/bluetooth/f;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;B)V
    .locals 0

    .prologue
    .line 319
    invoke-direct {p0, p1}, Lcom/google/android/gms/wearable/node/bluetooth/f;-><init>(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;)V

    return-void
.end method

.method public static a()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 331
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 332
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 333
    return-object v0
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 322
    const-string v0, "WearableBluetooth"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    const-string v0, "WearableBluetooth"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Receiver onReceive "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/f;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;

    invoke-static {v0}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;->c(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;)V

    .line 328
    :cond_1
    return-void
.end method
