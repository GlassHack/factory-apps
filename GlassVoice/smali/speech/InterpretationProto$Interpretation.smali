.class public final Lspeech/InterpretationProto$Interpretation;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "InterpretationProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lspeech/InterpretationProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Interpretation"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lspeech/InterpretationProto$Interpretation;


# instance fields
.field private bitField0_:I

.field private confidence_:F

.field private grammarId_:Ljava/lang/String;

.field public slot:[Lspeech/InterpretationProto$Slot;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 408
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 409
    invoke-virtual {p0}, Lspeech/InterpretationProto$Interpretation;->clear()Lspeech/InterpretationProto$Interpretation;

    .line 410
    return-void
.end method

.method public static emptyArray()[Lspeech/InterpretationProto$Interpretation;
    .locals 2

    .prologue
    .line 351
    sget-object v0, Lspeech/InterpretationProto$Interpretation;->_emptyArray:[Lspeech/InterpretationProto$Interpretation;

    if-nez v0, :cond_1

    .line 352
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 354
    :try_start_0
    sget-object v0, Lspeech/InterpretationProto$Interpretation;->_emptyArray:[Lspeech/InterpretationProto$Interpretation;

    if-nez v0, :cond_0

    .line 355
    const/4 v0, 0x0

    new-array v0, v0, [Lspeech/InterpretationProto$Interpretation;

    sput-object v0, Lspeech/InterpretationProto$Interpretation;->_emptyArray:[Lspeech/InterpretationProto$Interpretation;

    .line 357
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    :cond_1
    sget-object v0, Lspeech/InterpretationProto$Interpretation;->_emptyArray:[Lspeech/InterpretationProto$Interpretation;

    return-object v0

    .line 357
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lspeech/InterpretationProto$Interpretation;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 521
    new-instance v0, Lspeech/InterpretationProto$Interpretation;

    invoke-direct {v0}, Lspeech/InterpretationProto$Interpretation;-><init>()V

    invoke-virtual {v0, p0}, Lspeech/InterpretationProto$Interpretation;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lspeech/InterpretationProto$Interpretation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lspeech/InterpretationProto$Interpretation;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 515
    new-instance v0, Lspeech/InterpretationProto$Interpretation;

    invoke-direct {v0}, Lspeech/InterpretationProto$Interpretation;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lspeech/InterpretationProto$Interpretation;

    return-object v0
.end method


# virtual methods
.method public clear()Lspeech/InterpretationProto$Interpretation;
    .locals 1

    .prologue
    .line 413
    const/4 v0, 0x0

    iput v0, p0, Lspeech/InterpretationProto$Interpretation;->bitField0_:I

    .line 414
    invoke-static {}, Lspeech/InterpretationProto$Slot;->emptyArray()[Lspeech/InterpretationProto$Slot;

    move-result-object v0

    iput-object v0, p0, Lspeech/InterpretationProto$Interpretation;->slot:[Lspeech/InterpretationProto$Slot;

    .line 415
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lspeech/InterpretationProto$Interpretation;->confidence_:F

    .line 416
    const-string v0, ""

    iput-object v0, p0, Lspeech/InterpretationProto$Interpretation;->grammarId_:Ljava/lang/String;

    .line 417
    const/4 v0, -0x1

    iput v0, p0, Lspeech/InterpretationProto$Interpretation;->cachedSize:I

    .line 418
    return-object p0
.end method

.method public clearConfidence()Lspeech/InterpretationProto$Interpretation;
    .locals 1

    .prologue
    .line 381
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lspeech/InterpretationProto$Interpretation;->confidence_:F

    .line 382
    iget v0, p0, Lspeech/InterpretationProto$Interpretation;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lspeech/InterpretationProto$Interpretation;->bitField0_:I

    .line 383
    return-object p0
.end method

.method public clearGrammarId()Lspeech/InterpretationProto$Interpretation;
    .locals 1

    .prologue
    .line 403
    const-string v0, ""

    iput-object v0, p0, Lspeech/InterpretationProto$Interpretation;->grammarId_:Ljava/lang/String;

    .line 404
    iget v0, p0, Lspeech/InterpretationProto$Interpretation;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lspeech/InterpretationProto$Interpretation;->bitField0_:I

    .line 405
    return-object p0
.end method

.method public getConfidence()F
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lspeech/InterpretationProto$Interpretation;->confidence_:F

    return v0
.end method

.method public getGrammarId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lspeech/InterpretationProto$Interpretation;->grammarId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 442
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 443
    .local v2, "size":I
    iget-object v3, p0, Lspeech/InterpretationProto$Interpretation;->slot:[Lspeech/InterpretationProto$Slot;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lspeech/InterpretationProto$Interpretation;->slot:[Lspeech/InterpretationProto$Slot;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 444
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lspeech/InterpretationProto$Interpretation;->slot:[Lspeech/InterpretationProto$Slot;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 445
    iget-object v3, p0, Lspeech/InterpretationProto$Interpretation;->slot:[Lspeech/InterpretationProto$Slot;

    aget-object v0, v3, v1

    .line 446
    .local v0, "element":Lspeech/InterpretationProto$Slot;
    if-eqz v0, :cond_0

    .line 447
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 444
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 452
    .end local v0    # "element":Lspeech/InterpretationProto$Slot;
    .end local v1    # "i":I
    :cond_1
    iget v3, p0, Lspeech/InterpretationProto$Interpretation;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 453
    const/4 v3, 0x2

    iget v4, p0, Lspeech/InterpretationProto$Interpretation;->confidence_:F

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v3

    add-int/2addr v2, v3

    .line 456
    :cond_2
    iget v3, p0, Lspeech/InterpretationProto$Interpretation;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    .line 457
    const/4 v3, 0x3

    iget-object v4, p0, Lspeech/InterpretationProto$Interpretation;->grammarId_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 460
    :cond_3
    iput v2, p0, Lspeech/InterpretationProto$Interpretation;->cachedSize:I

    .line 461
    return v2
.end method

.method public hasConfidence()Z
    .locals 1

    .prologue
    .line 378
    iget v0, p0, Lspeech/InterpretationProto$Interpretation;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGrammarId()Z
    .locals 1

    .prologue
    .line 400
    iget v0, p0, Lspeech/InterpretationProto$Interpretation;->bitField0_:I

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
    .line 345
    invoke-virtual {p0, p1}, Lspeech/InterpretationProto$Interpretation;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lspeech/InterpretationProto$Interpretation;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lspeech/InterpretationProto$Interpretation;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 469
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 470
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 474
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 475
    :sswitch_0
    return-object p0

    .line 480
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 482
    .local v0, "arrayLength":I
    iget-object v5, p0, Lspeech/InterpretationProto$Interpretation;->slot:[Lspeech/InterpretationProto$Slot;

    if-nez v5, :cond_2

    move v1, v4

    .line 483
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lspeech/InterpretationProto$Slot;

    .line 485
    .local v2, "newArray":[Lspeech/InterpretationProto$Slot;
    if-eqz v1, :cond_1

    .line 486
    iget-object v5, p0, Lspeech/InterpretationProto$Interpretation;->slot:[Lspeech/InterpretationProto$Slot;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 488
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 489
    new-instance v5, Lspeech/InterpretationProto$Slot;

    invoke-direct {v5}, Lspeech/InterpretationProto$Slot;-><init>()V

    aput-object v5, v2, v1

    .line 490
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 491
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 488
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 482
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lspeech/InterpretationProto$Slot;
    :cond_2
    iget-object v5, p0, Lspeech/InterpretationProto$Interpretation;->slot:[Lspeech/InterpretationProto$Slot;

    array-length v1, v5

    goto :goto_1

    .line 494
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lspeech/InterpretationProto$Slot;
    :cond_3
    new-instance v5, Lspeech/InterpretationProto$Slot;

    invoke-direct {v5}, Lspeech/InterpretationProto$Slot;-><init>()V

    aput-object v5, v2, v1

    .line 495
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 496
    iput-object v2, p0, Lspeech/InterpretationProto$Interpretation;->slot:[Lspeech/InterpretationProto$Slot;

    goto :goto_0

    .line 500
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lspeech/InterpretationProto$Slot;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v5

    iput v5, p0, Lspeech/InterpretationProto$Interpretation;->confidence_:F

    .line 501
    iget v5, p0, Lspeech/InterpretationProto$Interpretation;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lspeech/InterpretationProto$Interpretation;->bitField0_:I

    goto :goto_0

    .line 505
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lspeech/InterpretationProto$Interpretation;->grammarId_:Ljava/lang/String;

    .line 506
    iget v5, p0, Lspeech/InterpretationProto$Interpretation;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lspeech/InterpretationProto$Interpretation;->bitField0_:I

    goto :goto_0

    .line 470
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x15 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public setConfidence(F)Lspeech/InterpretationProto$Interpretation;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 373
    iput p1, p0, Lspeech/InterpretationProto$Interpretation;->confidence_:F

    .line 374
    iget v0, p0, Lspeech/InterpretationProto$Interpretation;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lspeech/InterpretationProto$Interpretation;->bitField0_:I

    .line 375
    return-object p0
.end method

.method public setGrammarId(Ljava/lang/String;)Lspeech/InterpretationProto$Interpretation;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 392
    if-nez p1, :cond_0

    .line 393
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 395
    :cond_0
    iput-object p1, p0, Lspeech/InterpretationProto$Interpretation;->grammarId_:Ljava/lang/String;

    .line 396
    iget v0, p0, Lspeech/InterpretationProto$Interpretation;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lspeech/InterpretationProto$Interpretation;->bitField0_:I

    .line 397
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 424
    iget-object v2, p0, Lspeech/InterpretationProto$Interpretation;->slot:[Lspeech/InterpretationProto$Slot;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lspeech/InterpretationProto$Interpretation;->slot:[Lspeech/InterpretationProto$Slot;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 425
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lspeech/InterpretationProto$Interpretation;->slot:[Lspeech/InterpretationProto$Slot;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 426
    iget-object v2, p0, Lspeech/InterpretationProto$Interpretation;->slot:[Lspeech/InterpretationProto$Slot;

    aget-object v0, v2, v1

    .line 427
    .local v0, "element":Lspeech/InterpretationProto$Slot;
    if-eqz v0, :cond_0

    .line 428
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 425
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 432
    .end local v0    # "element":Lspeech/InterpretationProto$Slot;
    .end local v1    # "i":I
    :cond_1
    iget v2, p0, Lspeech/InterpretationProto$Interpretation;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 433
    const/4 v2, 0x2

    iget v3, p0, Lspeech/InterpretationProto$Interpretation;->confidence_:F

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 435
    :cond_2
    iget v2, p0, Lspeech/InterpretationProto$Interpretation;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    .line 436
    const/4 v2, 0x3

    iget-object v3, p0, Lspeech/InterpretationProto$Interpretation;->grammarId_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 438
    :cond_3
    return-void
.end method
