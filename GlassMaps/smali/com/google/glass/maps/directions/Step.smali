.class public Lcom/google/glass/maps/directions/Step;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/nav/DataType;


# static fields
.field public static final ALTERNATE_TEXT_COLOR:I = -0x1000000

.field public static final DEFAULT_LINE_COLOR:I = -0xffff01

.field public static final DEFAULT_TEXT_COLOR:I = -0x1

.field public static final DEFAULT_WALK_LINE_COLOR:I = -0xff1112

.field public static final NOT_SET:I = -0x1

.field private static final TAG:Ljava/lang/String;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final agencyInfo:Lcom/google/glass/maps/directions/TransitAgencyInfo;

.field public arrivalAddress:Ljava/lang/String;

.field public final arrivalPlatform:Ljava/lang/String;

.field public final departureAddress:Ljava/lang/String;

.field public final departureIntervalSecs:J

.field public final departurePlatform:Ljava/lang/String;

.field public final departurePointIndex:I

.field public departureTimeSec:J

.field public distanceMeters:J

.field public durationSecs:J

.field public final hasStreetViewPanoId:Z

.field public final iconId:J

.field public instructions:Ljava/lang/String;

.field public final lineColor:I

.field public final numOfStops:I

.field private schematicSegments:[Lcom/google/glass/maps/SchematicSegment;

.field public final showIcon:Z

.field public final showInInstruction:Z

.field public final showLineName:Z

.field public final stepType:I

.field public final textColor:I

.field public final transitDirection:Ljava/lang/String;

.field public final transitLineName:Ljava/lang/String;

.field public final vehicleType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/google/glass/maps/directions/Step;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/directions/Step;->TAG:Ljava/lang/String;

    .line 29
    sget-object v0, Lcom/google/glass/maps/directions/Step;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/directions/Step;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method constructor <init>(Lcom/google/googlenav/common/io/b/a;)V
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/maps/directions/Step;-><init>(Lcom/google/googlenav/common/io/b/a;[Lcom/google/glass/maps/directions/TransitAgencyInfo;)V

    .line 184
    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/common/io/b/a;[Lcom/google/glass/maps/directions/TransitAgencyInfo;)V
    .locals 8

    .prologue
    const/16 v1, 0x8

    const/4 v7, 0x1

    const/high16 v6, -0x1000000

    const/4 v5, -0x1

    const-wide/16 v3, -0x1

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/b/a;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/b/a;->f(I)Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    .line 189
    const-wide/16 v1, 0x0

    invoke-static {v0, v7, v1, v2}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/a;IJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/maps/directions/Step;->departureTimeSec:J

    .line 195
    :goto_0
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/b/f;->b(Lcom/google/googlenav/common/io/b/a;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/directions/Step;->instructions:Ljava/lang/String;

    .line 200
    const/16 v0, 0xd

    .line 201
    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/b/f;->b(Lcom/google/googlenav/common/io/b/a;I)Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 203
    iget-object v0, p0, Lcom/google/glass/maps/directions/Step;->instructions:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/glass/maps/directions/Step;->transitLineName:Ljava/lang/String;

    .line 208
    :goto_1
    const/16 v0, 0xb

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/b/f;->b(Lcom/google/googlenav/common/io/b/a;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/directions/Step;->transitDirection:Ljava/lang/String;

    .line 209
    const/4 v0, 0x6

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/b/f;->b(Lcom/google/googlenav/common/io/b/a;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/directions/Step;->departureAddress:Ljava/lang/String;

    .line 210
    const/4 v0, 0x7

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/b/f;->b(Lcom/google/googlenav/common/io/b/a;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/directions/Step;->arrivalAddress:Ljava/lang/String;

    .line 212
    const/4 v0, 0x3

    .line 213
    invoke-static {p1, v0, v3, v4}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/a;IJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/maps/directions/Step;->distanceMeters:J

    .line 214
    const/4 v0, 0x4

    invoke-static {p1, v0, v3, v4}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/a;IJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/maps/directions/Step;->durationSecs:J

    .line 215
    const/16 v0, 0xa

    .line 216
    invoke-static {p1, v0, v3, v4}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/a;IJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/maps/directions/Step;->departureIntervalSecs:J

    .line 217
    const/4 v0, 0x5

    .line 218
    invoke-static {p1, v0, v5}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/a;II)I

    move-result v0

    iput v0, p0, Lcom/google/glass/maps/directions/Step;->departurePointIndex:I

    .line 220
    const/16 v0, 0xe

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/b/f;->e(Lcom/google/googlenav/common/io/b/a;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/maps/directions/Step;->showInInstruction:Z

    .line 221
    const/16 v0, 0x1d

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/b/f;->b(Lcom/google/googlenav/common/io/b/a;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/directions/Step;->departurePlatform:Ljava/lang/String;

    .line 222
    const/16 v0, 0x1e

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/b/f;->b(Lcom/google/googlenav/common/io/b/a;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/directions/Step;->arrivalPlatform:Ljava/lang/String;

    .line 224
    invoke-static {p1, v7}, Lcom/google/googlenav/common/io/b/f;->c(Lcom/google/googlenav/common/io/b/a;I)I

    move-result v0

    iput v0, p0, Lcom/google/glass/maps/directions/Step;->stepType:I

    .line 226
    const/16 v0, 0x6f

    invoke-static {p1, v0, v5}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/a;II)I

    move-result v0

    iput v0, p0, Lcom/google/glass/maps/directions/Step;->vehicleType:I

    .line 229
    const/16 v0, 0x6c

    .line 230
    invoke-static {p1, v0, v5}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/a;II)I

    move-result v0

    or-int/2addr v0, v6

    iput v0, p0, Lcom/google/glass/maps/directions/Step;->textColor:I

    .line 233
    invoke-virtual {p0}, Lcom/google/glass/maps/directions/Step;->isWalking()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, -0xff1112

    .line 235
    :goto_2
    const/16 v1, 0x66

    invoke-static {p1, v1, v0}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/a;II)I

    move-result v0

    or-int/2addr v0, v6

    iput v0, p0, Lcom/google/glass/maps/directions/Step;->lineColor:I

    .line 238
    const/16 v0, 0x6b

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v0

    .line 239
    add-int/lit8 v0, v0, 0x1

    .line 240
    iput v0, p0, Lcom/google/glass/maps/directions/Step;->numOfStops:I

    .line 242
    const/16 v0, 0x18

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/b/f;->e(Lcom/google/googlenav/common/io/b/a;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/maps/directions/Step;->showIcon:Z

    .line 243
    const/16 v0, 0xc

    invoke-static {p1, v0, v3, v4}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/a;IJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/maps/directions/Step;->iconId:J

    .line 244
    const/16 v0, 0x17

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/b/f;->e(Lcom/google/googlenav/common/io/b/a;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/maps/directions/Step;->showLineName:Z

    .line 245
    const/16 v0, 0xf

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/b/f;->d(Lcom/google/googlenav/common/io/b/a;I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 247
    if-eqz p2, :cond_3

    if-ltz v0, :cond_3

    array-length v1, p2

    if-ge v0, v1, :cond_3

    .line 249
    aget-object v0, p2, v0

    iput-object v0, p0, Lcom/google/glass/maps/directions/Step;->agencyInfo:Lcom/google/glass/maps/directions/TransitAgencyInfo;

    .line 254
    :goto_3
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/maps/directions/Step;->hasStreetViewPanoId:Z

    .line 255
    return-void

    .line 192
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/maps/directions/Step;->departureTimeSec:J

    goto/16 :goto_0

    .line 205
    :cond_1
    iput-object v0, p0, Lcom/google/glass/maps/directions/Step;->transitLineName:Ljava/lang/String;

    goto/16 :goto_1

    .line 233
    :cond_2
    const v0, -0xffff01

    goto :goto_2

    .line 251
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/maps/directions/Step;->agencyInfo:Lcom/google/glass/maps/directions/TransitAgencyInfo;

    goto :goto_3
.end method

.method public static formatFromTo(Landroid/content/Context;[Lcom/google/glass/maps/directions/Step;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/glass/maps/directions/Step;->formatFromToDuration(Landroid/content/Context;[Lcom/google/glass/maps/directions/Step;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatFromToDuration(Landroid/content/Context;[Lcom/google/glass/maps/directions/Step;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/glass/maps/directions/Step;->formatFromToDuration(Landroid/content/Context;[Lcom/google/glass/maps/directions/Step;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static formatFromToDuration(Landroid/content/Context;[Lcom/google/glass/maps/directions/Step;Z)Ljava/lang/String;
    .locals 9

    .prologue
    .line 380
    const/4 v0, 0x0

    .line 381
    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    .line 382
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-wide v2, v0, Lcom/google/glass/maps/directions/Step;->departureTimeSec:J

    .line 383
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p1, v0

    iget-wide v0, v0, Lcom/google/glass/maps/directions/Step;->departureTimeSec:J

    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    aget-object v4, p1, v4

    iget-wide v4, v4, Lcom/google/glass/maps/directions/Step;->durationSecs:J

    add-long/2addr v0, v4

    .line 384
    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 386
    sget-object v0, Lcom/google/glass/maps/directions/Step;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "formatFromToDuration: end time is earlier than start time"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move-wide v0, v2

    .line 390
    :cond_0
    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v2

    const/4 v6, 0x0

    invoke-static {p0, v4, v5, v6}, Lcom/google/glass/util/DateHelper;->formattedTime(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v4

    .line 391
    const-wide/16 v5, 0x3e8

    mul-long/2addr v5, v0

    const/4 v7, 0x0

    invoke-static {p0, v5, v6, v7}, Lcom/google/glass/util/DateHelper;->formattedTime(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v5

    .line 393
    if-eqz p2, :cond_2

    .line 398
    invoke-static {p0}, Lcom/google/glass/maps/util/TextFormatter;->createInstance(Landroid/content/Context;)V

    .line 400
    invoke-static {}, Lcom/google/glass/maps/util/TextFormatter;->getInstance()Lcom/google/glass/maps/util/TextFormatter;

    move-result-object v6

    const-wide/16 v7, 0x3c

    div-long/2addr v0, v7

    const-wide/16 v7, 0x3c

    div-long/2addr v2, v7

    sub-long/2addr v0, v2

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x3c

    invoke-virtual {v6, v0}, Lcom/google/glass/maps/util/TextFormatter;->formatTime(I)Landroid/text/Spannable;

    move-result-object v0

    .line 401
    sget v1, Lcom/google/glass/maps/R$string;->from_to_duration:I

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v5, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 406
    :cond_1
    :goto_0
    return-object v0

    .line 403
    :cond_2
    sget v0, Lcom/google/glass/maps/R$string;->from_to:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v4, v1, v2

    const/4 v2, 0x1

    aput-object v5, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public collapse(Lcom/google/glass/maps/directions/Step;)V
    .locals 4

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/google/glass/maps/directions/Step;->isWalking()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/glass/maps/directions/Step;->isWalking()Z

    move-result v0

    if-nez v0, :cond_1

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    iget-wide v0, p0, Lcom/google/glass/maps/directions/Step;->distanceMeters:J

    iget-wide v2, p1, Lcom/google/glass/maps/directions/Step;->distanceMeters:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/glass/maps/directions/Step;->distanceMeters:J

    .line 267
    iget-wide v0, p0, Lcom/google/glass/maps/directions/Step;->durationSecs:J

    iget-wide v2, p1, Lcom/google/glass/maps/directions/Step;->durationSecs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/glass/maps/directions/Step;->durationSecs:J

    goto :goto_0
.end method

.method public getAgencyInfo()Lcom/google/glass/maps/directions/TransitAgencyInfo;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/google/glass/maps/directions/Step;->agencyInfo:Lcom/google/glass/maps/directions/TransitAgencyInfo;

    return-object v0
.end method

.method public getDataType()Lcom/google/android/maps/driveabout/nav/DataType$Type;
    .locals 1

    .prologue
    .line 411
    sget-object v0, Lcom/google/android/maps/driveabout/nav/DataType$Type;->STEP_TYPE:Lcom/google/android/maps/driveabout/nav/DataType$Type;

    return-object v0
.end method

.method public getSchematicSegments()[Lcom/google/glass/maps/SchematicSegment;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/google/glass/maps/directions/Step;->schematicSegments:[Lcom/google/glass/maps/SchematicSegment;

    return-object v0
.end method

.method public getTextColor()I
    .locals 3

    .prologue
    const/high16 v0, -0x1000000

    .line 421
    iget v1, p0, Lcom/google/glass/maps/directions/Step;->textColor:I

    iget v2, p0, Lcom/google/glass/maps/directions/Step;->lineColor:I

    invoke-static {v1, v2}, Lcom/google/glass/util/ColorUtil;->isContrasting(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 422
    iget v0, p0, Lcom/google/glass/maps/directions/Step;->textColor:I

    .line 424
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/google/glass/maps/directions/Step;->lineColor:I

    invoke-static {v0, v1}, Lcom/google/glass/util/ColorUtil;->isContrasting(II)Z

    move-result v1

    if-nez v1, :cond_0

    iget v0, p0, Lcom/google/glass/maps/directions/Step;->textColor:I

    goto :goto_0
.end method

.method public getVehicleTypeIconResId()I
    .locals 1

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/google/glass/maps/directions/Step;->isTransit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 470
    const/4 v0, -0x1

    .line 505
    :goto_0
    return v0

    .line 473
    :cond_0
    iget v0, p0, Lcom/google/glass/maps/directions/Step;->vehicleType:I

    sparse-switch v0, :sswitch_data_0

    .line 505
    sget v0, Lcom/google/glass/maps/R$drawable;->vehicle_type_bus:I

    goto :goto_0

    .line 475
    :sswitch_0
    sget v0, Lcom/google/glass/maps/R$drawable;->vehicle_type_airplane:I

    goto :goto_0

    .line 478
    :sswitch_1
    sget v0, Lcom/google/glass/maps/R$drawable;->vehicle_type_bus:I

    goto :goto_0

    .line 480
    :sswitch_2
    sget v0, Lcom/google/glass/maps/R$drawable;->vehicle_type_cable_car:I

    goto :goto_0

    .line 482
    :sswitch_3
    sget v0, Lcom/google/glass/maps/R$drawable;->vehicle_type_ferry:I

    goto :goto_0

    .line 484
    :sswitch_4
    sget v0, Lcom/google/glass/maps/R$drawable;->vehicle_type_funicular:I

    goto :goto_0

    .line 486
    :sswitch_5
    sget v0, Lcom/google/glass/maps/R$drawable;->vehicle_type_gondola:I

    goto :goto_0

    .line 488
    :sswitch_6
    sget v0, Lcom/google/glass/maps/R$drawable;->vehicle_type_horse_carriage:I

    goto :goto_0

    .line 490
    :sswitch_7
    sget v0, Lcom/google/glass/maps/R$drawable;->vehicle_type_monorail:I

    goto :goto_0

    .line 496
    :sswitch_8
    sget v0, Lcom/google/glass/maps/R$drawable;->vehicle_type_rail:I

    goto :goto_0

    .line 498
    :sswitch_9
    sget v0, Lcom/google/glass/maps/R$drawable;->vehicle_type_taxi:I

    goto :goto_0

    .line 501
    :sswitch_a
    sget v0, Lcom/google/glass/maps/R$drawable;->vehicle_type_subway:I

    goto :goto_0

    .line 503
    :sswitch_b
    sget v0, Lcom/google/glass/maps/R$drawable;->vehicle_type_tram:I

    goto :goto_0

    .line 473
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x5 -> :sswitch_a
        0x6 -> :sswitch_0
        0x11 -> :sswitch_8
        0x12 -> :sswitch_8
        0x21 -> :sswitch_1
        0x23 -> :sswitch_9
        0x41 -> :sswitch_5
        0x42 -> :sswitch_4
        0x51 -> :sswitch_6
        0x111 -> :sswitch_a
        0x112 -> :sswitch_b
        0x113 -> :sswitch_7
        0x121 -> :sswitch_8
        0x122 -> :sswitch_8
    .end sparse-switch
.end method

.method public isDestination()Z
    .locals 2

    .prologue
    .line 438
    iget v0, p0, Lcom/google/glass/maps/directions/Step;->stepType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTransit()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 434
    iget v1, p0, Lcom/google/glass/maps/directions/Step;->stepType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWalking()Z
    .locals 2

    .prologue
    .line 430
    iget v0, p0, Lcom/google/glass/maps/directions/Step;->stepType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSchematicSegments([Lcom/google/glass/maps/SchematicSegment;)V
    .locals 0

    .prologue
    .line 446
    iput-object p1, p0, Lcom/google/glass/maps/directions/Step;->schematicSegments:[Lcom/google/glass/maps/SchematicSegment;

    .line 447
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/directions/Step;->toString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    const-string v1, "StepType (Drive=0 Transit=1 Walk=2 Bike=3 Dest=4): \t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    iget v1, p0, Lcom/google/glass/maps/directions/Step;->stepType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 279
    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    iget-object v1, p0, Lcom/google/glass/maps/directions/Step;->departureAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 281
    const-string v1, "DepartureAddress: \t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    iget-object v1, p0, Lcom/google/glass/maps/directions/Step;->departureAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    :cond_0
    iget-object v1, p0, Lcom/google/glass/maps/directions/Step;->arrivalAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 286
    const-string v1, "ArrivalAddress: \t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    iget-object v1, p0, Lcom/google/glass/maps/directions/Step;->arrivalAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    :cond_1
    const-string v1, "DepartureIntervalSecs: \t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    iget-wide v1, p0, Lcom/google/glass/maps/directions/Step;->departureIntervalSecs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 292
    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    iget-object v1, p0, Lcom/google/glass/maps/directions/Step;->departurePlatform:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 294
    const-string v1, "DeparturePlatform: \t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    iget-object v1, p0, Lcom/google/glass/maps/directions/Step;->departurePlatform:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    :cond_2
    const-string v1, "DepartureTimeSec: \t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    if-nez p1, :cond_9

    .line 300
    iget-wide v1, p0, Lcom/google/glass/maps/directions/Step;->departureTimeSec:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 304
    :goto_0
    const-string v1, ",\n  DeparturePointIndex: \t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    iget v1, p0, Lcom/google/glass/maps/directions/Step;->departurePointIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 306
    const-string v1, ",\n  DistanceMeters: \t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    iget-wide v1, p0, Lcom/google/glass/maps/directions/Step;->distanceMeters:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 308
    const-string v1, ",\n  DurationSecs: \t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    iget-wide v1, p0, Lcom/google/glass/maps/directions/Step;->durationSecs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 310
    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    iget-object v1, p0, Lcom/google/glass/maps/directions/Step;->instructions:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 312
    const-string v1, "Instructions: \t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    iget-object v1, p0, Lcom/google/glass/maps/directions/Step;->instructions:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    :cond_3
    iget-object v1, p0, Lcom/google/glass/maps/directions/Step;->transitLineName:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 317
    const-string v1, "TransitName: \t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    iget-object v1, p0, Lcom/google/glass/maps/directions/Step;->transitLineName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    :cond_4
    iget-object v1, p0, Lcom/google/glass/maps/directions/Step;->arrivalPlatform:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 322
    const-string v1, "ArrivalPlatform: \t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    iget-object v1, p0, Lcom/google/glass/maps/directions/Step;->arrivalPlatform:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    :cond_5
    const-string v1, "VehicleType: \t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    iget v1, p0, Lcom/google/glass/maps/directions/Step;->vehicleType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 328
    const-string v1, ",\n  LineColor: \t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    iget v1, p0, Lcom/google/glass/maps/directions/Step;->lineColor:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    const-string v1, ",\n  TextColor: \t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    iget v1, p0, Lcom/google/glass/maps/directions/Step;->textColor:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    const-string v1, ",\n  NumOfStops: \t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    iget v1, p0, Lcom/google/glass/maps/directions/Step;->numOfStops:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 334
    const-string v1, ",\n  ShowInInstruction: \t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    iget-boolean v1, p0, Lcom/google/glass/maps/directions/Step;->showInInstruction:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 336
    const-string v1, ",\n  HasStreetViewPanoId: \t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    iget-boolean v1, p0, Lcom/google/glass/maps/directions/Step;->hasStreetViewPanoId:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 338
    const-string v1, "\n ShowLineName: \t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    iget-boolean v1, p0, Lcom/google/glass/maps/directions/Step;->showLineName:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 340
    const-string v1, ",\n  ShowIcon: \t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    iget-boolean v1, p0, Lcom/google/glass/maps/directions/Step;->showIcon:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 342
    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    iget-boolean v1, p0, Lcom/google/glass/maps/directions/Step;->showIcon:Z

    if-eqz v1, :cond_6

    .line 344
    const-string v1, "IconId: \t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    iget-wide v1, p0, Lcom/google/glass/maps/directions/Step;->iconId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 346
    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    :cond_6
    iget-object v1, p0, Lcom/google/glass/maps/directions/Step;->transitDirection:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 349
    const-string v1, "TransitDirection: \t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    iget-object v1, p0, Lcom/google/glass/maps/directions/Step;->transitDirection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    :cond_7
    iget-object v1, p0, Lcom/google/glass/maps/directions/Step;->agencyInfo:Lcom/google/glass/maps/directions/TransitAgencyInfo;

    if-eqz v1, :cond_8

    .line 353
    iget-object v1, p0, Lcom/google/glass/maps/directions/Step;->agencyInfo:Lcom/google/glass/maps/directions/TransitAgencyInfo;

    invoke-virtual {v1}, Lcom/google/glass/maps/directions/TransitAgencyInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    :cond_8
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 302
    :cond_9
    iget-wide v1, p0, Lcom/google/glass/maps/directions/Step;->departureTimeSec:J

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/google/glass/util/DateHelper;->formattedTime(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method public useServerIcon()Z
    .locals 4

    .prologue
    .line 460
    iget-wide v0, p0, Lcom/google/glass/maps/directions/Step;->iconId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/maps/directions/Step;->showLineName:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public useVehicleTypeIcon()Z
    .locals 1

    .prologue
    .line 453
    iget-boolean v0, p0, Lcom/google/glass/maps/directions/Step;->showLineName:Z

    return v0
.end method
