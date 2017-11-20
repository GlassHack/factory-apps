.class public abstract Lcom/google/glass/maps/location/BaseLocationSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/location/t;


# instance fields
.field private lastKnownBearing:F

.field protected final locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

.field private final orientationAdapter:Lcom/google/glass/maps/location/BaseLocationSource$OrientationAdapter;

.field private final orientationProvider:Lcom/google/glass/maps/location/GlassOrientationProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/location/LocationManagerHelper;)V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/google/glass/maps/location/BaseLocationSource$OrientationAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/maps/location/BaseLocationSource$OrientationAdapter;-><init>(Lcom/google/glass/maps/location/BaseLocationSource;Lcom/google/glass/maps/location/BaseLocationSource$1;)V

    iput-object v0, p0, Lcom/google/glass/maps/location/BaseLocationSource;->orientationAdapter:Lcom/google/glass/maps/location/BaseLocationSource$OrientationAdapter;

    .line 20
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/glass/maps/location/BaseLocationSource;->lastKnownBearing:F

    .line 23
    iput-object p2, p0, Lcom/google/glass/maps/location/BaseLocationSource;->locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

    .line 24
    new-instance v0, Lcom/google/glass/maps/location/GlassOrientationProvider;

    iget-object v1, p0, Lcom/google/glass/maps/location/BaseLocationSource;->orientationAdapter:Lcom/google/glass/maps/location/BaseLocationSource$OrientationAdapter;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/glass/maps/location/GlassOrientationProvider;-><init>(Landroid/content/Context;Lcom/google/glass/location/LocationManagerHelper;Lcom/google/glass/maps/location/GlassOrientationProvider$Listener;)V

    iput-object v0, p0, Lcom/google/glass/maps/location/BaseLocationSource;->orientationProvider:Lcom/google/glass/maps/location/GlassOrientationProvider;

    .line 26
    return-void
.end method

.method static synthetic access$102(Lcom/google/glass/maps/location/BaseLocationSource;F)F
    .locals 0

    .prologue
    .line 16
    iput p1, p0, Lcom/google/glass/maps/location/BaseLocationSource;->lastKnownBearing:F

    return p1
.end method


# virtual methods
.method public getOrientation()F
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/google/glass/maps/location/BaseLocationSource;->lastKnownBearing:F

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/glass/maps/location/BaseLocationSource;->orientationProvider:Lcom/google/glass/maps/location/GlassOrientationProvider;

    invoke-virtual {v0}, Lcom/google/glass/maps/location/GlassOrientationProvider;->suspendOutput()V

    .line 47
    return-void
.end method

.method public removeOrientationUpdates()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/glass/maps/location/BaseLocationSource;->orientationProvider:Lcom/google/glass/maps/location/GlassOrientationProvider;

    invoke-virtual {v0}, Lcom/google/glass/maps/location/GlassOrientationProvider;->stopListening()V

    .line 37
    return-void
.end method

.method public requestOrientationUpdates(Lcom/google/android/maps/driveabout/location/b;)V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/glass/maps/location/BaseLocationSource;->orientationAdapter:Lcom/google/glass/maps/location/BaseLocationSource$OrientationAdapter;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/location/BaseLocationSource$OrientationAdapter;->setListener(Lcom/google/android/maps/driveabout/location/b;)V

    .line 31
    iget-object v0, p0, Lcom/google/glass/maps/location/BaseLocationSource;->orientationProvider:Lcom/google/glass/maps/location/GlassOrientationProvider;

    invoke-virtual {v0}, Lcom/google/glass/maps/location/GlassOrientationProvider;->startListening()V

    .line 32
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/glass/maps/location/BaseLocationSource;->orientationProvider:Lcom/google/glass/maps/location/GlassOrientationProvider;

    invoke-virtual {v0}, Lcom/google/glass/maps/location/GlassOrientationProvider;->unsuspendOutput()V

    .line 52
    return-void
.end method

.method public setCompassAccuracyListener(Lcom/google/android/maps/driveabout/location/q;)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/glass/maps/location/BaseLocationSource;->orientationAdapter:Lcom/google/glass/maps/location/BaseLocationSource$OrientationAdapter;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/location/BaseLocationSource$OrientationAdapter;->setCompassAccuracyListener(Lcom/google/android/maps/driveabout/location/q;)V

    .line 57
    return-void
.end method
