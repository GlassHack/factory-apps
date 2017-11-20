.class public final Lcom/google/android/location/geofencer/service/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/hardware/location/GeofenceHardware;


# direct methods
.method public constructor <init>(Landroid/hardware/location/GeofenceHardware;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/android/location/geofencer/service/d;->a:Landroid/hardware/location/GeofenceHardware;

    .line 26
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/d;->a:Landroid/hardware/location/GeofenceHardware;

    invoke-virtual {v0, p1}, Landroid/hardware/location/GeofenceHardware;->getStatusOfMonitoringType(I)I

    move-result v0

    return v0
.end method
