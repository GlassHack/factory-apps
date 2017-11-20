.class public final Lcom/google/glass/companion/Proto$Location;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$Location;


# instance fields
.field private accuracy_:F

.field private altitude_:D

.field private bearing_:F

.field private bitField0_:I

.field private latitude_:D

.field private levelId_:Ljava/lang/String;

.field private levelNumberE3_:I

.field private longitude_:D

.field private satellitesUsedInFix_:I

.field private speed_:F

.field private time_:J

.field private visibleSatellites_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3079
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$Location;

    sput-object v0, Lcom/google/glass/companion/Proto$Location;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$Location;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 3080
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3085
    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->latitude_:D

    .line 3104
    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->longitude_:D

    .line 3123
    iput v2, p0, Lcom/google/glass/companion/Proto$Location;->accuracy_:F

    .line 3142
    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->altitude_:D

    .line 3161
    iput v2, p0, Lcom/google/glass/companion/Proto$Location;->bearing_:F

    .line 3180
    iput v2, p0, Lcom/google/glass/companion/Proto$Location;->speed_:F

    .line 3199
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->time_:J

    .line 3218
    iput v3, p0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix_:I

    .line 3237
    iput v3, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites_:I

    .line 3256
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/String;

    .line 3278
    iput v3, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3_:I

    .line 3080
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Location;
    .locals 1

    .prologue
    .line 3510
    new-instance v0, Lcom/google/glass/companion/Proto$Location;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Location;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$Location;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Location;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$Location;
    .locals 1

    .prologue
    .line 3504
    new-instance v0, Lcom/google/glass/companion/Proto$Location;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Location;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Location;

    return-object v0
.end method


# virtual methods
.method public final clearAccuracy()Lcom/google/glass/companion/Proto$Location;
    .locals 1

    .prologue
    .line 3136
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->accuracy_:F

    .line 3137
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 3138
    return-object p0
.end method

.method public final clearAltitude()Lcom/google/glass/companion/Proto$Location;
    .locals 2

    .prologue
    .line 3155
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->altitude_:D

    .line 3156
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 3157
    return-object p0
.end method

.method public final clearBearing()Lcom/google/glass/companion/Proto$Location;
    .locals 1

    .prologue
    .line 3174
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bearing_:F

    .line 3175
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 3176
    return-object p0
.end method

.method public final clearLatitude()Lcom/google/glass/companion/Proto$Location;
    .locals 2

    .prologue
    .line 3098
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->latitude_:D

    .line 3099
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 3100
    return-object p0
.end method

.method public final clearLevelId()Lcom/google/glass/companion/Proto$Location;
    .locals 1

    .prologue
    .line 3272
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/String;

    .line 3273
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 3274
    return-object p0
.end method

.method public final clearLevelNumberE3()Lcom/google/glass/companion/Proto$Location;
    .locals 1

    .prologue
    .line 3291
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3_:I

    .line 3292
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 3293
    return-object p0
.end method

.method public final clearLongitude()Lcom/google/glass/companion/Proto$Location;
    .locals 2

    .prologue
    .line 3117
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->longitude_:D

    .line 3118
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 3119
    return-object p0
.end method

.method public final clearSatellitesUsedInFix()Lcom/google/glass/companion/Proto$Location;
    .locals 1

    .prologue
    .line 3231
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix_:I

    .line 3232
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 3233
    return-object p0
.end method

.method public final clearSpeed()Lcom/google/glass/companion/Proto$Location;
    .locals 1

    .prologue
    .line 3193
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->speed_:F

    .line 3194
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 3195
    return-object p0
.end method

.method public final clearTime()Lcom/google/glass/companion/Proto$Location;
    .locals 2

    .prologue
    .line 3212
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->time_:J

    .line 3213
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 3214
    return-object p0
.end method

.method public final clearVisibleSatellites()Lcom/google/glass/companion/Proto$Location;
    .locals 1

    .prologue
    .line 3250
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites_:I

    .line 3251
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 3252
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3298
    if-ne p1, p0, :cond_1

    .line 3312
    :cond_0
    :goto_0
    return v0

    .line 3299
    :cond_1
    instance-of v2, p1, Lcom/google/glass/companion/Proto$Location;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 3300
    :cond_2
    check-cast p1, Lcom/google/glass/companion/Proto$Location;

    .line 3301
    iget-wide v2, p0, Lcom/google/glass/companion/Proto$Location;->latitude_:D

    iget-wide v4, p1, Lcom/google/glass/companion/Proto$Location;->latitude_:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/google/glass/companion/Proto$Location;->longitude_:D

    iget-wide v4, p1, Lcom/google/glass/companion/Proto$Location;->longitude_:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->accuracy_:F

    iget v3, p1, Lcom/google/glass/companion/Proto$Location;->accuracy_:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/google/glass/companion/Proto$Location;->altitude_:D

    iget-wide v4, p1, Lcom/google/glass/companion/Proto$Location;->altitude_:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->bearing_:F

    iget v3, p1, Lcom/google/glass/companion/Proto$Location;->bearing_:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->speed_:F

    iget v3, p1, Lcom/google/glass/companion/Proto$Location;->speed_:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/google/glass/companion/Proto$Location;->time_:J

    iget-wide v4, p1, Lcom/google/glass/companion/Proto$Location;->time_:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix_:I

    iget v3, p1, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix_:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites_:I

    iget v3, p1, Lcom/google/glass/companion/Proto$Location;->visibleSatellites_:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 3310
    :goto_1
    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3_:I

    iget v3, p1, Lcom/google/glass/companion/Proto$Location;->levelNumberE3_:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Location;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/glass/companion/Proto$Location;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 3312
    goto :goto_0

    .line 3301
    :cond_4
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/String;

    .line 3310
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Location;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$Location;->unknownFieldData:Ljava/util/List;

    .line 3312
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getAccuracy()F
    .locals 1

    .prologue
    .line 3125
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->accuracy_:F

    return v0
.end method

.method public final getAltitude()D
    .locals 2

    .prologue
    .line 3144
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->altitude_:D

    return-wide v0
.end method

.method public final getBearing()F
    .locals 1

    .prologue
    .line 3163
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bearing_:F

    return v0
.end method

.method public final getLatitude()D
    .locals 2

    .prologue
    .line 3087
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->latitude_:D

    return-wide v0
.end method

.method public final getLevelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3258
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/String;

    return-object v0
.end method

.method public final getLevelNumberE3()I
    .locals 1

    .prologue
    .line 3280
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3_:I

    return v0
.end method

.method public final getLongitude()D
    .locals 2

    .prologue
    .line 3106
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->longitude_:D

    return-wide v0
.end method

.method public final getSatellitesUsedInFix()I
    .locals 1

    .prologue
    .line 3220
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix_:I

    return v0
.end method

.method public final getSerializedSize()I
    .locals 4

    .prologue
    .line 3373
    const/4 v0, 0x0

    .line 3374
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 3375
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/glass/companion/Proto$Location;->latitude_:D

    .line 3376
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 3378
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 3379
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/glass/companion/Proto$Location;->longitude_:D

    .line 3380
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 3382
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 3383
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->accuracy_:F

    .line 3384
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 3386
    :cond_2
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 3387
    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/glass/companion/Proto$Location;->altitude_:D

    .line 3388
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 3390
    :cond_3
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 3391
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->bearing_:F

    .line 3392
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 3394
    :cond_4
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 3395
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->speed_:F

    .line 3396
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 3398
    :cond_5
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 3399
    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/glass/companion/Proto$Location;->time_:J

    .line 3400
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3402
    :cond_6
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 3403
    const/16 v1, 0x8

    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix_:I

    .line 3404
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3406
    :cond_7
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    .line 3407
    const/16 v1, 0x9

    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites_:I

    .line 3408
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3410
    :cond_8
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    .line 3411
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/String;

    .line 3412
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3414
    :cond_9
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    .line 3415
    const/16 v1, 0xb

    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3_:I

    .line 3416
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3418
    :cond_a
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3419
    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->cachedSize:I

    .line 3420
    return v0
.end method

.method public final getSpeed()F
    .locals 1

    .prologue
    .line 3182
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->speed_:F

    return v0
.end method

.method public final getTime()J
    .locals 2

    .prologue
    .line 3201
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->time_:J

    return-wide v0
.end method

.method public final getVisibleSatellites()I
    .locals 1

    .prologue
    .line 3239
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites_:I

    return v0
.end method

.method public final hasAccuracy()Z
    .locals 1

    .prologue
    .line 3133
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasAltitude()Z
    .locals 1

    .prologue
    .line 3152
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasBearing()Z
    .locals 1

    .prologue
    .line 3171
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasLatitude()Z
    .locals 1

    .prologue
    .line 3095
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasLevelId()Z
    .locals 1

    .prologue
    .line 3269
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasLevelNumberE3()Z
    .locals 1

    .prologue
    .line 3288
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasLongitude()Z
    .locals 1

    .prologue
    .line 3114
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasSatellitesUsedInFix()Z
    .locals 1

    .prologue
    .line 3228
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasSpeed()Z
    .locals 1

    .prologue
    .line 3190
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasTime()Z
    .locals 1

    .prologue
    .line 3209
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasVisibleSatellites()Z
    .locals 1

    .prologue
    .line 3247
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/16 v6, 0x20

    .line 3316
    .line 3317
    iget-wide v2, p0, Lcom/google/glass/companion/Proto$Location;->latitude_:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/glass/companion/Proto$Location;->latitude_:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/lit16 v0, v0, 0x20f

    .line 3318
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/glass/companion/Proto$Location;->longitude_:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/glass/companion/Proto$Location;->longitude_:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 3319
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->accuracy_:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 3320
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/glass/companion/Proto$Location;->altitude_:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/glass/companion/Proto$Location;->altitude_:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 3321
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->bearing_:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 3322
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->speed_:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 3323
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/glass/companion/Proto$Location;->time_:J

    iget-wide v4, p0, Lcom/google/glass/companion/Proto$Location;->time_:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 3324
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix_:I

    add-int/2addr v0, v2

    .line 3325
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites_:I

    add-int/2addr v0, v2

    .line 3326
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    .line 3327
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3_:I

    add-int/2addr v0, v2

    .line 3328
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Location;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 3329
    return v0

    .line 3326
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 3328
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Location;
    .locals 2

    .prologue
    .line 3428
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3429
    sparse-switch v0, :sswitch_data_0

    .line 3433
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 3434
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/Proto$Location;->unknownFieldData:Ljava/util/List;

    .line 3437
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3439
    :sswitch_0
    return-object p0

    .line 3444
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->latitude_:D

    .line 3445
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    goto :goto_0

    .line 3449
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->longitude_:D

    .line 3450
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    goto :goto_0

    .line 3454
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->accuracy_:F

    .line 3455
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    goto :goto_0

    .line 3459
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->altitude_:D

    .line 3460
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    goto :goto_0

    .line 3464
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bearing_:F

    .line 3465
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    goto :goto_0

    .line 3469
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->speed_:F

    .line 3470
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    goto :goto_0

    .line 3474
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->time_:J

    .line 3475
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    goto :goto_0

    .line 3479
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix_:I

    .line 3480
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    goto/16 :goto_0

    .line 3484
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites_:I

    .line 3485
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    goto/16 :goto_0

    .line 3489
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/String;

    .line 3490
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    goto/16 :goto_0

    .line 3494
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3_:I

    .line 3495
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    goto/16 :goto_0

    .line 3429
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
        0x11 -> :sswitch_2
        0x1d -> :sswitch_3
        0x21 -> :sswitch_4
        0x2d -> :sswitch_5
        0x35 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x52 -> :sswitch_a
        0x58 -> :sswitch_b
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 3076
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$Location;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Location;

    move-result-object v0

    return-object v0
.end method

.method public final setAccuracy(F)Lcom/google/glass/companion/Proto$Location;
    .locals 1

    .prologue
    .line 3128
    iput p1, p0, Lcom/google/glass/companion/Proto$Location;->accuracy_:F

    .line 3129
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 3130
    return-object p0
.end method

.method public final setAltitude(D)Lcom/google/glass/companion/Proto$Location;
    .locals 1

    .prologue
    .line 3147
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$Location;->altitude_:D

    .line 3148
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 3149
    return-object p0
.end method

.method public final setBearing(F)Lcom/google/glass/companion/Proto$Location;
    .locals 1

    .prologue
    .line 3166
    iput p1, p0, Lcom/google/glass/companion/Proto$Location;->bearing_:F

    .line 3167
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 3168
    return-object p0
.end method

.method public final setLatitude(D)Lcom/google/glass/companion/Proto$Location;
    .locals 1

    .prologue
    .line 3090
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$Location;->latitude_:D

    .line 3091
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 3092
    return-object p0
.end method

.method public final setLevelId(Ljava/lang/String;)Lcom/google/glass/companion/Proto$Location;
    .locals 1

    .prologue
    .line 3261
    if-nez p1, :cond_0

    .line 3262
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3264
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/String;

    .line 3265
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 3266
    return-object p0
.end method

.method public final setLevelNumberE3(I)Lcom/google/glass/companion/Proto$Location;
    .locals 1

    .prologue
    .line 3283
    iput p1, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3_:I

    .line 3284
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 3285
    return-object p0
.end method

.method public final setLongitude(D)Lcom/google/glass/companion/Proto$Location;
    .locals 1

    .prologue
    .line 3109
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$Location;->longitude_:D

    .line 3110
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 3111
    return-object p0
.end method

.method public final setSatellitesUsedInFix(I)Lcom/google/glass/companion/Proto$Location;
    .locals 1

    .prologue
    .line 3223
    iput p1, p0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix_:I

    .line 3224
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 3225
    return-object p0
.end method

.method public final setSpeed(F)Lcom/google/glass/companion/Proto$Location;
    .locals 1

    .prologue
    .line 3185
    iput p1, p0, Lcom/google/glass/companion/Proto$Location;->speed_:F

    .line 3186
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 3187
    return-object p0
.end method

.method public final setTime(J)Lcom/google/glass/companion/Proto$Location;
    .locals 1

    .prologue
    .line 3204
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$Location;->time_:J

    .line 3205
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 3206
    return-object p0
.end method

.method public final setVisibleSatellites(I)Lcom/google/glass/companion/Proto$Location;
    .locals 1

    .prologue
    .line 3242
    iput p1, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites_:I

    .line 3243
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 3244
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 3334
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3335
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/glass/companion/Proto$Location;->latitude_:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 3337
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 3338
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/glass/companion/Proto$Location;->longitude_:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 3340
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 3341
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->accuracy_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 3343
    :cond_2
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 3344
    const/4 v0, 0x4

    iget-wide v1, p0, Lcom/google/glass/companion/Proto$Location;->altitude_:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 3346
    :cond_3
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 3347
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bearing_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 3349
    :cond_4
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 3350
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->speed_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 3352
    :cond_5
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 3353
    const/4 v0, 0x7

    iget-wide v1, p0, Lcom/google/glass/companion/Proto$Location;->time_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 3355
    :cond_6
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 3356
    const/16 v0, 0x8

    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3358
    :cond_7
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    .line 3359
    const/16 v0, 0x9

    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3361
    :cond_8
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    .line 3362
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3364
    :cond_9
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    .line 3365
    const/16 v0, 0xb

    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3367
    :cond_a
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Location;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 3369
    return-void
.end method
