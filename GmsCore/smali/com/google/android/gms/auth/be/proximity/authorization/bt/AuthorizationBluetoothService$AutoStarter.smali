.class public Lcom/google/android/gms/auth/be/proximity/authorization/bt/AuthorizationBluetoothService$AutoStarter;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 196
    invoke-static {}, Lcom/google/android/gms/auth/be/proximity/authorization/bt/AuthorizationBluetoothService;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received GmsCore event: %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-static {p1}, Lcom/google/android/gms/auth/be/proximity/authorization/bt/b;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/be/proximity/authorization/bt/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/proximity/authorization/bt/b;->a()V

    .line 199
    return-void
.end method
