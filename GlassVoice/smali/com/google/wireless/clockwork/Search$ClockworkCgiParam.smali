.class public final Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "Search.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/clockwork/Search;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClockworkCgiParam"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;


# instance fields
.field private bitField0_:I

.field private key_:Ljava/lang/String;

.field private value_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 393
    invoke-virtual {p0}, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;->clear()Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;

    .line 394
    return-void
.end method

.method public static emptyArray()[Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;
    .locals 2

    .prologue
    .line 335
    sget-object v0, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;->_emptyArray:[Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;

    if-nez v0, :cond_1

    .line 336
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 338
    :try_start_0
    sget-object v0, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;->_emptyArray:[Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;

    if-nez v0, :cond_0

    .line 339
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;

    sput-object v0, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;->_emptyArray:[Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;

    .line 341
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    :cond_1
    sget-object v0, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;->_emptyArray:[Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;

    return-object v0

    .line 341
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 467
    new-instance v0, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;

    invoke-direct {v0}, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 461
    new-instance v0, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;

    invoke-direct {v0}, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;->bitField0_:I

    .line 398
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;->key_:Ljava/lang/String;

    .line 399
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;->value_:Ljava/lang/String;

    .line 400
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;->cachedSize:I

    .line 401
    return-object p0
.end method

.method public clearKey()Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;
    .locals 1

    .prologue
    .line 365
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;->key_:Ljava/lang/String;

    .line 366
    iget v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;->bitField0_:I

    .line 367
    return-object p0
.end method

.method public clearValue()Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;
    .locals 1

    .prologue
    .line 387
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;->value_:Ljava/lang/String;

    .line 388
    iget v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;->bitField0_:I

    .line 389
    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;->key_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 417
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 418
    .local v0, "size":I
    iget v1, p0, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 419
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;->key_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 422
    :cond_0
    iget v1, p0, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 423
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;->value_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 426
    :cond_1
    iput v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;->cachedSize:I

    .line 427
    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;->value_:Ljava/lang/String;

    return-object v0
.end method

.method public hasKey()Z
    .locals 1

    .prologue
    .line 362
    iget v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;->bitField0_:I

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
    .line 329
    invoke-virtual {p0, p1}, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 435
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 436
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 440
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 441
    :sswitch_0
    return-object p0

    .line 446
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;->key_:Ljava/lang/String;

    .line 447
    iget v1, p0, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;->bitField0_:I

    goto :goto_0

    .line 451
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;->value_:Ljava/lang/String;

    .line 452
    iget v1, p0, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;->bitField0_:I

    goto :goto_0

    .line 436
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 354
    if-nez p1, :cond_0

    .line 355
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 357
    :cond_0
    iput-object p1, p0, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;->key_:Ljava/lang/String;

    .line 358
    iget v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;->bitField0_:I

    .line 359
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 376
    if-nez p1, :cond_0

    .line 377
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 379
    :cond_0
    iput-object p1, p0, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;->value_:Ljava/lang/String;

    .line 380
    iget v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;->bitField0_:I

    .line 381
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
    .line 407
    iget v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 408
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;->key_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 410
    :cond_0
    iget v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 411
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;->value_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 413
    :cond_1
    return-void
.end method
