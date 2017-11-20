.class public final Llocation/unified/LocationDescriptorProto$LocationAttributesProto;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "LocationDescriptorProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llocation/unified/LocationDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocationAttributesProto"
.end annotation


# static fields
.field public static final ACTIVITY_TYPE_ACTIVITY_IN_VEHICLE:I = 0x2

.field public static final ACTIVITY_TYPE_ACTIVITY_ON_BICYCLE:I = 0x3

.field public static final ACTIVITY_TYPE_ACTIVITY_ON_FOOT:I = 0x4

.field public static final ACTIVITY_TYPE_ACTIVITY_STILL:I = 0x1

.field public static final ACTIVITY_TYPE_ACTIVITY_UNKNOWN:I

.field private static volatile _emptyArray:[Llocation/unified/LocationDescriptorProto$LocationAttributesProto;


# instance fields
.field private altitudeMetersFromGround_:D

.field private bearingDegrees_:I

.field private bitField0_:I

.field private detectedActivity_:I

.field public fieldOfView:Llocation/unified/LocationDescriptorProto$FieldOfView;

.field private headingDegrees_:I

.field private rollDegrees_:I

.field private speedKph_:I

.field private tiltDegrees_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1052
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1053
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->clear()Llocation/unified/LocationDescriptorProto$LocationAttributesProto;

    .line 1054
    return-void
.end method

.method public static emptyArray()[Llocation/unified/LocationDescriptorProto$LocationAttributesProto;
    .locals 2

    .prologue
    .line 903
    sget-object v0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->_emptyArray:[Llocation/unified/LocationDescriptorProto$LocationAttributesProto;

    if-nez v0, :cond_1

    .line 904
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 906
    :try_start_0
    sget-object v0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->_emptyArray:[Llocation/unified/LocationDescriptorProto$LocationAttributesProto;

    if-nez v0, :cond_0

    .line 907
    const/4 v0, 0x0

    new-array v0, v0, [Llocation/unified/LocationDescriptorProto$LocationAttributesProto;

    sput-object v0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->_emptyArray:[Llocation/unified/LocationDescriptorProto$LocationAttributesProto;

    .line 909
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 911
    :cond_1
    sget-object v0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->_emptyArray:[Llocation/unified/LocationDescriptorProto$LocationAttributesProto;

    return-object v0

    .line 909
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProto$LocationAttributesProto;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1207
    new-instance v0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;-><init>()V

    invoke-virtual {v0, p0}, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProto$LocationAttributesProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Llocation/unified/LocationDescriptorProto$LocationAttributesProto;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1201
    new-instance v0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;

    return-object v0
.end method


# virtual methods
.method public clear()Llocation/unified/LocationDescriptorProto$LocationAttributesProto;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1057
    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    .line 1058
    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->detectedActivity_:I

    .line 1059
    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->headingDegrees_:I

    .line 1060
    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bearingDegrees_:I

    .line 1061
    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->speedKph_:I

    .line 1062
    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->tiltDegrees_:I

    .line 1063
    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->rollDegrees_:I

    .line 1064
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->altitudeMetersFromGround_:D

    .line 1065
    const/4 v0, 0x0

    iput-object v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->fieldOfView:Llocation/unified/LocationDescriptorProto$FieldOfView;

    .line 1066
    const/4 v0, -0x1

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->cachedSize:I

    .line 1067
    return-object p0
.end method

.method public clearAltitudeMetersFromGround()Llocation/unified/LocationDescriptorProto$LocationAttributesProto;
    .locals 2

    .prologue
    .line 1044
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->altitudeMetersFromGround_:D

    .line 1045
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    .line 1046
    return-object p0
.end method

.method public clearBearingDegrees()Llocation/unified/LocationDescriptorProto$LocationAttributesProto;
    .locals 1

    .prologue
    .line 968
    const/4 v0, 0x0

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bearingDegrees_:I

    .line 969
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    .line 970
    return-object p0
.end method

.method public clearDetectedActivity()Llocation/unified/LocationDescriptorProto$LocationAttributesProto;
    .locals 1

    .prologue
    .line 930
    const/4 v0, 0x0

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->detectedActivity_:I

    .line 931
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    .line 932
    return-object p0
.end method

.method public clearHeadingDegrees()Llocation/unified/LocationDescriptorProto$LocationAttributesProto;
    .locals 1

    .prologue
    .line 949
    const/4 v0, 0x0

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->headingDegrees_:I

    .line 950
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    .line 951
    return-object p0
.end method

.method public clearRollDegrees()Llocation/unified/LocationDescriptorProto$LocationAttributesProto;
    .locals 1

    .prologue
    .line 1025
    const/4 v0, 0x0

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->rollDegrees_:I

    .line 1026
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    .line 1027
    return-object p0
.end method

.method public clearSpeedKph()Llocation/unified/LocationDescriptorProto$LocationAttributesProto;
    .locals 1

    .prologue
    .line 987
    const/4 v0, 0x0

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->speedKph_:I

    .line 988
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    .line 989
    return-object p0
.end method

.method public clearTiltDegrees()Llocation/unified/LocationDescriptorProto$LocationAttributesProto;
    .locals 1

    .prologue
    .line 1006
    const/4 v0, 0x0

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->tiltDegrees_:I

    .line 1007
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    .line 1008
    return-object p0
.end method

.method public getAltitudeMetersFromGround()D
    .locals 2

    .prologue
    .line 1033
    iget-wide v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->altitudeMetersFromGround_:D

    return-wide v0
.end method

.method public getBearingDegrees()I
    .locals 1

    .prologue
    .line 957
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bearingDegrees_:I

    return v0
.end method

.method public getDetectedActivity()I
    .locals 1

    .prologue
    .line 919
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->detectedActivity_:I

    return v0
.end method

.method public getHeadingDegrees()I
    .locals 1

    .prologue
    .line 938
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->headingDegrees_:I

    return v0
.end method

.method public getRollDegrees()I
    .locals 1

    .prologue
    .line 1014
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->rollDegrees_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 1101
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1102
    .local v0, "size":I
    iget v1, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1103
    const/4 v1, 0x1

    iget v2, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->detectedActivity_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1106
    :cond_0
    iget v1, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1107
    const/4 v1, 0x2

    iget v2, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->headingDegrees_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1110
    :cond_1
    iget v1, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 1111
    const/4 v1, 0x3

    iget v2, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bearingDegrees_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1114
    :cond_2
    iget v1, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 1115
    const/4 v1, 0x4

    iget v2, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->speedKph_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1118
    :cond_3
    iget v1, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 1119
    const/4 v1, 0x5

    iget v2, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->tiltDegrees_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1122
    :cond_4
    iget v1, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 1123
    const/4 v1, 0x6

    iget v2, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->rollDegrees_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1126
    :cond_5
    iget v1, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 1127
    const/4 v1, 0x7

    iget-wide v2, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->altitudeMetersFromGround_:D

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 1130
    :cond_6
    iget-object v1, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->fieldOfView:Llocation/unified/LocationDescriptorProto$FieldOfView;

    if-eqz v1, :cond_7

    .line 1131
    const/16 v1, 0x8

    iget-object v2, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->fieldOfView:Llocation/unified/LocationDescriptorProto$FieldOfView;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1134
    :cond_7
    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->cachedSize:I

    .line 1135
    return v0
.end method

.method public getSpeedKph()I
    .locals 1

    .prologue
    .line 976
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->speedKph_:I

    return v0
.end method

.method public getTiltDegrees()I
    .locals 1

    .prologue
    .line 995
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->tiltDegrees_:I

    return v0
.end method

.method public hasAltitudeMetersFromGround()Z
    .locals 1

    .prologue
    .line 1041
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasBearingDegrees()Z
    .locals 1

    .prologue
    .line 965
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDetectedActivity()Z
    .locals 1

    .prologue
    .line 927
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHeadingDegrees()Z
    .locals 1

    .prologue
    .line 946
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRollDegrees()Z
    .locals 1

    .prologue
    .line 1022
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSpeedKph()Z
    .locals 1

    .prologue
    .line 984
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTiltDegrees()Z
    .locals 1

    .prologue
    .line 1003
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "x0"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 890
    invoke-virtual {p0, p1}, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProto$LocationAttributesProto;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProto$LocationAttributesProto;
    .locals 3
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1143
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1144
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1148
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1149
    :sswitch_0
    return-object p0

    .line 1154
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->detectedActivity_:I

    .line 1155
    iget v1, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    goto :goto_0

    .line 1159
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->headingDegrees_:I

    .line 1160
    iget v1, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    goto :goto_0

    .line 1164
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bearingDegrees_:I

    .line 1165
    iget v1, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    goto :goto_0

    .line 1169
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->speedKph_:I

    .line 1170
    iget v1, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    goto :goto_0

    .line 1174
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->tiltDegrees_:I

    .line 1175
    iget v1, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    goto :goto_0

    .line 1179
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->rollDegrees_:I

    .line 1180
    iget v1, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    goto :goto_0

    .line 1184
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->altitudeMetersFromGround_:D

    .line 1185
    iget v1, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    goto :goto_0

    .line 1189
    :sswitch_8
    iget-object v1, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->fieldOfView:Llocation/unified/LocationDescriptorProto$FieldOfView;

    if-nez v1, :cond_1

    .line 1190
    new-instance v1, Llocation/unified/LocationDescriptorProto$FieldOfView;

    invoke-direct {v1}, Llocation/unified/LocationDescriptorProto$FieldOfView;-><init>()V

    iput-object v1, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->fieldOfView:Llocation/unified/LocationDescriptorProto$FieldOfView;

    .line 1192
    :cond_1
    iget-object v1, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->fieldOfView:Llocation/unified/LocationDescriptorProto$FieldOfView;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1144
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x39 -> :sswitch_7
        0x42 -> :sswitch_8
    .end sparse-switch
.end method

.method public setAltitudeMetersFromGround(D)Llocation/unified/LocationDescriptorProto$LocationAttributesProto;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 1036
    iput-wide p1, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->altitudeMetersFromGround_:D

    .line 1037
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    .line 1038
    return-object p0
.end method

.method public setBearingDegrees(I)Llocation/unified/LocationDescriptorProto$LocationAttributesProto;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 960
    iput p1, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bearingDegrees_:I

    .line 961
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    .line 962
    return-object p0
.end method

.method public setDetectedActivity(I)Llocation/unified/LocationDescriptorProto$LocationAttributesProto;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 922
    iput p1, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->detectedActivity_:I

    .line 923
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    .line 924
    return-object p0
.end method

.method public setHeadingDegrees(I)Llocation/unified/LocationDescriptorProto$LocationAttributesProto;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 941
    iput p1, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->headingDegrees_:I

    .line 942
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    .line 943
    return-object p0
.end method

.method public setRollDegrees(I)Llocation/unified/LocationDescriptorProto$LocationAttributesProto;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1017
    iput p1, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->rollDegrees_:I

    .line 1018
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    .line 1019
    return-object p0
.end method

.method public setSpeedKph(I)Llocation/unified/LocationDescriptorProto$LocationAttributesProto;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 979
    iput p1, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->speedKph_:I

    .line 980
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    .line 981
    return-object p0
.end method

.method public setTiltDegrees(I)Llocation/unified/LocationDescriptorProto$LocationAttributesProto;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 998
    iput p1, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->tiltDegrees_:I

    .line 999
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    .line 1000
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1073
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1074
    const/4 v0, 0x1

    iget v1, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->detectedActivity_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1076
    :cond_0
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1077
    const/4 v0, 0x2

    iget v1, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->headingDegrees_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1079
    :cond_1
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 1080
    const/4 v0, 0x3

    iget v1, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bearingDegrees_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1082
    :cond_2
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 1083
    const/4 v0, 0x4

    iget v1, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->speedKph_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1085
    :cond_3
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 1086
    const/4 v0, 0x5

    iget v1, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->tiltDegrees_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1088
    :cond_4
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 1089
    const/4 v0, 0x6

    iget v1, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->rollDegrees_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1091
    :cond_5
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 1092
    const/4 v0, 0x7

    iget-wide v1, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->altitudeMetersFromGround_:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 1094
    :cond_6
    iget-object v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->fieldOfView:Llocation/unified/LocationDescriptorProto$FieldOfView;

    if-eqz v0, :cond_7

    .line 1095
    const/16 v0, 0x8

    iget-object v1, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->fieldOfView:Llocation/unified/LocationDescriptorProto$FieldOfView;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1097
    :cond_7
    return-void
.end method
