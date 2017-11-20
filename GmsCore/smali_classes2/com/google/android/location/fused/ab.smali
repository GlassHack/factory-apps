.class final Lcom/google/android/location/fused/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field final synthetic a:Lcom/google/android/location/fused/w;


# direct methods
.method constructor <init>(Lcom/google/android/location/fused/w;)V
    .locals 0

    .prologue
    .line 882
    iput-object p1, p0, Lcom/google/android/location/fused/ab;->a:Lcom/google/android/location/fused/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 2

    .prologue
    .line 888
    const/16 v0, 0x13

    invoke-static {v0}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "network"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 890
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/fused/ab;->a:Lcom/google/android/location/fused/w;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/location/fused/w;->a(Landroid/location/Location;Lcom/google/h/a/b/a/c;)V

    .line 892
    :cond_1
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 902
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 897
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 905
    return-void
.end method
