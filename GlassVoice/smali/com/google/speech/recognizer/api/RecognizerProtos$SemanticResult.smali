.class public final Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "RecognizerProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/recognizer/api/RecognizerProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SemanticResult"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;


# instance fields
.field public interpretation:[Lspeech/InterpretationProto$Interpretation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 36
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;->clear()Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

    .line 37
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;->_emptyArray:[Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

    if-nez v0, :cond_1

    .line 22
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;->_emptyArray:[Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

    if-nez v0, :cond_0

    .line 25
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

    sput-object v0, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;->_emptyArray:[Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

    .line 27
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_1
    sget-object v0, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;->_emptyArray:[Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 115
    new-instance v0, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lspeech/InterpretationProto$Interpretation;->emptyArray()[Lspeech/InterpretationProto$Interpretation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;->interpretation:[Lspeech/InterpretationProto$Interpretation;

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;->cachedSize:I

    .line 42
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 60
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 61
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;->interpretation:[Lspeech/InterpretationProto$Interpretation;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;->interpretation:[Lspeech/InterpretationProto$Interpretation;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 62
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;->interpretation:[Lspeech/InterpretationProto$Interpretation;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 63
    iget-object v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;->interpretation:[Lspeech/InterpretationProto$Interpretation;

    aget-object v0, v3, v1

    .line 64
    .local v0, "element":Lspeech/InterpretationProto$Interpretation;
    if-eqz v0, :cond_0

    .line 65
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 62
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    .end local v0    # "element":Lspeech/InterpretationProto$Interpretation;
    .end local v1    # "i":I
    :cond_1
    iput v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;->cachedSize:I

    .line 71
    return v2
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
    .line 15
    invoke-virtual {p0, p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 79
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 80
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 84
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 85
    :sswitch_0
    return-object p0

    .line 90
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 92
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;->interpretation:[Lspeech/InterpretationProto$Interpretation;

    if-nez v5, :cond_2

    move v1, v4

    .line 93
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lspeech/InterpretationProto$Interpretation;

    .line 95
    .local v2, "newArray":[Lspeech/InterpretationProto$Interpretation;
    if-eqz v1, :cond_1

    .line 96
    iget-object v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;->interpretation:[Lspeech/InterpretationProto$Interpretation;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 99
    new-instance v5, Lspeech/InterpretationProto$Interpretation;

    invoke-direct {v5}, Lspeech/InterpretationProto$Interpretation;-><init>()V

    aput-object v5, v2, v1

    .line 100
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 101
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 92
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lspeech/InterpretationProto$Interpretation;
    :cond_2
    iget-object v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;->interpretation:[Lspeech/InterpretationProto$Interpretation;

    array-length v1, v5

    goto :goto_1

    .line 104
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lspeech/InterpretationProto$Interpretation;
    :cond_3
    new-instance v5, Lspeech/InterpretationProto$Interpretation;

    invoke-direct {v5}, Lspeech/InterpretationProto$Interpretation;-><init>()V

    aput-object v5, v2, v1

    .line 105
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 106
    iput-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;->interpretation:[Lspeech/InterpretationProto$Interpretation;

    goto :goto_0

    .line 80
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
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
    .line 48
    iget-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;->interpretation:[Lspeech/InterpretationProto$Interpretation;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;->interpretation:[Lspeech/InterpretationProto$Interpretation;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 49
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;->interpretation:[Lspeech/InterpretationProto$Interpretation;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 50
    iget-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;->interpretation:[Lspeech/InterpretationProto$Interpretation;

    aget-object v0, v2, v1

    .line 51
    .local v0, "element":Lspeech/InterpretationProto$Interpretation;
    if-eqz v0, :cond_0

    .line 52
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 49
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    .end local v0    # "element":Lspeech/InterpretationProto$Interpretation;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
