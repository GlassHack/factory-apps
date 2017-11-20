.class public Lcom/google/android/gms/auth/be/proximity/authorization/bt/AuthorizationBluetoothService$BluetoothStateChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 209
    invoke-static {}, Lcom/google/android/gms/auth/be/proximity/authorization/bt/AuthorizationBluetoothService;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received Bluetooth event: %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/high16 v1, -0x80000000

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 214
    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 215
    invoke-static {p1}, Lcom/google/android/gms/auth/be/proximity/authorization/bt/b;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/be/proximity/authorization/bt/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/proximity/authorization/bt/b;->a()V

    .line 218
    :cond_0
    return-void
.end method
