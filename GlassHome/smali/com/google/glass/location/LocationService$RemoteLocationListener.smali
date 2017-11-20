.class Lcom/google/glass/location/LocationService$RemoteLocationListener;
.super Ljava/lang/Object;
.source "LocationService.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/location/LocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/location/LocationService;


# direct methods
.method private constructor <init>(Lcom/google/glass/location/LocationService;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/glass/location/LocationService$RemoteLocationListener;->this$0:Lcom/google/glass/location/LocationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/location/LocationService;Lcom/google/glass/location/LocationService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/location/LocationService;
    .param p2, "x1"    # Lcom/google/glass/location/LocationService$1;

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/google/glass/location/LocationService$RemoteLocationListener;-><init>(Lcom/google/glass/location/LocationService;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/glass/location/LocationService$RemoteLocationListener;->this$0:Lcom/google/glass/location/LocationService;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/google/glass/location/LocationService;->access$000(Lcom/google/glass/location/LocationService;Landroid/location/Location;Z)V

    .line 122
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 128
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 126
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 130
    return-void
.end method
