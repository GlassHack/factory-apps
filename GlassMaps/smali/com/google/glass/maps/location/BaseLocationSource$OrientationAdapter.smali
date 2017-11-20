.class Lcom/google/glass/maps/location/BaseLocationSource$OrientationAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/maps/location/GlassOrientationProvider$Listener;


# instance fields
.field private compassAccuracyListener:Lcom/google/android/maps/driveabout/location/q;

.field private locationListener:Lcom/google/android/maps/driveabout/location/b;

.field final synthetic this$0:Lcom/google/glass/maps/location/BaseLocationSource;


# direct methods
.method private constructor <init>(Lcom/google/glass/maps/location/BaseLocationSource;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/glass/maps/location/BaseLocationSource$OrientationAdapter;->this$0:Lcom/google/glass/maps/location/BaseLocationSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/maps/location/BaseLocationSource;Lcom/google/glass/maps/location/BaseLocationSource$1;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/google/glass/maps/location/BaseLocationSource$OrientationAdapter;-><init>(Lcom/google/glass/maps/location/BaseLocationSource;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(I)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/glass/maps/location/BaseLocationSource$OrientationAdapter;->compassAccuracyListener:Lcom/google/android/maps/driveabout/location/q;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/google/glass/maps/location/BaseLocationSource$OrientationAdapter;->compassAccuracyListener:Lcom/google/android/maps/driveabout/location/q;

    .line 76
    :cond_0
    return-void
.end method

.method public onOrientationChanged(JFF)V
    .locals 7

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/glass/maps/location/BaseLocationSource$OrientationAdapter;->this$0:Lcom/google/glass/maps/location/BaseLocationSource;

    invoke-static {v0, p3}, Lcom/google/glass/maps/location/BaseLocationSource;->access$102(Lcom/google/glass/maps/location/BaseLocationSource;F)F

    .line 67
    iget-object v6, p0, Lcom/google/glass/maps/location/BaseLocationSource$OrientationAdapter;->locationListener:Lcom/google/android/maps/driveabout/location/b;

    new-instance v0, Lcom/google/android/maps/driveabout/location/z;

    const-string v1, "android_orientation"

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/location/z;-><init>(Ljava/lang/String;JFF)V

    invoke-interface {v6, v0}, Lcom/google/android/maps/driveabout/location/b;->onOrientationChanged(Lcom/google/android/maps/driveabout/location/z;)V

    .line 69
    return-void
.end method

.method setCompassAccuracyListener(Lcom/google/android/maps/driveabout/location/q;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/glass/maps/location/BaseLocationSource$OrientationAdapter;->compassAccuracyListener:Lcom/google/android/maps/driveabout/location/q;

    .line 84
    return-void
.end method

.method setListener(Lcom/google/android/maps/driveabout/location/b;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/glass/maps/location/BaseLocationSource$OrientationAdapter;->locationListener:Lcom/google/android/maps/driveabout/location/b;

    .line 80
    return-void
.end method
