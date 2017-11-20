.class public final Lcom/google/speech/s3/PinholeStream$PinholeOutput;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "PinholeStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/s3/PinholeStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PinholeOutput"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/s3/PinholeStream$PinholeOutput;


# instance fields
.field private bitField0_:I

.field private gwsBodyFragment_:[B

.field private gwsHeaderComplete_:Z

.field private gwsHeaderFragment_:Ljava/lang/String;

.field private gwsResponseComplete_:Z

.field public recognitionResult:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 654
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 655
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->clear()Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    .line 656
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/s3/PinholeStream$PinholeOutput;
    .locals 2

    .prologue
    .line 556
    sget-object v0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->_emptyArray:[Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    if-nez v0, :cond_1

    .line 557
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 559
    :try_start_0
    sget-object v0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->_emptyArray:[Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    if-nez v0, :cond_0

    .line 560
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    sput-object v0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->_emptyArray:[Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    .line 562
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    :cond_1
    sget-object v0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->_emptyArray:[Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    return-object v0

    .line 562
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/PinholeStream$PinholeOutput;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 770
    new-instance v0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    invoke-direct {v0}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/s3/PinholeStream$PinholeOutput;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 764
    new-instance v0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    invoke-direct {v0}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/s3/PinholeStream$PinholeOutput;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 659
    iput v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->bitField0_:I

    .line 660
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->gwsHeaderFragment_:Ljava/lang/String;

    .line 661
    iput-boolean v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->gwsHeaderComplete_:Z

    .line 662
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->gwsBodyFragment_:[B

    .line 663
    iput-boolean v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->gwsResponseComplete_:Z

    .line 664
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->recognitionResult:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    .line 665
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->cachedSize:I

    .line 666
    return-object p0
.end method

.method public clearGwsBodyFragment()Lcom/google/speech/s3/PinholeStream$PinholeOutput;
    .locals 1

    .prologue
    .line 627
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->gwsBodyFragment_:[B

    .line 628
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->bitField0_:I

    .line 629
    return-object p0
.end method

.method public clearGwsHeaderComplete()Lcom/google/speech/s3/PinholeStream$PinholeOutput;
    .locals 1

    .prologue
    .line 605
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->gwsHeaderComplete_:Z

    .line 606
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->bitField0_:I

    .line 607
    return-object p0
.end method

.method public clearGwsHeaderFragment()Lcom/google/speech/s3/PinholeStream$PinholeOutput;
    .locals 1

    .prologue
    .line 586
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->gwsHeaderFragment_:Ljava/lang/String;

    .line 587
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->bitField0_:I

    .line 588
    return-object p0
.end method

.method public clearGwsResponseComplete()Lcom/google/speech/s3/PinholeStream$PinholeOutput;
    .locals 1

    .prologue
    .line 646
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->gwsResponseComplete_:Z

    .line 647
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->bitField0_:I

    .line 648
    return-object p0
.end method

.method public getGwsBodyFragment()[B
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->gwsBodyFragment_:[B

    return-object v0
.end method

.method public getGwsHeaderComplete()Z
    .locals 1

    .prologue
    .line 594
    iget-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->gwsHeaderComplete_:Z

    return v0
.end method

.method public getGwsHeaderFragment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->gwsHeaderFragment_:Ljava/lang/String;

    return-object v0
.end method

.method public getGwsResponseComplete()Z
    .locals 1

    .prologue
    .line 635
    iget-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->gwsResponseComplete_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 691
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 692
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 693
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->gwsHeaderFragment_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 696
    :cond_0
    iget v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 697
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->gwsHeaderComplete_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 700
    :cond_1
    iget v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 701
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->gwsBodyFragment_:[B

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 704
    :cond_2
    iget v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 705
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->gwsResponseComplete_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 708
    :cond_3
    iget-object v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->recognitionResult:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    if-eqz v1, :cond_4

    .line 709
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->recognitionResult:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 712
    :cond_4
    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->cachedSize:I

    .line 713
    return v0
.end method

.method public hasGwsBodyFragment()Z
    .locals 1

    .prologue
    .line 624
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGwsHeaderComplete()Z
    .locals 1

    .prologue
    .line 602
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGwsHeaderFragment()Z
    .locals 1

    .prologue
    .line 583
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGwsResponseComplete()Z
    .locals 1

    .prologue
    .line 643
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

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
    .line 550
    invoke-virtual {p0, p1}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/PinholeStream$PinholeOutput;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 721
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 722
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 726
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 727
    :sswitch_0
    return-object p0

    .line 732
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->gwsHeaderFragment_:Ljava/lang/String;

    .line 733
    iget v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->bitField0_:I

    goto :goto_0

    .line 737
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->gwsHeaderComplete_:Z

    .line 738
    iget v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->bitField0_:I

    goto :goto_0

    .line 742
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->gwsBodyFragment_:[B

    .line 743
    iget v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->bitField0_:I

    goto :goto_0

    .line 747
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->gwsResponseComplete_:Z

    .line 748
    iget v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->bitField0_:I

    goto :goto_0

    .line 752
    :sswitch_5
    iget-object v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->recognitionResult:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    if-nez v1, :cond_1

    .line 753
    new-instance v1, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    invoke-direct {v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;-><init>()V

    iput-object v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->recognitionResult:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    .line 755
    :cond_1
    iget-object v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->recognitionResult:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 722
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public setGwsBodyFragment([B)Lcom/google/speech/s3/PinholeStream$PinholeOutput;
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 616
    if-nez p1, :cond_0

    .line 617
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 619
    :cond_0
    iput-object p1, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->gwsBodyFragment_:[B

    .line 620
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->bitField0_:I

    .line 621
    return-object p0
.end method

.method public setGwsHeaderComplete(Z)Lcom/google/speech/s3/PinholeStream$PinholeOutput;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 597
    iput-boolean p1, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->gwsHeaderComplete_:Z

    .line 598
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->bitField0_:I

    .line 599
    return-object p0
.end method

.method public setGwsHeaderFragment(Ljava/lang/String;)Lcom/google/speech/s3/PinholeStream$PinholeOutput;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 575
    if-nez p1, :cond_0

    .line 576
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 578
    :cond_0
    iput-object p1, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->gwsHeaderFragment_:Ljava/lang/String;

    .line 579
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->bitField0_:I

    .line 580
    return-object p0
.end method

.method public setGwsResponseComplete(Z)Lcom/google/speech/s3/PinholeStream$PinholeOutput;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 638
    iput-boolean p1, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->gwsResponseComplete_:Z

    .line 639
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->bitField0_:I

    .line 640
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
    .line 672
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 673
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->gwsHeaderFragment_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 675
    :cond_0
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 676
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->gwsHeaderComplete_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 678
    :cond_1
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 679
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->gwsBodyFragment_:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 681
    :cond_2
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 682
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->gwsResponseComplete_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 684
    :cond_3
    iget-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->recognitionResult:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    if-eqz v0, :cond_4

    .line 685
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->recognitionResult:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 687
    :cond_4
    return-void
.end method
