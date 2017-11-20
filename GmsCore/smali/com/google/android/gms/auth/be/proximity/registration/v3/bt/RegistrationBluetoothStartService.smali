.class public Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothStartService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothStartService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothStartService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothStartService;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothStartService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    const-string v1, "account_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    const-string v1, "bluetooth_mac_address"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothStartService;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 47
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothStartService;->a:Ljava/lang/String;

    const-string v1, "Received onHandleIntent() call: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const-string v0, "bluetooth_mac_address"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    if-nez v0, :cond_0

    .line 51
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothStartService;->a:Ljava/lang/String;

    const-string v1, "RegistrationBluetoothService started with empty bluetooth mac address."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_0
    return-void

    .line 55
    :cond_0
    const-string v1, "account_name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    if-nez v1, :cond_1

    .line 57
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothStartService;->a:Ljava/lang/String;

    const-string v1, "RegistrationBluetoothService started with empty account name."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 61
    :cond_1
    invoke-static {}, Lcom/google/android/gms/auth/testability/android/bluetooth/b;->a()Lcom/google/android/gms/auth/testability/android/bluetooth/a;

    move-result-object v2

    .line 62
    if-nez v2, :cond_2

    .line 63
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothStartService;->a:Ljava/lang/String;

    const-string v1, "Bluetooth is not supported on this device."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 67
    :cond_2
    iget-object v3, v2, Lcom/google/android/gms/auth/testability/android/bluetooth/a;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 68
    invoke-static {p0, v1, v0}, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothStartService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 73
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothStartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/a;

    invoke-direct {v4, p0, v1, v0}, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 76
    iget-object v0, v2, Lcom/google/android/gms/auth/testability/android/bluetooth/a;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_0
.end method
