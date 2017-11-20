.class public final Lcom/google/android/location/geofencer/service/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/location/geofencer/service/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1}, Lcom/google/android/location/geofencer/a/a;->a(Landroid/content/Context;)V

    .line 33
    invoke-static {p1}, Lcom/google/android/location/geofencer/service/k;->a(Landroid/content/Context;)Lcom/google/android/location/geofencer/service/k;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/geofencer/service/g;->a:Lcom/google/android/location/geofencer/service/k;

    .line 34
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/location/geofencer/service/f;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 55
    const-string v0, "Package name not specified."

    invoke-static {p2, v0}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-static {p2, p1}, Lcom/google/android/location/geofencer/service/am;->a(Ljava/lang/String;Lcom/google/android/location/geofencer/service/f;)Lcom/google/android/location/geofencer/service/am;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/g;->a:Lcom/google/android/location/geofencer/service/k;

    invoke-virtual {v1, v0}, Lcom/google/android/location/geofencer/service/k;->a(Lcom/google/android/location/geofencer/service/am;)V

    .line 59
    return-void
.end method

.method public final a(Ljava/util/List;Landroid/app/PendingIntent;Lcom/google/android/location/geofencer/service/f;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 47
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Geofence list can not be null or empty."

    invoke-static {v0, v1}, Lcom/google/android/d/a/x;->a(ZLjava/lang/Object;)V

    .line 49
    const-string v0, "PendingIntent not specified."

    invoke-static {p2, v0}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v0, "Package name not specified."

    invoke-static {p4, v0}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/g;->a:Lcom/google/android/location/geofencer/service/k;

    invoke-virtual {v0, p1, p3, p2}, Lcom/google/android/location/geofencer/service/k;->a(Ljava/util/List;Lcom/google/android/location/geofencer/service/f;Landroid/app/PendingIntent;)V

    .line 52
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a([Ljava/lang/String;Lcom/google/android/location/geofencer/service/f;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 63
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "geofenceRequestIds can not be null or empty."

    invoke-static {v0, v1}, Lcom/google/android/d/a/x;->a(ZLjava/lang/Object;)V

    .line 65
    const-string v0, "Package name not specified."

    invoke-static {p3, v0}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance v0, Lcom/google/android/location/geofencer/service/am;

    const/4 v1, 0x2

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/geofencer/service/am;-><init>(ILandroid/app/PendingIntent;[Ljava/lang/String;Ljava/lang/String;Lcom/google/android/location/geofencer/service/f;)V

    .line 68
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/g;->a:Lcom/google/android/location/geofencer/service/k;

    invoke-virtual {v1, v0}, Lcom/google/android/location/geofencer/service/k;->a(Lcom/google/android/location/geofencer/service/am;)V

    .line 69
    return-void

    .line 63
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
