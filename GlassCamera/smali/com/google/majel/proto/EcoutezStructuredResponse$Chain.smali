.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Chain"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;


# instance fields
.field private bitField0_:I

.field public chainId:Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;

.field private displayName_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4345
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 4346
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;->clear()Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;

    .line 4347
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;
    .locals 2

    .prologue
    .line 4307
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;

    if-nez v0, :cond_1

    .line 4308
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 4310
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;

    if-nez v0, :cond_0

    .line 4311
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;

    sput-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;

    .line 4313
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4315
    :cond_1
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;

    return-object v0

    .line 4313
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4422
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 4416
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;
    .locals 1

    .prologue
    .line 4350
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;->bitField0_:I

    .line 4351
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;->chainId:Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;

    .line 4352
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;->displayName_:Ljava/lang/String;

    .line 4353
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;->cachedSize:I

    .line 4354
    return-object p0
.end method

.method public clearDisplayName()Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;
    .locals 1

    .prologue
    .line 4340
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;->displayName_:Ljava/lang/String;

    .line 4341
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;->bitField0_:I

    .line 4342
    return-object p0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4326
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;->displayName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 4370
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 4371
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;->chainId:Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;

    if-eqz v1, :cond_0

    .line 4372
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;->chainId:Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4375
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 4376
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;->displayName_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4379
    :cond_1
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;->cachedSize:I

    .line 4380
    return v0
.end method

.method public hasDisplayName()Z
    .locals 1

    .prologue
    .line 4337
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

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
    .line 4301
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4388
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 4389
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 4393
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4394
    :sswitch_0
    return-object p0

    .line 4399
    :sswitch_1
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;->chainId:Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;

    if-nez v1, :cond_1

    .line 4400
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;->chainId:Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;

    .line 4402
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;->chainId:Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 4406
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;->displayName_:Ljava/lang/String;

    .line 4407
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;->bitField0_:I

    goto :goto_0

    .line 4389
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4329
    if-nez p1, :cond_0

    .line 4330
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4332
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;->displayName_:Ljava/lang/String;

    .line 4333
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;->bitField0_:I

    .line 4334
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
    .line 4360
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;->chainId:Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;

    if-eqz v0, :cond_0

    .line 4361
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;->chainId:Lcom/google/majel/proto/EcoutezStructuredResponse$ChainId;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4363
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 4364
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;->displayName_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4366
    :cond_1
    return-void
.end method
