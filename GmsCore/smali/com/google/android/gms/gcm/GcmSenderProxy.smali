.class public Lcom/google/android/gms/gcm/GcmSenderProxy;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field static a:J

.field static b:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static a()V
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/google/android/gms/gcm/GcmSenderProxy;->b:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 73
    sget-object v0, Lcom/google/android/gms/gcm/GcmSenderProxy;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 75
    :cond_0
    return-void
.end method

.method static declared-synchronized a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 62
    const-class v1, Lcom/google/android/gms/gcm/GcmSenderProxy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/gcm/GcmSenderProxy;->b:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 63
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 64
    const/4 v2, 0x1

    const-string v3, "GCMSEND"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 65
    sput-object v0, Lcom/google/android/gms/gcm/GcmSenderProxy;->b:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 67
    :cond_0
    sget-object v0, Lcom/google/android/gms/gcm/GcmSenderProxy;->b:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/google/android/gms/gcm/GcmSenderProxy;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit v1

    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 37
    invoke-static {p1}, Lcom/google/android/gms/gcm/GcmService;->d(Landroid/content/Context;)V

    .line 38
    invoke-static {}, Lcom/google/android/gms/gcm/f;->d()I

    move-result v0

    .line 40
    if-nez v0, :cond_1

    .line 41
    const-class v0, Lcom/google/android/gms/gcm/GcmService;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 42
    const-string v0, "com.google.android.gcm.intent.SEND"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-static {p1}, Lcom/google/android/gms/gcm/GcmSenderProxy;->a(Landroid/content/Context;)V

    .line 46
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 59
    :goto_0
    return-void

    .line 48
    :cond_1
    const-string v1, "GOOG.USER_SERIAL"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    const-string v0, "GOOGLE.UAID"

    invoke-static {p1}, Lcom/google/android/gms/gcm/GcmService;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-class v0, Lcom/google/android/gms/gcm/GcmProxyReceiver;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 54
    const/4 v1, 0x0

    move-object v0, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/gcm/f;->a(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;)V

    goto :goto_0
.end method
