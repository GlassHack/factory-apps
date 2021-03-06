.class public final Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "RecognizerProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/recognizer/api/RecognizerProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EndpointerEvent"
.end annotation


# static fields
.field public static final EVENT_TYPE_END_OF_AUDIO:I = 0x2

.field public static final EVENT_TYPE_END_OF_SPEECH:I = 0x1

.field public static final EVENT_TYPE_START_OF_SPEECH:I

.field private static volatile _emptyArray:[Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;


# instance fields
.field private bitField0_:I

.field private eventType_:I

.field private timeUsec_:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 771
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 772
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->clear()Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    .line 773
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;
    .locals 2

    .prologue
    .line 720
    sget-object v0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->_emptyArray:[Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    if-nez v0, :cond_1

    .line 721
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 723
    :try_start_0
    sget-object v0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->_emptyArray:[Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    if-nez v0, :cond_0

    .line 724
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    sput-object v0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->_emptyArray:[Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    .line 726
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 728
    :cond_1
    sget-object v0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->_emptyArray:[Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    return-object v0

    .line 726
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 846
    new-instance v0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 840
    new-instance v0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 776
    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->bitField0_:I

    .line 777
    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->eventType_:I

    .line 778
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->timeUsec_:J

    .line 779
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->cachedSize:I

    .line 780
    return-object p0
.end method

.method public clearEventType()Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;
    .locals 1

    .prologue
    .line 747
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->eventType_:I

    .line 748
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->bitField0_:I

    .line 749
    return-object p0
.end method

.method public clearTimeUsec()Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;
    .locals 2

    .prologue
    .line 766
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->timeUsec_:J

    .line 767
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->bitField0_:I

    .line 768
    return-object p0
.end method

.method public getEventType()I
    .locals 1

    .prologue
    .line 736
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->eventType_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 796
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 797
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 798
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->eventType_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 801
    :cond_0
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 802
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->timeUsec_:J

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 805
    :cond_1
    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->cachedSize:I

    .line 806
    return v0
.end method

.method public getTimeUsec()J
    .locals 2

    .prologue
    .line 755
    iget-wide v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->timeUsec_:J

    return-wide v0
.end method

.method public hasEventType()Z
    .locals 1

    .prologue
    .line 744
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimeUsec()Z
    .locals 1

    .prologue
    .line 763
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->bitField0_:I

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
    .line 709
    invoke-virtual {p0, p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;
    .locals 3
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 814
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 815
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 819
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 820
    :sswitch_0
    return-object p0

    .line 825
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->eventType_:I

    .line 826
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->bitField0_:I

    goto :goto_0

    .line 830
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->timeUsec_:J

    .line 831
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->bitField0_:I

    goto :goto_0

    .line 815
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public setEventType(I)Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 739
    iput p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->eventType_:I

    .line 740
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->bitField0_:I

    .line 741
    return-object p0
.end method

.method public setTimeUsec(J)Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 758
    iput-wide p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->timeUsec_:J

    .line 759
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->bitField0_:I

    .line 760
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 786
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 787
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->eventType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 789
    :cond_0
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 790
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->timeUsec_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 792
    :cond_1
    return-void
.end method
