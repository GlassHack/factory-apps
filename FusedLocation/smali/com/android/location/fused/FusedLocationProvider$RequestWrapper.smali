.class Lcom/android/location/fused/FusedLocationProvider$RequestWrapper;
.super Ljava/lang/Object;
.source "FusedLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/location/fused/FusedLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestWrapper"
.end annotation


# instance fields
.field public request:Lcom/android/location/provider/ProviderRequestUnbundled;

.field public source:Landroid/os/WorkSource;


# direct methods
.method public constructor <init>(Lcom/android/location/provider/ProviderRequestUnbundled;Landroid/os/WorkSource;)V
    .locals 0
    .param p1, "request"    # Lcom/android/location/provider/ProviderRequestUnbundled;
    .param p2, "source"    # Landroid/os/WorkSource;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/location/fused/FusedLocationProvider$RequestWrapper;->request:Lcom/android/location/provider/ProviderRequestUnbundled;

    .line 59
    iput-object p2, p0, Lcom/android/location/fused/FusedLocationProvider$RequestWrapper;->source:Landroid/os/WorkSource;

    .line 60
    return-void
.end method
