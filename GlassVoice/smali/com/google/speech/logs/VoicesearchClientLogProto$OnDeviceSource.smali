.class public final Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "VoicesearchClientLogProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/VoicesearchClientLogProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OnDeviceSource"
.end annotation


# static fields
.field public static final CANONICAL_SOURCE_APPS:I = 0x2

.field public static final CANONICAL_SOURCE_BROWSER:I = 0x4

.field public static final CANONICAL_SOURCE_CHROME:I = 0x3

.field public static final CANONICAL_SOURCE_CONTACTS:I = 0x1

.field public static final CANONICAL_SOURCE_OTHER:I = 0x5

.field public static final SOURCE_TYPE_CONTENT_PROVIDER:I = 0x0

.field public static final SOURCE_TYPE_ICING:I = 0x1

.field private static volatile _emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;


# instance fields
.field private bitField0_:I

.field private canonicalSource_:I

.field private packageName_:Ljava/lang/String;

.field private sourceType_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5193
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 5194
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->clear()Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;

    .line 5195
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;
    .locals 2

    .prologue
    .line 5120
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;

    if-nez v0, :cond_1

    .line 5121
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 5123
    :try_start_0
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;

    if-nez v0, :cond_0

    .line 5124
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;

    sput-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;

    .line 5126
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5128
    :cond_1
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;

    return-object v0

    .line 5126
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5281
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 5275
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5198
    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->bitField0_:I

    .line 5199
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->packageName_:Ljava/lang/String;

    .line 5200
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->canonicalSource_:I

    .line 5201
    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->sourceType_:I

    .line 5202
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->cachedSize:I

    .line 5203
    return-object p0
.end method

.method public clearCanonicalSource()Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;
    .locals 1

    .prologue
    .line 5169
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->canonicalSource_:I

    .line 5170
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->bitField0_:I

    .line 5171
    return-object p0
.end method

.method public clearPackageName()Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;
    .locals 1

    .prologue
    .line 5150
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->packageName_:Ljava/lang/String;

    .line 5151
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->bitField0_:I

    .line 5152
    return-object p0
.end method

.method public clearSourceType()Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;
    .locals 1

    .prologue
    .line 5188
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->sourceType_:I

    .line 5189
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->bitField0_:I

    .line 5190
    return-object p0
.end method

.method public getCanonicalSource()I
    .locals 1

    .prologue
    .line 5158
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->canonicalSource_:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5136
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->packageName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 5222
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 5223
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 5224
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->packageName_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5227
    :cond_0
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 5228
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->canonicalSource_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5231
    :cond_1
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 5232
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->sourceType_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5235
    :cond_2
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->cachedSize:I

    .line 5236
    return v0
.end method

.method public getSourceType()I
    .locals 1

    .prologue
    .line 5177
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->sourceType_:I

    return v0
.end method

.method public hasCanonicalSource()Z
    .locals 1

    .prologue
    .line 5166
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPackageName()Z
    .locals 1

    .prologue
    .line 5147
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSourceType()Z
    .locals 1

    .prologue
    .line 5185
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->bitField0_:I

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
    .line 5103
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5244
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 5245
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 5249
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5250
    :sswitch_0
    return-object p0

    .line 5255
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->packageName_:Ljava/lang/String;

    .line 5256
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->bitField0_:I

    goto :goto_0

    .line 5260
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->canonicalSource_:I

    .line 5261
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->bitField0_:I

    goto :goto_0

    .line 5265
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->sourceType_:I

    .line 5266
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->bitField0_:I

    goto :goto_0

    .line 5245
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public setCanonicalSource(I)Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5161
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->canonicalSource_:I

    .line 5162
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->bitField0_:I

    .line 5163
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5139
    if-nez p1, :cond_0

    .line 5140
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5142
    :cond_0
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->packageName_:Ljava/lang/String;

    .line 5143
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->bitField0_:I

    .line 5144
    return-object p0
.end method

.method public setSourceType(I)Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5180
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->sourceType_:I

    .line 5181
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->bitField0_:I

    .line 5182
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
    .line 5209
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 5210
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->packageName_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5212
    :cond_0
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 5213
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->canonicalSource_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5215
    :cond_1
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 5216
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;->sourceType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5218
    :cond_2
    return-void
.end method
