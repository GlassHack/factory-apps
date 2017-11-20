.class public final Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "VoicesearchClientLogProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/VoicesearchClientLogProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GwsCorrectionData"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;


# instance fields
.field private bitField0_:I

.field private length_:I

.field private newText_:Ljava/lang/String;

.field private oldText_:Ljava/lang/String;

.field private start_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3513
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 3514
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->clear()Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;

    .line 3515
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;
    .locals 2

    .prologue
    .line 3418
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;

    if-nez v0, :cond_1

    .line 3419
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3421
    :try_start_0
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;

    if-nez v0, :cond_0

    .line 3422
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;

    sput-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;

    .line 3424
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3426
    :cond_1
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;

    return-object v0

    .line 3424
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3614
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3608
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3518
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->bitField0_:I

    .line 3519
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->start_:I

    .line 3520
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->length_:I

    .line 3521
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->oldText_:Ljava/lang/String;

    .line 3522
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->newText_:Ljava/lang/String;

    .line 3523
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->cachedSize:I

    .line 3524
    return-object p0
.end method

.method public clearLength()Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;
    .locals 1

    .prologue
    .line 3464
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->length_:I

    .line 3465
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->bitField0_:I

    .line 3466
    return-object p0
.end method

.method public clearNewText()Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;
    .locals 1

    .prologue
    .line 3508
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->newText_:Ljava/lang/String;

    .line 3509
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->bitField0_:I

    .line 3510
    return-object p0
.end method

.method public clearOldText()Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;
    .locals 1

    .prologue
    .line 3486
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->oldText_:Ljava/lang/String;

    .line 3487
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->bitField0_:I

    .line 3488
    return-object p0
.end method

.method public clearStart()Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;
    .locals 1

    .prologue
    .line 3445
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->start_:I

    .line 3446
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->bitField0_:I

    .line 3447
    return-object p0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 3453
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->length_:I

    return v0
.end method

.method public getNewText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3494
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->newText_:Ljava/lang/String;

    return-object v0
.end method

.method public getOldText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3472
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->oldText_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 3546
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 3547
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 3548
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->start_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3551
    :cond_0
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 3552
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->length_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3555
    :cond_1
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 3556
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->oldText_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3559
    :cond_2
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 3560
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->newText_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3563
    :cond_3
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->cachedSize:I

    .line 3564
    return v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 3434
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->start_:I

    return v0
.end method

.method public hasLength()Z
    .locals 1

    .prologue
    .line 3461
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNewText()Z
    .locals 1

    .prologue
    .line 3505
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOldText()Z
    .locals 1

    .prologue
    .line 3483
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStart()Z
    .locals 1

    .prologue
    .line 3442
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->bitField0_:I

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
    .line 3412
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3572
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3573
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 3577
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3578
    :sswitch_0
    return-object p0

    .line 3583
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->start_:I

    .line 3584
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->bitField0_:I

    goto :goto_0

    .line 3588
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->length_:I

    .line 3589
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->bitField0_:I

    goto :goto_0

    .line 3593
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->oldText_:Ljava/lang/String;

    .line 3594
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->bitField0_:I

    goto :goto_0

    .line 3598
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->newText_:Ljava/lang/String;

    .line 3599
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->bitField0_:I

    goto :goto_0

    .line 3573
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public setLength(I)Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3456
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->length_:I

    .line 3457
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->bitField0_:I

    .line 3458
    return-object p0
.end method

.method public setNewText(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3497
    if-nez p1, :cond_0

    .line 3498
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3500
    :cond_0
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->newText_:Ljava/lang/String;

    .line 3501
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->bitField0_:I

    .line 3502
    return-object p0
.end method

.method public setOldText(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3475
    if-nez p1, :cond_0

    .line 3476
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3478
    :cond_0
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->oldText_:Ljava/lang/String;

    .line 3479
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->bitField0_:I

    .line 3480
    return-object p0
.end method

.method public setStart(I)Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3437
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->start_:I

    .line 3438
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->bitField0_:I

    .line 3439
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
    .line 3530
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3531
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->start_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3533
    :cond_0
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 3534
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->length_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3536
    :cond_1
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 3537
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->oldText_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3539
    :cond_2
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 3540
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GwsCorrectionData;->newText_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3542
    :cond_3
    return-void
.end method
