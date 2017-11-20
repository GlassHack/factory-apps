.class public final Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "NativeRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/recognizer/api/NativeRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NativeRecognitionResult"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;


# instance fields
.field private bitField0_:I

.field public recognizerInfo:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

.field private status_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 50
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->clear()Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;

    .line 51
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->_emptyArray:[Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;

    if-nez v0, :cond_1

    .line 15
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->_emptyArray:[Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;

    if-nez v0, :cond_0

    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;

    sput-object v0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->_emptyArray:[Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;

    .line 20
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_1
    sget-object v0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->_emptyArray:[Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    new-instance v0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 120
    new-instance v0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->bitField0_:I

    .line 55
    iput v0, p0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->status_:I

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->recognizerInfo:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->cachedSize:I

    .line 58
    return-object p0
.end method

.method public clearStatus()Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->status_:I

    .line 42
    iget v0, p0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->bitField0_:I

    .line 43
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 74
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 75
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 76
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->status_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->recognizerInfo:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    if-eqz v1, :cond_1

    .line 80
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->recognizerInfo:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 83
    :cond_1
    iput v0, p0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->cachedSize:I

    .line 84
    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->status_:I

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->bitField0_:I

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
    .line 8
    invoke-virtual {p0, p1}, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 93
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 97
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    :sswitch_0
    return-object p0

    .line 103
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->status_:I

    .line 104
    iget v1, p0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->bitField0_:I

    goto :goto_0

    .line 108
    :sswitch_2
    iget-object v1, p0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->recognizerInfo:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    if-nez v1, :cond_1

    .line 109
    new-instance v1, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    invoke-direct {v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;-><init>()V

    iput-object v1, p0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->recognizerInfo:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 111
    :cond_1
    iget-object v1, p0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->recognizerInfo:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 93
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setStatus(I)Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->status_:I

    .line 34
    iget v0, p0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->bitField0_:I

    .line 35
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
    .line 64
    iget v0, p0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 65
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->status_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->recognizerInfo:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    if-eqz v0, :cond_1

    .line 68
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->recognizerInfo:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 70
    :cond_1
    return-void
.end method
