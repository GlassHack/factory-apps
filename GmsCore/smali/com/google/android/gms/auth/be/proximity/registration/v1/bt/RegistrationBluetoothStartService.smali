.class public Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothStartService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothStartService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothStartService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothStartService;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static final a(Landroid/content/Context;Lcom/google/android/gms/auth/be/proximity/registration/v1/RegistrationInfo;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 30
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothStartService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    const-string v1, "registration_info"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 32
    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothStartService;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 41
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothStartService;->a:Ljava/lang/String;

    const-string v1, "Received onHandleIntent() call: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const-string v0, "registration_info"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/be/proximity/registration/v1/RegistrationInfo;

    .line 45
    if-nez v0, :cond_0

    .line 46
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothStartService;->a:Ljava/lang/String;

    const-string v1, "RegistrationBluetoothService started with empty registrationInfo."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-static {}, Lcom/google/android/gms/auth/testability/android/bluetooth/b;->a()Lcom/google/android/gms/auth/testability/android/bluetooth/a;

    move-result-object v1

    .line 51
    if-nez v1, :cond_1

    .line 52
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothStartService;->a:Ljava/lang/String;

    const-string v1, "Bluetooth is not supported on this device."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 56
    :cond_1
    iget-object v2, v1, Lcom/google/android/gms/auth/testability/android/bluetooth/a;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 57
    invoke-static {p0, v0}, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothService;->a(Landroid/content/Context;Lcom/google/android/gms/auth/be/proximity/registration/v1/RegistrationInfo;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothStartService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothStartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/a;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/a;-><init>(Landroid/content/Context;Lcom/google/android/gms/auth/be/proximity/registration/v1/RegistrationInfo;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 62
    iget-object v0, v1, Lcom/google/android/gms/auth/testability/android/bluetooth/a;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_0
.end method
