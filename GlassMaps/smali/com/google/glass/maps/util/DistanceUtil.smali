.class public Lcom/google/glass/maps/util/DistanceUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final E4:I = 0x2710

.field private static final FEET_IN_A_METER_E4:I = 0x8028

.field private static final FEET_IN_A_MILE_E4:I = 0x325aa00

.field private static final FEET_IN_A_TENTH_OF_A_MILE_E4:I = 0x509100

.field private static final FEET_ROUNDING_GRANULARITY:I = 0x32

.field private static final HECTOMETER:I = 0x64

.field private static final KILOMETER:I = 0x3e8

.field private static final METERS_COARSE_ROUNDING_GRANULARITY:I = 0x32

.field private static final METERS_COARSE_ROUNDING_THRESHOLD:I = 0x12c

.field private static final METERS_FINE_ROUNDING_GRANULARITY:I = 0xa

.field public static final UNITS_IMPERIAL:I = 0x2

.field public static final UNITS_IMPERIAL_YARDS:I = 0x3

.field public static final UNITS_METRIC:I = 0x1

.field public static final UNITS_UNKNOWN:I = 0x0

.field public static final UNIT_FORMAT_ABBREVIATED:I = 0x1

.field public static final UNIT_FORMAT_COMPRESSED:I = 0x2

.field public static final UNIT_FORMAT_FULL:I = 0x3

.field private static final YARDS_ROUNDING_GRANULARITY:I = 0xa


# instance fields
.field private final DISTANCE_FORMAT_FEET_ABBREVIATED:Ljava/lang/String;

.field private final DISTANCE_FORMAT_FEET_COMPRESSED:Ljava/lang/String;

.field private final DISTANCE_FORMAT_FEET_FULL:Ljava/lang/String;

.field private final DISTANCE_FORMAT_KILOMETERS_ABBREVIATED:Ljava/lang/String;

.field private final DISTANCE_FORMAT_KILOMETERS_COMPRESSED:Ljava/lang/String;

.field private final DISTANCE_FORMAT_KILOMETERS_FULL:Ljava/lang/String;

.field private final DISTANCE_FORMAT_METERS_ABBREVIATED:Ljava/lang/String;

.field private final DISTANCE_FORMAT_METERS_COMPRESSED:Ljava/lang/String;

.field private final DISTANCE_FORMAT_METERS_FULL:Ljava/lang/String;

.field private final DISTANCE_FORMAT_MILES_ABBREVIATED:Ljava/lang/String;

.field private final DISTANCE_FORMAT_MILES_COMPRESSED:Ljava/lang/String;

.field private final DISTANCE_FORMAT_MILES_FULL:Ljava/lang/String;

.field private DISTANCE_FORMAT_SEPARATOR:Ljava/lang/String;

.field private final DISTANCE_FORMAT_YARDS_ABBREVIATED:Ljava/lang/String;

.field private final DISTANCE_FORMAT_YARDS_COMPRESSED:Ljava/lang/String;

.field private final DISTANCE_FORMAT_YARDS_FULL:Ljava/lang/String;

.field private PREFERRED_UNITS:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    sget v0, Lcom/google/glass/maps/R$string;->da_distance_format_miles_abbreviated:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/util/DistanceUtil;->DISTANCE_FORMAT_MILES_ABBREVIATED:Ljava/lang/String;

    .line 74
    sget v0, Lcom/google/glass/maps/R$string;->da_distance_format_feet_abbreviated:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/util/DistanceUtil;->DISTANCE_FORMAT_FEET_ABBREVIATED:Ljava/lang/String;

    .line 75
    sget v0, Lcom/google/glass/maps/R$string;->da_distance_format_yards_abbreviated:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/util/DistanceUtil;->DISTANCE_FORMAT_YARDS_ABBREVIATED:Ljava/lang/String;

    .line 76
    sget v0, Lcom/google/glass/maps/R$string;->da_distance_format_kilometers_abbreviated:I

    .line 77
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/util/DistanceUtil;->DISTANCE_FORMAT_KILOMETERS_ABBREVIATED:Ljava/lang/String;

    .line 78
    sget v0, Lcom/google/glass/maps/R$string;->da_distance_format_meters_abbreviated:I

    .line 79
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/util/DistanceUtil;->DISTANCE_FORMAT_METERS_ABBREVIATED:Ljava/lang/String;

    .line 81
    sget v0, Lcom/google/glass/maps/R$string;->da_distance_format_miles_compressed:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/util/DistanceUtil;->DISTANCE_FORMAT_MILES_COMPRESSED:Ljava/lang/String;

    .line 82
    sget v0, Lcom/google/glass/maps/R$string;->da_distance_format_feet_compressed:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/util/DistanceUtil;->DISTANCE_FORMAT_FEET_COMPRESSED:Ljava/lang/String;

    .line 83
    sget v0, Lcom/google/glass/maps/R$string;->da_distance_format_yards_compressed:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/util/DistanceUtil;->DISTANCE_FORMAT_YARDS_COMPRESSED:Ljava/lang/String;

    .line 84
    sget v0, Lcom/google/glass/maps/R$string;->da_distance_format_kilometers_compressed:I

    .line 85
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/util/DistanceUtil;->DISTANCE_FORMAT_KILOMETERS_COMPRESSED:Ljava/lang/String;

    .line 86
    sget v0, Lcom/google/glass/maps/R$string;->da_distance_format_meters_compressed:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/util/DistanceUtil;->DISTANCE_FORMAT_METERS_COMPRESSED:Ljava/lang/String;

    .line 88
    sget v0, Lcom/google/glass/maps/R$string;->da_distance_format_miles_full:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/util/DistanceUtil;->DISTANCE_FORMAT_MILES_FULL:Ljava/lang/String;

    .line 89
    sget v0, Lcom/google/glass/maps/R$string;->da_distance_format_feet_full:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/util/DistanceUtil;->DISTANCE_FORMAT_FEET_FULL:Ljava/lang/String;

    .line 90
    sget v0, Lcom/google/glass/maps/R$string;->da_distance_format_yards_full:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/util/DistanceUtil;->DISTANCE_FORMAT_YARDS_FULL:Ljava/lang/String;

    .line 91
    sget v0, Lcom/google/glass/maps/R$string;->da_distance_format_kilometers_full:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/util/DistanceUtil;->DISTANCE_FORMAT_KILOMETERS_FULL:Ljava/lang/String;

    .line 92
    sget v0, Lcom/google/glass/maps/R$string;->da_distance_format_meters_full:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/util/DistanceUtil;->DISTANCE_FORMAT_METERS_FULL:Ljava/lang/String;

    .line 94
    sget v0, Lcom/google/glass/maps/R$string;->da_distance_format_separator:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/util/DistanceUtil;->DISTANCE_FORMAT_SEPARATOR:Ljava/lang/String;

    .line 96
    sget v0, Lcom/google/glass/maps/R$string;->da_distance_format_mode:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 97
    const-string v1, "imperial"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/glass/maps/util/DistanceUtil;->PREFERRED_UNITS:I

    .line 104
    :goto_0
    return-void

    .line 99
    :cond_0
    const-string v1, "imperial_yards"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/glass/maps/util/DistanceUtil;->PREFERRED_UNITS:I

    goto :goto_0

    .line 102
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/glass/maps/util/DistanceUtil;->PREFERRED_UNITS:I

    goto :goto_0
.end method

.method private static divideAndRoundToNearestTenth(JI)I
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 309
    shl-long v0, p0, v4

    .line 310
    shl-int/lit8 v2, p2, 0x7

    .line 311
    int-to-long v2, v2

    add-long/2addr v0, v2

    int-to-long v2, p2

    div-long/2addr v0, v2

    shr-long/2addr v0, v4

    long-to-int v0, v0

    return v0
.end method

.method private doImperialUnits(IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 236
    const/4 v2, 0x2

    move-object v0, p0

    move v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/maps/util/DistanceUtil;->doImperialUnitsInternal(IIZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private doImperialUnitsInternal(IIZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 248
    int-to-long v0, p1

    const-wide/32 v2, 0x8028

    mul-long v4, v0, v2

    .line 249
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    const-wide/32 v0, 0x4c9960

    cmp-long v0, v4, v0

    if-gez v0, :cond_2

    .line 251
    const-wide/16 v0, 0x3

    div-long v1, v4, v0

    .line 252
    long-to-int v0, v1

    div-int/lit16 v0, v0, 0x2710

    .line 253
    mul-int/lit16 v3, v0, 0x2710

    int-to-long v3, v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1388

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 254
    add-int/lit8 v0, v0, 0x1

    .line 256
    :cond_0
    if-eqz p3, :cond_1

    .line 257
    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/google/glass/maps/util/DistanceUtil;->roundWithGranularity(II)I

    move-result v0

    .line 259
    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {p4, v1}, Lcom/google/glass/maps/util/DistanceUtil;->formatMessage(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    :goto_0
    return-object v0

    .line 260
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_5

    const-wide/32 v0, 0x4c9960

    cmp-long v0, v4, v0

    if-gez v0, :cond_5

    .line 262
    long-to-int v0, v4

    div-int/lit16 v0, v0, 0x2710

    .line 263
    mul-int/lit16 v1, v0, 0x2710

    int-to-long v1, v1

    sub-long v1, v4, v1

    const-wide/16 v3, 0x1388

    cmp-long v1, v1, v3

    if-ltz v1, :cond_3

    .line 264
    add-int/lit8 v0, v0, 0x1

    .line 266
    :cond_3
    if-eqz p3, :cond_4

    .line 267
    const/16 v1, 0x32

    invoke-static {v0, v1}, Lcom/google/glass/maps/util/DistanceUtil;->roundWithGranularity(II)I

    move-result v0

    .line 269
    :cond_4
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {p4, v1}, Lcom/google/glass/maps/util/DistanceUtil;->formatMessage(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 270
    :cond_5
    const-wide/32 v0, 0x2fd6180

    cmp-long v0, v4, v0

    if-gez v0, :cond_6

    .line 272
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/glass/maps/util/DistanceUtil;->DISTANCE_FORMAT_SEPARATOR:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x509100

    .line 273
    invoke-static {v4, v5, v3}, Lcom/google/glass/maps/util/DistanceUtil;->divideAndRoundToNearestTenth(JI)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0xc

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 272
    invoke-static {p5, v0}, Lcom/google/glass/maps/util/DistanceUtil;->formatMessage(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 275
    :cond_6
    const-wide/32 v0, 0x325aa00

    cmp-long v0, v4, v0

    if-gtz v0, :cond_7

    .line 277
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/glass/maps/util/DistanceUtil;->DISTANCE_FORMAT_SEPARATOR:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p5, v0}, Lcom/google/glass/maps/util/DistanceUtil;->formatMessage(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 281
    :cond_7
    const-wide/32 v0, 0x325aa00

    div-long v2, v4, v0

    .line 282
    const-wide/32 v0, 0x325aa00

    rem-long v0, v4, v0

    .line 283
    const-wide/16 v4, 0xa

    cmp-long v4, v2, v4

    if-ltz v4, :cond_9

    const-wide/32 v4, 0x192d500

    cmp-long v4, v0, v4

    if-ltz v4, :cond_9

    .line 285
    const-wide/16 v0, 0x1

    add-long/2addr v2, v0

    .line 286
    const-wide/16 v0, 0x0

    .line 297
    :cond_8
    :goto_1
    const-wide/16 v4, 0xa

    cmp-long v4, v2, v4

    if-ltz v4, :cond_a

    .line 299
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 300
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 299
    invoke-static {p5, v0}, Lcom/google/glass/maps/util/DistanceUtil;->formatMessage(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 288
    :cond_9
    const v4, 0x509100

    invoke-static {v0, v1, v4}, Lcom/google/glass/maps/util/DistanceUtil;->divideAndRoundToNearestTenth(JI)I

    move-result v0

    int-to-long v0, v0

    .line 290
    const-wide/16 v4, 0xa

    cmp-long v4, v0, v4

    if-nez v4, :cond_8

    .line 292
    const-wide/16 v0, 0x1

    add-long/2addr v2, v0

    .line 293
    const-wide/16 v0, 0x0

    goto :goto_1

    .line 302
    :cond_a
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/glass/maps/util/DistanceUtil;->DISTANCE_FORMAT_SEPARATOR:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x28

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {p5, v4}, Lcom/google/glass/maps/util/DistanceUtil;->formatMessage(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private doImperialYardsUnits(IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 242
    const/4 v2, 0x3

    move-object v0, p0

    move v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/maps/util/DistanceUtil;->doImperialUnitsInternal(IIZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private doMetricUnits(IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v0, 0xa

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 186
    const/16 v1, 0x3cf

    if-ge p1, v1, :cond_2

    .line 188
    if-eqz p2, :cond_0

    .line 193
    const/16 v1, 0x12c

    if-ge p1, v1, :cond_1

    .line 196
    :goto_0
    invoke-static {p1, v0}, Lcom/google/glass/maps/util/DistanceUtil;->roundWithGranularity(II)I

    move-result p1

    .line 198
    :cond_0
    new-array v0, v6, [Ljava/lang/String;

    .line 199
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 198
    invoke-static {p3, v0}, Lcom/google/glass/maps/util/DistanceUtil;->formatMessage(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    :goto_1
    return-object v0

    .line 193
    :cond_1
    const/16 v0, 0x32

    goto :goto_0

    .line 200
    :cond_2
    const/16 v1, 0x3e8

    if-gt p1, v1, :cond_3

    .line 202
    new-array v0, v6, [Ljava/lang/String;

    iget-object v1, p0, Lcom/google/glass/maps/util/DistanceUtil;->DISTANCE_FORMAT_SEPARATOR:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p4, v0}, Lcom/google/glass/maps/util/DistanceUtil;->formatMessage(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 206
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 207
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v4, v3, -0x3

    .line 208
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 209
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 210
    if-lt v3, v0, :cond_5

    const/16 v4, 0x1f4

    if-lt v1, v4, :cond_5

    .line 212
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v2

    .line 223
    :cond_4
    :goto_2
    if-lt v3, v0, :cond_6

    .line 225
    new-array v0, v6, [Ljava/lang/String;

    .line 226
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 225
    invoke-static {p4, v0}, Lcom/google/glass/maps/util/DistanceUtil;->formatMessage(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 215
    :cond_5
    int-to-long v4, v1

    const/16 v1, 0x64

    invoke-static {v4, v5, v1}, Lcom/google/glass/maps/util/DistanceUtil;->divideAndRoundToNearestTenth(JI)I

    move-result v1

    .line 216
    if-ne v1, v0, :cond_4

    .line 218
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v2

    .line 219
    goto :goto_2

    .line 228
    :cond_6
    new-array v0, v6, [Ljava/lang/String;

    iget-object v4, p0, Lcom/google/glass/maps/util/DistanceUtil;->DISTANCE_FORMAT_SEPARATOR:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x16

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p4, v0}, Lcom/google/glass/maps/util/DistanceUtil;->formatMessage(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method public static varargs formatMessage(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v6, -0x1

    const/16 v5, 0x7b

    .line 343
    const-string v0, "${I18N"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    :goto_0
    return-object p0

    .line 346
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 347
    const/4 v1, 0x0

    .line 348
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 349
    :goto_1
    if-eq v0, v6, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_5

    .line 350
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    add-int/lit8 v0, v0, 0x1

    .line 352
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_1

    .line 354
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 356
    add-int/lit8 v0, v0, 0x1

    .line 384
    :goto_2
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_1

    .line 359
    :cond_1
    const/16 v1, 0x7d

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 362
    if-eq v1, v6, :cond_2

    sub-int v3, v1, v0

    const/4 v4, 0x2

    if-gt v3, v4, :cond_2

    if-nez v1, :cond_3

    .line 363
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1c

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "formatMessage \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 366
    :cond_3
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 368
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 371
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 376
    if-ltz v1, :cond_4

    array-length v3, p1

    if-ge v1, v3, :cond_4

    .line 377
    aget-object v1, p1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 373
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x10

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "formatMessage \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x23

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "formatMessage \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" param("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_5
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method private static roundWithGranularity(II)I
    .locals 1

    .prologue
    .line 315
    shr-int/lit8 v0, p1, 0x1

    add-int/2addr v0, p0

    div-int/2addr v0, p1

    mul-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public formatDistance(IIZI)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 130
    if-gez p1, :cond_0

    .line 131
    const-string v0, ""

    .line 181
    :goto_0
    return-object v0

    .line 134
    :cond_0
    if-nez p2, :cond_1

    .line 135
    iget p2, p0, Lcom/google/glass/maps/util/DistanceUtil;->PREFERRED_UNITS:I

    .line 138
    :cond_1
    if-ne p2, v1, :cond_4

    .line 139
    if-ne p4, v1, :cond_2

    .line 140
    iget-object v0, p0, Lcom/google/glass/maps/util/DistanceUtil;->DISTANCE_FORMAT_METERS_ABBREVIATED:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/glass/maps/util/DistanceUtil;->DISTANCE_FORMAT_KILOMETERS_ABBREVIATED:Ljava/lang/String;

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/google/glass/maps/util/DistanceUtil;->doMetricUnits(IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 143
    :cond_2
    if-ne p4, v2, :cond_3

    .line 144
    iget-object v0, p0, Lcom/google/glass/maps/util/DistanceUtil;->DISTANCE_FORMAT_METERS_COMPRESSED:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/glass/maps/util/DistanceUtil;->DISTANCE_FORMAT_KILOMETERS_COMPRESSED:Ljava/lang/String;

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/google/glass/maps/util/DistanceUtil;->doMetricUnits(IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 148
    :cond_3
    iget-object v0, p0, Lcom/google/glass/maps/util/DistanceUtil;->DISTANCE_FORMAT_METERS_FULL:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/glass/maps/util/DistanceUtil;->DISTANCE_FORMAT_KILOMETERS_FULL:Ljava/lang/String;

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/google/glass/maps/util/DistanceUtil;->doMetricUnits(IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 152
    :cond_4
    if-ne p2, v2, :cond_7

    .line 153
    if-ne p4, v1, :cond_5

    .line 154
    iget-object v0, p0, Lcom/google/glass/maps/util/DistanceUtil;->DISTANCE_FORMAT_FEET_ABBREVIATED:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/glass/maps/util/DistanceUtil;->DISTANCE_FORMAT_MILES_ABBREVIATED:Ljava/lang/String;

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/google/glass/maps/util/DistanceUtil;->doImperialUnits(IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 157
    :cond_5
    if-ne p4, v2, :cond_6

    .line 158
    iget-object v0, p0, Lcom/google/glass/maps/util/DistanceUtil;->DISTANCE_FORMAT_FEET_COMPRESSED:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/glass/maps/util/DistanceUtil;->DISTANCE_FORMAT_MILES_COMPRESSED:Ljava/lang/String;

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/google/glass/maps/util/DistanceUtil;->doImperialUnits(IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 162
    :cond_6
    iget-object v0, p0, Lcom/google/glass/maps/util/DistanceUtil;->DISTANCE_FORMAT_FEET_FULL:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/glass/maps/util/DistanceUtil;->DISTANCE_FORMAT_MILES_FULL:Ljava/lang/String;

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/google/glass/maps/util/DistanceUtil;->doImperialUnits(IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 166
    :cond_7
    const/4 v0, 0x3

    if-ne p2, v0, :cond_a

    .line 167
    if-ne p4, v1, :cond_8

    .line 168
    iget-object v0, p0, Lcom/google/glass/maps/util/DistanceUtil;->DISTANCE_FORMAT_YARDS_ABBREVIATED:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/glass/maps/util/DistanceUtil;->DISTANCE_FORMAT_MILES_ABBREVIATED:Ljava/lang/String;

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/google/glass/maps/util/DistanceUtil;->doImperialYardsUnits(IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 171
    :cond_8
    if-ne p4, v2, :cond_9

    .line 172
    iget-object v0, p0, Lcom/google/glass/maps/util/DistanceUtil;->DISTANCE_FORMAT_YARDS_COMPRESSED:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/glass/maps/util/DistanceUtil;->DISTANCE_FORMAT_MILES_COMPRESSED:Ljava/lang/String;

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/google/glass/maps/util/DistanceUtil;->doImperialYardsUnits(IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 176
    :cond_9
    iget-object v0, p0, Lcom/google/glass/maps/util/DistanceUtil;->DISTANCE_FORMAT_YARDS_FULL:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/glass/maps/util/DistanceUtil;->DISTANCE_FORMAT_MILES_FULL:Ljava/lang/String;

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/google/glass/maps/util/DistanceUtil;->doImperialYardsUnits(IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 181
    :cond_a
    const-string v0, ""

    goto :goto_0
.end method

.method setDistanceFormatSeparatorForTesting(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/glass/maps/util/DistanceUtil;->DISTANCE_FORMAT_SEPARATOR:Ljava/lang/String;

    .line 114
    return-void
.end method

.method setPreferredUnitsForTesting(I)V
    .locals 0

    .prologue
    .line 108
    iput p1, p0, Lcom/google/glass/maps/util/DistanceUtil;->PREFERRED_UNITS:I

    .line 109
    return-void
.end method
