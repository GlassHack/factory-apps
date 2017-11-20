.class public Lcom/google/glass/maps/BaseNavigationUserInterface;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/maps/NavigationUserInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearRoute()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public listenForGuardPhraseIfNeeded()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public moveCameraOverhead(Lcom/google/android/maps/driveabout/model/am;)V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public moveCameraToFollow(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public requestExit()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public setCurrentLocation(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public setKeepScreenOn(Z)V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public setOrientation(Lcom/google/android/maps/driveabout/location/z;)V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public setRoutePolyline(Lcom/google/android/maps/driveabout/model/ag;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public setTrafficIncidents(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public setTravelModeIcon(I)V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public showDestination(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public showDestinations([Lcom/google/android/maps/driveabout/nav/ao;)V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method public showDirections(Lcom/google/glass/maps/directions/Trip;I)V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public showDistanceToStep(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public showFatalError(Ljava/lang/CharSequence;Z)V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public showLoadingMessage(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 22
    return-void
.end method

.method public showReroutingMessage(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 31
    return-void
.end method

.method public showRouteOverview()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public showRoutes([Lcom/google/android/maps/driveabout/nav/w;)V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public showStatus(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public showStepInfo(Lcom/google/glass/maps/IconDescriptor;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method public showTrips([Lcom/google/glass/maps/directions/Trip;)V
    .locals 0

    .prologue
    .line 43
    return-void
.end method
