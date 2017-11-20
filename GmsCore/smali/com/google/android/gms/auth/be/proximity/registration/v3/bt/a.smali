.class public final Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/a;->a:Landroid/content/Context;

    .line 93
    invoke-static {p2}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/a;->b:Ljava/lang/String;

    .line 94
    invoke-static {p3}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/a;->c:Ljava/lang/String;

    .line 95
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 99
    invoke-static {}, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothStartService;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received intent: %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 102
    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/a;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 105
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/a;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 110
    :cond_0
    return-void
.end method
