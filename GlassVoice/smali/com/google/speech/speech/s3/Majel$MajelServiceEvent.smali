.class public final Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "Majel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/speech/s3/Majel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MajelServiceEvent"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;


# instance fields
.field private bitField0_:I

.field private compressedMajelResponse_:[B

.field public majel:Lcom/google/majel/proto/MajelProtos$MajelResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 630
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 631
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->clear()Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    .line 632
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;
    .locals 2

    .prologue
    .line 592
    sget-object v0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->_emptyArray:[Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    if-nez v0, :cond_1

    .line 593
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 595
    :try_start_0
    sget-object v0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->_emptyArray:[Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    if-nez v0, :cond_0

    .line 596
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    sput-object v0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->_emptyArray:[Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    .line 598
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 600
    :cond_1
    sget-object v0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->_emptyArray:[Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    return-object v0

    .line 598
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 707
    new-instance v0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    invoke-direct {v0}, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 701
    new-instance v0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    invoke-direct {v0}, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;
    .locals 1

    .prologue
    .line 635
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->bitField0_:I

    .line 636
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->majel:Lcom/google/majel/proto/MajelProtos$MajelResponse;

    .line 637
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->compressedMajelResponse_:[B

    .line 638
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->cachedSize:I

    .line 639
    return-object p0
.end method

.method public clearCompressedMajelResponse()Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;
    .locals 1

    .prologue
    .line 625
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->compressedMajelResponse_:[B

    .line 626
    iget v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->bitField0_:I

    .line 627
    return-object p0
.end method

.method public getCompressedMajelResponse()[B
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->compressedMajelResponse_:[B

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 655
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 656
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->majel:Lcom/google/majel/proto/MajelProtos$MajelResponse;

    if-eqz v1, :cond_0

    .line 657
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->majel:Lcom/google/majel/proto/MajelProtos$MajelResponse;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 660
    :cond_0
    iget v1, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 661
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->compressedMajelResponse_:[B

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 664
    :cond_1
    iput v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->cachedSize:I

    .line 665
    return v0
.end method

.method public hasCompressedMajelResponse()Z
    .locals 1

    .prologue
    .line 622
    iget v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->bitField0_:I

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
    .line 586
    invoke-virtual {p0, p1}, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 673
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 674
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 678
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 679
    :sswitch_0
    return-object p0

    .line 684
    :sswitch_1
    iget-object v1, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->majel:Lcom/google/majel/proto/MajelProtos$MajelResponse;

    if-nez v1, :cond_1

    .line 685
    new-instance v1, Lcom/google/majel/proto/MajelProtos$MajelResponse;

    invoke-direct {v1}, Lcom/google/majel/proto/MajelProtos$MajelResponse;-><init>()V

    iput-object v1, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->majel:Lcom/google/majel/proto/MajelProtos$MajelResponse;

    .line 687
    :cond_1
    iget-object v1, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->majel:Lcom/google/majel/proto/MajelProtos$MajelResponse;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 691
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->compressedMajelResponse_:[B

    .line 692
    iget v1, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->bitField0_:I

    goto :goto_0

    .line 674
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setCompressedMajelResponse([B)Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 614
    if-nez p1, :cond_0

    .line 615
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 617
    :cond_0
    iput-object p1, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->compressedMajelResponse_:[B

    .line 618
    iget v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->bitField0_:I

    .line 619
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
    .line 645
    iget-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->majel:Lcom/google/majel/proto/MajelProtos$MajelResponse;

    if-eqz v0, :cond_0

    .line 646
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->majel:Lcom/google/majel/proto/MajelProtos$MajelResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 648
    :cond_0
    iget v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 649
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->compressedMajelResponse_:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 651
    :cond_1
    return-void
.end method
