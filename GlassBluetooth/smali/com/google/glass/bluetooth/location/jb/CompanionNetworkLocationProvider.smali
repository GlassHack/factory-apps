.class public Lcom/google/glass/bluetooth/location/jb/CompanionNetworkLocationProvider;
.super Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;
.source "CompanionNetworkLocationProvider.java"


# static fields
.field private static final COMPANION_NETWORK_LOCATION_PROVIDER:Ljava/lang/String; = "remote_network"

.field private static final properties:Lcom/android/location/provider/ProviderPropertiesUnbundled;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 21
    const/4 v8, 0x2

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v0

    invoke-static/range {v0 .. v8}, Lcom/android/location/provider/ProviderPropertiesUnbundled;->create(ZZZZZZZII)Lcom/android/location/provider/ProviderPropertiesUnbundled;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/location/jb/CompanionNetworkLocationProvider;->properties:Lcom/android/location/provider/ProviderPropertiesUnbundled;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    const-string v0, "remote_network"

    const-string v1, "network"

    sget-object v2, Lcom/google/glass/bluetooth/location/jb/CompanionNetworkLocationProvider;->properties:Lcom/android/location/provider/ProviderPropertiesUnbundled;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/location/provider/ProviderPropertiesUnbundled;)V

    .line 39
    return-void
.end method

.method constructor <init>(Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;)V
    .locals 3
    .param p1, "controller"    # Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;

    .prologue
    .line 42
    const-string v0, "remote_network"

    const-string v1, "network"

    sget-object v2, Lcom/google/glass/bluetooth/location/jb/CompanionNetworkLocationProvider;->properties:Lcom/android/location/provider/ProviderPropertiesUnbundled;

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;Lcom/android/location/provider/ProviderPropertiesUnbundled;)V

    .line 44
    return-void
.end method
