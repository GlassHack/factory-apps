.class public final Lcom/google/glass/companion/Proto$ScreenShot;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$ScreenShot;


# instance fields
.field private bitField0_:I

.field private isScreenOnG2C_:Z

.field private screenshotBytesG2C_:[B

.field private startScreenshotRequestC2G_:Z

.field private stopScreenshotRequestC2G_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4975
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$ScreenShot;

    sput-object v0, Lcom/google/glass/companion/Proto$ScreenShot;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$ScreenShot;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4976
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4981
    iput-boolean v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->startScreenshotRequestC2G_:Z

    .line 5000
    iput-boolean v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->stopScreenshotRequestC2G_:Z

    .line 5019
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->screenshotBytesG2C_:[B

    .line 5041
    iput-boolean v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->isScreenOnG2C_:Z

    .line 4976
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$ScreenShot;
    .locals 1

    .prologue
    .line 5180
    new-instance v0, Lcom/google/glass/companion/Proto$ScreenShot;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$ScreenShot;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$ScreenShot;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$ScreenShot;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$ScreenShot;
    .locals 1

    .prologue
    .line 5174
    new-instance v0, Lcom/google/glass/companion/Proto$ScreenShot;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$ScreenShot;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$ScreenShot;

    return-object v0
.end method


# virtual methods
.method public final clearIsScreenOnG2C()Lcom/google/glass/companion/Proto$ScreenShot;
    .locals 1

    .prologue
    .line 5054
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->isScreenOnG2C_:Z

    .line 5055
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    .line 5056
    return-object p0
.end method

.method public final clearScreenshotBytesG2C()Lcom/google/glass/companion/Proto$ScreenShot;
    .locals 1

    .prologue
    .line 5035
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->screenshotBytesG2C_:[B

    .line 5036
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    .line 5037
    return-object p0
.end method

.method public final clearStartScreenshotRequestC2G()Lcom/google/glass/companion/Proto$ScreenShot;
    .locals 1

    .prologue
    .line 4994
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->startScreenshotRequestC2G_:Z

    .line 4995
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    .line 4996
    return-object p0
.end method

.method public final clearStopScreenshotRequestC2G()Lcom/google/glass/companion/Proto$ScreenShot;
    .locals 1

    .prologue
    .line 5013
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->stopScreenshotRequestC2G_:Z

    .line 5014
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    .line 5015
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5061
    if-ne p1, p0, :cond_1

    .line 5068
    :cond_0
    :goto_0
    return v0

    .line 5062
    :cond_1
    instance-of v2, p1, Lcom/google/glass/companion/Proto$ScreenShot;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 5063
    :cond_2
    check-cast p1, Lcom/google/glass/companion/Proto$ScreenShot;

    .line 5064
    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$ScreenShot;->startScreenshotRequestC2G_:Z

    iget-boolean v3, p1, Lcom/google/glass/companion/Proto$ScreenShot;->startScreenshotRequestC2G_:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$ScreenShot;->stopScreenshotRequestC2G_:Z

    iget-boolean v3, p1, Lcom/google/glass/companion/Proto$ScreenShot;->stopScreenshotRequestC2G_:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/glass/companion/Proto$ScreenShot;->screenshotBytesG2C_:[B

    iget-object v3, p1, Lcom/google/glass/companion/Proto$ScreenShot;->screenshotBytesG2C_:[B

    .line 5066
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$ScreenShot;->isScreenOnG2C_:Z

    iget-boolean v3, p1, Lcom/google/glass/companion/Proto$ScreenShot;->isScreenOnG2C_:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/glass/companion/Proto$ScreenShot;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/glass/companion/Proto$ScreenShot;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 5068
    goto :goto_0

    .line 5066
    :cond_4
    iget-object v2, p0, Lcom/google/glass/companion/Proto$ScreenShot;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$ScreenShot;->unknownFieldData:Ljava/util/List;

    .line 5068
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getIsScreenOnG2C()Z
    .locals 1

    .prologue
    .line 5043
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->isScreenOnG2C_:Z

    return v0
.end method

.method public final getScreenshotBytesG2C()[B
    .locals 1

    .prologue
    .line 5021
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->screenshotBytesG2C_:[B

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 5106
    const/4 v0, 0x0

    .line 5107
    iget v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 5108
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$ScreenShot;->startScreenshotRequestC2G_:Z

    .line 5109
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5111
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 5112
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$ScreenShot;->stopScreenshotRequestC2G_:Z

    .line 5113
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5115
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 5116
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/glass/companion/Proto$ScreenShot;->screenshotBytesG2C_:[B

    .line 5117
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 5119
    :cond_2
    iget v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 5120
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$ScreenShot;->isScreenOnG2C_:Z

    .line 5121
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5123
    :cond_3
    iget-object v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5124
    iput v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->cachedSize:I

    .line 5125
    return v0
.end method

.method public final getStartScreenshotRequestC2G()Z
    .locals 1

    .prologue
    .line 4983
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->startScreenshotRequestC2G_:Z

    return v0
.end method

.method public final getStopScreenshotRequestC2G()Z
    .locals 1

    .prologue
    .line 5002
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->stopScreenshotRequestC2G_:Z

    return v0
.end method

.method public final hasIsScreenOnG2C()Z
    .locals 1

    .prologue
    .line 5051
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasScreenshotBytesG2C()Z
    .locals 1

    .prologue
    .line 5032
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasStartScreenshotRequestC2G()Z
    .locals 1

    .prologue
    .line 4991
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasStopScreenshotRequestC2G()Z
    .locals 1

    .prologue
    .line 5010
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 5072
    .line 5073
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->startScreenshotRequestC2G_:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 5074
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->stopScreenshotRequestC2G_:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v0, v4

    .line 5075
    iget-object v4, p0, Lcom/google/glass/companion/Proto$ScreenShot;->screenshotBytesG2C_:[B

    if-nez v4, :cond_3

    mul-int/lit8 v4, v0, 0x1f

    .line 5081
    :cond_0
    mul-int/lit8 v0, v4, 0x1f

    iget-boolean v4, p0, Lcom/google/glass/companion/Proto$ScreenShot;->isScreenOnG2C_:Z

    if-eqz v4, :cond_4

    :goto_2
    add-int/2addr v0, v1

    .line 5082
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_5

    :goto_3
    add-int/2addr v0, v3

    .line 5083
    return v0

    :cond_1
    move v0, v2

    .line 5073
    goto :goto_0

    :cond_2
    move v0, v2

    .line 5074
    goto :goto_1

    :cond_3
    move v4, v0

    move v0, v3

    .line 5077
    :goto_4
    iget-object v5, p0, Lcom/google/glass/companion/Proto$ScreenShot;->screenshotBytesG2C_:[B

    array-length v5, v5

    if-ge v0, v5, :cond_0

    .line 5078
    mul-int/lit8 v4, v4, 0x1f

    iget-object v5, p0, Lcom/google/glass/companion/Proto$ScreenShot;->screenshotBytesG2C_:[B

    aget-byte v5, v5, v0

    add-int/2addr v4, v5

    .line 5077
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    move v1, v2

    .line 5081
    goto :goto_2

    .line 5082
    :cond_5
    iget-object v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v3

    goto :goto_3
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$ScreenShot;
    .locals 2

    .prologue
    .line 5133
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 5134
    sparse-switch v0, :sswitch_data_0

    .line 5138
    iget-object v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 5139
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->unknownFieldData:Ljava/util/List;

    .line 5142
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5144
    :sswitch_0
    return-object p0

    .line 5149
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->startScreenshotRequestC2G_:Z

    .line 5150
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    goto :goto_0

    .line 5154
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->stopScreenshotRequestC2G_:Z

    .line 5155
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    goto :goto_0

    .line 5159
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->screenshotBytesG2C_:[B

    .line 5160
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    goto :goto_0

    .line 5164
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->isScreenOnG2C_:Z

    .line 5165
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    goto :goto_0

    .line 5134
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 4972
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$ScreenShot;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$ScreenShot;

    move-result-object v0

    return-object v0
.end method

.method public final setIsScreenOnG2C(Z)Lcom/google/glass/companion/Proto$ScreenShot;
    .locals 1

    .prologue
    .line 5046
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->isScreenOnG2C_:Z

    .line 5047
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    .line 5048
    return-object p0
.end method

.method public final setScreenshotBytesG2C([B)Lcom/google/glass/companion/Proto$ScreenShot;
    .locals 1

    .prologue
    .line 5024
    if-nez p1, :cond_0

    .line 5025
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5027
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->screenshotBytesG2C_:[B

    .line 5028
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    .line 5029
    return-object p0
.end method

.method public final setStartScreenshotRequestC2G(Z)Lcom/google/glass/companion/Proto$ScreenShot;
    .locals 1

    .prologue
    .line 4986
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->startScreenshotRequestC2G_:Z

    .line 4987
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    .line 4988
    return-object p0
.end method

.method public final setStopScreenshotRequestC2G(Z)Lcom/google/glass/companion/Proto$ScreenShot;
    .locals 1

    .prologue
    .line 5005
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->stopScreenshotRequestC2G_:Z

    .line 5006
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    .line 5007
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 5088
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 5089
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->startScreenshotRequestC2G_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5091
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 5092
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->stopScreenshotRequestC2G_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5094
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 5095
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->screenshotBytesG2C_:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 5097
    :cond_2
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 5098
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->isScreenOnG2C_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5100
    :cond_3
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 5102
    return-void
.end method
