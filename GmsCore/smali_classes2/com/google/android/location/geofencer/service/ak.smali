.class final Lcom/google/android/location/geofencer/service/ak;
.super Landroid/hardware/location/GeofenceHardwareMonitorCallback;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/geofencer/service/ai;


# direct methods
.method constructor <init>(Lcom/google/android/location/geofencer/service/ai;)V
    .locals 0

    .prologue
    .line 526
    iput-object p1, p0, Lcom/google/android/location/geofencer/service/ak;->a:Lcom/google/android/location/geofencer/service/ai;

    invoke-direct {p0}, Landroid/hardware/location/GeofenceHardwareMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMonitoringSystemChange(IZLandroid/location/Location;)V
    .locals 3

    .prologue
    .line 530
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/location/GeofenceHardwareMonitorCallback;->onMonitoringSystemChange(IZLandroid/location/Location;)V

    .line 531
    sget-boolean v0, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v0, :cond_0

    .line 532
    const-string v0, "GeofenceHardware"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onMonitoringSystemChange: monitoringType="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " available="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/ak;->a:Lcom/google/android/location/geofencer/service/ai;

    iget v0, v0, Lcom/google/android/location/geofencer/service/ai;->a:I

    if-ne p1, v0, :cond_1

    .line 536
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/ak;->a:Lcom/google/android/location/geofencer/service/ai;

    iget-object v0, v0, Lcom/google/android/location/geofencer/service/ai;->d:Lcom/google/android/location/geofencer/service/k;

    invoke-virtual {v0, p2}, Lcom/google/android/location/geofencer/service/k;->a(Z)V

    .line 538
    :cond_1
    return-void
.end method
