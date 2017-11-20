.class public final Lcom/google/speech/s3/PinholeStream$PinholeHeader;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "PinholeStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/s3/PinholeStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PinholeHeader"
.end annotation


# static fields
.field public static final OVERWRITE_MODE_APPEND:I = 0x1

.field public static final OVERWRITE_MODE_NO_OVERWRITE:I = 0x0

.field public static final OVERWRITE_MODE_OVERWRITE:I = 0x2

.field private static volatile _emptyArray:[Lcom/google/speech/s3/PinholeStream$PinholeHeader;


# instance fields
.field private bitField0_:I

.field private key_:Ljava/lang/String;

.field private overwrite_:I

.field private value_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 458
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 459
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->clear()Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    .line 460
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    .locals 2

    .prologue
    .line 382
    sget-object v0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->_emptyArray:[Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    if-nez v0, :cond_1

    .line 383
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 385
    :try_start_0
    sget-object v0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->_emptyArray:[Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    if-nez v0, :cond_0

    .line 386
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    sput-object v0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->_emptyArray:[Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    .line 388
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    :cond_1
    sget-object v0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->_emptyArray:[Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    return-object v0

    .line 388
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 546
    new-instance v0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    invoke-direct {v0}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 540
    new-instance v0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    invoke-direct {v0}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 463
    iput v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->bitField0_:I

    .line 464
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->key_:Ljava/lang/String;

    .line 465
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->value_:Ljava/lang/String;

    .line 466
    iput v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->overwrite_:I

    .line 467
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->cachedSize:I

    .line 468
    return-object p0
.end method

.method public clearKey()Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    .locals 1

    .prologue
    .line 412
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->key_:Ljava/lang/String;

    .line 413
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->bitField0_:I

    .line 414
    return-object p0
.end method

.method public clearOverwrite()Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    .locals 1

    .prologue
    .line 453
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->overwrite_:I

    .line 454
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->bitField0_:I

    .line 455
    return-object p0
.end method

.method public clearValue()Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    .locals 1

    .prologue
    .line 434
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->value_:Ljava/lang/String;

    .line 435
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->bitField0_:I

    .line 436
    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->key_:Ljava/lang/String;

    return-object v0
.end method

.method public getOverwrite()I
    .locals 1

    .prologue
    .line 442
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->overwrite_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 487
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 488
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 489
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->key_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 492
    :cond_0
    iget v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 493
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->value_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 496
    :cond_1
    iget v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 497
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->overwrite_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 500
    :cond_2
    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->cachedSize:I

    .line 501
    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->value_:Ljava/lang/String;

    return-object v0
.end method

.method public hasKey()Z
    .locals 1

    .prologue
    .line 409
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOverwrite()Z
    .locals 1

    .prologue
    .line 450
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

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
    .line 431
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->bitField0_:I

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
    .line 371
    invoke-virtual {p0, p1}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 509
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 510
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 514
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 515
    :sswitch_0
    return-object p0

    .line 520
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->key_:Ljava/lang/String;

    .line 521
    iget v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->bitField0_:I

    goto :goto_0

    .line 525
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->value_:Ljava/lang/String;

    .line 526
    iget v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->bitField0_:I

    goto :goto_0

    .line 530
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->overwrite_:I

    .line 531
    iget v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->bitField0_:I

    goto :goto_0

    .line 510
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 401
    if-nez p1, :cond_0

    .line 402
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 404
    :cond_0
    iput-object p1, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->key_:Ljava/lang/String;

    .line 405
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->bitField0_:I

    .line 406
    return-object p0
.end method

.method public setOverwrite(I)Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 445
    iput p1, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->overwrite_:I

    .line 446
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->bitField0_:I

    .line 447
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 423
    if-nez p1, :cond_0

    .line 424
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 426
    :cond_0
    iput-object p1, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->value_:Ljava/lang/String;

    .line 427
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->bitField0_:I

    .line 428
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
    .line 474
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 475
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->key_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 477
    :cond_0
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 478
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->value_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 480
    :cond_1
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 481
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->overwrite_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 483
    :cond_2
    return-void
.end method
