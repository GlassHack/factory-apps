.class public final Lcom/google/android/location/geofencer/service/aa;
.super Lcom/android/location/provider/GeofenceProvider;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/geofencer/service/ab;


# static fields
.field private static final a:Lcom/google/android/location/geofencer/service/aa;


# instance fields
.field private final b:Ljava/lang/Object;

.field private c:Lcom/google/android/location/geofencer/service/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/google/android/location/geofencer/service/aa;

    invoke-direct {v0}, Lcom/google/android/location/geofencer/service/aa;-><init>()V

    sput-object v0, Lcom/google/android/location/geofencer/service/aa;->a:Lcom/google/android/location/geofencer/service/aa;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/location/provider/GeofenceProvider;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/geofencer/service/aa;->b:Ljava/lang/Object;

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/geofencer/service/aa;->c:Lcom/google/android/location/geofencer/service/d;

    .line 35
    return-void
.end method

.method public static a()Lcom/google/android/location/geofencer/service/aa;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/android/location/geofencer/service/aa;->a:Lcom/google/android/location/geofencer/service/aa;

    return-object v0
.end method


# virtual methods
.method public final b()Lcom/google/android/location/geofencer/service/d;
    .locals 2

    .prologue
    .line 42
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/aa;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/aa;->c:Lcom/google/android/location/geofencer/service/d;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final onGeofenceHardwareChange(Landroid/hardware/location/GeofenceHardware;)V
    .locals 4

    .prologue
    .line 50
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 51
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 52
    const-string v1, "GmsCoreGeofenceProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ignoring calls from non-system server. Uid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/location/geofencer/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/aa;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 56
    :try_start_0
    sget-boolean v0, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v0, :cond_1

    .line 57
    const-string v0, "GmsCoreGeofenceProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Got hardware geofence service: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_1
    invoke-static {}, Lcom/google/android/location/geofencer/service/k;->e()Lcom/google/android/location/geofencer/service/k;

    move-result-object v2

    if-nez p1, :cond_3

    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/google/android/location/geofencer/service/aa;->c:Lcom/google/android/location/geofencer/service/d;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/google/android/location/geofencer/service/k;->h()V

    .line 61
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 59
    :cond_3
    :try_start_1
    new-instance v0, Lcom/google/android/location/geofencer/service/d;

    invoke-direct {v0, p1}, Lcom/google/android/location/geofencer/service/d;-><init>(Landroid/hardware/location/GeofenceHardware;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
