.class public final Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallBusinessAction"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;


# instance fields
.field private bitField0_:I

.field public businessLocation:Lcom/google/majel/proto/ActionV2Protos$Location;

.field private businessName_:Ljava/lang/String;

.field private dEPRECATEDBusinessAddress_:Ljava/lang/String;

.field public localResults:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

.field public phoneNumber:Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

.field private previewImageUrl_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4177
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 4178
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->clear()Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;

    .line 4179
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;
    .locals 2

    .prologue
    .line 4089
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;

    if-nez v0, :cond_1

    .line 4090
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 4092
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;

    if-nez v0, :cond_0

    .line 4093
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;

    .line 4095
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4097
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;

    return-object v0

    .line 4095
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4310
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 4304
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4182
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->bitField0_:I

    .line 4183
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->businessName_:Ljava/lang/String;

    .line 4184
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->dEPRECATEDBusinessAddress_:Ljava/lang/String;

    .line 4185
    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->phoneNumber:Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    .line 4186
    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->businessLocation:Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 4187
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->previewImageUrl_:Ljava/lang/String;

    .line 4188
    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->localResults:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    .line 4189
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->cachedSize:I

    .line 4190
    return-object p0
.end method

.method public clearBusinessName()Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;
    .locals 1

    .prologue
    .line 4119
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->businessName_:Ljava/lang/String;

    .line 4120
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->bitField0_:I

    .line 4121
    return-object p0
.end method

.method public clearDEPRECATEDBusinessAddress()Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;
    .locals 1

    .prologue
    .line 4141
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->dEPRECATEDBusinessAddress_:Ljava/lang/String;

    .line 4142
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->bitField0_:I

    .line 4143
    return-object p0
.end method

.method public clearPreviewImageUrl()Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;
    .locals 1

    .prologue
    .line 4169
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->previewImageUrl_:Ljava/lang/String;

    .line 4170
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->bitField0_:I

    .line 4171
    return-object p0
.end method

.method public getBusinessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4105
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->businessName_:Ljava/lang/String;

    return-object v0
.end method

.method public getDEPRECATEDBusinessAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4127
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->dEPRECATEDBusinessAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4155
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->previewImageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 4218
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 4219
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 4220
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->businessName_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4223
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 4224
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->dEPRECATEDBusinessAddress_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4227
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->phoneNumber:Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    if-eqz v1, :cond_2

    .line 4228
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->phoneNumber:Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4231
    :cond_2
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->businessLocation:Lcom/google/majel/proto/ActionV2Protos$Location;

    if-eqz v1, :cond_3

    .line 4232
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->businessLocation:Lcom/google/majel/proto/ActionV2Protos$Location;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4235
    :cond_3
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    .line 4236
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->previewImageUrl_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4239
    :cond_4
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->localResults:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    if-eqz v1, :cond_5

    .line 4240
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->localResults:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4243
    :cond_5
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->cachedSize:I

    .line 4244
    return v0
.end method

.method public hasBusinessName()Z
    .locals 1

    .prologue
    .line 4116
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDEPRECATEDBusinessAddress()Z
    .locals 1

    .prologue
    .line 4138
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPreviewImageUrl()Z
    .locals 1

    .prologue
    .line 4166
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

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
    .line 4083
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4252
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 4253
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 4257
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4258
    :sswitch_0
    return-object p0

    .line 4263
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->businessName_:Ljava/lang/String;

    .line 4264
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->bitField0_:I

    goto :goto_0

    .line 4268
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->dEPRECATEDBusinessAddress_:Ljava/lang/String;

    .line 4269
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->bitField0_:I

    goto :goto_0

    .line 4273
    :sswitch_3
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->phoneNumber:Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    if-nez v1, :cond_1

    .line 4274
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->phoneNumber:Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    .line 4276
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->phoneNumber:Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 4280
    :sswitch_4
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->businessLocation:Lcom/google/majel/proto/ActionV2Protos$Location;

    if-nez v1, :cond_2

    .line 4281
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$Location;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$Location;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->businessLocation:Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 4283
    :cond_2
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->businessLocation:Lcom/google/majel/proto/ActionV2Protos$Location;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 4287
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->previewImageUrl_:Ljava/lang/String;

    .line 4288
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->bitField0_:I

    goto :goto_0

    .line 4292
    :sswitch_6
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->localResults:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    if-nez v1, :cond_3

    .line 4293
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->localResults:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    .line 4295
    :cond_3
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->localResults:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 4253
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public setBusinessName(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4108
    if-nez p1, :cond_0

    .line 4109
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4111
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->businessName_:Ljava/lang/String;

    .line 4112
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->bitField0_:I

    .line 4113
    return-object p0
.end method

.method public setDEPRECATEDBusinessAddress(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4130
    if-nez p1, :cond_0

    .line 4131
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4133
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->dEPRECATEDBusinessAddress_:Ljava/lang/String;

    .line 4134
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->bitField0_:I

    .line 4135
    return-object p0
.end method

.method public setPreviewImageUrl(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4158
    if-nez p1, :cond_0

    .line 4159
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4161
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->previewImageUrl_:Ljava/lang/String;

    .line 4162
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->bitField0_:I

    .line 4163
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4196
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 4197
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->businessName_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4199
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 4200
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->dEPRECATEDBusinessAddress_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4202
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->phoneNumber:Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    if-eqz v0, :cond_2

    .line 4203
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->phoneNumber:Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4205
    :cond_2
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->businessLocation:Lcom/google/majel/proto/ActionV2Protos$Location;

    if-eqz v0, :cond_3

    .line 4206
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->businessLocation:Lcom/google/majel/proto/ActionV2Protos$Location;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4208
    :cond_3
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 4209
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->previewImageUrl_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4211
    :cond_4
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->localResults:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    if-eqz v0, :cond_5

    .line 4212
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$CallBusinessAction;->localResults:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4214
    :cond_5
    return-void
.end method
