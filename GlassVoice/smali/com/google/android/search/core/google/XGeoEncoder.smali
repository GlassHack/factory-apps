.class public Lcom/google/android/search/core/google/XGeoEncoder;
.super Ljava/lang/Object;
.source "XGeoEncoder.java"


# static fields
.field private static final E7:D = 1.0E7

.field public static final HEADER:Ljava/lang/String; = "X-Geo"

.field private static final LOCATION_PREFIX:Ljava/lang/String; = "w "

.field private static final LOCATION_SEPARATOR:Ljava/lang/String; = " "

.field private static final MILLIMETERS_IN_A_METER:D = 1000.0


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createHeader(Landroid/location/Location;Landroid/location/Location;)Ljava/lang/String;
    .locals 4
    .param p0, "currentLocation"    # Landroid/location/Location;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "queryLocation"    # Landroid/location/Location;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    .line 42
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 v2, 0x0

    .line 50
    :goto_0
    return-object v2

    .line 44
    :cond_0
    const/16 v2, 0xc

    invoke-static {p0, v3, v2}, Lcom/google/android/search/core/google/XGeoEncoder;->encodeLocation(Landroid/location/Location;II)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "encodedCurrentLocation":Ljava/lang/String;
    const/4 v2, 0x4

    invoke-static {p1, v2, v3}, Lcom/google/android/search/core/google/XGeoEncoder;->encodeLocation(Landroid/location/Location;II)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "encodedQueryLocation":Ljava/lang/String;
    const-string v2, " "

    invoke-static {v2}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/base/Joiner;->skipNulls()Lcom/google/common/base/Joiner;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static encodeLocation(Landroid/location/Location;II)Ljava/lang/String;
    .locals 8
    .param p0, "location"    # Landroid/location/Location;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "role"    # I
    .param p2, "producer"    # I
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const-wide v6, 0x416312d000000000L    # 1.0E7

    .line 60
    if-nez p0, :cond_0

    const/4 v4, 0x0

    .line 78
    :goto_0
    return-object v4

    .line 62
    :cond_0
    new-instance v1, Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    invoke-direct {v1}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;-><init>()V

    .line 63
    .local v1, "locationDescriptor":Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    new-instance v0, Llocation/unified/LocationDescriptorProto$LatLng;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProto$LatLng;-><init>()V

    .line 65
    .local v0, "latLng":Llocation/unified/LocationDescriptorProto$LatLng;
    invoke-virtual {v1, p1}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->setRole(I)Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    .line 66
    invoke-virtual {v1, p2}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->setProducer(I)Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    .line 68
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v0, v4}, Llocation/unified/LocationDescriptorProto$LatLng;->setLatitudeE7(I)Llocation/unified/LocationDescriptorProto$LatLng;

    .line 69
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v0, v4}, Llocation/unified/LocationDescriptorProto$LatLng;->setLongitudeE7(I)Llocation/unified/LocationDescriptorProto$LatLng;

    .line 70
    iput-object v0, v1, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->latlng:Llocation/unified/LocationDescriptorProto$LatLng;

    .line 71
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    .line 72
    .local v2, "timestampMs":J
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->setTimestamp(J)Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    .line 74
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 75
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    double-to-float v4, v4

    invoke-virtual {v1, v4}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->setRadius(F)Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    .line 78
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "w "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)[B

    move-result-object v5

    const/16 v6, 0xa

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method
