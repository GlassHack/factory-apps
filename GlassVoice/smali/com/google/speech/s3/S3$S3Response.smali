.class public final Lcom/google/speech/s3/S3$S3Response;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "S3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/s3/S3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "S3Response"
.end annotation


# static fields
.field public static final S3_STATUS_DONE_ERROR:I = 0x2

.field public static final S3_STATUS_DONE_SUCCESS:I = 0x1

.field public static final S3_STATUS_IN_PROGRESS:I = 0x0

.field public static final S3_STATUS_NOT_STARTED:I = 0x3

.field private static volatile _emptyArray:[Lcom/google/speech/s3/S3$S3Response;


# instance fields
.field private bitField0_:I

.field public clockworkEventExtension:Lcom/google/speech/s3/Clockwork$ClockworkEvent;

.field public debugLine:[Ljava/lang/String;

.field private errorCode_:I

.field private errorDescription_:Ljava/lang/String;

.field public gogglesStreamResponseExtension:Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;

.field public majelServiceEventExtension:Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

.field public pinholeOutputExtension:Lcom/google/speech/s3/PinholeStream$PinholeOutput;

.field public recognizerEventExtension:Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

.field public soundSearchServiceEventExtension:Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;

.field private status_:I

.field public streamParsingOutputExtension:Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;

.field public ttsCapabilitiesResponseExtension:Lcom/google/speech/speech/s3/Synthesizer$TtsCapabilitiesResponse;

.field public ttsServiceEventExtension:Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2984
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2985
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->clear()Lcom/google/speech/s3/S3$S3Response;

    .line 2986
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/s3/S3$S3Response;
    .locals 2

    .prologue
    .line 2881
    sget-object v0, Lcom/google/speech/s3/S3$S3Response;->_emptyArray:[Lcom/google/speech/s3/S3$S3Response;

    if-nez v0, :cond_1

    .line 2882
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2884
    :try_start_0
    sget-object v0, Lcom/google/speech/s3/S3$S3Response;->_emptyArray:[Lcom/google/speech/s3/S3$S3Response;

    if-nez v0, :cond_0

    .line 2885
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/s3/S3$S3Response;

    sput-object v0, Lcom/google/speech/s3/S3$S3Response;->_emptyArray:[Lcom/google/speech/s3/S3$S3Response;

    .line 2887
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2889
    :cond_1
    sget-object v0, Lcom/google/speech/s3/S3$S3Response;->_emptyArray:[Lcom/google/speech/s3/S3$S3Response;

    return-object v0

    .line 2887
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/S3$S3Response;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3247
    new-instance v0, Lcom/google/speech/s3/S3$S3Response;

    invoke-direct {v0}, Lcom/google/speech/s3/S3$S3Response;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/S3$S3Response;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/S3$S3Response;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/s3/S3$S3Response;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3241
    new-instance v0, Lcom/google/speech/s3/S3$S3Response;

    invoke-direct {v0}, Lcom/google/speech/s3/S3$S3Response;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/S3$S3Response;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/s3/S3$S3Response;
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2989
    iput v0, p0, Lcom/google/speech/s3/S3$S3Response;->bitField0_:I

    .line 2990
    iput v0, p0, Lcom/google/speech/s3/S3$S3Response;->status_:I

    .line 2991
    iput v0, p0, Lcom/google/speech/s3/S3$S3Response;->errorCode_:I

    .line 2992
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3Response;->errorDescription_:Ljava/lang/String;

    .line 2993
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3Response;->debugLine:[Ljava/lang/String;

    .line 2994
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Response;->recognizerEventExtension:Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    .line 2995
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Response;->majelServiceEventExtension:Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    .line 2996
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Response;->ttsServiceEventExtension:Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;

    .line 2997
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Response;->soundSearchServiceEventExtension:Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;

    .line 2998
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Response;->gogglesStreamResponseExtension:Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;

    .line 2999
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Response;->pinholeOutputExtension:Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    .line 3000
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Response;->ttsCapabilitiesResponseExtension:Lcom/google/speech/speech/s3/Synthesizer$TtsCapabilitiesResponse;

    .line 3001
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Response;->clockworkEventExtension:Lcom/google/speech/s3/Clockwork$ClockworkEvent;

    .line 3002
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Response;->streamParsingOutputExtension:Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;

    .line 3003
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/S3$S3Response;->cachedSize:I

    .line 3004
    return-object p0
.end method

.method public clearErrorCode()Lcom/google/speech/s3/S3$S3Response;
    .locals 1

    .prologue
    .line 2927
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/s3/S3$S3Response;->errorCode_:I

    .line 2928
    iget v0, p0, Lcom/google/speech/s3/S3$S3Response;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/s3/S3$S3Response;->bitField0_:I

    .line 2929
    return-object p0
.end method

.method public clearErrorDescription()Lcom/google/speech/s3/S3$S3Response;
    .locals 1

    .prologue
    .line 2949
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3Response;->errorDescription_:Ljava/lang/String;

    .line 2950
    iget v0, p0, Lcom/google/speech/s3/S3$S3Response;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/speech/s3/S3$S3Response;->bitField0_:I

    .line 2951
    return-object p0
.end method

.method public clearStatus()Lcom/google/speech/s3/S3$S3Response;
    .locals 1

    .prologue
    .line 2908
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/s3/S3$S3Response;->status_:I

    .line 2909
    iget v0, p0, Lcom/google/speech/s3/S3$S3Response;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/s3/S3$S3Response;->bitField0_:I

    .line 2910
    return-object p0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 2916
    iget v0, p0, Lcom/google/speech/s3/S3$S3Response;->errorCode_:I

    return v0
.end method

.method public getErrorDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2935
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Response;->errorDescription_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 3058
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v4

    .line 3059
    .local v4, "size":I
    iget v5, p0, Lcom/google/speech/s3/S3$S3Response;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 3060
    const/4 v5, 0x1

    iget v6, p0, Lcom/google/speech/s3/S3$S3Response;->status_:I

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 3063
    :cond_0
    iget v5, p0, Lcom/google/speech/s3/S3$S3Response;->bitField0_:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    .line 3064
    const/4 v5, 0x2

    iget v6, p0, Lcom/google/speech/s3/S3$S3Response;->errorCode_:I

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 3067
    :cond_1
    iget v5, p0, Lcom/google/speech/s3/S3$S3Response;->bitField0_:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_2

    .line 3068
    const/4 v5, 0x3

    iget-object v6, p0, Lcom/google/speech/s3/S3$S3Response;->errorDescription_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 3071
    :cond_2
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3Response;->debugLine:[Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/google/speech/s3/S3$S3Response;->debugLine:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_5

    .line 3072
    const/4 v0, 0x0

    .line 3073
    .local v0, "dataCount":I
    const/4 v1, 0x0

    .line 3074
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3Response;->debugLine:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_4

    .line 3075
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3Response;->debugLine:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 3076
    .local v2, "element":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 3077
    add-int/lit8 v0, v0, 0x1

    .line 3078
    invoke-static {v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 3074
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3082
    .end local v2    # "element":Ljava/lang/String;
    :cond_4
    add-int/2addr v4, v1

    .line 3083
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 3085
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_5
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3Response;->recognizerEventExtension:Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    if-eqz v5, :cond_6

    .line 3086
    const v5, 0x1320f9

    iget-object v6, p0, Lcom/google/speech/s3/S3$S3Response;->recognizerEventExtension:Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 3089
    :cond_6
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3Response;->majelServiceEventExtension:Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    if-eqz v5, :cond_7

    .line 3090
    const v5, 0x195e184

    iget-object v6, p0, Lcom/google/speech/s3/S3$S3Response;->majelServiceEventExtension:Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 3093
    :cond_7
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3Response;->ttsServiceEventExtension:Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;

    if-eqz v5, :cond_8

    .line 3094
    const v5, 0x1b46604

    iget-object v6, p0, Lcom/google/speech/s3/S3$S3Response;->ttsServiceEventExtension:Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 3097
    :cond_8
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3Response;->soundSearchServiceEventExtension:Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;

    if-eqz v5, :cond_9

    .line 3098
    const v5, 0x21b6d89

    iget-object v6, p0, Lcom/google/speech/s3/S3$S3Response;->soundSearchServiceEventExtension:Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 3101
    :cond_9
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3Response;->gogglesStreamResponseExtension:Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;

    if-eqz v5, :cond_a

    .line 3102
    const v5, 0x21c774f

    iget-object v6, p0, Lcom/google/speech/s3/S3$S3Response;->gogglesStreamResponseExtension:Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 3105
    :cond_a
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3Response;->pinholeOutputExtension:Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    if-eqz v5, :cond_b

    .line 3106
    const v5, 0x259d705

    iget-object v6, p0, Lcom/google/speech/s3/S3$S3Response;->pinholeOutputExtension:Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 3109
    :cond_b
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3Response;->ttsCapabilitiesResponseExtension:Lcom/google/speech/speech/s3/Synthesizer$TtsCapabilitiesResponse;

    if-eqz v5, :cond_c

    .line 3110
    const v5, 0x2bda1d9

    iget-object v6, p0, Lcom/google/speech/s3/S3$S3Response;->ttsCapabilitiesResponseExtension:Lcom/google/speech/speech/s3/Synthesizer$TtsCapabilitiesResponse;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 3113
    :cond_c
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3Response;->clockworkEventExtension:Lcom/google/speech/s3/Clockwork$ClockworkEvent;

    if-eqz v5, :cond_d

    .line 3114
    const v5, 0x35e8a63

    iget-object v6, p0, Lcom/google/speech/s3/S3$S3Response;->clockworkEventExtension:Lcom/google/speech/s3/Clockwork$ClockworkEvent;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 3117
    :cond_d
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3Response;->streamParsingOutputExtension:Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;

    if-eqz v5, :cond_e

    .line 3118
    const v5, 0x3a7fe95

    iget-object v6, p0, Lcom/google/speech/s3/S3$S3Response;->streamParsingOutputExtension:Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 3121
    :cond_e
    iput v4, p0, Lcom/google/speech/s3/S3$S3Response;->cachedSize:I

    .line 3122
    return v4
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 2897
    iget v0, p0, Lcom/google/speech/s3/S3$S3Response;->status_:I

    return v0
.end method

.method public hasErrorCode()Z
    .locals 1

    .prologue
    .line 2924
    iget v0, p0, Lcom/google/speech/s3/S3$S3Response;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasErrorDescription()Z
    .locals 1

    .prologue
    .line 2946
    iget v0, p0, Lcom/google/speech/s3/S3$S3Response;->bitField0_:I

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
    .line 2905
    iget v0, p0, Lcom/google/speech/s3/S3$S3Response;->bitField0_:I

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
    .line 2869
    invoke-virtual {p0, p1}, Lcom/google/speech/s3/S3$S3Response;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/S3$S3Response;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/S3$S3Response;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3130
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 3131
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 3135
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3136
    :sswitch_0
    return-object p0

    .line 3141
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/speech/s3/S3$S3Response;->status_:I

    .line 3142
    iget v5, p0, Lcom/google/speech/s3/S3$S3Response;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/speech/s3/S3$S3Response;->bitField0_:I

    goto :goto_0

    .line 3146
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/speech/s3/S3$S3Response;->errorCode_:I

    .line 3147
    iget v5, p0, Lcom/google/speech/s3/S3$S3Response;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/speech/s3/S3$S3Response;->bitField0_:I

    goto :goto_0

    .line 3151
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/s3/S3$S3Response;->errorDescription_:Ljava/lang/String;

    .line 3152
    iget v5, p0, Lcom/google/speech/s3/S3$S3Response;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/speech/s3/S3$S3Response;->bitField0_:I

    goto :goto_0

    .line 3156
    :sswitch_4
    const/16 v5, 0x22

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 3158
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3Response;->debugLine:[Ljava/lang/String;

    if-nez v5, :cond_2

    move v1, v4

    .line 3159
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    .line 3160
    .local v2, "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 3161
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3Response;->debugLine:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3163
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 3164
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 3165
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 3163
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3158
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3Response;->debugLine:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_1

    .line 3168
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 3169
    iput-object v2, p0, Lcom/google/speech/s3/S3$S3Response;->debugLine:[Ljava/lang/String;

    goto :goto_0

    .line 3173
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :sswitch_5
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3Response;->recognizerEventExtension:Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    if-nez v5, :cond_4

    .line 3174
    new-instance v5, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    invoke-direct {v5}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;-><init>()V

    iput-object v5, p0, Lcom/google/speech/s3/S3$S3Response;->recognizerEventExtension:Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    .line 3176
    :cond_4
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3Response;->recognizerEventExtension:Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 3180
    :sswitch_6
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3Response;->majelServiceEventExtension:Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    if-nez v5, :cond_5

    .line 3181
    new-instance v5, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    invoke-direct {v5}, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;-><init>()V

    iput-object v5, p0, Lcom/google/speech/s3/S3$S3Response;->majelServiceEventExtension:Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    .line 3183
    :cond_5
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3Response;->majelServiceEventExtension:Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 3187
    :sswitch_7
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3Response;->ttsServiceEventExtension:Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;

    if-nez v5, :cond_6

    .line 3188
    new-instance v5, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;

    invoke-direct {v5}, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;-><init>()V

    iput-object v5, p0, Lcom/google/speech/s3/S3$S3Response;->ttsServiceEventExtension:Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;

    .line 3190
    :cond_6
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3Response;->ttsServiceEventExtension:Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 3194
    :sswitch_8
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3Response;->soundSearchServiceEventExtension:Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;

    if-nez v5, :cond_7

    .line 3195
    new-instance v5, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;

    invoke-direct {v5}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;-><init>()V

    iput-object v5, p0, Lcom/google/speech/s3/S3$S3Response;->soundSearchServiceEventExtension:Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;

    .line 3197
    :cond_7
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3Response;->soundSearchServiceEventExtension:Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 3201
    :sswitch_9
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3Response;->gogglesStreamResponseExtension:Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;

    if-nez v5, :cond_8

    .line 3202
    new-instance v5, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;

    invoke-direct {v5}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;-><init>()V

    iput-object v5, p0, Lcom/google/speech/s3/S3$S3Response;->gogglesStreamResponseExtension:Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;

    .line 3204
    :cond_8
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3Response;->gogglesStreamResponseExtension:Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 3208
    :sswitch_a
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3Response;->pinholeOutputExtension:Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    if-nez v5, :cond_9

    .line 3209
    new-instance v5, Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    invoke-direct {v5}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;-><init>()V

    iput-object v5, p0, Lcom/google/speech/s3/S3$S3Response;->pinholeOutputExtension:Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    .line 3211
    :cond_9
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3Response;->pinholeOutputExtension:Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 3215
    :sswitch_b
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3Response;->ttsCapabilitiesResponseExtension:Lcom/google/speech/speech/s3/Synthesizer$TtsCapabilitiesResponse;

    if-nez v5, :cond_a

    .line 3216
    new-instance v5, Lcom/google/speech/speech/s3/Synthesizer$TtsCapabilitiesResponse;

    invoke-direct {v5}, Lcom/google/speech/speech/s3/Synthesizer$TtsCapabilitiesResponse;-><init>()V

    iput-object v5, p0, Lcom/google/speech/s3/S3$S3Response;->ttsCapabilitiesResponseExtension:Lcom/google/speech/speech/s3/Synthesizer$TtsCapabilitiesResponse;

    .line 3218
    :cond_a
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3Response;->ttsCapabilitiesResponseExtension:Lcom/google/speech/speech/s3/Synthesizer$TtsCapabilitiesResponse;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 3222
    :sswitch_c
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3Response;->clockworkEventExtension:Lcom/google/speech/s3/Clockwork$ClockworkEvent;

    if-nez v5, :cond_b

    .line 3223
    new-instance v5, Lcom/google/speech/s3/Clockwork$ClockworkEvent;

    invoke-direct {v5}, Lcom/google/speech/s3/Clockwork$ClockworkEvent;-><init>()V

    iput-object v5, p0, Lcom/google/speech/s3/S3$S3Response;->clockworkEventExtension:Lcom/google/speech/s3/Clockwork$ClockworkEvent;

    .line 3225
    :cond_b
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3Response;->clockworkEventExtension:Lcom/google/speech/s3/Clockwork$ClockworkEvent;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 3229
    :sswitch_d
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3Response;->streamParsingOutputExtension:Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;

    if-nez v5, :cond_c

    .line 3230
    new-instance v5, Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;

    invoke-direct {v5}, Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;-><init>()V

    iput-object v5, p0, Lcom/google/speech/s3/S3$S3Response;->streamParsingOutputExtension:Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;

    .line 3232
    :cond_c
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3Response;->streamParsingOutputExtension:Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 3131
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x9907ca -> :sswitch_5
        0xcaf0c22 -> :sswitch_6
        0xda33022 -> :sswitch_7
        0x10db6c4a -> :sswitch_8
        0x10e3ba7a -> :sswitch_9
        0x12ceb82a -> :sswitch_a
        0x15ed0eca -> :sswitch_b
        0x1af4531a -> :sswitch_c
        0x1d3ff4aa -> :sswitch_d
    .end sparse-switch
.end method

.method public setErrorCode(I)Lcom/google/speech/s3/S3$S3Response;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2919
    iput p1, p0, Lcom/google/speech/s3/S3$S3Response;->errorCode_:I

    .line 2920
    iget v0, p0, Lcom/google/speech/s3/S3$S3Response;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/s3/S3$S3Response;->bitField0_:I

    .line 2921
    return-object p0
.end method

.method public setErrorDescription(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3Response;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2938
    if-nez p1, :cond_0

    .line 2939
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2941
    :cond_0
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3Response;->errorDescription_:Ljava/lang/String;

    .line 2942
    iget v0, p0, Lcom/google/speech/s3/S3$S3Response;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/speech/s3/S3$S3Response;->bitField0_:I

    .line 2943
    return-object p0
.end method

.method public setStatus(I)Lcom/google/speech/s3/S3$S3Response;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2900
    iput p1, p0, Lcom/google/speech/s3/S3$S3Response;->status_:I

    .line 2901
    iget v0, p0, Lcom/google/speech/s3/S3$S3Response;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/s3/S3$S3Response;->bitField0_:I

    .line 2902
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3010
    iget v2, p0, Lcom/google/speech/s3/S3$S3Response;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 3011
    const/4 v2, 0x1

    iget v3, p0, Lcom/google/speech/s3/S3$S3Response;->status_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3013
    :cond_0
    iget v2, p0, Lcom/google/speech/s3/S3$S3Response;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 3014
    const/4 v2, 0x2

    iget v3, p0, Lcom/google/speech/s3/S3$S3Response;->errorCode_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3016
    :cond_1
    iget v2, p0, Lcom/google/speech/s3/S3$S3Response;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 3017
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/speech/s3/S3$S3Response;->errorDescription_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3019
    :cond_2
    iget-object v2, p0, Lcom/google/speech/s3/S3$S3Response;->debugLine:[Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/speech/s3/S3$S3Response;->debugLine:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_4

    .line 3020
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/speech/s3/S3$S3Response;->debugLine:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 3021
    iget-object v2, p0, Lcom/google/speech/s3/S3$S3Response;->debugLine:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 3022
    .local v0, "element":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 3023
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3020
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3027
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/google/speech/s3/S3$S3Response;->recognizerEventExtension:Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    if-eqz v2, :cond_5

    .line 3028
    const v2, 0x1320f9

    iget-object v3, p0, Lcom/google/speech/s3/S3$S3Response;->recognizerEventExtension:Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3030
    :cond_5
    iget-object v2, p0, Lcom/google/speech/s3/S3$S3Response;->majelServiceEventExtension:Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    if-eqz v2, :cond_6

    .line 3031
    const v2, 0x195e184

    iget-object v3, p0, Lcom/google/speech/s3/S3$S3Response;->majelServiceEventExtension:Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3033
    :cond_6
    iget-object v2, p0, Lcom/google/speech/s3/S3$S3Response;->ttsServiceEventExtension:Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;

    if-eqz v2, :cond_7

    .line 3034
    const v2, 0x1b46604

    iget-object v3, p0, Lcom/google/speech/s3/S3$S3Response;->ttsServiceEventExtension:Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3036
    :cond_7
    iget-object v2, p0, Lcom/google/speech/s3/S3$S3Response;->soundSearchServiceEventExtension:Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;

    if-eqz v2, :cond_8

    .line 3037
    const v2, 0x21b6d89

    iget-object v3, p0, Lcom/google/speech/s3/S3$S3Response;->soundSearchServiceEventExtension:Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3039
    :cond_8
    iget-object v2, p0, Lcom/google/speech/s3/S3$S3Response;->gogglesStreamResponseExtension:Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;

    if-eqz v2, :cond_9

    .line 3040
    const v2, 0x21c774f

    iget-object v3, p0, Lcom/google/speech/s3/S3$S3Response;->gogglesStreamResponseExtension:Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3042
    :cond_9
    iget-object v2, p0, Lcom/google/speech/s3/S3$S3Response;->pinholeOutputExtension:Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    if-eqz v2, :cond_a

    .line 3043
    const v2, 0x259d705

    iget-object v3, p0, Lcom/google/speech/s3/S3$S3Response;->pinholeOutputExtension:Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3045
    :cond_a
    iget-object v2, p0, Lcom/google/speech/s3/S3$S3Response;->ttsCapabilitiesResponseExtension:Lcom/google/speech/speech/s3/Synthesizer$TtsCapabilitiesResponse;

    if-eqz v2, :cond_b

    .line 3046
    const v2, 0x2bda1d9

    iget-object v3, p0, Lcom/google/speech/s3/S3$S3Response;->ttsCapabilitiesResponseExtension:Lcom/google/speech/speech/s3/Synthesizer$TtsCapabilitiesResponse;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3048
    :cond_b
    iget-object v2, p0, Lcom/google/speech/s3/S3$S3Response;->clockworkEventExtension:Lcom/google/speech/s3/Clockwork$ClockworkEvent;

    if-eqz v2, :cond_c

    .line 3049
    const v2, 0x35e8a63

    iget-object v3, p0, Lcom/google/speech/s3/S3$S3Response;->clockworkEventExtension:Lcom/google/speech/s3/Clockwork$ClockworkEvent;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3051
    :cond_c
    iget-object v2, p0, Lcom/google/speech/s3/S3$S3Response;->streamParsingOutputExtension:Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;

    if-eqz v2, :cond_d

    .line 3052
    const v2, 0x3a7fe95

    iget-object v3, p0, Lcom/google/speech/s3/S3$S3Response;->streamParsingOutputExtension:Lcom/google/speech/s3/StreamParsing$StreamParsingOutput;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3054
    :cond_d
    return-void
.end method
