.class public final Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "Synthesizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/speech/s3/Synthesizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TtsServiceEvent"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;


# instance fields
.field public audioInfo:Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;

.field private audio_:[B

.field private bitField0_:I

.field private endOfData_:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 568
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 569
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;->clear()Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;

    .line 570
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;
    .locals 2

    .prologue
    .line 511
    sget-object v0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;->_emptyArray:[Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;

    if-nez v0, :cond_1

    .line 512
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 514
    :try_start_0
    sget-object v0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;->_emptyArray:[Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;

    if-nez v0, :cond_0

    .line 515
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;

    sput-object v0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;->_emptyArray:[Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;

    .line 517
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    :cond_1
    sget-object v0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;->_emptyArray:[Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;

    return-object v0

    .line 517
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 658
    new-instance v0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;

    invoke-direct {v0}, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 652
    new-instance v0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;

    invoke-direct {v0}, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 573
    iput v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;->bitField0_:I

    .line 574
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;->audio_:[B

    .line 575
    iput-boolean v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;->endOfData_:Z

    .line 576
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;->audioInfo:Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;

    .line 577
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;->cachedSize:I

    .line 578
    return-object p0
.end method

.method public clearAudio()Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;
    .locals 1

    .prologue
    .line 541
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;->audio_:[B

    .line 542
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;->bitField0_:I

    .line 543
    return-object p0
.end method

.method public clearEndOfData()Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;
    .locals 1

    .prologue
    .line 560
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;->endOfData_:Z

    .line 561
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;->bitField0_:I

    .line 562
    return-object p0
.end method

.method public getAudio()[B
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;->audio_:[B

    return-object v0
.end method

.method public getEndOfData()Z
    .locals 1

    .prologue
    .line 549
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;->endOfData_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 597
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 598
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 599
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;->audio_:[B

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 602
    :cond_0
    iget v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 603
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;->endOfData_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 606
    :cond_1
    iget-object v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;->audioInfo:Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;

    if-eqz v1, :cond_2

    .line 607
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;->audioInfo:Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 610
    :cond_2
    iput v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;->cachedSize:I

    .line 611
    return v0
.end method

.method public hasAudio()Z
    .locals 1

    .prologue
    .line 538
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEndOfData()Z
    .locals 1

    .prologue
    .line 557
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;->bitField0_:I

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
    .line 505
    invoke-virtual {p0, p1}, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 619
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 620
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 624
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 625
    :sswitch_0
    return-object p0

    .line 630
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;->audio_:[B

    .line 631
    iget v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;->bitField0_:I

    goto :goto_0

    .line 635
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;->endOfData_:Z

    .line 636
    iget v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;->bitField0_:I

    goto :goto_0

    .line 640
    :sswitch_3
    iget-object v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;->audioInfo:Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;

    if-nez v1, :cond_1

    .line 641
    new-instance v1, Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;

    invoke-direct {v1}, Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;-><init>()V

    iput-object v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;->audioInfo:Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;

    .line 643
    :cond_1
    iget-object v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;->audioInfo:Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 620
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public setAudio([B)Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 530
    if-nez p1, :cond_0

    .line 531
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 533
    :cond_0
    iput-object p1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;->audio_:[B

    .line 534
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;->bitField0_:I

    .line 535
    return-object p0
.end method

.method public setEndOfData(Z)Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 552
    iput-boolean p1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;->endOfData_:Z

    .line 553
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;->bitField0_:I

    .line 554
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
    .line 584
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 585
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;->audio_:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 587
    :cond_0
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 588
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;->endOfData_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 590
    :cond_1
    iget-object v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;->audioInfo:Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;

    if-eqz v0, :cond_2

    .line 591
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;->audioInfo:Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 593
    :cond_2
    return-void
.end method
