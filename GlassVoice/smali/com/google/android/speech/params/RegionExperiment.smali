.class public Lcom/google/android/speech/params/RegionExperiment;
.super Ljava/lang/Object;
.source "RegionExperiment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RegionExperiment"


# instance fields
.field private final mExperimentId:Ljava/lang/String;

.field private final mRegion:Llocation/unified/LocationDescriptorProto$LatLngRect;


# direct methods
.method public constructor <init>(Llocation/unified/LocationDescriptorProto$LatLngRect;Ljava/lang/String;)V
    .locals 0
    .param p1, "region"    # Llocation/unified/LocationDescriptorProto$LatLngRect;
    .param p2, "experimentId"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/android/speech/params/RegionExperiment;->mRegion:Llocation/unified/LocationDescriptorProto$LatLngRect;

    .line 27
    iput-object p2, p0, Lcom/google/android/speech/params/RegionExperiment;->mExperimentId:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public getExperimentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/speech/params/RegionExperiment;->mExperimentId:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Llocation/unified/LocationDescriptorProto$LatLngRect;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/speech/params/RegionExperiment;->mRegion:Llocation/unified/LocationDescriptorProto$LatLngRect;

    return-object v0
.end method

.method public isLocationInsideRegion(Landroid/location/Location;)Z
    .locals 11
    .param p1, "location"    # Landroid/location/Location;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x0

    const-wide v9, 0x416312d000000000L    # 1.0E7

    .line 40
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    mul-double v1, v7, v9

    .line 41
    .local v1, "latE7":D
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    mul-double v3, v7, v9

    .line 42
    .local v3, "lngE7":D
    iget-object v7, p0, Lcom/google/android/speech/params/RegionExperiment;->mRegion:Llocation/unified/LocationDescriptorProto$LatLngRect;

    iget-object v7, v7, Llocation/unified/LocationDescriptorProto$LatLngRect;->hi:Llocation/unified/LocationDescriptorProto$LatLng;

    invoke-virtual {v7}, Llocation/unified/LocationDescriptorProto$LatLng;->getLatitudeE7()I

    move-result v7

    int-to-double v7, v7

    cmpg-double v7, v1, v7

    if-gtz v7, :cond_0

    iget-object v7, p0, Lcom/google/android/speech/params/RegionExperiment;->mRegion:Llocation/unified/LocationDescriptorProto$LatLngRect;

    iget-object v7, v7, Llocation/unified/LocationDescriptorProto$LatLngRect;->hi:Llocation/unified/LocationDescriptorProto$LatLng;

    invoke-virtual {v7}, Llocation/unified/LocationDescriptorProto$LatLng;->getLongitudeE7()I

    move-result v7

    int-to-double v7, v7

    cmpg-double v7, v3, v7

    if-gtz v7, :cond_0

    iget-object v7, p0, Lcom/google/android/speech/params/RegionExperiment;->mRegion:Llocation/unified/LocationDescriptorProto$LatLngRect;

    iget-object v7, v7, Llocation/unified/LocationDescriptorProto$LatLngRect;->lo:Llocation/unified/LocationDescriptorProto$LatLng;

    invoke-virtual {v7}, Llocation/unified/LocationDescriptorProto$LatLng;->getLatitudeE7()I

    move-result v7

    int-to-double v7, v7

    cmpl-double v7, v1, v7

    if-ltz v7, :cond_0

    iget-object v7, p0, Lcom/google/android/speech/params/RegionExperiment;->mRegion:Llocation/unified/LocationDescriptorProto$LatLngRect;

    iget-object v7, v7, Llocation/unified/LocationDescriptorProto$LatLngRect;->lo:Llocation/unified/LocationDescriptorProto$LatLng;

    invoke-virtual {v7}, Llocation/unified/LocationDescriptorProto$LatLng;->getLongitudeE7()I

    move-result v7

    int-to-double v7, v7

    cmpl-double v7, v3, v7

    if-ltz v7, :cond_0

    const/4 v0, 0x1

    .line 47
    .local v0, "inside":Z
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "RegionExperiment"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .local v5, "message":Ljava/lang/StringBuilder;
    const-string v7, "isLocationInsideRegion() : Region = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-object v7, p0, Lcom/google/android/speech/params/RegionExperiment;->mRegion:Llocation/unified/LocationDescriptorProto$LatLngRect;

    invoke-static {v7}, Lcom/google/android/shared/util/ProtoUtils;->toString(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const-string v7, " : Location = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    new-instance v7, Landroid/util/StringBuilderPrinter;

    invoke-direct {v7, v5}, Landroid/util/StringBuilderPrinter;-><init>(Ljava/lang/StringBuilder;)V

    const-string v8, " : Location = "

    invoke-virtual {p1, v7, v8}, Landroid/location/Location;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 52
    const-string v7, " : Inside = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 54
    const-string v7, "RegionExperiment"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v7, v8, v6}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 56
    return v0

    .end local v0    # "inside":Z
    .end local v5    # "message":Ljava/lang/StringBuilder;
    :cond_0
    move v0, v6

    .line 42
    goto :goto_0
.end method
