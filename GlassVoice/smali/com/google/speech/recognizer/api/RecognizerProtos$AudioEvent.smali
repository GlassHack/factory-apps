.class public final Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "RecognizerProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/recognizer/api/RecognizerProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioEvent"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;


# instance fields
.field private bitField0_:I

.field private data_:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 891
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 892
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;->clear()Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;

    .line 893
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;
    .locals 2

    .prologue
    .line 856
    sget-object v0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;->_emptyArray:[Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;

    if-nez v0, :cond_1

    .line 857
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 859
    :try_start_0
    sget-object v0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;->_emptyArray:[Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;

    if-nez v0, :cond_0

    .line 860
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;

    sput-object v0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;->_emptyArray:[Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;

    .line 862
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 864
    :cond_1
    sget-object v0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;->_emptyArray:[Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;

    return-object v0

    .line 862
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 953
    new-instance v0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 947
    new-instance v0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;
    .locals 1

    .prologue
    .line 896
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;->bitField0_:I

    .line 897
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;->data_:[B

    .line 898
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;->cachedSize:I

    .line 899
    return-object p0
.end method

.method public clearData()Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;
    .locals 1

    .prologue
    .line 886
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;->data_:[B

    .line 887
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;->bitField0_:I

    .line 888
    return-object p0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;->data_:[B

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 912
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 913
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 914
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;->data_:[B

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 917
    :cond_0
    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;->cachedSize:I

    .line 918
    return v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 883
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;->bitField0_:I

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
    .line 850
    invoke-virtual {p0, p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 926
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 927
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 931
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 932
    :sswitch_0
    return-object p0

    .line 937
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;->data_:[B

    .line 938
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;->bitField0_:I

    goto :goto_0

    .line 927
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public setData([B)Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 875
    if-nez p1, :cond_0

    .line 876
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 878
    :cond_0
    iput-object p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;->data_:[B

    .line 879
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;->bitField0_:I

    .line 880
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
    .line 905
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 906
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;->data_:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 908
    :cond_0
    return-void
.end method
