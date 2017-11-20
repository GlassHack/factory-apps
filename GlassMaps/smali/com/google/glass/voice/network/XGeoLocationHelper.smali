.class public Lcom/google/glass/voice/network/XGeoLocationHelper;
.super Ljava/lang/Object;
.source "SourceFile"


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
    .locals 6

    .prologue
    const-wide v4, 0x416312d000000000L    # 1.0E7

    .line 36
    new-instance v0, La/a/g;

    invoke-direct {v0}, La/a/g;-><init>()V

    .line 38
    new-instance v1, La/a/d;

    invoke-direct {v1}, La/a/d;-><init>()V

    .line 40
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, La/a/g;->a(I)La/a/g;

    .line 41
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, La/a/g;->b(I)La/a/g;

    .line 43
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v1, v2}, La/a/d;->a(I)La/a/d;

    .line 44
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v1, v2}, La/a/d;->b(I)La/a/d;

    .line 45
    invoke-virtual {v0, v1}, La/a/g;->a(La/a/d;)La/a/g;

    .line 46
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    .line 47
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, La/a/g;->a(J)La/a/g;

    .line 49
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double/2addr v1, v3

    double-to-float v1, v1

    invoke-virtual {v0, v1}, La/a/g;->a(F)La/a/g;

    .line 60
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 61
    if-eqz v1, :cond_2

    .line 65
    const-string v2, "levelId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    const-string v2, "levelId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-static {v2}, Lcom/google/glass/voice/network/XGeoLocationHelper;->parseFeatureId(Ljava/lang/String;)La/a/b;

    move-result-object v2

    .line 68
    if-eqz v2, :cond_1

    .line 69
    invoke-virtual {v0, v2}, La/a/g;->a(La/a/b;)La/a/g;

    .line 78
    :cond_1
    const-string v2, "levelNumberE3"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 79
    const-string v2, "levelNumberE3"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 80
    int-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, La/a/g;->b(F)La/a/g;

    .line 84
    :cond_2
    const-string v1, "w "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    const/16 v2, 0xa

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static isFirstBitSet(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/16 v2, 0x10

    const/4 v0, 0x0

    .line 147
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 148
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 149
    const/4 v2, 0x7

    if-le v1, v2, :cond_0

    .line 150
    const/4 v0, 0x1

    .line 153
    :cond_0
    return v0
.end method

.method private static maskFirstBit(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 167
    and-int/lit8 v0, v0, 0x7

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static parseFeatureId(Ljava/lang/String;)La/a/b;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 95
    if-nez p0, :cond_0

    .line 96
    sget-object v1, Lcom/google/glass/voice/network/XGeoLocationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "null FeatureId"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    :goto_0
    return-object v0

    .line 100
    :cond_0
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 101
    array-length v1, v2

    if-ne v1, v3, :cond_1

    aget-object v1, v2, v5

    const-string v3, "0x"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    aget-object v1, v2, v6

    const-string v3, "0x"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    :try_start_0
    new-instance v1, La/a/b;

    invoke-direct {v1}, La/a/b;-><init>()V

    .line 105
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/glass/voice/network/XGeoLocationHelper;->parseHexUnsignedLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, La/a/b;->a(J)La/a/b;

    .line 106
    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/glass/voice/network/XGeoLocationHelper;->parseHexUnsignedLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, La/a/b;->b(J)La/a/b;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 107
    goto :goto_0

    .line 108
    :catch_0
    move-exception v1

    .line 110
    sget-object v2, Lcom/google/glass/voice/network/XGeoLocationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Invalid FeatureId: %s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p0, v4, v5

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 114
    :cond_1
    sget-object v1, Lcom/google/glass/voice/network/XGeoLocationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Invalid FeatureId: %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p0, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static parseHexUnsignedLong(Ljava/lang/String;)J
    .locals 4

    .prologue
    const/16 v1, 0x10

    .line 127
    invoke-static {p0}, Lcom/google/glass/voice/network/XGeoLocationHelper;->isFirstBitSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-static {p0}, Lcom/google/glass/voice/network/XGeoLocationHelper;->maskFirstBit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    add-long/2addr v0, v2

    .line 131
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    goto :goto_0
.end method
