.class public final Lcom/google/android/location/geofencer/service/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/geofencer/service/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/location/geofencer/service/d;)V
    .locals 0

    .prologue
    .line 20
    return-void
.end method

.method public final a(Ljava/io/PrintWriter;)V
    .locals 1

    .prologue
    .line 34
    const-string v0, "Dump of GPS geofencing:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 35
    const-string v0, "\n    Class is NullBlockingGeofenceHardware."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 36
    const-string v0, "\n    Supported=false available=false"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Ljava/util/List;Landroid/location/Location;)Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method
