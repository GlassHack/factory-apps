.class public interface abstract Lcom/google/glass/maps/NavigationUserInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NO_TRAVEL_MODE:I = -0x1


# virtual methods
.method public abstract clearRoute()V
.end method

.method public abstract listenForGuardPhraseIfNeeded()V
.end method

.method public abstract moveCameraOverhead(Lcom/google/android/maps/driveabout/model/am;)V
.end method

.method public abstract moveCameraToFollow(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V
.end method

.method public abstract requestExit()V
.end method

.method public abstract setCurrentLocation(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V
.end method

.method public abstract setKeepScreenOn(Z)V
.end method

.method public abstract setOrientation(Lcom/google/android/maps/driveabout/location/z;)V
.end method

.method public abstract setRoutePolyline(Lcom/google/android/maps/driveabout/model/ag;Ljava/util/List;)V
.end method

.method public abstract setTrafficIncidents(Ljava/util/List;)V
.end method

.method public abstract setTravelModeIcon(I)V
.end method

.method public abstract showDestination(Ljava/lang/CharSequence;)V
.end method

.method public abstract showDestinations([Lcom/google/android/maps/driveabout/nav/ao;)V
.end method

.method public abstract showDirections(Lcom/google/glass/maps/directions/Trip;I)V
.end method

.method public abstract showDistanceToStep(Ljava/lang/CharSequence;)V
.end method

.method public abstract showFatalError(Ljava/lang/CharSequence;Z)V
.end method

.method public abstract showLoadingMessage(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
.end method

.method public abstract showReroutingMessage(Ljava/lang/CharSequence;)V
.end method

.method public abstract showRouteOverview()V
.end method

.method public abstract showRoutes([Lcom/google/android/maps/driveabout/nav/w;)V
.end method

.method public abstract showStatus(Ljava/lang/CharSequence;)V
.end method

.method public abstract showStepInfo(Lcom/google/glass/maps/IconDescriptor;Ljava/lang/CharSequence;)V
.end method

.method public abstract showTrips([Lcom/google/glass/maps/directions/Trip;)V
.end method
