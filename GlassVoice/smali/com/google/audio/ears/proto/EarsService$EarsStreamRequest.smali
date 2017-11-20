.class public final Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EarsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/audio/ears/proto/EarsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EarsStreamRequest"
.end annotation


# static fields
.field public static final AUDIO_CONTAINER_ADTS:I = 0x4

.field public static final AUDIO_CONTAINER_OGG:I = 0x1

.field public static final AUDIO_CONTAINER_PROTO:I = 0x3

.field public static final AUDIO_CONTAINER_THREEGP:I = 0x2

.field public static final AUDIO_CONTAINER_WAV:I = 0x0

.field public static final AUDIO_ENCODING_AAC:I = 0x4

.field public static final AUDIO_ENCODING_AMR:I = 0x2

.field public static final AUDIO_ENCODING_FINGERPRINT:I = 0x3

.field public static final AUDIO_ENCODING_PCM:I = 0x0

.field public static final AUDIO_ENCODING_VORBIS:I = 0x1

.field private static volatile _emptyArray:[Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;


# instance fields
.field private audioContainer_:I

.field private audioEncoding_:I

.field private bitField0_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 693
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 694
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->clear()Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    .line 695
    return-void
.end method

.method public static emptyArray()[Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;
    .locals 2

    .prologue
    .line 642
    sget-object v0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    if-nez v0, :cond_1

    .line 643
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 645
    :try_start_0
    sget-object v0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    if-nez v0, :cond_0

    .line 646
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    sput-object v0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    .line 648
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 650
    :cond_1
    sget-object v0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    return-object v0

    .line 648
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 768
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 762
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 698
    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->bitField0_:I

    .line 699
    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->audioContainer_:I

    .line 700
    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->audioEncoding_:I

    .line 701
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->cachedSize:I

    .line 702
    return-object p0
.end method

.method public clearAudioContainer()Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;
    .locals 1

    .prologue
    .line 669
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->audioContainer_:I

    .line 670
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->bitField0_:I

    .line 671
    return-object p0
.end method

.method public clearAudioEncoding()Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;
    .locals 1

    .prologue
    .line 688
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->audioEncoding_:I

    .line 689
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->bitField0_:I

    .line 690
    return-object p0
.end method

.method public getAudioContainer()I
    .locals 1

    .prologue
    .line 658
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->audioContainer_:I

    return v0
.end method

.method public getAudioEncoding()I
    .locals 1

    .prologue
    .line 677
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->audioEncoding_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 718
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 719
    .local v0, "size":I
    iget v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 720
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->audioContainer_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 723
    :cond_0
    iget v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 724
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->audioEncoding_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 727
    :cond_1
    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->cachedSize:I

    .line 728
    return v0
.end method

.method public hasAudioContainer()Z
    .locals 1

    .prologue
    .line 666
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAudioEncoding()Z
    .locals 1

    .prologue
    .line 685
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 736
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 737
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 741
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 742
    :sswitch_0
    return-object p0

    .line 747
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->audioContainer_:I

    .line 748
    iget v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->bitField0_:I

    goto :goto_0

    .line 752
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->audioEncoding_:I

    .line 753
    iget v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->bitField0_:I

    goto :goto_0

    .line 737
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
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
    .line 622
    invoke-virtual {p0, p1}, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    move-result-object v0

    return-object v0
.end method

.method public setAudioContainer(I)Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 661
    iput p1, p0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->audioContainer_:I

    .line 662
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->bitField0_:I

    .line 663
    return-object p0
.end method

.method public setAudioEncoding(I)Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 680
    iput p1, p0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->audioEncoding_:I

    .line 681
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->bitField0_:I

    .line 682
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
    .line 708
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 709
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->audioContainer_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 711
    :cond_0
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 712
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->audioEncoding_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 714
    :cond_1
    return-void
.end method
