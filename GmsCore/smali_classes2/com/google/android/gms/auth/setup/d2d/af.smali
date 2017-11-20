.class final Lcom/google/android/gms/auth/setup/d2d/af;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/setup/d2d/ae;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/setup/d2d/ae;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/android/gms/auth/setup/d2d/af;->a:Lcom/google/android/gms/auth/setup/d2d/ae;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/af;->a:Lcom/google/android/gms/auth/setup/d2d/ae;

    iget-object v0, v0, Lcom/google/android/gms/auth/setup/d2d/ae;->a:Lcom/google/android/gms/auth/setup/d2d/ac;

    invoke-static {v0}, Lcom/google/android/gms/auth/setup/d2d/ac;->a(Lcom/google/android/gms/auth/setup/d2d/ac;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/af;->a:Lcom/google/android/gms/auth/setup/d2d/ae;

    iget-object v0, v0, Lcom/google/android/gms/auth/setup/d2d/ae;->a:Lcom/google/android/gms/auth/setup/d2d/ac;

    invoke-static {v0}, Lcom/google/android/gms/auth/setup/d2d/ac;->b(Lcom/google/android/gms/auth/setup/d2d/ac;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :cond_0
    monitor-exit p0

    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
