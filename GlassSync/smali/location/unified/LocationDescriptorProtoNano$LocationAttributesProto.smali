.class public final Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "LocationDescriptorProtoNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llocation/unified/LocationDescriptorProtoNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocationAttributesProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto$ActivityType;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;


# instance fields
.field private altitudeMetersFromGround_:D

.field private bearingDegrees_:I

.field private bitField0_:I

.field private detectedActivity_:I

.field private fieldOfView_:Llocation/unified/LocationDescriptorProtoNano$FieldOfView;

.field private headingDegrees_:I

.field private rollDegrees_:I

.field private speedKph_:I

.field private tiltDegrees_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 843
    const/4 v0, 0x0

    new-array v0, v0, [Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;

    sput-object v0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->EMPTY_ARRAY:[Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 844
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 857
    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->detectedActivity_:I

    .line 876
    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->headingDegrees_:I

    .line 895
    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bearingDegrees_:I

    .line 914
    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->speedKph_:I

    .line 933
    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->tiltDegrees_:I

    .line 952
    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->rollDegrees_:I

    .line 971
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->altitudeMetersFromGround_:D

    .line 844
    return-void
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1181
    new-instance v0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;-><init>()V

    invoke-virtual {v0, p0}, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1175
    new-instance v0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;

    return-object v0
.end method


# virtual methods
.method public clearAltitudeMetersFromGround()Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;
    .locals 2

    .prologue
    .line 984
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->altitudeMetersFromGround_:D

    .line 985
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    .line 986
    return-object p0
.end method

.method public clearBearingDegrees()Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;
    .locals 1

    .prologue
    .line 908
    const/4 v0, 0x0

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bearingDegrees_:I

    .line 909
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    .line 910
    return-object p0
.end method

.method public clearDetectedActivity()Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;
    .locals 1

    .prologue
    .line 870
    const/4 v0, 0x0

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->detectedActivity_:I

    .line 871
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    .line 872
    return-object p0
.end method

.method public clearFieldOfView()Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;
    .locals 1

    .prologue
    .line 1005
    const/4 v0, 0x0

    iput-object v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->fieldOfView_:Llocation/unified/LocationDescriptorProtoNano$FieldOfView;

    .line 1006
    return-object p0
.end method

.method public clearHeadingDegrees()Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;
    .locals 1

    .prologue
    .line 889
    const/4 v0, 0x0

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->headingDegrees_:I

    .line 890
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    .line 891
    return-object p0
.end method

.method public clearRollDegrees()Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;
    .locals 1

    .prologue
    .line 965
    const/4 v0, 0x0

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->rollDegrees_:I

    .line 966
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    .line 967
    return-object p0
.end method

.method public clearSpeedKph()Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;
    .locals 1

    .prologue
    .line 927
    const/4 v0, 0x0

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->speedKph_:I

    .line 928
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    .line 929
    return-object p0
.end method

.method public clearTiltDegrees()Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;
    .locals 1

    .prologue
    .line 946
    const/4 v0, 0x0

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->tiltDegrees_:I

    .line 947
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    .line 948
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1010
    if-ne p1, p0, :cond_1

    .line 1013
    :cond_0
    :goto_0
    return v1

    .line 1011
    :cond_1
    instance-of v3, p1, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1012
    check-cast v0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;

    .line 1013
    .local v0, "other":Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;
    iget v3, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->detectedActivity_:I

    iget v4, v0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->detectedActivity_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->headingDegrees_:I

    iget v4, v0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->headingDegrees_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bearingDegrees_:I

    iget v4, v0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bearingDegrees_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->speedKph_:I

    iget v4, v0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->speedKph_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->tiltDegrees_:I

    iget v4, v0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->tiltDegrees_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->rollDegrees_:I

    iget v4, v0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->rollDegrees_:I

    if-ne v3, v4, :cond_3

    iget-wide v3, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->altitudeMetersFromGround_:D

    iget-wide v5, v0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->altitudeMetersFromGround_:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_3

    iget-object v3, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->fieldOfView_:Llocation/unified/LocationDescriptorProtoNano$FieldOfView;

    if-nez v3, :cond_4

    iget-object v3, v0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->fieldOfView_:Llocation/unified/LocationDescriptorProtoNano$FieldOfView;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->fieldOfView_:Llocation/unified/LocationDescriptorProtoNano$FieldOfView;

    iget-object v4, v0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->fieldOfView_:Llocation/unified/LocationDescriptorProtoNano$FieldOfView;

    invoke-virtual {v3, v4}, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getAltitudeMetersFromGround()D
    .locals 2

    .prologue
    .line 973
    iget-wide v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->altitudeMetersFromGround_:D

    return-wide v0
.end method

.method public getBearingDegrees()I
    .locals 1

    .prologue
    .line 897
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bearingDegrees_:I

    return v0
.end method

.method public getDetectedActivity()I
    .locals 1

    .prologue
    .line 859
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->detectedActivity_:I

    return v0
.end method

.method public getFieldOfView()Llocation/unified/LocationDescriptorProtoNano$FieldOfView;
    .locals 1

    .prologue
    .line 992
    iget-object v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->fieldOfView_:Llocation/unified/LocationDescriptorProtoNano$FieldOfView;

    return-object v0
.end method

.method public getHeadingDegrees()I
    .locals 1

    .prologue
    .line 878
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->headingDegrees_:I

    return v0
.end method

.method public getRollDegrees()I
    .locals 1

    .prologue
    .line 954
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->rollDegrees_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 1066
    const/4 v0, 0x0

    .line 1067
    .local v0, "size":I
    iget v1, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1068
    const/4 v1, 0x1

    iget v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->detectedActivity_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1071
    :cond_0
    iget v1, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1072
    const/4 v1, 0x2

    iget v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->headingDegrees_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1075
    :cond_1
    iget v1, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 1076
    const/4 v1, 0x3

    iget v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bearingDegrees_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1079
    :cond_2
    iget v1, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 1080
    const/4 v1, 0x4

    iget v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->speedKph_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1083
    :cond_3
    iget v1, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 1084
    const/4 v1, 0x5

    iget v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->tiltDegrees_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1087
    :cond_4
    iget v1, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 1088
    const/4 v1, 0x6

    iget v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->rollDegrees_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1091
    :cond_5
    iget v1, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 1092
    const/4 v1, 0x7

    iget-wide v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->altitudeMetersFromGround_:D

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 1095
    :cond_6
    iget-object v1, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->fieldOfView_:Llocation/unified/LocationDescriptorProtoNano$FieldOfView;

    if-eqz v1, :cond_7

    .line 1096
    const/16 v1, 0x8

    iget-object v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->fieldOfView_:Llocation/unified/LocationDescriptorProtoNano$FieldOfView;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1099
    :cond_7
    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->cachedSize:I

    .line 1100
    return v0
.end method

.method public getSpeedKph()I
    .locals 1

    .prologue
    .line 916
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->speedKph_:I

    return v0
.end method

.method public getTiltDegrees()I
    .locals 1

    .prologue
    .line 935
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->tiltDegrees_:I

    return v0
.end method

.method public hasAltitudeMetersFromGround()Z
    .locals 1

    .prologue
    .line 981
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

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
    .line 905
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

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
    .line 867
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFieldOfView()Z
    .locals 1

    .prologue
    .line 1002
    iget-object v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->fieldOfView_:Llocation/unified/LocationDescriptorProtoNano$FieldOfView;

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
    .line 886
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

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
    .line 962
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

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
    .line 924
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

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
    .line 943
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 1024
    const/16 v0, 0x11

    .line 1025
    .local v0, "result":I
    iget v1, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->detectedActivity_:I

    add-int/lit16 v0, v1, 0x20f

    .line 1026
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->headingDegrees_:I

    add-int v0, v1, v2

    .line 1027
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bearingDegrees_:I

    add-int v0, v1, v2

    .line 1028
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->speedKph_:I

    add-int v0, v1, v2

    .line 1029
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->tiltDegrees_:I

    add-int v0, v1, v2

    .line 1030
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->rollDegrees_:I

    add-int v0, v1, v2

    .line 1031
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->altitudeMetersFromGround_:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->altitudeMetersFromGround_:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 1032
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->fieldOfView_:Llocation/unified/LocationDescriptorProtoNano$FieldOfView;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int v0, v2, v1

    .line 1033
    return v0

    .line 1032
    :cond_0
    iget-object v1, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->fieldOfView_:Llocation/unified/LocationDescriptorProtoNano$FieldOfView;

    invoke-virtual {v1}, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->hashCode()I

    move-result v1

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
    .line 840
    invoke-virtual {p0, p1}, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;
    .locals 4
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1108
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1109
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1113
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1114
    :sswitch_0
    return-object p0

    .line 1119
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 1120
    .local v1, "temp":I
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 1125
    :cond_1
    iput v1, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->detectedActivity_:I

    .line 1129
    :goto_1
    iget v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    goto :goto_0

    .line 1127
    :cond_2
    const/4 v2, 0x0

    iput v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->detectedActivity_:I

    goto :goto_1

    .line 1133
    .end local v1    # "temp":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->headingDegrees_:I

    .line 1134
    iget v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    goto :goto_0

    .line 1138
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bearingDegrees_:I

    .line 1139
    iget v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    goto :goto_0

    .line 1143
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->speedKph_:I

    .line 1144
    iget v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    goto :goto_0

    .line 1148
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->tiltDegrees_:I

    .line 1149
    iget v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    goto :goto_0

    .line 1153
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->rollDegrees_:I

    .line 1154
    iget v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    goto :goto_0

    .line 1158
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->altitudeMetersFromGround_:D

    .line 1159
    iget v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    goto :goto_0

    .line 1163
    :sswitch_8
    iget-object v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->fieldOfView_:Llocation/unified/LocationDescriptorProtoNano$FieldOfView;

    if-nez v2, :cond_3

    .line 1164
    new-instance v2, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;

    invoke-direct {v2}, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;-><init>()V

    iput-object v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->fieldOfView_:Llocation/unified/LocationDescriptorProtoNano$FieldOfView;

    .line 1166
    :cond_3
    iget-object v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->fieldOfView_:Llocation/unified/LocationDescriptorProtoNano$FieldOfView;

    invoke-virtual {p1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1109
    nop

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

.method public setAltitudeMetersFromGround(D)Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 976
    iput-wide p1, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->altitudeMetersFromGround_:D

    .line 977
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    .line 978
    return-object p0
.end method

.method public setBearingDegrees(I)Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 900
    iput p1, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bearingDegrees_:I

    .line 901
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    .line 902
    return-object p0
.end method

.method public setDetectedActivity(I)Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 862
    iput p1, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->detectedActivity_:I

    .line 863
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    .line 864
    return-object p0
.end method

.method public setFieldOfView(Llocation/unified/LocationDescriptorProtoNano$FieldOfView;)Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;
    .locals 1
    .param p1, "value"    # Llocation/unified/LocationDescriptorProtoNano$FieldOfView;

    .prologue
    .line 995
    if-nez p1, :cond_0

    .line 996
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 998
    :cond_0
    iput-object p1, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->fieldOfView_:Llocation/unified/LocationDescriptorProtoNano$FieldOfView;

    .line 999
    return-object p0
.end method

.method public setHeadingDegrees(I)Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 881
    iput p1, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->headingDegrees_:I

    .line 882
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    .line 883
    return-object p0
.end method

.method public setRollDegrees(I)Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 957
    iput p1, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->rollDegrees_:I

    .line 958
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    .line 959
    return-object p0
.end method

.method public setSpeedKph(I)Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 919
    iput p1, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->speedKph_:I

    .line 920
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    .line 921
    return-object p0
.end method

.method public setTiltDegrees(I)Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 938
    iput p1, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->tiltDegrees_:I

    .line 939
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    .line 940
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
    .line 1038
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1039
    const/4 v0, 0x1

    iget v1, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->detectedActivity_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1041
    :cond_0
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1042
    const/4 v0, 0x2

    iget v1, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->headingDegrees_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1044
    :cond_1
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 1045
    const/4 v0, 0x3

    iget v1, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bearingDegrees_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1047
    :cond_2
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 1048
    const/4 v0, 0x4

    iget v1, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->speedKph_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1050
    :cond_3
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 1051
    const/4 v0, 0x5

    iget v1, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->tiltDegrees_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1053
    :cond_4
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 1054
    const/4 v0, 0x6

    iget v1, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->rollDegrees_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1056
    :cond_5
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 1057
    const/4 v0, 0x7

    iget-wide v1, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->altitudeMetersFromGround_:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 1059
    :cond_6
    iget-object v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->fieldOfView_:Llocation/unified/LocationDescriptorProtoNano$FieldOfView;

    if-eqz v0, :cond_7

    .line 1060
    const/16 v0, 0x8

    iget-object v1, p0, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->fieldOfView_:Llocation/unified/LocationDescriptorProtoNano$FieldOfView;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1062
    :cond_7
    return-void
.end method
