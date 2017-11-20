.class public Lcom/google/android/gms/wearable/node/emulator/NetworkConnectionService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/android/gms/wearable/node/emulator/a;

.field private static final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/node/emulator/NetworkConnectionService;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 79
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 48
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/node/emulator/NetworkConnectionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/wearable/service/y;->a(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 70
    sget-object v1, Lcom/google/android/gms/wearable/node/emulator/NetworkConnectionService;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 71
    :try_start_0
    sget-object v0, Lcom/google/android/gms/wearable/node/emulator/NetworkConnectionService;->a:Lcom/google/android/gms/wearable/node/emulator/a;

    if-eqz v0, :cond_0

    .line 72
    sget-object v0, Lcom/google/android/gms/wearable/node/emulator/NetworkConnectionService;->a:Lcom/google/android/gms/wearable/node/emulator/a;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/emulator/a;->a()V

    .line 73
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/wearable/node/emulator/NetworkConnectionService;->a:Lcom/google/android/gms/wearable/node/emulator/a;

    .line 75
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 77
    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 58
    const-string v0, "run_as_server"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 59
    sget-object v1, Lcom/google/android/gms/wearable/node/emulator/NetworkConnectionService;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 60
    :try_start_0
    sget-object v2, Lcom/google/android/gms/wearable/node/emulator/NetworkConnectionService;->a:Lcom/google/android/gms/wearable/node/emulator/a;

    if-nez v2, :cond_0

    .line 61
    new-instance v2, Lcom/google/android/gms/wearable/node/emulator/a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/google/android/gms/wearable/node/emulator/a;-><init>(Lcom/google/android/gms/wearable/node/emulator/NetworkConnectionService;ZB)V

    .line 62
    sput-object v2, Lcom/google/android/gms/wearable/node/emulator/NetworkConnectionService;->a:Lcom/google/android/gms/wearable/node/emulator/a;

    invoke-virtual {v2}, Lcom/google/android/gms/wearable/node/emulator/a;->start()V

    .line 64
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    const/4 v0, 0x2

    return v0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
