.class public final Lcom/google/android/gms/fitness/sensors/a/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/sensors/a/p;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# instance fields
.field final a:Landroid/bluetooth/BluetoothAdapter;

.field final b:Ljava/util/concurrent/ConcurrentHashMap;

.field private final c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/t;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 45
    iput-object p2, p0, Lcom/google/android/gms/fitness/sensors/a/t;->c:Landroid/os/Handler;

    .line 47
    const-string v0, "bluetooth"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 49
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/t;->a:Landroid/bluetooth/BluetoothAdapter;

    .line 50
    return-void
.end method

.method private a(Lcom/google/android/gms/fitness/sensors/a/x;I)V
    .locals 6

    .prologue
    .line 111
    const-string v0, "Starting BLE scan"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 112
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/t;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    .line 114
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/t;->c:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/fitness/sensors/a/w;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/fitness/sensors/a/w;-><init>(Lcom/google/android/gms/fitness/sensors/a/t;Lcom/google/android/gms/fitness/sensors/a/x;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, p2

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 123
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/c/j/a/v;
    .locals 3

    .prologue
    .line 54
    invoke-static {}, Lcom/google/c/j/a/ad;->a()Lcom/google/c/j/a/ad;

    move-result-object v0

    .line 56
    new-instance v1, Lcom/google/android/gms/fitness/sensors/a/u;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/fitness/sensors/a/u;-><init>(Lcom/google/android/gms/fitness/sensors/a/t;Ljava/lang/String;Lcom/google/c/j/a/ad;)V

    const/16 v2, 0xf

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/fitness/sensors/a/t;->a(Lcom/google/android/gms/fitness/sensors/a/x;I)V

    .line 70
    return-object v0
.end method

.method public final a(Lcom/google/android/gms/fitness/request/StartBleScanRequest;)V
    .locals 3

    .prologue
    .line 75
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->a()Lcom/google/android/gms/fitness/request/h;

    move-result-object v0

    .line 76
    new-instance v1, Lcom/google/android/gms/fitness/sensors/a/v;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/fitness/sensors/a/v;-><init>(Lcom/google/android/gms/fitness/sensors/a/t;Lcom/google/android/gms/fitness/request/StartBleScanRequest;Lcom/google/android/gms/fitness/request/h;)V

    .line 98
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->d()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/fitness/sensors/a/t;->a(Lcom/google/android/gms/fitness/sensors/a/x;I)V

    .line 99
    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/a/t;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/request/h;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-void
.end method

.method public final a(Lcom/google/android/gms/fitness/request/h;)V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/t;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lcom/google/android/gms/fitness/request/h;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 105
    if-eqz v0, :cond_0

    .line 106
    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/a/t;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 108
    :cond_0
    return-void
.end method
