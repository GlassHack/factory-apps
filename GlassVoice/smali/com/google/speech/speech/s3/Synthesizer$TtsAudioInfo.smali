.class public final Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "Synthesizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/speech/s3/Synthesizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TtsAudioInfo"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;


# instance fields
.field private bitField0_:I

.field private sampleRate_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 700
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 701
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;->clear()Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;

    .line 702
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;
    .locals 2

    .prologue
    .line 668
    sget-object v0, Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;->_emptyArray:[Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;

    if-nez v0, :cond_1

    .line 669
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 671
    :try_start_0
    sget-object v0, Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;->_emptyArray:[Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;

    if-nez v0, :cond_0

    .line 672
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;

    sput-object v0, Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;->_emptyArray:[Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;

    .line 674
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 676
    :cond_1
    sget-object v0, Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;->_emptyArray:[Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;

    return-object v0

    .line 674
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 762
    new-instance v0, Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;

    invoke-direct {v0}, Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 756
    new-instance v0, Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;

    invoke-direct {v0}, Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 705
    iput v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;->bitField0_:I

    .line 706
    iput v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;->sampleRate_:I

    .line 707
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;->cachedSize:I

    .line 708
    return-object p0
.end method

.method public clearSampleRate()Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;
    .locals 1

    .prologue
    .line 695
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;->sampleRate_:I

    .line 696
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;->bitField0_:I

    .line 697
    return-object p0
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 684
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;->sampleRate_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 721
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 722
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 723
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;->sampleRate_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 726
    :cond_0
    iput v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;->cachedSize:I

    .line 727
    return v0
.end method

.method public hasSampleRate()Z
    .locals 1

    .prologue
    .line 692
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;->bitField0_:I

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
    .line 662
    invoke-virtual {p0, p1}, Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 735
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 736
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 740
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 741
    :sswitch_0
    return-object p0

    .line 746
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;->sampleRate_:I

    .line 747
    iget v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;->bitField0_:I

    goto :goto_0

    .line 736
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setSampleRate(I)Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 687
    iput p1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;->sampleRate_:I

    .line 688
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;->bitField0_:I

    .line 689
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
    .line 714
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 715
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsAudioInfo;->sampleRate_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 717
    :cond_0
    return-void
.end method
