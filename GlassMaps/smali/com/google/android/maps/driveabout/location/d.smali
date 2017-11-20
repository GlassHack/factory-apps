.class public Lcom/google/android/maps/driveabout/location/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/location/b;


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Lcom/google/android/maps/driveabout/location/b;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/android/maps/driveabout/location/d;->a:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/google/android/maps/driveabout/location/d;->b:Lcom/google/android/maps/driveabout/location/b;

    .line 31
    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;-><init>(Landroid/location/Location;)V

    .line 43
    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->setProvider(Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/d;->b:Lcom/google/android/maps/driveabout/location/b;

    invoke-interface {v1, v0}, Lcom/google/android/maps/driveabout/location/b;->onLocationChanged(Landroid/location/Location;)V

    .line 45
    return-void
.end method

.method public onOrientationChanged(Lcom/google/android/maps/driveabout/location/z;)V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 56
    return-void
.end method
