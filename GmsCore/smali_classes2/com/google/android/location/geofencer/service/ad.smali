.class final Lcom/google/android/location/geofencer/service/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/location/l;


# instance fields
.field final synthetic a:Lcom/google/android/location/geofencer/service/ac;


# direct methods
.method constructor <init>(Lcom/google/android/location/geofencer/service/ac;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/google/android/location/geofencer/service/ad;->a:Lcom/google/android/location/geofencer/service/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/location/Location;)V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/ad;->a:Lcom/google/android/location/geofencer/service/ac;

    iget-boolean v0, v0, Lcom/google/android/location/geofencer/service/ac;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "mock"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    const-string v0, "LocationDetector"

    const-string v1, "Non-mock locations are ignored in testing."

    invoke-static {v0, v1}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :goto_0
    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/ad;->a:Lcom/google/android/location/geofencer/service/ac;

    iget-object v0, v0, Lcom/google/android/location/geofencer/service/ac;->b:Lcom/google/android/location/geofencer/service/k;

    invoke-virtual {v0, p1}, Lcom/google/android/location/geofencer/service/k;->a(Landroid/location/Location;)V

    goto :goto_0
.end method
