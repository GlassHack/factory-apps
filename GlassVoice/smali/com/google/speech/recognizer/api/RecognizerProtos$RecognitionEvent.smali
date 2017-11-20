.class public final Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "RecognizerProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/recognizer/api/RecognizerProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognitionEvent"
.end annotation


# static fields
.field public static final EVENT_TYPE_RECOGNITION_COMPLETED:I = 0x1

.field public static final EVENT_TYPE_RECOGNITION_PRELIMINARY_RESULT:I = 0x2

.field public static final EVENT_TYPE_RECOGNITION_RESULT:I = 0x0

.field public static final EVENT_TYPE_RECOGNITION_SUBMIT_RESULT:I = 0x3

.field private static volatile _emptyArray:[Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;


# instance fields
.field private bitField0_:I

.field public combinedResult:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

.field private eventType_:I

.field private generationTimeMs_:J

.field public partialResult:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

.field public prefetchResult:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

.field public result:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

.field private status_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2190
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2191
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->clear()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    .line 2192
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    .locals 2

    .prologue
    .line 2108
    sget-object v0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->_emptyArray:[Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    if-nez v0, :cond_1

    .line 2109
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2111
    :try_start_0
    sget-object v0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->_emptyArray:[Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    if-nez v0, :cond_0

    .line 2112
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    sput-object v0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->_emptyArray:[Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    .line 2114
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2116
    :cond_1
    sget-object v0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->_emptyArray:[Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    return-object v0

    .line 2114
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2338
    new-instance v0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2332
    new-instance v0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2195
    iput v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->bitField0_:I

    .line 2196
    iput v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->eventType_:I

    .line 2197
    iput v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->status_:I

    .line 2198
    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->result:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    .line 2199
    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->partialResult:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    .line 2200
    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->combinedResult:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    .line 2201
    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->prefetchResult:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    .line 2202
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->generationTimeMs_:J

    .line 2203
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->cachedSize:I

    .line 2204
    return-object p0
.end method

.method public clearEventType()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    .locals 1

    .prologue
    .line 2135
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->eventType_:I

    .line 2136
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->bitField0_:I

    .line 2137
    return-object p0
.end method

.method public clearGenerationTimeMs()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    .locals 2

    .prologue
    .line 2185
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->generationTimeMs_:J

    .line 2186
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->bitField0_:I

    .line 2187
    return-object p0
.end method

.method public clearStatus()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    .locals 1

    .prologue
    .line 2154
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->status_:I

    .line 2155
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->bitField0_:I

    .line 2156
    return-object p0
.end method

.method public getEventType()I
    .locals 1

    .prologue
    .line 2124
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->eventType_:I

    return v0
.end method

.method public getGenerationTimeMs()J
    .locals 2

    .prologue
    .line 2174
    iget-wide v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->generationTimeMs_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 2235
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 2236
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 2237
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->eventType_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2240
    :cond_0
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 2241
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->status_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2244
    :cond_1
    iget-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->result:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    if-eqz v1, :cond_2

    .line 2245
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->result:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2248
    :cond_2
    iget-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->partialResult:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    if-eqz v1, :cond_3

    .line 2249
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->partialResult:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2252
    :cond_3
    iget-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->combinedResult:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    if-eqz v1, :cond_4

    .line 2253
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->combinedResult:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2256
    :cond_4
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    .line 2257
    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->generationTimeMs_:J

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2260
    :cond_5
    iget-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->prefetchResult:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    if-eqz v1, :cond_6

    .line 2261
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->prefetchResult:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2264
    :cond_6
    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->cachedSize:I

    .line 2265
    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 2143
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->status_:I

    return v0
.end method

.method public hasEventType()Z
    .locals 1

    .prologue
    .line 2132
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGenerationTimeMs()Z
    .locals 1

    .prologue
    .line 2182
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 2151
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->bitField0_:I

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
    .line 2096
    invoke-virtual {p0, p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    .locals 3
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2273
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2274
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2278
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2279
    :sswitch_0
    return-object p0

    .line 2284
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->eventType_:I

    .line 2285
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->bitField0_:I

    goto :goto_0

    .line 2289
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->status_:I

    .line 2290
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->bitField0_:I

    goto :goto_0

    .line 2294
    :sswitch_3
    iget-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->result:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    if-nez v1, :cond_1

    .line 2295
    new-instance v1, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    invoke-direct {v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;-><init>()V

    iput-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->result:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    .line 2297
    :cond_1
    iget-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->result:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2301
    :sswitch_4
    iget-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->partialResult:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    if-nez v1, :cond_2

    .line 2302
    new-instance v1, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    invoke-direct {v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;-><init>()V

    iput-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->partialResult:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    .line 2304
    :cond_2
    iget-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->partialResult:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2308
    :sswitch_5
    iget-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->combinedResult:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    if-nez v1, :cond_3

    .line 2309
    new-instance v1, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    invoke-direct {v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;-><init>()V

    iput-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->combinedResult:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    .line 2311
    :cond_3
    iget-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->combinedResult:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2315
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->generationTimeMs_:J

    .line 2316
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->bitField0_:I

    goto :goto_0

    .line 2320
    :sswitch_7
    iget-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->prefetchResult:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    if-nez v1, :cond_4

    .line 2321
    new-instance v1, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    invoke-direct {v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;-><init>()V

    iput-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->prefetchResult:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    .line 2323
    :cond_4
    iget-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->prefetchResult:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2274
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch
.end method

.method public setEventType(I)Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2127
    iput p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->eventType_:I

    .line 2128
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->bitField0_:I

    .line 2129
    return-object p0
.end method

.method public setGenerationTimeMs(J)Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 2177
    iput-wide p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->generationTimeMs_:J

    .line 2178
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->bitField0_:I

    .line 2179
    return-object p0
.end method

.method public setStatus(I)Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2146
    iput p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->status_:I

    .line 2147
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->bitField0_:I

    .line 2148
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
    .line 2210
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2211
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->eventType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2213
    :cond_0
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 2214
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->status_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2216
    :cond_1
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->result:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    if-eqz v0, :cond_2

    .line 2217
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->result:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2219
    :cond_2
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->partialResult:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    if-eqz v0, :cond_3

    .line 2220
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->partialResult:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2222
    :cond_3
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->combinedResult:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    if-eqz v0, :cond_4

    .line 2223
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->combinedResult:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2225
    :cond_4
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    .line 2226
    const/4 v0, 0x6

    iget-wide v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->generationTimeMs_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 2228
    :cond_5
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->prefetchResult:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    if-eqz v0, :cond_6

    .line 2229
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->prefetchResult:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2231
    :cond_6
    return-void
.end method
