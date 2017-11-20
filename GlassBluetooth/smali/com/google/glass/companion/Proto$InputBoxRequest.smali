.class public final Lcom/google/glass/companion/Proto$InputBoxRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InputBoxRequest"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$InputBoxRequest;


# instance fields
.field private bitField0_:I

.field private dismissInputBox_:Z

.field private handlerObject_:[B

.field private hintText_:Ljava/lang/String;

.field private inputType_:I

.field private summaryText_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6031
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$InputBoxRequest;

    sput-object v0, Lcom/google/glass/companion/Proto$InputBoxRequest;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$InputBoxRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6032
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 6037
    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->dismissInputBox_:Z

    .line 6056
    iput v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->inputType_:I

    .line 6075
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->summaryText_:Ljava/lang/String;

    .line 6097
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->hintText_:Ljava/lang/String;

    .line 6119
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->handlerObject_:[B

    .line 6032
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$InputBoxRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6275
    new-instance v0, Lcom/google/glass/companion/Proto$InputBoxRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$InputBoxRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$InputBoxRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$InputBoxRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$InputBoxRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 6269
    new-instance v0, Lcom/google/glass/companion/Proto$InputBoxRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$InputBoxRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$InputBoxRequest;

    return-object v0
.end method


# virtual methods
.method public clearDismissInputBox()Lcom/google/glass/companion/Proto$InputBoxRequest;
    .locals 1

    .prologue
    .line 6050
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->dismissInputBox_:Z

    .line 6051
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    .line 6052
    return-object p0
.end method

.method public clearHandlerObject()Lcom/google/glass/companion/Proto$InputBoxRequest;
    .locals 1

    .prologue
    .line 6135
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->handlerObject_:[B

    .line 6136
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    .line 6137
    return-object p0
.end method

.method public clearHintText()Lcom/google/glass/companion/Proto$InputBoxRequest;
    .locals 1

    .prologue
    .line 6113
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->hintText_:Ljava/lang/String;

    .line 6114
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    .line 6115
    return-object p0
.end method

.method public clearInputType()Lcom/google/glass/companion/Proto$InputBoxRequest;
    .locals 1

    .prologue
    .line 6069
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->inputType_:I

    .line 6070
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    .line 6071
    return-object p0
.end method

.method public clearSummaryText()Lcom/google/glass/companion/Proto$InputBoxRequest;
    .locals 1

    .prologue
    .line 6091
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->summaryText_:Ljava/lang/String;

    .line 6092
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    .line 6093
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6142
    if-ne p1, p0, :cond_1

    .line 6150
    :cond_0
    :goto_0
    return v1

    .line 6143
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$InputBoxRequest;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 6144
    check-cast v0, Lcom/google/glass/companion/Proto$InputBoxRequest;

    .line 6145
    .local v0, "other":Lcom/google/glass/companion/Proto$InputBoxRequest;
    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->dismissInputBox_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/Proto$InputBoxRequest;->dismissInputBox_:Z

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->inputType_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$InputBoxRequest;->inputType_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->summaryText_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$InputBoxRequest;->summaryText_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 6147
    :goto_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->hintText_:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/companion/Proto$InputBoxRequest;->hintText_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 6148
    :goto_2
    iget-object v3, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->handlerObject_:[B

    iget-object v4, v0, Lcom/google/glass/companion/Proto$InputBoxRequest;->handlerObject_:[B

    .line 6149
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/glass/companion/Proto$InputBoxRequest;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 6150
    goto :goto_0

    .line 6145
    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->summaryText_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$InputBoxRequest;->summaryText_:Ljava/lang/String;

    .line 6147
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->hintText_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$InputBoxRequest;->hintText_:Ljava/lang/String;

    .line 6148
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    .line 6149
    :cond_6
    iget-object v3, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$InputBoxRequest;->unknownFieldData:Ljava/util/List;

    .line 6150
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getDismissInputBox()Z
    .locals 1

    .prologue
    .line 6039
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->dismissInputBox_:Z

    return v0
.end method

.method public getHandlerObject()[B
    .locals 1

    .prologue
    .line 6121
    iget-object v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->handlerObject_:[B

    return-object v0
.end method

.method public getHintText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6099
    iget-object v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->hintText_:Ljava/lang/String;

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 6058
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->inputType_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 6192
    const/4 v0, 0x0

    .line 6193
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 6194
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->dismissInputBox_:Z

    .line 6195
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6197
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 6198
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->inputType_:I

    .line 6199
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6201
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 6202
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->summaryText_:Ljava/lang/String;

    .line 6203
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6205
    :cond_2
    iget v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 6206
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->hintText_:Ljava/lang/String;

    .line 6207
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6209
    :cond_3
    iget v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 6210
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->handlerObject_:[B

    .line 6211
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 6213
    :cond_4
    iget-object v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6214
    iput v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->cachedSize:I

    .line 6215
    return v0
.end method

.method public getSummaryText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6077
    iget-object v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->summaryText_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDismissInputBox()Z
    .locals 1

    .prologue
    .line 6047
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHandlerObject()Z
    .locals 1

    .prologue
    .line 6132
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHintText()Z
    .locals 1

    .prologue
    .line 6110
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInputType()Z
    .locals 1

    .prologue
    .line 6066
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSummaryText()Z
    .locals 1

    .prologue
    .line 6088
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 6154
    const/16 v1, 0x11

    .line 6155
    .local v1, "result":I
    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->dismissInputBox_:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    add-int/lit16 v1, v2, 0x20f

    .line 6156
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->inputType_:I

    add-int v1, v2, v4

    .line 6157
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->summaryText_:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 6158
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->hintText_:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 6159
    iget-object v2, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->handlerObject_:[B

    if-nez v2, :cond_4

    mul-int/lit8 v1, v1, 0x1f

    .line 6165
    :cond_0
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->unknownFieldData:Ljava/util/List;

    if-nez v4, :cond_5

    :goto_3
    add-int v1, v2, v3

    .line 6166
    return v1

    .line 6155
    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    .line 6157
    :cond_2
    iget-object v2, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->summaryText_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 6158
    :cond_3
    iget-object v2, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->hintText_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 6161
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v2, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->handlerObject_:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 6162
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->handlerObject_:[B

    aget-byte v4, v4, v0

    add-int v1, v2, v4

    .line 6161
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 6165
    .end local v0    # "i":I
    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    goto :goto_3
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$InputBoxRequest;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6223
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 6224
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 6228
    iget-object v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 6229
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->unknownFieldData:Ljava/util/List;

    .line 6232
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6234
    :sswitch_0
    return-object p0

    .line 6239
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->dismissInputBox_:Z

    .line 6240
    iget v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    goto :goto_0

    .line 6244
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->inputType_:I

    .line 6245
    iget v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    goto :goto_0

    .line 6249
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->summaryText_:Ljava/lang/String;

    .line 6250
    iget v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    goto :goto_0

    .line 6254
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->hintText_:Ljava/lang/String;

    .line 6255
    iget v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    goto :goto_0

    .line 6259
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->handlerObject_:[B

    .line 6260
    iget v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    goto :goto_0

    .line 6224
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
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
    .line 6028
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$InputBoxRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$InputBoxRequest;

    move-result-object v0

    return-object v0
.end method

.method public setDismissInputBox(Z)Lcom/google/glass/companion/Proto$InputBoxRequest;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 6042
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->dismissInputBox_:Z

    .line 6043
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    .line 6044
    return-object p0
.end method

.method public setHandlerObject([B)Lcom/google/glass/companion/Proto$InputBoxRequest;
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 6124
    if-nez p1, :cond_0

    .line 6125
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6127
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->handlerObject_:[B

    .line 6128
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    .line 6129
    return-object p0
.end method

.method public setHintText(Ljava/lang/String;)Lcom/google/glass/companion/Proto$InputBoxRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6102
    if-nez p1, :cond_0

    .line 6103
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6105
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->hintText_:Ljava/lang/String;

    .line 6106
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    .line 6107
    return-object p0
.end method

.method public setInputType(I)Lcom/google/glass/companion/Proto$InputBoxRequest;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6061
    iput p1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->inputType_:I

    .line 6062
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    .line 6063
    return-object p0
.end method

.method public setSummaryText(Ljava/lang/String;)Lcom/google/glass/companion/Proto$InputBoxRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6080
    if-nez p1, :cond_0

    .line 6081
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6083
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->summaryText_:Ljava/lang/String;

    .line 6084
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    .line 6085
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
    .line 6171
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 6172
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->dismissInputBox_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 6174
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 6175
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->inputType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6177
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 6178
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->summaryText_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6180
    :cond_2
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 6181
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->hintText_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6183
    :cond_3
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 6184
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->handlerObject_:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 6186
    :cond_4
    iget-object v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 6188
    return-void
.end method
