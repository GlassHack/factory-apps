.class Lcom/google/android/apps/lightcycle/util/LocationProvider$MyLocationListener;
.super Ljava/lang/Object;
.source "LocationProvider.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/util/LocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/util/LocationProvider;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/lightcycle/util/LocationProvider;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/util/LocationProvider$MyLocationListener;->this$0:Lcom/google/android/apps/lightcycle/util/LocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/lightcycle/util/LocationProvider;Lcom/google/android/apps/lightcycle/util/LocationProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/apps/lightcycle/util/LocationProvider;
    .param p2, "x1"    # Lcom/google/android/apps/lightcycle/util/LocationProvider$1;

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/util/LocationProvider$MyLocationListener;-><init>(Lcom/google/android/apps/lightcycle/util/LocationProvider;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/util/LocationProvider$MyLocationListener;->this$0:Lcom/google/android/apps/lightcycle/util/LocationProvider;

    invoke-static {v0, p1}, Lcom/google/android/apps/lightcycle/util/LocationProvider;->access$100(Lcom/google/android/apps/lightcycle/util/LocationProvider;Landroid/location/Location;)V

    .line 155
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 158
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 161
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 164
    return-void
.end method
