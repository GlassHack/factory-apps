.class final Lcom/google/android/gms/auth/setup/d2d/j;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/setup/d2d/b/d;

.field final synthetic b:Ljava/util/concurrent/Future;

.field final synthetic c:Lcom/google/android/gms/auth/setup/d2d/SourceActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/setup/d2d/SourceActivity;Lcom/google/android/gms/auth/setup/d2d/b/d;Ljava/util/concurrent/Future;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/google/android/gms/auth/setup/d2d/j;->c:Lcom/google/android/gms/auth/setup/d2d/SourceActivity;

    iput-object p2, p0, Lcom/google/android/gms/auth/setup/d2d/j;->a:Lcom/google/android/gms/auth/setup/d2d/b/d;

    iput-object p3, p0, Lcom/google/android/gms/auth/setup/d2d/j;->b:Ljava/util/concurrent/Future;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/j;->c:Lcom/google/android/gms/auth/setup/d2d/SourceActivity;

    invoke-static {v0}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->a(Lcom/google/android/gms/auth/setup/d2d/SourceActivity;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 326
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/j;->c:Lcom/google/android/gms/auth/setup/d2d/SourceActivity;

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/j;->a:Lcom/google/android/gms/auth/setup/d2d/b/d;

    iget-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/j;->b:Ljava/util/concurrent/Future;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->b(Lcom/google/android/gms/auth/setup/d2d/SourceActivity;Lcom/google/android/gms/auth/setup/d2d/b/d;Ljava/util/concurrent/Future;)V

    .line 328
    :cond_0
    return-void
.end method
