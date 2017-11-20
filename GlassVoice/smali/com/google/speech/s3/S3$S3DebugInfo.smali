.class public final Lcom/google/speech/s3/S3$S3DebugInfo;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "S3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/s3/S3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "S3DebugInfo"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/s3/S3$S3DebugInfo;


# instance fields
.field public s3PinholeDebugInfoExtension:Lcom/google/speech/s3/Pinhole$S3PinholeDebugInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2698
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2699
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3DebugInfo;->clear()Lcom/google/speech/s3/S3$S3DebugInfo;

    .line 2700
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/s3/S3$S3DebugInfo;
    .locals 2

    .prologue
    .line 2684
    sget-object v0, Lcom/google/speech/s3/S3$S3DebugInfo;->_emptyArray:[Lcom/google/speech/s3/S3$S3DebugInfo;

    if-nez v0, :cond_1

    .line 2685
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2687
    :try_start_0
    sget-object v0, Lcom/google/speech/s3/S3$S3DebugInfo;->_emptyArray:[Lcom/google/speech/s3/S3$S3DebugInfo;

    if-nez v0, :cond_0

    .line 2688
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/s3/S3$S3DebugInfo;

    sput-object v0, Lcom/google/speech/s3/S3$S3DebugInfo;->_emptyArray:[Lcom/google/speech/s3/S3$S3DebugInfo;

    .line 2690
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2692
    :cond_1
    sget-object v0, Lcom/google/speech/s3/S3$S3DebugInfo;->_emptyArray:[Lcom/google/speech/s3/S3$S3DebugInfo;

    return-object v0

    .line 2690
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/S3$S3DebugInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2761
    new-instance v0, Lcom/google/speech/s3/S3$S3DebugInfo;

    invoke-direct {v0}, Lcom/google/speech/s3/S3$S3DebugInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/S3$S3DebugInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/S3$S3DebugInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/s3/S3$S3DebugInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2755
    new-instance v0, Lcom/google/speech/s3/S3$S3DebugInfo;

    invoke-direct {v0}, Lcom/google/speech/s3/S3$S3DebugInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/S3$S3DebugInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/s3/S3$S3DebugInfo;
    .locals 1

    .prologue
    .line 2703
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3DebugInfo;->s3PinholeDebugInfoExtension:Lcom/google/speech/s3/Pinhole$S3PinholeDebugInfo;

    .line 2704
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/S3$S3DebugInfo;->cachedSize:I

    .line 2705
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2718
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 2719
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3DebugInfo;->s3PinholeDebugInfoExtension:Lcom/google/speech/s3/Pinhole$S3PinholeDebugInfo;

    if-eqz v1, :cond_0

    .line 2720
    const v1, 0x36ee60f

    iget-object v2, p0, Lcom/google/speech/s3/S3$S3DebugInfo;->s3PinholeDebugInfoExtension:Lcom/google/speech/s3/Pinhole$S3PinholeDebugInfo;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2723
    :cond_0
    iput v0, p0, Lcom/google/speech/s3/S3$S3DebugInfo;->cachedSize:I

    .line 2724
    return v0
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
    .line 2678
    invoke-virtual {p0, p1}, Lcom/google/speech/s3/S3$S3DebugInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/S3$S3DebugInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/S3$S3DebugInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2732
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2733
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2737
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2738
    :sswitch_0
    return-object p0

    .line 2743
    :sswitch_1
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3DebugInfo;->s3PinholeDebugInfoExtension:Lcom/google/speech/s3/Pinhole$S3PinholeDebugInfo;

    if-nez v1, :cond_1

    .line 2744
    new-instance v1, Lcom/google/speech/s3/Pinhole$S3PinholeDebugInfo;

    invoke-direct {v1}, Lcom/google/speech/s3/Pinhole$S3PinholeDebugInfo;-><init>()V

    iput-object v1, p0, Lcom/google/speech/s3/S3$S3DebugInfo;->s3PinholeDebugInfoExtension:Lcom/google/speech/s3/Pinhole$S3PinholeDebugInfo;

    .line 2746
    :cond_1
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3DebugInfo;->s3PinholeDebugInfoExtension:Lcom/google/speech/s3/Pinhole$S3PinholeDebugInfo;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2733
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1b77307a -> :sswitch_1
    .end sparse-switch
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
    .line 2711
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3DebugInfo;->s3PinholeDebugInfoExtension:Lcom/google/speech/s3/Pinhole$S3PinholeDebugInfo;

    if-eqz v0, :cond_0

    .line 2712
    const v0, 0x36ee60f

    iget-object v1, p0, Lcom/google/speech/s3/S3$S3DebugInfo;->s3PinholeDebugInfoExtension:Lcom/google/speech/s3/Pinhole$S3PinholeDebugInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2714
    :cond_0
    return-void
.end method
