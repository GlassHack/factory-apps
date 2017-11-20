.class public Lcom/google/android/maps/driveabout/location/EventLogLocation;
.super Landroid/location/Location;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 13
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Landroid/location/Location;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 52
    new-instance v0, Lcom/google/android/maps/driveabout/location/EventLogLocation;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/location/EventLogLocation;-><init>(Ljava/lang/String;)V

    .line 54
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 56
    array-length v2, v1

    const/4 v3, 0x6

    if-ge v2, v3, :cond_1

    .line 57
    const/4 v0, 0x0

    .line 78
    :cond_0
    :goto_0
    return-object v0

    .line 66
    :cond_1
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/maps/driveabout/location/EventLogLocation;->setTime(J)V

    .line 67
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/maps/driveabout/location/EventLogLocation;->setLongitude(D)V

    .line 68
    const/4 v2, 0x2

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/maps/driveabout/location/EventLogLocation;->setLatitude(D)V

    .line 69
    const/4 v2, 0x3

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/location/EventLogLocation;->setAccuracy(F)V

    .line 70
    const/4 v2, 0x4

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 71
    cmpl-float v3, v2, v4

    if-ltz v3, :cond_2

    .line 72
    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/location/EventLogLocation;->setBearing(F)V

    .line 74
    :cond_2
    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 75
    cmpl-float v2, v1, v4

    if-ltz v2, :cond_0

    .line 76
    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/location/EventLogLocation;->setSpeed(F)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/location/EventLogLocation;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/location/EventLogLocation;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/location/EventLogLocation;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 33
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/location/EventLogLocation;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 35
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/location/EventLogLocation;->hasBearing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/location/EventLogLocation;->getBearing()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 41
    :goto_0
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/location/EventLogLocation;->hasSpeed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/location/EventLogLocation;->getSpeed()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 48
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 39
    :cond_0
    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 45
    :cond_1
    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
