.class public Lcom/google/glass/voice/network/XGeoLocationHelper;
.super Ljava/lang/Object;
.source "XGeoLocationHelper.java"


# static fields
.field private static final E7:D = 1.0E7

.field private static final LOCATION_PREFIX:Ljava/lang/String; = "w "

.field private static final MILLIMETERS_IN_A_METER:D = 1000.0

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/network/XGeoLocationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static getXGeoLocation(Landroid/location/Location;)Ljava/lang/String;
    .locals 12
    .param p0, "location"    # Landroid/location/Location;

    .prologue
    const-wide v10, 0x416312d000000000L    # 1.0E7

    .line 36
    new-instance v5, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;

    invoke-direct {v5}, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;-><init>()V

    .line 38
    .local v5, "locationBuilder":Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    new-instance v2, Llocation/unified/LocationDescriptorProtoNano$LatLng;

    invoke-direct {v2}, Llocation/unified/LocationDescriptorProtoNano$LatLng;-><init>()V

    .line 40
    .local v2, "latLngBuilder":Llocation/unified/LocationDescriptorProtoNano$LatLng;
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->setRole(I)Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;

    .line 41
    const/16 v8, 0xc

    invoke-virtual {v5, v8}, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->setProducer(I)Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;

    .line 43
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {v2, v8}, Llocation/unified/LocationDescriptorProtoNano$LatLng;->setLatitudeE7(I)Llocation/unified/LocationDescriptorProtoNano$LatLng;

    .line 44
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {v2, v8}, Llocation/unified/LocationDescriptorProtoNano$LatLng;->setLongitudeE7(I)Llocation/unified/LocationDescriptorProtoNano$LatLng;

    .line 45
    invoke-virtual {v5, v2}, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->setLatlng(Llocation/unified/LocationDescriptorProtoNano$LatLng;)Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;

    .line 46
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    .line 47
    .local v6, "timestampMs":J
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->setTimestamp(J)Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;

    .line 49
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 50
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v8

    float-to-double v8, v8

    const-wide v10, 0x408f400000000000L    # 1000.0

    mul-double/2addr v8, v10

    double-to-float v8, v8

    invoke-virtual {v5, v8}, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->setRadius(F)Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;

    .line 60
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 61
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 65
    const-string v8, "levelId"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 66
    const-string v8, "levelId"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, "levelId":Ljava/lang/String;
    invoke-static {v3}, Lcom/google/glass/voice/network/XGeoLocationHelper;->parseFeatureId(Ljava/lang/String;)Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;

    move-result-object v1

    .line 68
    .local v1, "id":Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;
    if-eqz v1, :cond_1

    .line 69
    invoke-virtual {v5, v1}, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->setLevelFeatureId(Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;)Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;

    .line 78
    .end local v1    # "id":Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;
    .end local v3    # "levelId":Ljava/lang/String;
    :cond_1
    const-string v8, "levelNumberE3"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 79
    const-string v8, "levelNumberE3"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 80
    .local v4, "levelNumberE3":I
    int-to-float v8, v4

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float/2addr v8, v9

    invoke-virtual {v5, v8}, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->setLevelNumber(F)Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;

    .line 84
    .end local v4    # "levelNumberE3":I
    :cond_2
    const-string/jumbo v8, "w "

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)[B

    move-result-object v8

    const/16 v10, 0xa

    invoke-static {v8, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v9, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_0
    return-object v8

    :cond_3
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static isFirstBitSet(Ljava/lang/String;)Z
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x10

    const/4 v1, 0x0

    .line 147
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 148
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 149
    .local v0, "firstNumber":I
    const/4 v2, 0x7

    if-le v0, v2, :cond_0

    .line 150
    const/4 v1, 0x1

    .line 153
    .end local v0    # "firstNumber":I
    :cond_0
    return v1
.end method

.method private static maskFirstBit(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 166
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 167
    .local v0, "firstNumber":I
    and-int/lit8 v1, v0, 0x7

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static parseFeatureId(Ljava/lang/String;)Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;
    .locals 8
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 95
    if-nez p0, :cond_0

    .line 96
    sget-object v4, Lcom/google/glass/voice/network/XGeoLocationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "null FeatureId"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v3

    .line 115
    :goto_0
    return-object v1

    .line 100
    :cond_0
    const-string v4, ":"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "split":[Ljava/lang/String;
    array-length v4, v2

    if-ne v4, v5, :cond_1

    aget-object v4, v2, v7

    const-string v5, "0x"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    aget-object v4, v2, v6

    const-string v5, "0x"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 103
    :try_start_0
    new-instance v1, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;

    invoke-direct {v1}, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;-><init>()V

    .line 105
    .local v1, "result":Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;
    const/4 v4, 0x0

    aget-object v4, v2, v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/glass/voice/network/XGeoLocationHelper;->parseHexUnsignedLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;->setCellId(J)Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;

    .line 106
    const/4 v4, 0x1

    aget-object v4, v2, v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/glass/voice/network/XGeoLocationHelper;->parseHexUnsignedLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;->setFprint(J)Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    .end local v1    # "result":Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v4, Lcom/google/glass/voice/network/XGeoLocationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Invalid FeatureId: %s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v7

    invoke-interface {v4, v0, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v3

    .line 111
    goto :goto_0

    .line 114
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    sget-object v4, Lcom/google/glass/voice/network/XGeoLocationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Invalid FeatureId: %s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v3

    .line 115
    goto :goto_0
.end method

.method public static parseHexUnsignedLong(Ljava/lang/String;)J
    .locals 5
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x10

    .line 127
    invoke-static {p0}, Lcom/google/glass/voice/network/XGeoLocationHelper;->isFirstBitSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    invoke-static {p0}, Lcom/google/glass/voice/network/XGeoLocationHelper;->maskFirstBit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "newValue":Ljava/lang/String;
    invoke-static {v0, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    add-long/2addr v1, v3

    .line 131
    .end local v0    # "newValue":Ljava/lang/String;
    :goto_0
    return-wide v1

    :cond_0
    invoke-static {p0, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    goto :goto_0
.end method
