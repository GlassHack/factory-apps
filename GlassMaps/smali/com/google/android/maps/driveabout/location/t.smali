.class public interface abstract Lcom/google/android/maps/driveabout/location/t;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z
.end method

.method public abstract getAllProviders()Ljava/util/List;
.end method

.method public abstract getGpsInfo()Lcom/google/android/maps/driveabout/location/r;
.end method

.method public abstract getLastKnownGpsLocation(Lcom/google/glass/location/LocationManagerHelper$FreshLocationPredicate;Lcom/google/glass/location/LocationManagerHelper$LocationComparator;)Landroid/location/Location;
.end method

.method public abstract getLastKnownNetworkLocation(Lcom/google/glass/location/LocationManagerHelper$FreshLocationPredicate;Lcom/google/glass/location/LocationManagerHelper$LocationComparator;)Landroid/location/Location;
.end method

.method public abstract getOrientation()F
.end method

.method public abstract isProviderEnabled(Ljava/lang/String;)Z
.end method

.method public abstract pause()V
.end method

.method public abstract removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V
.end method

.method public abstract removeLocationUpdates(Lcom/google/android/maps/driveabout/location/b;)V
.end method

.method public abstract removeOrientationUpdates()V
.end method

.method public abstract requestGpsLocationUpdates(JFLcom/google/android/maps/driveabout/location/b;)V
.end method

.method public abstract requestNetworkLocationUpdates(JFLcom/google/android/maps/driveabout/location/b;)V
.end method

.method public abstract requestOrientationUpdates(Lcom/google/android/maps/driveabout/location/b;)V
.end method

.method public abstract resume()V
.end method

.method public abstract stopListeningForCompanionPropertiesChange()V
.end method
