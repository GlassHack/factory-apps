.class public Lcom/google/glass/bluetooth/location/jb/CompanionFusedHighAccuracyProvider;
.super Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;
.source "CompanionFusedHighAccuracyProvider.java"


# static fields
.field static final COMPANION_FUSED_HIGH_ACCURACY_LOCATION_PROVIDER:Ljava/lang/String; = "remote_fused_high_accuracy"

.field private static final properties:Lcom/android/location/provider/ProviderPropertiesUnbundled;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 30
    const/4 v7, 0x2

    move v2, v1

    move v3, v1

    move v4, v0

    move v5, v0

    move v6, v0

    move v8, v0

    invoke-static/range {v0 .. v8}, Lcom/android/location/provider/ProviderPropertiesUnbundled;->create(ZZZZZZZII)Lcom/android/location/provider/ProviderPropertiesUnbundled;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/location/jb/CompanionFusedHighAccuracyProvider;->properties:Lcom/android/location/provider/ProviderPropertiesUnbundled;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const-string v0, "remote_fused_high_accuracy"

    const-string v1, "fused_high_accuracy"

    sget-object v2, Lcom/google/glass/bluetooth/location/jb/CompanionFusedHighAccuracyProvider;->properties:Lcom/android/location/provider/ProviderPropertiesUnbundled;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/location/provider/ProviderPropertiesUnbundled;)V

    .line 48
    return-void
.end method

.method constructor <init>(Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;)V
    .locals 3
    .param p1, "controller"    # Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 52
    const-string v0, "remote_fused_high_accuracy"

    const-string v1, "fused_high_accuracy"

    sget-object v2, Lcom/google/glass/bluetooth/location/jb/CompanionFusedHighAccuracyProvider;->properties:Lcom/android/location/provider/ProviderPropertiesUnbundled;

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;Lcom/android/location/provider/ProviderPropertiesUnbundled;)V

    .line 54
    return-void
.end method


# virtual methods
.method protected createLocationRequest(I)Lcom/google/glass/companion/Proto$LocationRequest;
    .locals 2
    .param p1, "requestType"    # I

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->createLocationRequest(I)Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v0

    .line 60
    .local v0, "locationRequest":Lcom/google/glass/companion/Proto$LocationRequest;
    if-nez p1, :cond_0

    .line 61
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/companion/Proto$LocationRequest;->setPriority(I)Lcom/google/glass/companion/Proto$LocationRequest;

    .line 63
    :cond_0
    return-object v0
.end method
