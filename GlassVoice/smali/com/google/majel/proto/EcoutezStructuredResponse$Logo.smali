.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Logo"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;


# instance fields
.field private bitField0_:I

.field private height_:I

.field private url_:Ljava/lang/String;

.field private width_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8410
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 8411
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->clear()Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    .line 8412
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;
    .locals 2

    .prologue
    .line 8337
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    if-nez v0, :cond_1

    .line 8338
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 8340
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    if-nez v0, :cond_0

    .line 8341
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    sput-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    .line 8343
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8345
    :cond_1
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    return-object v0

    .line 8343
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8498
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 8492
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8415
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->bitField0_:I

    .line 8416
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->url_:Ljava/lang/String;

    .line 8417
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->width_:I

    .line 8418
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->height_:I

    .line 8419
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->cachedSize:I

    .line 8420
    return-object p0
.end method

.method public clearHeight()Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;
    .locals 1

    .prologue
    .line 8405
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->height_:I

    .line 8406
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->bitField0_:I

    .line 8407
    return-object p0
.end method

.method public clearUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;
    .locals 1

    .prologue
    .line 8367
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->url_:Ljava/lang/String;

    .line 8368
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->bitField0_:I

    .line 8369
    return-object p0
.end method

.method public clearWidth()Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;
    .locals 1

    .prologue
    .line 8386
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->width_:I

    .line 8387
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->bitField0_:I

    .line 8388
    return-object p0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 8394
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->height_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 8439
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 8440
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 8441
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->url_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8444
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 8445
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->width_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8448
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 8449
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->height_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8452
    :cond_2
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->cachedSize:I

    .line 8453
    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8353
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 8375
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->width_:I

    return v0
.end method

.method public hasHeight()Z
    .locals 1

    .prologue
    .line 8402
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUrl()Z
    .locals 1

    .prologue
    .line 8364
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWidth()Z
    .locals 1

    .prologue
    .line 8383
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->bitField0_:I

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
    .line 8331
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8461
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 8462
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 8466
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8467
    :sswitch_0
    return-object p0

    .line 8472
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->url_:Ljava/lang/String;

    .line 8473
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->bitField0_:I

    goto :goto_0

    .line 8477
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->width_:I

    .line 8478
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->bitField0_:I

    goto :goto_0

    .line 8482
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->height_:I

    .line 8483
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->bitField0_:I

    goto :goto_0

    .line 8462
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public setHeight(I)Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 8397
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->height_:I

    .line 8398
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->bitField0_:I

    .line 8399
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 8356
    if-nez p1, :cond_0

    .line 8357
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8359
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->url_:Ljava/lang/String;

    .line 8360
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->bitField0_:I

    .line 8361
    return-object p0
.end method

.method public setWidth(I)Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 8378
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->width_:I

    .line 8379
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->bitField0_:I

    .line 8380
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
    .line 8426
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 8427
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->url_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 8429
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 8430
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->width_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8432
    :cond_1
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 8433
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->height_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8435
    :cond_2
    return-void
.end method
