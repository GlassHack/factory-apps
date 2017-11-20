.class public final Lcom/google/android/location/fused/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/os/HandlerThread;

.field private static b:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FlpThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/location/fused/ah;->a:Landroid/os/HandlerThread;

    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/location/fused/ah;->b:Landroid/os/PowerManager$WakeLock;

    .line 20
    sget-object v0, Lcom/google/android/location/fused/ah;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 21
    return-void
.end method

.method public static a()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/google/android/location/fused/ah;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;
    .locals 4

    .prologue
    .line 27
    sget-object v1, Lcom/google/android/location/fused/ah;->a:Landroid/os/HandlerThread;

    monitor-enter v1

    .line 28
    :try_start_0
    sget-object v0, Lcom/google/android/location/fused/ah;->b:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 29
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 31
    const/4 v2, 0x1

    const-string v3, "GCoreFlp"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 32
    sput-object v0, Lcom/google/android/location/fused/ah;->b:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 35
    :cond_0
    sget-object v0, Lcom/google/android/location/fused/ah;->b:Landroid/os/PowerManager$WakeLock;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
