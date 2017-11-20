.class public final Lcom/google/speech/s3/S3$S3EvalInfo;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "S3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/s3/S3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "S3EvalInfo"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/s3/S3$S3EvalInfo;


# instance fields
.field private bitField0_:I

.field private contextTimestampUs_:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2803
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2804
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3EvalInfo;->clear()Lcom/google/speech/s3/S3$S3EvalInfo;

    .line 2805
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/s3/S3$S3EvalInfo;
    .locals 2

    .prologue
    .line 2771
    sget-object v0, Lcom/google/speech/s3/S3$S3EvalInfo;->_emptyArray:[Lcom/google/speech/s3/S3$S3EvalInfo;

    if-nez v0, :cond_1

    .line 2772
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2774
    :try_start_0
    sget-object v0, Lcom/google/speech/s3/S3$S3EvalInfo;->_emptyArray:[Lcom/google/speech/s3/S3$S3EvalInfo;

    if-nez v0, :cond_0

    .line 2775
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/s3/S3$S3EvalInfo;

    sput-object v0, Lcom/google/speech/s3/S3$S3EvalInfo;->_emptyArray:[Lcom/google/speech/s3/S3$S3EvalInfo;

    .line 2777
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2779
    :cond_1
    sget-object v0, Lcom/google/speech/s3/S3$S3EvalInfo;->_emptyArray:[Lcom/google/speech/s3/S3$S3EvalInfo;

    return-object v0

    .line 2777
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/S3$S3EvalInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2865
    new-instance v0, Lcom/google/speech/s3/S3$S3EvalInfo;

    invoke-direct {v0}, Lcom/google/speech/s3/S3$S3EvalInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/S3$S3EvalInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/S3$S3EvalInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/s3/S3$S3EvalInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2859
    new-instance v0, Lcom/google/speech/s3/S3$S3EvalInfo;

    invoke-direct {v0}, Lcom/google/speech/s3/S3$S3EvalInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/S3$S3EvalInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/s3/S3$S3EvalInfo;
    .locals 2

    .prologue
    .line 2808
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/s3/S3$S3EvalInfo;->bitField0_:I

    .line 2809
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/s3/S3$S3EvalInfo;->contextTimestampUs_:J

    .line 2810
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/S3$S3EvalInfo;->cachedSize:I

    .line 2811
    return-object p0
.end method

.method public clearContextTimestampUs()Lcom/google/speech/s3/S3$S3EvalInfo;
    .locals 2

    .prologue
    .line 2798
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/s3/S3$S3EvalInfo;->contextTimestampUs_:J

    .line 2799
    iget v0, p0, Lcom/google/speech/s3/S3$S3EvalInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/s3/S3$S3EvalInfo;->bitField0_:I

    .line 2800
    return-object p0
.end method

.method public getContextTimestampUs()J
    .locals 2

    .prologue
    .line 2787
    iget-wide v0, p0, Lcom/google/speech/s3/S3$S3EvalInfo;->contextTimestampUs_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 2824
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 2825
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/s3/S3$S3EvalInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 2826
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/speech/s3/S3$S3EvalInfo;->contextTimestampUs_:J

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2829
    :cond_0
    iput v0, p0, Lcom/google/speech/s3/S3$S3EvalInfo;->cachedSize:I

    .line 2830
    return v0
.end method

.method public hasContextTimestampUs()Z
    .locals 1

    .prologue
    .line 2795
    iget v0, p0, Lcom/google/speech/s3/S3$S3EvalInfo;->bitField0_:I

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
    .line 2765
    invoke-virtual {p0, p1}, Lcom/google/speech/s3/S3$S3EvalInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/S3$S3EvalInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/S3$S3EvalInfo;
    .locals 3
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2838
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2839
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2843
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2844
    :sswitch_0
    return-object p0

    .line 2849
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/speech/s3/S3$S3EvalInfo;->contextTimestampUs_:J

    .line 2850
    iget v1, p0, Lcom/google/speech/s3/S3$S3EvalInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/s3/S3$S3EvalInfo;->bitField0_:I

    goto :goto_0

    .line 2839
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setContextTimestampUs(J)Lcom/google/speech/s3/S3$S3EvalInfo;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 2790
    iput-wide p1, p0, Lcom/google/speech/s3/S3$S3EvalInfo;->contextTimestampUs_:J

    .line 2791
    iget v0, p0, Lcom/google/speech/s3/S3$S3EvalInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/s3/S3$S3EvalInfo;->bitField0_:I

    .line 2792
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
    .line 2817
    iget v0, p0, Lcom/google/speech/s3/S3$S3EvalInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2818
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/speech/s3/S3$S3EvalInfo;->contextTimestampUs_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 2820
    :cond_0
    return-void
.end method
