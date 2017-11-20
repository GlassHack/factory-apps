.class public final Lcom/google/glass/companion/Proto$ScreenShot;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScreenShot"
.end annotation


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
    .line 5123
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$ScreenShot;

    sput-object v0, Lcom/google/glass/companion/Proto$ScreenShot;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$ScreenShot;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5124
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 5129
    iput-boolean v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->startScreenshotRequestC2G_:Z

    .line 5148
    iput-boolean v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->stopScreenshotRequestC2G_:Z

    .line 5167
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->screenshotBytesG2C_:[B

    .line 5189
    iput-boolean v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->isScreenOnG2C_:Z

    .line 5124
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$ScreenShot;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5328
    new-instance v0, Lcom/google/glass/companion/Proto$ScreenShot;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$ScreenShot;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$ScreenShot;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$ScreenShot;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$ScreenShot;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 5322
    new-instance v0, Lcom/google/glass/companion/Proto$ScreenShot;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$ScreenShot;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$ScreenShot;

    return-object v0
.end method


# virtual methods
.method public clearIsScreenOnG2C()Lcom/google/glass/companion/Proto$ScreenShot;
    .locals 1

    .prologue
    .line 5202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->isScreenOnG2C_:Z

    .line 5203
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    .line 5204
    return-object p0
.end method

.method public clearScreenshotBytesG2C()Lcom/google/glass/companion/Proto$ScreenShot;
    .locals 1

    .prologue
    .line 5183
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->screenshotBytesG2C_:[B

    .line 5184
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    .line 5185
    return-object p0
.end method

.method public clearStartScreenshotRequestC2G()Lcom/google/glass/companion/Proto$ScreenShot;
    .locals 1

    .prologue
    .line 5142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->startScreenshotRequestC2G_:Z

    .line 5143
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    .line 5144
    return-object p0
.end method

.method public clearStopScreenshotRequestC2G()Lcom/google/glass/companion/Proto$ScreenShot;
    .locals 1

    .prologue
    .line 5161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->stopScreenshotRequestC2G_:Z

    .line 5162
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    .line 5163
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5209
    if-ne p1, p0, :cond_1

    .line 5216
    :cond_0
    :goto_0
    return v1

    .line 5210
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$ScreenShot;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 5211
    check-cast v0, Lcom/google/glass/companion/Proto$ScreenShot;

    .line 5212
    .local v0, "other":Lcom/google/glass/companion/Proto$ScreenShot;
    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$ScreenShot;->startScreenshotRequestC2G_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/Proto$ScreenShot;->startScreenshotRequestC2G_:Z

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$ScreenShot;->stopScreenshotRequestC2G_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/Proto$ScreenShot;->stopScreenshotRequestC2G_:Z

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$ScreenShot;->screenshotBytesG2C_:[B

    iget-object v4, v0, Lcom/google/glass/companion/Proto$ScreenShot;->screenshotBytesG2C_:[B

    .line 5214
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$ScreenShot;->isScreenOnG2C_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/Proto$ScreenShot;->isScreenOnG2C_:Z

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$ScreenShot;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$ScreenShot;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 5216
    goto :goto_0

    .line 5214
    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ScreenShot;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$ScreenShot;->unknownFieldData:Ljava/util/List;

    .line 5216
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getIsScreenOnG2C()Z
    .locals 1

    .prologue
    .line 5191
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->isScreenOnG2C_:Z

    return v0
.end method

.method public getScreenshotBytesG2C()[B
    .locals 1

    .prologue
    .line 5169
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->screenshotBytesG2C_:[B

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 5254
    const/4 v0, 0x0

    .line 5255
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 5256
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$ScreenShot;->startScreenshotRequestC2G_:Z

    .line 5257
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5259
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 5260
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$ScreenShot;->stopScreenshotRequestC2G_:Z

    .line 5261
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5263
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 5264
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/glass/companion/Proto$ScreenShot;->screenshotBytesG2C_:[B

    .line 5265
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 5267
    :cond_2
    iget v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 5268
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$ScreenShot;->isScreenOnG2C_:Z

    .line 5269
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5271
    :cond_3
    iget-object v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5272
    iput v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->cachedSize:I

    .line 5273
    return v0
.end method

.method public getStartScreenshotRequestC2G()Z
    .locals 1

    .prologue
    .line 5131
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->startScreenshotRequestC2G_:Z

    return v0
.end method

.method public getStopScreenshotRequestC2G()Z
    .locals 1

    .prologue
    .line 5150
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->stopScreenshotRequestC2G_:Z

    return v0
.end method

.method public hasIsScreenOnG2C()Z
    .locals 1

    .prologue
    .line 5199
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

.method public hasScreenshotBytesG2C()Z
    .locals 1

    .prologue
    .line 5180
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

.method public hasStartScreenshotRequestC2G()Z
    .locals 1

    .prologue
    .line 5139
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

.method public hasStopScreenshotRequestC2G()Z
    .locals 1

    .prologue
    .line 5158
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

.method public hashCode()I
    .locals 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 5220
    const/16 v1, 0x11

    .line 5221
    .local v1, "result":I
    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$ScreenShot;->startScreenshotRequestC2G_:Z

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    add-int/lit16 v1, v2, 0x20f

    .line 5222
    mul-int/lit8 v5, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$ScreenShot;->stopScreenshotRequestC2G_:Z

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    add-int v1, v5, v2

    .line 5223
    iget-object v2, p0, Lcom/google/glass/companion/Proto$ScreenShot;->screenshotBytesG2C_:[B

    if-nez v2, :cond_3

    mul-int/lit8 v1, v1, 0x1f

    .line 5229
    :cond_0
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v5, p0, Lcom/google/glass/companion/Proto$ScreenShot;->isScreenOnG2C_:Z

    if-eqz v5, :cond_4

    :goto_2
    add-int v1, v2, v3

    .line 5230
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$ScreenShot;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_5

    const/4 v2, 0x0

    :goto_3
    add-int v1, v3, v2

    .line 5231
    return v1

    :cond_1
    move v2, v4

    .line 5221
    goto :goto_0

    :cond_2
    move v2, v4

    .line 5222
    goto :goto_1

    .line 5225
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v2, p0, Lcom/google/glass/companion/Proto$ScreenShot;->screenshotBytesG2C_:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 5226
    mul-int/lit8 v2, v1, 0x1f

    iget-object v5, p0, Lcom/google/glass/companion/Proto$ScreenShot;->screenshotBytesG2C_:[B

    aget-byte v5, v5, v0

    add-int v1, v2, v5

    .line 5225
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .end local v0    # "i":I
    :cond_4
    move v3, v4

    .line 5229
    goto :goto_2

    .line 5230
    :cond_5
    iget-object v2, p0, Lcom/google/glass/companion/Proto$ScreenShot;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_3
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$ScreenShot;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5281
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 5282
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 5286
    iget-object v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 5287
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->unknownFieldData:Ljava/util/List;

    .line 5290
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5292
    :sswitch_0
    return-object p0

    .line 5297
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->startScreenshotRequestC2G_:Z

    .line 5298
    iget v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    goto :goto_0

    .line 5302
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->stopScreenshotRequestC2G_:Z

    .line 5303
    iget v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    goto :goto_0

    .line 5307
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->screenshotBytesG2C_:[B

    .line 5308
    iget v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    goto :goto_0

    .line 5312
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->isScreenOnG2C_:Z

    .line 5313
    iget v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    goto :goto_0

    .line 5282
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

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5120
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$ScreenShot;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$ScreenShot;

    move-result-object v0

    return-object v0
.end method

.method public setIsScreenOnG2C(Z)Lcom/google/glass/companion/Proto$ScreenShot;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 5194
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->isScreenOnG2C_:Z

    .line 5195
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    .line 5196
    return-object p0
.end method

.method public setScreenshotBytesG2C([B)Lcom/google/glass/companion/Proto$ScreenShot;
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 5172
    if-nez p1, :cond_0

    .line 5173
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5175
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->screenshotBytesG2C_:[B

    .line 5176
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    .line 5177
    return-object p0
.end method

.method public setStartScreenshotRequestC2G(Z)Lcom/google/glass/companion/Proto$ScreenShot;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 5134
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->startScreenshotRequestC2G_:Z

    .line 5135
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    .line 5136
    return-object p0
.end method

.method public setStopScreenshotRequestC2G(Z)Lcom/google/glass/companion/Proto$ScreenShot;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 5153
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->stopScreenshotRequestC2G_:Z

    .line 5154
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    .line 5155
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5236
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 5237
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->startScreenshotRequestC2G_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5239
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 5240
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->stopScreenshotRequestC2G_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5242
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 5243
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->screenshotBytesG2C_:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 5245
    :cond_2
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 5246
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->isScreenOnG2C_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5248
    :cond_3
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 5250
    return-void
.end method
