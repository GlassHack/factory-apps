.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChainId"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;


# instance fields
.field private bitField0_:I

.field public featureId:Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;

.field private prominentEntityId_:Ljava/lang/String;

.field private sitechunk_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4207
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 4208
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;->clear()Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;

    .line 4209
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;
    .locals 2

    .prologue
    .line 4147
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;

    if-nez v0, :cond_1

    .line 4148
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 4150
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;

    if-nez v0, :cond_0

    .line 4151
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;

    sput-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;

    .line 4153
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4155
    :cond_1
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;

    return-object v0

    .line 4153
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4297
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 4291
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;
    .locals 1

    .prologue
    .line 4212
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;->bitField0_:I

    .line 4213
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;->prominentEntityId_:Ljava/lang/String;

    .line 4214
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;->sitechunk_:Ljava/lang/String;

    .line 4215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;->featureId:Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;

    .line 4216
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;->cachedSize:I

    .line 4217
    return-object p0
.end method

.method public clearProminentEntityId()Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;
    .locals 1

    .prologue
    .line 4177
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;->prominentEntityId_:Ljava/lang/String;

    .line 4178
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;->bitField0_:I

    .line 4179
    return-object p0
.end method

.method public clearSitechunk()Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;
    .locals 1

    .prologue
    .line 4199
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;->sitechunk_:Ljava/lang/String;

    .line 4200
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;->bitField0_:I

    .line 4201
    return-object p0
.end method

.method public getProminentEntityId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4163
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;->prominentEntityId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 4236
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 4237
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 4238
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;->prominentEntityId_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4241
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 4242
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;->sitechunk_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4245
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;->featureId:Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;

    if-eqz v1, :cond_2

    .line 4246
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;->featureId:Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4249
    :cond_2
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;->cachedSize:I

    .line 4250
    return v0
.end method

.method public getSitechunk()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4185
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;->sitechunk_:Ljava/lang/String;

    return-object v0
.end method

.method public hasProminentEntityId()Z
    .locals 1

    .prologue
    .line 4174
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSitechunk()Z
    .locals 1

    .prologue
    .line 4196
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

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
    .line 4141
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4258
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 4259
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 4263
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4264
    :sswitch_0
    return-object p0

    .line 4269
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;->prominentEntityId_:Ljava/lang/String;

    .line 4270
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;->bitField0_:I

    goto :goto_0

    .line 4274
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;->sitechunk_:Ljava/lang/String;

    .line 4275
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;->bitField0_:I

    goto :goto_0

    .line 4279
    :sswitch_3
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;->featureId:Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;

    if-nez v1, :cond_1

    .line 4280
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;->featureId:Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;

    .line 4282
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;->featureId:Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 4259
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public setProminentEntityId(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4166
    if-nez p1, :cond_0

    .line 4167
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4169
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;->prominentEntityId_:Ljava/lang/String;

    .line 4170
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;->bitField0_:I

    .line 4171
    return-object p0
.end method

.method public setSitechunk(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4188
    if-nez p1, :cond_0

    .line 4189
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4191
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;->sitechunk_:Ljava/lang/String;

    .line 4192
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;->bitField0_:I

    .line 4193
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
    .line 4223
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 4224
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;->prominentEntityId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4226
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 4227
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;->sitechunk_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4229
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;->featureId:Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;

    if-eqz v0, :cond_2

    .line 4230
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;->featureId:Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4232
    :cond_2
    return-void
.end method
