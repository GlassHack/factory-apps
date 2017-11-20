.class public final Lcom/google/glass/companion/nano/Proto$Location;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/nano/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Location"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/glass/companion/nano/Proto$Location;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/glass/companion/nano/Proto$Location;


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
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3649
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3650
    invoke-virtual {p0}, Lcom/google/glass/companion/nano/Proto$Location;->clear()Lcom/google/glass/companion/nano/Proto$Location;

    .line 3651
    return-void
.end method

.method public static emptyArray()[Lcom/google/glass/companion/nano/Proto$Location;
    .locals 2

    .prologue
    .line 3422
    sget-object v0, Lcom/google/glass/companion/nano/Proto$Location;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$Location;

    if-nez v0, :cond_1

    .line 3423
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3425
    :try_start_0
    sget-object v0, Lcom/google/glass/companion/nano/Proto$Location;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$Location;

    if-nez v0, :cond_0

    .line 3426
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/nano/Proto$Location;

    sput-object v0, Lcom/google/glass/companion/nano/Proto$Location;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$Location;

    .line 3428
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3430
    :cond_1
    sget-object v0, Lcom/google/glass/companion/nano/Proto$Location;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$Location;

    return-object v0

    .line 3428
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$Location;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3940
    new-instance v0, Lcom/google/glass/companion/nano/Proto$Location;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$Location;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/nano/Proto$Location;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$Location;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/nano/Proto$Location;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3934
    new-instance v0, Lcom/google/glass/companion/nano/Proto$Location;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$Location;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/nano/Proto$Location;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/glass/companion/nano/Proto$Location;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 3654
    iput v2, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    .line 3655
    iput-wide v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->latitude_:D

    .line 3656
    iput-wide v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->longitude_:D

    .line 3657
    iput v3, p0, Lcom/google/glass/companion/nano/Proto$Location;->accuracy_:F

    .line 3658
    iput-wide v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->altitude_:D

    .line 3659
    iput v3, p0, Lcom/google/glass/companion/nano/Proto$Location;->bearing_:F

    .line 3660
    iput v3, p0, Lcom/google/glass/companion/nano/Proto$Location;->speed_:F

    .line 3661
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->time_:J

    .line 3662
    iput v2, p0, Lcom/google/glass/companion/nano/Proto$Location;->satellitesUsedInFix_:I

    .line 3663
    iput v2, p0, Lcom/google/glass/companion/nano/Proto$Location;->visibleSatellites_:I

    .line 3664
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->levelId_:Ljava/lang/String;

    .line 3665
    iput v2, p0, Lcom/google/glass/companion/nano/Proto$Location;->levelNumberE3_:I

    .line 3666
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 3667
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->cachedSize:I

    .line 3668
    return-object p0
.end method

.method public clearAccuracy()Lcom/google/glass/companion/nano/Proto$Location;
    .locals 1

    .prologue
    .line 3482
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->accuracy_:F

    .line 3483
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    .line 3484
    return-object p0
.end method

.method public clearAltitude()Lcom/google/glass/companion/nano/Proto$Location;
    .locals 2

    .prologue
    .line 3501
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->altitude_:D

    .line 3502
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    .line 3503
    return-object p0
.end method

.method public clearBearing()Lcom/google/glass/companion/nano/Proto$Location;
    .locals 1

    .prologue
    .line 3520
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bearing_:F

    .line 3521
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    .line 3522
    return-object p0
.end method

.method public clearLatitude()Lcom/google/glass/companion/nano/Proto$Location;
    .locals 2

    .prologue
    .line 3444
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->latitude_:D

    .line 3445
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    .line 3446
    return-object p0
.end method

.method public clearLevelId()Lcom/google/glass/companion/nano/Proto$Location;
    .locals 1

    .prologue
    .line 3615
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->levelId_:Ljava/lang/String;

    .line 3616
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    .line 3617
    return-object p0
.end method

.method public clearLevelNumberE3()Lcom/google/glass/companion/nano/Proto$Location;
    .locals 1

    .prologue
    .line 3637
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->levelNumberE3_:I

    .line 3638
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    .line 3639
    return-object p0
.end method

.method public clearLongitude()Lcom/google/glass/companion/nano/Proto$Location;
    .locals 2

    .prologue
    .line 3463
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->longitude_:D

    .line 3464
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    .line 3465
    return-object p0
.end method

.method public clearSatellitesUsedInFix()Lcom/google/glass/companion/nano/Proto$Location;
    .locals 1

    .prologue
    .line 3577
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->satellitesUsedInFix_:I

    .line 3578
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    .line 3579
    return-object p0
.end method

.method public clearSpeed()Lcom/google/glass/companion/nano/Proto$Location;
    .locals 1

    .prologue
    .line 3539
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->speed_:F

    .line 3540
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    .line 3541
    return-object p0
.end method

.method public clearTime()Lcom/google/glass/companion/nano/Proto$Location;
    .locals 2

    .prologue
    .line 3558
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->time_:J

    .line 3559
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    .line 3560
    return-object p0
.end method

.method public clearVisibleSatellites()Lcom/google/glass/companion/nano/Proto$Location;
    .locals 1

    .prologue
    .line 3596
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->visibleSatellites_:I

    .line 3597
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    .line 3598
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 3810
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 3811
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 3812
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/glass/companion/nano/Proto$Location;->latitude_:D

    .line 3813
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 3815
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 3816
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/glass/companion/nano/Proto$Location;->longitude_:D

    .line 3817
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 3819
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 3820
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$Location;->accuracy_:F

    .line 3821
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 3823
    :cond_2
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 3824
    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/glass/companion/nano/Proto$Location;->altitude_:D

    .line 3825
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 3827
    :cond_3
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 3828
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$Location;->bearing_:F

    .line 3829
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 3831
    :cond_4
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 3832
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$Location;->speed_:F

    .line 3833
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 3835
    :cond_5
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 3836
    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/glass/companion/nano/Proto$Location;->time_:J

    .line 3837
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3839
    :cond_6
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 3840
    const/16 v1, 0x8

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$Location;->satellitesUsedInFix_:I

    .line 3841
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3843
    :cond_7
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    .line 3844
    const/16 v1, 0x9

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$Location;->visibleSatellites_:I

    .line 3845
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3847
    :cond_8
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    .line 3848
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Location;->levelId_:Ljava/lang/String;

    .line 3849
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3851
    :cond_9
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    .line 3852
    const/16 v1, 0xb

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$Location;->levelNumberE3_:I

    .line 3853
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3855
    :cond_a
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3673
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 3733
    :cond_0
    :goto_0
    return v1

    .line 3676
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/nano/Proto$Location;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 3679
    check-cast v0, Lcom/google/glass/companion/nano/Proto$Location;

    .line 3680
    .local v0, "other":Lcom/google/glass/companion/nano/Proto$Location;
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/glass/companion/nano/Proto$Location;->latitude_:D

    .line 3681
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    iget-wide v6, v0, Lcom/google/glass/companion/nano/Proto$Location;->latitude_:D

    .line 3682
    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 3685
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/glass/companion/nano/Proto$Location;->longitude_:D

    .line 3686
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    iget-wide v6, v0, Lcom/google/glass/companion/nano/Proto$Location;->longitude_:D

    .line 3687
    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 3690
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Location;->accuracy_:F

    .line 3691
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$Location;->accuracy_:F

    .line 3692
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 3695
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/glass/companion/nano/Proto$Location;->altitude_:D

    .line 3696
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    iget-wide v6, v0, Lcom/google/glass/companion/nano/Proto$Location;->altitude_:D

    .line 3697
    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 3700
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Location;->bearing_:F

    .line 3701
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$Location;->bearing_:F

    .line 3702
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 3705
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Location;->speed_:F

    .line 3706
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$Location;->speed_:F

    .line 3707
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 3710
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/glass/companion/nano/Proto$Location;->time_:J

    iget-wide v6, v0, Lcom/google/glass/companion/nano/Proto$Location;->time_:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 3714
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Location;->satellitesUsedInFix_:I

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$Location;->satellitesUsedInFix_:I

    if-ne v3, v4, :cond_0

    .line 3718
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    and-int/lit16 v4, v4, 0x100

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Location;->visibleSatellites_:I

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$Location;->visibleSatellites_:I

    if-ne v3, v4, :cond_0

    .line 3722
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    and-int/lit16 v4, v4, 0x200

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Location;->levelId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$Location;->levelId_:Ljava/lang/String;

    .line 3723
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3726
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    and-int/lit16 v3, v3, 0x400

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    and-int/lit16 v4, v4, 0x400

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Location;->levelNumberE3_:I

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$Location;->levelNumberE3_:I

    if-ne v3, v4, :cond_0

    .line 3730
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Location;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Location;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3731
    :cond_2
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$Location;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$Location;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto/16 :goto_0

    .line 3733
    :cond_4
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Location;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/glass/companion/nano/Proto$Location;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public getAccuracy()F
    .locals 1

    .prologue
    .line 3476
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->accuracy_:F

    return v0
.end method

.method public getAltitude()D
    .locals 2

    .prologue
    .line 3495
    iget-wide v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->altitude_:D

    return-wide v0
.end method

.method public getBearing()F
    .locals 1

    .prologue
    .line 3514
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bearing_:F

    return v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 3438
    iget-wide v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->latitude_:D

    return-wide v0
.end method

.method public getLevelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3609
    iget-object v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->levelId_:Ljava/lang/String;

    return-object v0
.end method

.method public getLevelNumberE3()I
    .locals 1

    .prologue
    .line 3631
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->levelNumberE3_:I

    return v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 3457
    iget-wide v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->longitude_:D

    return-wide v0
.end method

.method public getSatellitesUsedInFix()I
    .locals 1

    .prologue
    .line 3571
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->satellitesUsedInFix_:I

    return v0
.end method

.method public getSpeed()F
    .locals 1

    .prologue
    .line 3533
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->speed_:F

    return v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 3552
    iget-wide v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->time_:J

    return-wide v0
.end method

.method public getVisibleSatellites()I
    .locals 1

    .prologue
    .line 3590
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->visibleSatellites_:I

    return v0
.end method

.method public hasAccuracy()Z
    .locals 1

    .prologue
    .line 3479
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

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
    .line 3498
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

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
    .line 3517
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

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
    .line 3441
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

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
    .line 3612
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

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
    .line 3634
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

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
    .line 3460
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

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
    .line 3574
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

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
    .line 3536
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

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
    .line 3555
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

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
    .line 3593
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

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
    .locals 9

    .prologue
    const/16 v8, 0x20

    .line 3738
    const/16 v0, 0x11

    .line 3739
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 3741
    iget-wide v4, p0, Lcom/google/glass/companion/nano/Proto$Location;->latitude_:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 3742
    .local v2, "v":J
    mul-int/lit8 v1, v0, 0x1f

    ushr-long v4, v2, v8

    xor-long/2addr v4, v2

    long-to-int v4, v4

    add-int v0, v1, v4

    .line 3745
    iget-wide v4, p0, Lcom/google/glass/companion/nano/Proto$Location;->longitude_:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 3746
    mul-int/lit8 v1, v0, 0x1f

    ushr-long v4, v2, v8

    xor-long/2addr v4, v2

    long-to-int v4, v4

    add-int v0, v1, v4

    .line 3748
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lcom/google/glass/companion/nano/Proto$Location;->accuracy_:F

    .line 3749
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    add-int v0, v1, v4

    .line 3751
    iget-wide v4, p0, Lcom/google/glass/companion/nano/Proto$Location;->altitude_:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 3752
    mul-int/lit8 v1, v0, 0x1f

    ushr-long v4, v2, v8

    xor-long/2addr v4, v2

    long-to-int v4, v4

    add-int v0, v1, v4

    .line 3754
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lcom/google/glass/companion/nano/Proto$Location;->bearing_:F

    .line 3755
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    add-int v0, v1, v4

    .line 3756
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lcom/google/glass/companion/nano/Proto$Location;->speed_:F

    .line 3757
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    add-int v0, v1, v4

    .line 3758
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v4, p0, Lcom/google/glass/companion/nano/Proto$Location;->time_:J

    iget-wide v6, p0, Lcom/google/glass/companion/nano/Proto$Location;->time_:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v0, v1, v4

    .line 3759
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lcom/google/glass/companion/nano/Proto$Location;->satellitesUsedInFix_:I

    add-int v0, v1, v4

    .line 3760
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lcom/google/glass/companion/nano/Proto$Location;->visibleSatellites_:I

    add-int v0, v1, v4

    .line 3761
    mul-int/lit8 v1, v0, 0x1f

    iget-object v4, p0, Lcom/google/glass/companion/nano/Proto$Location;->levelId_:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int v0, v1, v4

    .line 3762
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lcom/google/glass/companion/nano/Proto$Location;->levelNumberE3_:I

    add-int v0, v1, v4

    .line 3763
    mul-int/lit8 v4, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Location;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Location;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 3764
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 3765
    :goto_0
    add-int v0, v4, v1

    .line 3766
    return v0

    .line 3765
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Location;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$Location;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3863
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3864
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 3868
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3869
    :sswitch_0
    return-object p0

    .line 3874
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/glass/companion/nano/Proto$Location;->latitude_:D

    .line 3875
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    goto :goto_0

    .line 3879
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/glass/companion/nano/Proto$Location;->longitude_:D

    .line 3880
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    goto :goto_0

    .line 3884
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$Location;->accuracy_:F

    .line 3885
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    goto :goto_0

    .line 3889
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/glass/companion/nano/Proto$Location;->altitude_:D

    .line 3890
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    goto :goto_0

    .line 3894
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$Location;->bearing_:F

    .line 3895
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    goto :goto_0

    .line 3899
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$Location;->speed_:F

    .line 3900
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    goto :goto_0

    .line 3904
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/glass/companion/nano/Proto$Location;->time_:J

    .line 3905
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    goto :goto_0

    .line 3909
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$Location;->satellitesUsedInFix_:I

    .line 3910
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    goto :goto_0

    .line 3914
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$Location;->visibleSatellites_:I

    .line 3915
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    goto/16 :goto_0

    .line 3919
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$Location;->levelId_:Ljava/lang/String;

    .line 3920
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    goto/16 :goto_0

    .line 3924
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$Location;->levelNumberE3_:I

    .line 3925
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    goto/16 :goto_0

    .line 3864
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
    .line 3416
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/nano/Proto$Location;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$Location;

    move-result-object v0

    return-object v0
.end method

.method public setAccuracy(F)Lcom/google/glass/companion/nano/Proto$Location;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 3487
    iput p1, p0, Lcom/google/glass/companion/nano/Proto$Location;->accuracy_:F

    .line 3488
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    .line 3489
    return-object p0
.end method

.method public setAltitude(D)Lcom/google/glass/companion/nano/Proto$Location;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 3506
    iput-wide p1, p0, Lcom/google/glass/companion/nano/Proto$Location;->altitude_:D

    .line 3507
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    .line 3508
    return-object p0
.end method

.method public setBearing(F)Lcom/google/glass/companion/nano/Proto$Location;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 3525
    iput p1, p0, Lcom/google/glass/companion/nano/Proto$Location;->bearing_:F

    .line 3526
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    .line 3527
    return-object p0
.end method

.method public setLatitude(D)Lcom/google/glass/companion/nano/Proto$Location;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 3449
    iput-wide p1, p0, Lcom/google/glass/companion/nano/Proto$Location;->latitude_:D

    .line 3450
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    .line 3451
    return-object p0
.end method

.method public setLevelId(Ljava/lang/String;)Lcom/google/glass/companion/nano/Proto$Location;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3620
    if-nez p1, :cond_0

    .line 3621
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3623
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/nano/Proto$Location;->levelId_:Ljava/lang/String;

    .line 3624
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    .line 3625
    return-object p0
.end method

.method public setLevelNumberE3(I)Lcom/google/glass/companion/nano/Proto$Location;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3642
    iput p1, p0, Lcom/google/glass/companion/nano/Proto$Location;->levelNumberE3_:I

    .line 3643
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    .line 3644
    return-object p0
.end method

.method public setLongitude(D)Lcom/google/glass/companion/nano/Proto$Location;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 3468
    iput-wide p1, p0, Lcom/google/glass/companion/nano/Proto$Location;->longitude_:D

    .line 3469
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    .line 3470
    return-object p0
.end method

.method public setSatellitesUsedInFix(I)Lcom/google/glass/companion/nano/Proto$Location;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3582
    iput p1, p0, Lcom/google/glass/companion/nano/Proto$Location;->satellitesUsedInFix_:I

    .line 3583
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    .line 3584
    return-object p0
.end method

.method public setSpeed(F)Lcom/google/glass/companion/nano/Proto$Location;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 3544
    iput p1, p0, Lcom/google/glass/companion/nano/Proto$Location;->speed_:F

    .line 3545
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    .line 3546
    return-object p0
.end method

.method public setTime(J)Lcom/google/glass/companion/nano/Proto$Location;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 3563
    iput-wide p1, p0, Lcom/google/glass/companion/nano/Proto$Location;->time_:J

    .line 3564
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    .line 3565
    return-object p0
.end method

.method public setVisibleSatellites(I)Lcom/google/glass/companion/nano/Proto$Location;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3601
    iput p1, p0, Lcom/google/glass/companion/nano/Proto$Location;->visibleSatellites_:I

    .line 3602
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    .line 3603
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3772
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3773
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/glass/companion/nano/Proto$Location;->latitude_:D

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 3775
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 3776
    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/google/glass/companion/nano/Proto$Location;->longitude_:D

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 3778
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 3779
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Location;->accuracy_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 3781
    :cond_2
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 3782
    const/4 v0, 0x4

    iget-wide v2, p0, Lcom/google/glass/companion/nano/Proto$Location;->altitude_:D

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 3784
    :cond_3
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 3785
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Location;->bearing_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 3787
    :cond_4
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 3788
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Location;->speed_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 3790
    :cond_5
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 3791
    const/4 v0, 0x7

    iget-wide v2, p0, Lcom/google/glass/companion/nano/Proto$Location;->time_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 3793
    :cond_6
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 3794
    const/16 v0, 0x8

    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Location;->satellitesUsedInFix_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3796
    :cond_7
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    .line 3797
    const/16 v0, 0x9

    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Location;->visibleSatellites_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3799
    :cond_8
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    .line 3800
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Location;->levelId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3802
    :cond_9
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    .line 3803
    const/16 v0, 0xb

    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Location;->levelNumberE3_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3805
    :cond_a
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 3806
    return-void
.end method
