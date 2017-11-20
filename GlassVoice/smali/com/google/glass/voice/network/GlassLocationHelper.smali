.class public Lcom/google/glass/voice/network/GlassLocationHelper;
.super Ljava/lang/Object;
.source "GlassLocationHelper.java"

# interfaces
.implements Lcom/google/android/speech/helper/SpeechLocationHelper;


# instance fields
.field private final locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;


# direct methods
.method public constructor <init>(Lcom/google/glass/location/LocationManagerHelper;)V
    .locals 0
    .param p1, "locationManagerHelper"    # Lcom/google/glass/location/LocationManagerHelper;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/google/glass/voice/network/GlassLocationHelper;->locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

    .line 15
    return-void
.end method


# virtual methods
.method public getAndroidLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/glass/voice/network/GlassLocationHelper;->locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

    invoke-virtual {v0}, Lcom/google/glass/location/LocationManagerHelper;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getXGeoLocation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 24
    iget-object v1, p0, Lcom/google/glass/voice/network/GlassLocationHelper;->locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

    invoke-virtual {v1}, Lcom/google/glass/location/LocationManagerHelper;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v0

    .line 25
    .local v0, "location":Landroid/location/Location;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/glass/voice/network/XGeoLocationHelper;->getXGeoLocation(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public shouldSendLocation()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method
