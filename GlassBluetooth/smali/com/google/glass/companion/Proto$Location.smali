.class public final Lcom/google/glass/companion/Proto$Location;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Location"
.end annotation


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
    .line 3227
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

    .line 3228
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3233
    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->latitude_:D

    .line 3252
    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->longitude_:D

    .line 3271
    iput v2, p0, Lcom/google/glass/companion/Proto$Location;->accuracy_:F

    .line 3290
    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->altitude_:D

    .line 3309
    iput v2, p0, Lcom/google/glass/companion/Proto$Location;->bearing_:F

    .line 3328
    iput v2, p0, Lcom/google/glass/companion/Proto$Location;->speed_:F

    .line 3347
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->time_:J

    .line 3366
    iput v3, p0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix_:I

    .line 3385
    iput v3, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites_:I

    .line 3404
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/String;

    .line 3426
    iput v3, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3_:I

    .line 3228
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Location;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3658
    new-instance v0, Lcom/google/glass/companion/Proto$Location;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Location;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$Location;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Location;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$Location;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3652
    new-instance v0, Lcom/google/glass/companion/Proto$Location;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Location;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Location;

    return-object v0
.end method


# virtual methods
.method public clearAccuracy()Lcom/google/glass/companion/Proto$Location;
    .locals 1

    .prologue
    .line 3284
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->accuracy_:F

    .line 3285
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 3286
    return-object p0
.end method

.method public clearAltitude()Lcom/google/glass/companion/Proto$Location;
    .locals 2

    .prologue
    .line 3303
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->altitude_:D

    .line 3304
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 3305
    return-object p0
.end method

.method public clearBearing()Lcom/google/glass/companion/Proto$Location;
    .locals 1

    .prologue
    .line 3322
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bearing_:F

    .line 3323
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 3324
    return-object p0
.end method

.method public clearLatitude()Lcom/google/glass/companion/Proto$Location;
    .locals 2

    .prologue
    .line 3246
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->latitude_:D

    .line 3247
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 3248
    return-object p0
.end method

.method public clearLevelId()Lcom/google/glass/companion/Proto$Location;
    .locals 1

    .prologue
    .line 3420
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/String;

    .line 3421
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 3422
    return-object p0
.end method

.method public clearLevelNumberE3()Lcom/google/glass/companion/Proto$Location;
    .locals 1

    .prologue
    .line 3439
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3_:I

    .line 3440
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 3441
    return-object p0
.end method

.method public clearLongitude()Lcom/google/glass/companion/Proto$Location;
    .locals 2

    .prologue
    .line 3265
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->longitude_:D

    .line 3266
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 3267
    return-object p0
.end method

.method public clearSatellitesUsedInFix()Lcom/google/glass/companion/Proto$Location;
    .locals 1

    .prologue
    .line 3379
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix_:I

    .line 3380
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 3381
    return-object p0
.end method

.method public clearSpeed()Lcom/google/glass/companion/Proto$Location;
    .locals 1

    .prologue
    .line 3341
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->speed_:F

    .line 3342
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 3343
    return-object p0
.end method

.method public clearTime()Lcom/google/glass/companion/Proto$Location;
    .locals 2

    .prologue
    .line 3360
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->time_:J

    .line 3361
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 3362
    return-object p0
.end method

.method public clearVisibleSatellites()Lcom/google/glass/companion/Proto$Location;
    .locals 1

    .prologue
    .line 3398
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites_:I

    .line 3399
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 3400
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3446
    if-ne p1, p0, :cond_1

    .line 3460
    :cond_0
    :goto_0
    return v1

    .line 3447
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$Location;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 3448
    check-cast v0, Lcom/google/glass/companion/Proto$Location;

    .line 3449
    .local v0, "other":Lcom/google/glass/companion/Proto$Location;
    iget-wide v3, p0, Lcom/google/glass/companion/Proto$Location;->latitude_:D

    iget-wide v5, v0, Lcom/google/glass/companion/Proto$Location;->latitude_:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/google/glass/companion/Proto$Location;->longitude_:D

    iget-wide v5, v0, Lcom/google/glass/companion/Proto$Location;->longitude_:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$Location;->accuracy_:F

    iget v4, v0, Lcom/google/glass/companion/Proto$Location;->accuracy_:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/google/glass/companion/Proto$Location;->altitude_:D

    iget-wide v5, v0, Lcom/google/glass/companion/Proto$Location;->altitude_:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$Location;->bearing_:F

    iget v4, v0, Lcom/google/glass/companion/Proto$Location;->bearing_:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$Location;->speed_:F

    iget v4, v0, Lcom/google/glass/companion/Proto$Location;->speed_:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/google/glass/companion/Proto$Location;->time_:J

    iget-wide v5, v0, Lcom/google/glass/companion/Proto$Location;->time_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 3458
    :goto_1
    iget v3, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Location;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Location;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 3460
    goto :goto_0

    .line 3449
    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/String;

    .line 3458
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Location;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Location;->unknownFieldData:Ljava/util/List;

    .line 3460
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getAccuracy()F
    .locals 1

    .prologue
    .line 3273
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->accuracy_:F

    return v0
.end method

.method public getAltitude()D
    .locals 2

    .prologue
    .line 3292
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->altitude_:D

    return-wide v0
.end method

.method public getBearing()F
    .locals 1

    .prologue
    .line 3311
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bearing_:F

    return v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 3235
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->latitude_:D

    return-wide v0
.end method

.method public getLevelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3406
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/String;

    return-object v0
.end method

.method public getLevelNumberE3()I
    .locals 1

    .prologue
    .line 3428
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3_:I

    return v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 3254
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->longitude_:D

    return-wide v0
.end method

.method public getSatellitesUsedInFix()I
    .locals 1

    .prologue
    .line 3368
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 3521
    const/4 v0, 0x0

    .line 3522
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 3523
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/glass/companion/Proto$Location;->latitude_:D

    .line 3524
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 3526
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 3527
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/glass/companion/Proto$Location;->longitude_:D

    .line 3528
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 3530
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 3531
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->accuracy_:F

    .line 3532
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 3534
    :cond_2
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 3535
    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/glass/companion/Proto$Location;->altitude_:D

    .line 3536
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 3538
    :cond_3
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 3539
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->bearing_:F

    .line 3540
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 3542
    :cond_4
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 3543
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->speed_:F

    .line 3544
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 3546
    :cond_5
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 3547
    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/glass/companion/Proto$Location;->time_:J

    .line 3548
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3550
    :cond_6
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 3551
    const/16 v1, 0x8

    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix_:I

    .line 3552
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3554
    :cond_7
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    .line 3555
    const/16 v1, 0x9

    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites_:I

    .line 3556
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3558
    :cond_8
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    .line 3559
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/String;

    .line 3560
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3562
    :cond_9
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    .line 3563
    const/16 v1, 0xb

    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3_:I

    .line 3564
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3566
    :cond_a
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3567
    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->cachedSize:I

    .line 3568
    return v0
.end method

.method public getSpeed()F
    .locals 1

    .prologue
    .line 3330
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->speed_:F

    return v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 3349
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->time_:J

    return-wide v0
.end method

.method public getVisibleSatellites()I
    .locals 1

    .prologue
    .line 3387
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites_:I

    return v0
.end method

.method public hasAccuracy()Z
    .locals 1

    .prologue
    .line 3281
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

.method public hasAltitude()Z
    .locals 1

    .prologue
    .line 3300
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

.method public hasBearing()Z
    .locals 1

    .prologue
    .line 3319
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

.method public hasLatitude()Z
    .locals 1

    .prologue
    .line 3243
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

.method public hasLevelId()Z
    .locals 1

    .prologue
    .line 3417
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

.method public hasLevelNumberE3()Z
    .locals 1

    .prologue
    .line 3436
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

.method public hasLongitude()Z
    .locals 1

    .prologue
    .line 3262
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

.method public hasSatellitesUsedInFix()Z
    .locals 1

    .prologue
    .line 3376
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

.method public hasSpeed()Z
    .locals 1

    .prologue
    .line 3338
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

.method public hasTime()Z
    .locals 1

    .prologue
    .line 3357
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

.method public hasVisibleSatellites()Z
    .locals 1

    .prologue
    .line 3395
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

.method public hashCode()I
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/16 v7, 0x20

    .line 3464
    const/16 v0, 0x11

    .line 3465
    .local v0, "result":I
    iget-wide v3, p0, Lcom/google/glass/companion/Proto$Location;->latitude_:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/glass/companion/Proto$Location;->latitude_:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/lit16 v0, v1, 0x20f

    .line 3466
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v3, p0, Lcom/google/glass/companion/Proto$Location;->longitude_:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/glass/companion/Proto$Location;->longitude_:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v1, v3

    .line 3467
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/glass/companion/Proto$Location;->accuracy_:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int v0, v1, v3

    .line 3468
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v3, p0, Lcom/google/glass/companion/Proto$Location;->altitude_:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/glass/companion/Proto$Location;->altitude_:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v1, v3

    .line 3469
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/glass/companion/Proto$Location;->bearing_:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int v0, v1, v3

    .line 3470
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/glass/companion/Proto$Location;->speed_:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int v0, v1, v3

    .line 3471
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v3, p0, Lcom/google/glass/companion/Proto$Location;->time_:J

    iget-wide v5, p0, Lcom/google/glass/companion/Proto$Location;->time_:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v1, v3

    .line 3472
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix_:I

    add-int v0, v1, v3

    .line 3473
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites_:I

    add-int v0, v1, v3

    .line 3474
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int v0, v3, v1

    .line 3475
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3_:I

    add-int v0, v1, v3

    .line 3476
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Location;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_1

    :goto_1
    add-int v0, v1, v2

    .line 3477
    return v0

    .line 3474
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 3476
    :cond_1
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Location;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Location;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3576
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3577
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 3581
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 3582
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/Proto$Location;->unknownFieldData:Ljava/util/List;

    .line 3585
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3587
    :sswitch_0
    return-object p0

    .line 3592
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/glass/companion/Proto$Location;->latitude_:D

    .line 3593
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    goto :goto_0

    .line 3597
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/glass/companion/Proto$Location;->longitude_:D

    .line 3598
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    goto :goto_0

    .line 3602
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/Proto$Location;->accuracy_:F

    .line 3603
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    goto :goto_0

    .line 3607
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/glass/companion/Proto$Location;->altitude_:D

    .line 3608
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    goto :goto_0

    .line 3612
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/Proto$Location;->bearing_:F

    .line 3613
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    goto :goto_0

    .line 3617
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/Proto$Location;->speed_:F

    .line 3618
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    goto :goto_0

    .line 3622
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/glass/companion/Proto$Location;->time_:J

    .line 3623
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    goto :goto_0

    .line 3627
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix_:I

    .line 3628
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    goto/16 :goto_0

    .line 3632
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites_:I

    .line 3633
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    goto/16 :goto_0

    .line 3637
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/String;

    .line 3638
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    goto/16 :goto_0

    .line 3642
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3_:I

    .line 3643
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    goto/16 :goto_0

    .line 3577
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

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3224
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$Location;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Location;

    move-result-object v0

    return-object v0
.end method

.method public setAccuracy(F)Lcom/google/glass/companion/Proto$Location;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 3276
    iput p1, p0, Lcom/google/glass/companion/Proto$Location;->accuracy_:F

    .line 3277
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 3278
    return-object p0
.end method

.method public setAltitude(D)Lcom/google/glass/companion/Proto$Location;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 3295
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$Location;->altitude_:D

    .line 3296
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 3297
    return-object p0
.end method

.method public setBearing(F)Lcom/google/glass/companion/Proto$Location;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 3314
    iput p1, p0, Lcom/google/glass/companion/Proto$Location;->bearing_:F

    .line 3315
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 3316
    return-object p0
.end method

.method public setLatitude(D)Lcom/google/glass/companion/Proto$Location;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 3238
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$Location;->latitude_:D

    .line 3239
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 3240
    return-object p0
.end method

.method public setLevelId(Ljava/lang/String;)Lcom/google/glass/companion/Proto$Location;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3409
    if-nez p1, :cond_0

    .line 3410
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3412
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/String;

    .line 3413
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 3414
    return-object p0
.end method

.method public setLevelNumberE3(I)Lcom/google/glass/companion/Proto$Location;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3431
    iput p1, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3_:I

    .line 3432
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 3433
    return-object p0
.end method

.method public setLongitude(D)Lcom/google/glass/companion/Proto$Location;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 3257
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$Location;->longitude_:D

    .line 3258
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 3259
    return-object p0
.end method

.method public setSatellitesUsedInFix(I)Lcom/google/glass/companion/Proto$Location;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3371
    iput p1, p0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix_:I

    .line 3372
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 3373
    return-object p0
.end method

.method public setSpeed(F)Lcom/google/glass/companion/Proto$Location;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 3333
    iput p1, p0, Lcom/google/glass/companion/Proto$Location;->speed_:F

    .line 3334
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 3335
    return-object p0
.end method

.method public setTime(J)Lcom/google/glass/companion/Proto$Location;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 3352
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$Location;->time_:J

    .line 3353
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 3354
    return-object p0
.end method

.method public setVisibleSatellites(I)Lcom/google/glass/companion/Proto$Location;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3390
    iput p1, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites_:I

    .line 3391
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 3392
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3482
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3483
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/glass/companion/Proto$Location;->latitude_:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 3485
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 3486
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/glass/companion/Proto$Location;->longitude_:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 3488
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 3489
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->accuracy_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 3491
    :cond_2
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 3492
    const/4 v0, 0x4

    iget-wide v1, p0, Lcom/google/glass/companion/Proto$Location;->altitude_:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 3494
    :cond_3
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 3495
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bearing_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 3497
    :cond_4
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 3498
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->speed_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 3500
    :cond_5
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 3501
    const/4 v0, 0x7

    iget-wide v1, p0, Lcom/google/glass/companion/Proto$Location;->time_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 3503
    :cond_6
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 3504
    const/16 v0, 0x8

    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3506
    :cond_7
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    .line 3507
    const/16 v0, 0x9

    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3509
    :cond_8
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    .line 3510
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3512
    :cond_9
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    .line 3513
    const/16 v0, 0xb

    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3515
    :cond_a
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Location;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 3517
    return-void
.end method
