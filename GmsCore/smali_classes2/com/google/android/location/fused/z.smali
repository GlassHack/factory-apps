.class final Lcom/google/android/location/fused/z;
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
    .line 824
    iput-object p1, p0, Lcom/google/android/location/fused/z;->a:Lcom/google/android/location/fused/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 2

    .prologue
    .line 827
    iget-object v0, p0, Lcom/google/android/location/fused/z;->a:Lcom/google/android/location/fused/w;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/location/fused/w;->a(Landroid/location/Location;Lcom/google/h/a/b/a/c;)V

    .line 828
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 838
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 833
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 841
    return-void
.end method
