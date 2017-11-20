.class public interface abstract Lcom/google/glass/navlib/Navigation;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract enableOrientationUpdates(Z)V
.end method

.method public abstract getAlerter()Lcom/google/glass/navlib/Alerter;
.end method

.method public abstract getDestination()Lcom/google/android/maps/driveabout/nav/ao;
.end method

.method public abstract getLocation()Lcom/google/android/maps/driveabout/location/DriveAboutLocation;
.end method

.method public abstract getNavigationState()Lcom/google/android/maps/driveabout/nav/p;
.end method

.method public abstract getOrientation()Lcom/google/android/maps/driveabout/location/z;
.end method

.method public abstract initialize(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/t;)V
.end method

.method public abstract isRerouting()Z
.end method

.method public abstract isRouteCompleted()Z
.end method

.method public abstract replayEventLog(Lcom/google/android/maps/driveabout/c/v;)V
.end method

.method public abstract setNavigationListener(Lcom/google/glass/navlib/NavigationListener;)V
.end method

.method public abstract startNavigating([Lcom/google/android/maps/driveabout/nav/ao;I)V
.end method

.method public abstract stopNavigating()V
.end method
