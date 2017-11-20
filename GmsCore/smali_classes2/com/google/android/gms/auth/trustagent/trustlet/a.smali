.class public final Lcom/google/android/gms/auth/trustagent/trustlet/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/google/android/gms/auth/trustagent/trustlet/c;

.field c:Landroid/content/BroadcastReceiver;

.field private d:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/auth/trustagent/trustlet/c;)V
    .locals 3

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/a;->a:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/google/android/gms/auth/trustagent/trustlet/a;->b:Lcom/google/android/gms/auth/trustagent/trustlet/c;

    .line 47
    :try_start_0
    const-class v0, Landroid/bluetooth/BluetoothDevice;

    const-string v1, "isConnected"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/a;->d:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    new-instance v0, Lcom/google/android/gms/auth/trustagent/trustlet/b;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/trustagent/trustlet/b;-><init>(Lcom/google/android/gms/auth/trustagent/trustlet/a;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/a;->c:Landroid/content/BroadcastReceiver;

    .line 85
    return-void

    .line 50
    :catch_0
    move-exception v0

    const-string v0, "Coffee - BluetoothConnectionTracker"

    const-string v1, "********************************************************************"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const-string v0, "Coffee - BluetoothConnectionTracker"

    const-string v1, "Failed to find BluetoothDevice.isConnected private API."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const-string v0, "Coffee - BluetoothConnectionTracker"

    const-string v1, "Are you running a recent enough version of L master?"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const-string v0, "Coffee - BluetoothConnectionTracker"

    const-string v1, "BLUETOOTH UNLOCK WILL NOT WORK!."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const-string v0, "Coffee - BluetoothConnectionTracker"

    const-string v1, "********************************************************************"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 99
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/a;->d:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    move v0, v1

    .line 104
    :goto_0
    return v0

    .line 101
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/a;->d:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    :goto_1
    const-string v2, "Coffee - BluetoothConnectionTracker"

    const-string v3, "Error calling BluetoothDevice.isConnected()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 104
    goto :goto_0

    .line 102
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method
