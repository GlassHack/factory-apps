.class Lcom/google/android/gms/glass/location/GCoreLocationProvider$3;
.super Ljava/lang/Object;
.source "GCoreLocationProvider.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/glass/location/GCoreLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gms/glass/location/GCoreLocationProvider;


# direct methods
.method constructor <init>(Lcom/google/android/gms/glass/location/GCoreLocationProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/gms/glass/location/GCoreLocationProvider;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider$3;->this$0:Lcom/google/android/gms/glass/location/GCoreLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 5
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 171
    invoke-static {}, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "received remote gps: %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    iget-object v0, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider$3;->this$0:Lcom/google/android/gms/glass/location/GCoreLocationProvider;

    invoke-virtual {v0}, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-static {}, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "inject remote gps location into FusionEngine"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    iget-object v0, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider$3;->this$0:Lcom/google/android/gms/glass/location/GCoreLocationProvider;

    invoke-static {v0}, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->access$500(Lcom/google/android/gms/glass/location/GCoreLocationProvider;)Lcom/google/android/gms/location/LocationClient;

    move-result-object v0

    invoke-virtual {v0, p1, v4}, Lcom/google/android/gms/location/LocationClient;->injectLocation(Landroid/location/Location;I)V

    .line 177
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 189
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 185
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 181
    return-void
.end method
