.class public final Lcom/google/speech/s3/S3$S3Request;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "S3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/s3/S3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "S3Request"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/s3/S3$S3Request;


# instance fields
.field private bitField0_:I

.field public clientLogRequestExtension:Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;

.field public clockworkParamsExtension:Lcom/google/speech/s3/Clockwork$ClockworkParams;

.field private debuggingEnabled_:Z

.field private endOfData_:Z

.field public gogglesClientLogExtension:Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;

.field public gogglesS3SessionOptionsExtension:Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;

.field public gogglesStreamRequestExtension:Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;

.field private loggingEnabled_:Z

.field public majelClientInfoExtension:Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

.field public majelServiceRequestExtension:Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;

.field public mobileUserInfoExtension:Lcom/google/speech/s3/MobileUser$MobileUserInfo;

.field public pinholeParamsExtension:Lcom/google/speech/s3/PinholeStream$PinholeParams;

.field public pinholeTtsBridgeParamsExtension:Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;

.field public recognizerVocabularyContextExtension:Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;

.field public s3AudioDataExtension:Lcom/google/speech/s3/Audio$S3AudioData;

.field public s3AudioDataPreambleExtension:Lcom/google/speech/s3/Audio$S3AudioData;

.field public s3AudioInfoExtension:Lcom/google/speech/s3/Audio$S3AudioInfo;

.field public s3ClientInfoExtension:Lcom/google/speech/s3/S3$S3ClientInfo;

.field public s3ConnectionInfoExtension:Lcom/google/speech/s3/S3$S3ConnectionInfo;

.field public s3DebugInfoExtension:Lcom/google/speech/s3/S3$S3DebugInfo;

.field public s3EvalInfoExtension:Lcom/google/speech/s3/S3$S3EvalInfo;

.field public s3ExperimentInfoExtension:Lcom/google/speech/s3/S3$S3ExperimentInfo;

.field public s3RecognizerInfoExtension:Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

.field public s3SessionInfoExtension:Lcom/google/speech/s3/S3$S3SessionInfo;

.field public s3UserInfoExtension:Lcom/google/speech/s3/S3$S3UserInfo;

.field private service_:Ljava/lang/String;

.field public soundSearchInfoExtension:Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

.field public streamParsingInputExtension:Lcom/google/speech/s3/StreamParsing$StreamParsingInput;

.field public ttsCapabilitiesRequestExtension:Lcom/google/speech/speech/s3/Synthesizer$TtsCapabilitiesRequest;

.field public ttsServiceRequestExtension:Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 185
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->clear()Lcom/google/speech/s3/S3$S3Request;

    .line 186
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/s3/S3$S3Request;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/google/speech/s3/S3$S3Request;->_emptyArray:[Lcom/google/speech/s3/S3$S3Request;

    if-nez v0, :cond_1

    .line 15
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lcom/google/speech/s3/S3$S3Request;->_emptyArray:[Lcom/google/speech/s3/S3$S3Request;

    if-nez v0, :cond_0

    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/s3/S3$S3Request;

    sput-object v0, Lcom/google/speech/s3/S3$S3Request;->_emptyArray:[Lcom/google/speech/s3/S3$S3Request;

    .line 20
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_1
    sget-object v0, Lcom/google/speech/s3/S3$S3Request;->_emptyArray:[Lcom/google/speech/s3/S3$S3Request;

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

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/S3$S3Request;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 675
    new-instance v0, Lcom/google/speech/s3/S3$S3Request;

    invoke-direct {v0}, Lcom/google/speech/s3/S3$S3Request;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/S3$S3Request;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/S3$S3Request;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/s3/S3$S3Request;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 669
    new-instance v0, Lcom/google/speech/s3/S3$S3Request;

    invoke-direct {v0}, Lcom/google/speech/s3/S3$S3Request;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/S3$S3Request;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/s3/S3$S3Request;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 189
    iput v2, p0, Lcom/google/speech/s3/S3$S3Request;->bitField0_:I

    .line 190
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->service_:Ljava/lang/String;

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->loggingEnabled_:Z

    .line 192
    iput-boolean v2, p0, Lcom/google/speech/s3/S3$S3Request;->debuggingEnabled_:Z

    .line 193
    iput-boolean v2, p0, Lcom/google/speech/s3/S3$S3Request;->endOfData_:Z

    .line 194
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3UserInfoExtension:Lcom/google/speech/s3/S3$S3UserInfo;

    .line 195
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3AudioInfoExtension:Lcom/google/speech/s3/Audio$S3AudioInfo;

    .line 196
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3AudioDataExtension:Lcom/google/speech/s3/Audio$S3AudioData;

    .line 197
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3ClientInfoExtension:Lcom/google/speech/s3/S3$S3ClientInfo;

    .line 198
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3RecognizerInfoExtension:Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    .line 199
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->mobileUserInfoExtension:Lcom/google/speech/s3/MobileUser$MobileUserInfo;

    .line 200
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3SessionInfoExtension:Lcom/google/speech/s3/S3$S3SessionInfo;

    .line 201
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->clientLogRequestExtension:Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;

    .line 202
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->ttsServiceRequestExtension:Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;

    .line 203
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->majelServiceRequestExtension:Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;

    .line 204
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->majelClientInfoExtension:Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    .line 205
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3ExperimentInfoExtension:Lcom/google/speech/s3/S3$S3ExperimentInfo;

    .line 206
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->pinholeParamsExtension:Lcom/google/speech/s3/PinholeStream$PinholeParams;

    .line 207
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3ConnectionInfoExtension:Lcom/google/speech/s3/S3$S3ConnectionInfo;

    .line 208
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->soundSearchInfoExtension:Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    .line 209
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->gogglesClientLogExtension:Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;

    .line 210
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->gogglesS3SessionOptionsExtension:Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;

    .line 211
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->gogglesStreamRequestExtension:Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;

    .line 212
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->pinholeTtsBridgeParamsExtension:Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;

    .line 213
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3EvalInfoExtension:Lcom/google/speech/s3/S3$S3EvalInfo;

    .line 214
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->ttsCapabilitiesRequestExtension:Lcom/google/speech/speech/s3/Synthesizer$TtsCapabilitiesRequest;

    .line 215
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3DebugInfoExtension:Lcom/google/speech/s3/S3$S3DebugInfo;

    .line 216
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->recognizerVocabularyContextExtension:Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;

    .line 217
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->clockworkParamsExtension:Lcom/google/speech/s3/Clockwork$ClockworkParams;

    .line 218
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->streamParsingInputExtension:Lcom/google/speech/s3/StreamParsing$StreamParsingInput;

    .line 219
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3AudioDataPreambleExtension:Lcom/google/speech/s3/Audio$S3AudioData;

    .line 220
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/S3$S3Request;->cachedSize:I

    .line 221
    return-object p0
.end method

.method public clearDebuggingEnabled()Lcom/google/speech/s3/S3$S3Request;
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->debuggingEnabled_:Z

    .line 83
    iget v0, p0, Lcom/google/speech/s3/S3$S3Request;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/speech/s3/S3$S3Request;->bitField0_:I

    .line 84
    return-object p0
.end method

.method public clearEndOfData()Lcom/google/speech/s3/S3$S3Request;
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->endOfData_:Z

    .line 102
    iget v0, p0, Lcom/google/speech/s3/S3$S3Request;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/speech/s3/S3$S3Request;->bitField0_:I

    .line 103
    return-object p0
.end method

.method public clearLoggingEnabled()Lcom/google/speech/s3/S3$S3Request;
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->loggingEnabled_:Z

    .line 64
    iget v0, p0, Lcom/google/speech/s3/S3$S3Request;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/s3/S3$S3Request;->bitField0_:I

    .line 65
    return-object p0
.end method

.method public clearService()Lcom/google/speech/s3/S3$S3Request;
    .locals 1

    .prologue
    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->service_:Ljava/lang/String;

    .line 45
    iget v0, p0, Lcom/google/speech/s3/S3$S3Request;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/s3/S3$S3Request;->bitField0_:I

    .line 46
    return-object p0
.end method

.method public getDebuggingEnabled()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->debuggingEnabled_:Z

    return v0
.end method

.method public getEndOfData()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->endOfData_:Z

    return v0
.end method

.method public getLoggingEnabled()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->loggingEnabled_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 321
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 322
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/s3/S3$S3Request;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 323
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/speech/s3/S3$S3Request;->service_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 326
    :cond_0
    iget v1, p0, Lcom/google/speech/s3/S3$S3Request;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 327
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/speech/s3/S3$S3Request;->loggingEnabled_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 330
    :cond_1
    iget v1, p0, Lcom/google/speech/s3/S3$S3Request;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_2

    .line 331
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/speech/s3/S3$S3Request;->endOfData_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 334
    :cond_2
    iget v1, p0, Lcom/google/speech/s3/S3$S3Request;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 335
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/speech/s3/S3$S3Request;->debuggingEnabled_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 338
    :cond_3
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3UserInfoExtension:Lcom/google/speech/s3/S3$S3UserInfo;

    if-eqz v1, :cond_4

    .line 339
    const v1, 0x47888

    iget-object v2, p0, Lcom/google/speech/s3/S3$S3Request;->s3UserInfoExtension:Lcom/google/speech/s3/S3$S3UserInfo;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 342
    :cond_4
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3AudioInfoExtension:Lcom/google/speech/s3/Audio$S3AudioInfo;

    if-eqz v1, :cond_5

    .line 343
    const v1, 0x478ec

    iget-object v2, p0, Lcom/google/speech/s3/S3$S3Request;->s3AudioInfoExtension:Lcom/google/speech/s3/Audio$S3AudioInfo;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 346
    :cond_5
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3AudioDataExtension:Lcom/google/speech/s3/Audio$S3AudioData;

    if-eqz v1, :cond_6

    .line 347
    const v1, 0x478ed

    iget-object v2, p0, Lcom/google/speech/s3/S3$S3Request;->s3AudioDataExtension:Lcom/google/speech/s3/Audio$S3AudioData;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 350
    :cond_6
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3ClientInfoExtension:Lcom/google/speech/s3/S3$S3ClientInfo;

    if-eqz v1, :cond_7

    .line 351
    const v1, 0x47c70

    iget-object v2, p0, Lcom/google/speech/s3/S3$S3Request;->s3ClientInfoExtension:Lcom/google/speech/s3/S3$S3ClientInfo;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 354
    :cond_7
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3RecognizerInfoExtension:Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    if-eqz v1, :cond_8

    .line 355
    const v1, 0x47e64

    iget-object v2, p0, Lcom/google/speech/s3/S3$S3Request;->s3RecognizerInfoExtension:Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 358
    :cond_8
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->mobileUserInfoExtension:Lcom/google/speech/s3/MobileUser$MobileUserInfo;

    if-eqz v1, :cond_9

    .line 359
    const v1, 0x1a09496

    iget-object v2, p0, Lcom/google/speech/s3/S3$S3Request;->mobileUserInfoExtension:Lcom/google/speech/s3/MobileUser$MobileUserInfo;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 362
    :cond_9
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3SessionInfoExtension:Lcom/google/speech/s3/S3$S3SessionInfo;

    if-eqz v1, :cond_a

    .line 363
    const v1, 0x1a27214

    iget-object v2, p0, Lcom/google/speech/s3/S3$S3Request;->s3SessionInfoExtension:Lcom/google/speech/s3/S3$S3SessionInfo;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 366
    :cond_a
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->clientLogRequestExtension:Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;

    if-eqz v1, :cond_b

    .line 367
    const v1, 0x1a833e7

    iget-object v2, p0, Lcom/google/speech/s3/S3$S3Request;->clientLogRequestExtension:Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 370
    :cond_b
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->ttsServiceRequestExtension:Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;

    if-eqz v1, :cond_c

    .line 371
    const v1, 0x1a837ac

    iget-object v2, p0, Lcom/google/speech/s3/S3$S3Request;->ttsServiceRequestExtension:Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 374
    :cond_c
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->majelServiceRequestExtension:Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;

    if-eqz v1, :cond_d

    .line 375
    const v1, 0x1a8ba0c

    iget-object v2, p0, Lcom/google/speech/s3/S3$S3Request;->majelServiceRequestExtension:Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 378
    :cond_d
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->majelClientInfoExtension:Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    if-eqz v1, :cond_e

    .line 379
    const v1, 0x1c5b670

    iget-object v2, p0, Lcom/google/speech/s3/S3$S3Request;->majelClientInfoExtension:Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 382
    :cond_e
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3ExperimentInfoExtension:Lcom/google/speech/s3/S3$S3ExperimentInfo;

    if-eqz v1, :cond_f

    .line 383
    const v1, 0x1fcfef8

    iget-object v2, p0, Lcom/google/speech/s3/S3$S3Request;->s3ExperimentInfoExtension:Lcom/google/speech/s3/S3$S3ExperimentInfo;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 386
    :cond_f
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->pinholeParamsExtension:Lcom/google/speech/s3/PinholeStream$PinholeParams;

    if-eqz v1, :cond_10

    .line 387
    const v1, 0x20c2c16

    iget-object v2, p0, Lcom/google/speech/s3/S3$S3Request;->pinholeParamsExtension:Lcom/google/speech/s3/PinholeStream$PinholeParams;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 390
    :cond_10
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3ConnectionInfoExtension:Lcom/google/speech/s3/S3$S3ConnectionInfo;

    if-eqz v1, :cond_11

    .line 391
    const v1, 0x20f3b67

    iget-object v2, p0, Lcom/google/speech/s3/S3$S3Request;->s3ConnectionInfoExtension:Lcom/google/speech/s3/S3$S3ConnectionInfo;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 394
    :cond_11
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->soundSearchInfoExtension:Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    if-eqz v1, :cond_12

    .line 395
    const v1, 0x21b6d89

    iget-object v2, p0, Lcom/google/speech/s3/S3$S3Request;->soundSearchInfoExtension:Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 398
    :cond_12
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->gogglesClientLogExtension:Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;

    if-eqz v1, :cond_13

    .line 399
    const v1, 0x21bd8a3

    iget-object v2, p0, Lcom/google/speech/s3/S3$S3Request;->gogglesClientLogExtension:Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 402
    :cond_13
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->gogglesS3SessionOptionsExtension:Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;

    if-eqz v1, :cond_14

    .line 403
    const v1, 0x21bdb9a

    iget-object v2, p0, Lcom/google/speech/s3/S3$S3Request;->gogglesS3SessionOptionsExtension:Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 406
    :cond_14
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->gogglesStreamRequestExtension:Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;

    if-eqz v1, :cond_15

    .line 407
    const v1, 0x21ec2a6

    iget-object v2, p0, Lcom/google/speech/s3/S3$S3Request;->gogglesStreamRequestExtension:Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 410
    :cond_15
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->pinholeTtsBridgeParamsExtension:Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;

    if-eqz v1, :cond_16

    .line 411
    const v1, 0x270b683

    iget-object v2, p0, Lcom/google/speech/s3/S3$S3Request;->pinholeTtsBridgeParamsExtension:Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 414
    :cond_16
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3EvalInfoExtension:Lcom/google/speech/s3/S3$S3EvalInfo;

    if-eqz v1, :cond_17

    .line 415
    const v1, 0x2b01bd6

    iget-object v2, p0, Lcom/google/speech/s3/S3$S3Request;->s3EvalInfoExtension:Lcom/google/speech/s3/S3$S3EvalInfo;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 418
    :cond_17
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->ttsCapabilitiesRequestExtension:Lcom/google/speech/speech/s3/Synthesizer$TtsCapabilitiesRequest;

    if-eqz v1, :cond_18

    .line 419
    const v1, 0x2bd9f2c

    iget-object v2, p0, Lcom/google/speech/s3/S3$S3Request;->ttsCapabilitiesRequestExtension:Lcom/google/speech/speech/s3/Synthesizer$TtsCapabilitiesRequest;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 422
    :cond_18
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3DebugInfoExtension:Lcom/google/speech/s3/S3$S3DebugInfo;

    if-eqz v1, :cond_19

    .line 423
    const v1, 0x2cea1e4

    iget-object v2, p0, Lcom/google/speech/s3/S3$S3Request;->s3DebugInfoExtension:Lcom/google/speech/s3/S3$S3DebugInfo;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 426
    :cond_19
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->recognizerVocabularyContextExtension:Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;

    if-eqz v1, :cond_1a

    .line 427
    const v1, 0x3420ce2

    iget-object v2, p0, Lcom/google/speech/s3/S3$S3Request;->recognizerVocabularyContextExtension:Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 430
    :cond_1a
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->clockworkParamsExtension:Lcom/google/speech/s3/Clockwork$ClockworkParams;

    if-eqz v1, :cond_1b

    .line 431
    const v1, 0x373d04a

    iget-object v2, p0, Lcom/google/speech/s3/S3$S3Request;->clockworkParamsExtension:Lcom/google/speech/s3/Clockwork$ClockworkParams;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 434
    :cond_1b
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->streamParsingInputExtension:Lcom/google/speech/s3/StreamParsing$StreamParsingInput;

    if-eqz v1, :cond_1c

    .line 435
    const v1, 0x3b0bba8

    iget-object v2, p0, Lcom/google/speech/s3/S3$S3Request;->streamParsingInputExtension:Lcom/google/speech/s3/StreamParsing$StreamParsingInput;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 438
    :cond_1c
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3AudioDataPreambleExtension:Lcom/google/speech/s3/Audio$S3AudioData;

    if-eqz v1, :cond_1d

    .line 439
    const v1, 0x3bd1a7e

    iget-object v2, p0, Lcom/google/speech/s3/S3$S3Request;->s3AudioDataPreambleExtension:Lcom/google/speech/s3/Audio$S3AudioData;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 442
    :cond_1d
    iput v0, p0, Lcom/google/speech/s3/S3$S3Request;->cachedSize:I

    .line 443
    return v0
.end method

.method public getService()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->service_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDebuggingEnabled()Z
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/google/speech/s3/S3$S3Request;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEndOfData()Z
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/google/speech/s3/S3$S3Request;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLoggingEnabled()Z
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/google/speech/s3/S3$S3Request;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasService()Z
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/google/speech/s3/S3$S3Request;->bitField0_:I

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
    invoke-virtual {p0, p1}, Lcom/google/speech/s3/S3$S3Request;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/S3$S3Request;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/S3$S3Request;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 451
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 452
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 456
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 457
    :sswitch_0
    return-object p0

    .line 462
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->service_:Ljava/lang/String;

    .line 463
    iget v1, p0, Lcom/google/speech/s3/S3$S3Request;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/s3/S3$S3Request;->bitField0_:I

    goto :goto_0

    .line 467
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/speech/s3/S3$S3Request;->loggingEnabled_:Z

    .line 468
    iget v1, p0, Lcom/google/speech/s3/S3$S3Request;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/speech/s3/S3$S3Request;->bitField0_:I

    goto :goto_0

    .line 472
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/speech/s3/S3$S3Request;->endOfData_:Z

    .line 473
    iget v1, p0, Lcom/google/speech/s3/S3$S3Request;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/speech/s3/S3$S3Request;->bitField0_:I

    goto :goto_0

    .line 477
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/speech/s3/S3$S3Request;->debuggingEnabled_:Z

    .line 478
    iget v1, p0, Lcom/google/speech/s3/S3$S3Request;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/speech/s3/S3$S3Request;->bitField0_:I

    goto :goto_0

    .line 482
    :sswitch_5
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3UserInfoExtension:Lcom/google/speech/s3/S3$S3UserInfo;

    if-nez v1, :cond_1

    .line 483
    new-instance v1, Lcom/google/speech/s3/S3$S3UserInfo;

    invoke-direct {v1}, Lcom/google/speech/s3/S3$S3UserInfo;-><init>()V

    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3UserInfoExtension:Lcom/google/speech/s3/S3$S3UserInfo;

    .line 485
    :cond_1
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3UserInfoExtension:Lcom/google/speech/s3/S3$S3UserInfo;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 489
    :sswitch_6
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3AudioInfoExtension:Lcom/google/speech/s3/Audio$S3AudioInfo;

    if-nez v1, :cond_2

    .line 490
    new-instance v1, Lcom/google/speech/s3/Audio$S3AudioInfo;

    invoke-direct {v1}, Lcom/google/speech/s3/Audio$S3AudioInfo;-><init>()V

    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3AudioInfoExtension:Lcom/google/speech/s3/Audio$S3AudioInfo;

    .line 492
    :cond_2
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3AudioInfoExtension:Lcom/google/speech/s3/Audio$S3AudioInfo;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 496
    :sswitch_7
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3AudioDataExtension:Lcom/google/speech/s3/Audio$S3AudioData;

    if-nez v1, :cond_3

    .line 497
    new-instance v1, Lcom/google/speech/s3/Audio$S3AudioData;

    invoke-direct {v1}, Lcom/google/speech/s3/Audio$S3AudioData;-><init>()V

    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3AudioDataExtension:Lcom/google/speech/s3/Audio$S3AudioData;

    .line 499
    :cond_3
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3AudioDataExtension:Lcom/google/speech/s3/Audio$S3AudioData;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 503
    :sswitch_8
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3ClientInfoExtension:Lcom/google/speech/s3/S3$S3ClientInfo;

    if-nez v1, :cond_4

    .line 504
    new-instance v1, Lcom/google/speech/s3/S3$S3ClientInfo;

    invoke-direct {v1}, Lcom/google/speech/s3/S3$S3ClientInfo;-><init>()V

    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3ClientInfoExtension:Lcom/google/speech/s3/S3$S3ClientInfo;

    .line 506
    :cond_4
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3ClientInfoExtension:Lcom/google/speech/s3/S3$S3ClientInfo;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 510
    :sswitch_9
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3RecognizerInfoExtension:Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    if-nez v1, :cond_5

    .line 511
    new-instance v1, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    invoke-direct {v1}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;-><init>()V

    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3RecognizerInfoExtension:Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    .line 513
    :cond_5
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3RecognizerInfoExtension:Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 517
    :sswitch_a
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->mobileUserInfoExtension:Lcom/google/speech/s3/MobileUser$MobileUserInfo;

    if-nez v1, :cond_6

    .line 518
    new-instance v1, Lcom/google/speech/s3/MobileUser$MobileUserInfo;

    invoke-direct {v1}, Lcom/google/speech/s3/MobileUser$MobileUserInfo;-><init>()V

    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->mobileUserInfoExtension:Lcom/google/speech/s3/MobileUser$MobileUserInfo;

    .line 520
    :cond_6
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->mobileUserInfoExtension:Lcom/google/speech/s3/MobileUser$MobileUserInfo;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 524
    :sswitch_b
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3SessionInfoExtension:Lcom/google/speech/s3/S3$S3SessionInfo;

    if-nez v1, :cond_7

    .line 525
    new-instance v1, Lcom/google/speech/s3/S3$S3SessionInfo;

    invoke-direct {v1}, Lcom/google/speech/s3/S3$S3SessionInfo;-><init>()V

    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3SessionInfoExtension:Lcom/google/speech/s3/S3$S3SessionInfo;

    .line 527
    :cond_7
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3SessionInfoExtension:Lcom/google/speech/s3/S3$S3SessionInfo;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 531
    :sswitch_c
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->clientLogRequestExtension:Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;

    if-nez v1, :cond_8

    .line 532
    new-instance v1, Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;

    invoke-direct {v1}, Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;-><init>()V

    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->clientLogRequestExtension:Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;

    .line 534
    :cond_8
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->clientLogRequestExtension:Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 538
    :sswitch_d
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->ttsServiceRequestExtension:Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;

    if-nez v1, :cond_9

    .line 539
    new-instance v1, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;

    invoke-direct {v1}, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;-><init>()V

    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->ttsServiceRequestExtension:Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;

    .line 541
    :cond_9
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->ttsServiceRequestExtension:Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 545
    :sswitch_e
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->majelServiceRequestExtension:Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;

    if-nez v1, :cond_a

    .line 546
    new-instance v1, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;

    invoke-direct {v1}, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;-><init>()V

    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->majelServiceRequestExtension:Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;

    .line 548
    :cond_a
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->majelServiceRequestExtension:Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 552
    :sswitch_f
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->majelClientInfoExtension:Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    if-nez v1, :cond_b

    .line 553
    new-instance v1, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    invoke-direct {v1}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;-><init>()V

    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->majelClientInfoExtension:Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    .line 555
    :cond_b
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->majelClientInfoExtension:Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 559
    :sswitch_10
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3ExperimentInfoExtension:Lcom/google/speech/s3/S3$S3ExperimentInfo;

    if-nez v1, :cond_c

    .line 560
    new-instance v1, Lcom/google/speech/s3/S3$S3ExperimentInfo;

    invoke-direct {v1}, Lcom/google/speech/s3/S3$S3ExperimentInfo;-><init>()V

    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3ExperimentInfoExtension:Lcom/google/speech/s3/S3$S3ExperimentInfo;

    .line 562
    :cond_c
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3ExperimentInfoExtension:Lcom/google/speech/s3/S3$S3ExperimentInfo;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 566
    :sswitch_11
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->pinholeParamsExtension:Lcom/google/speech/s3/PinholeStream$PinholeParams;

    if-nez v1, :cond_d

    .line 567
    new-instance v1, Lcom/google/speech/s3/PinholeStream$PinholeParams;

    invoke-direct {v1}, Lcom/google/speech/s3/PinholeStream$PinholeParams;-><init>()V

    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->pinholeParamsExtension:Lcom/google/speech/s3/PinholeStream$PinholeParams;

    .line 569
    :cond_d
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->pinholeParamsExtension:Lcom/google/speech/s3/PinholeStream$PinholeParams;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 573
    :sswitch_12
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3ConnectionInfoExtension:Lcom/google/speech/s3/S3$S3ConnectionInfo;

    if-nez v1, :cond_e

    .line 574
    new-instance v1, Lcom/google/speech/s3/S3$S3ConnectionInfo;

    invoke-direct {v1}, Lcom/google/speech/s3/S3$S3ConnectionInfo;-><init>()V

    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3ConnectionInfoExtension:Lcom/google/speech/s3/S3$S3ConnectionInfo;

    .line 576
    :cond_e
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3ConnectionInfoExtension:Lcom/google/speech/s3/S3$S3ConnectionInfo;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 580
    :sswitch_13
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->soundSearchInfoExtension:Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    if-nez v1, :cond_f

    .line 581
    new-instance v1, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    invoke-direct {v1}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;-><init>()V

    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->soundSearchInfoExtension:Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    .line 583
    :cond_f
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->soundSearchInfoExtension:Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 587
    :sswitch_14
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->gogglesClientLogExtension:Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;

    if-nez v1, :cond_10

    .line 588
    new-instance v1, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;

    invoke-direct {v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;-><init>()V

    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->gogglesClientLogExtension:Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;

    .line 590
    :cond_10
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->gogglesClientLogExtension:Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 594
    :sswitch_15
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->gogglesS3SessionOptionsExtension:Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;

    if-nez v1, :cond_11

    .line 595
    new-instance v1, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;

    invoke-direct {v1}, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;-><init>()V

    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->gogglesS3SessionOptionsExtension:Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;

    .line 597
    :cond_11
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->gogglesS3SessionOptionsExtension:Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 601
    :sswitch_16
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->gogglesStreamRequestExtension:Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;

    if-nez v1, :cond_12

    .line 602
    new-instance v1, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;

    invoke-direct {v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;-><init>()V

    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->gogglesStreamRequestExtension:Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;

    .line 604
    :cond_12
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->gogglesStreamRequestExtension:Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 608
    :sswitch_17
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->pinholeTtsBridgeParamsExtension:Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;

    if-nez v1, :cond_13

    .line 609
    new-instance v1, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;

    invoke-direct {v1}, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;-><init>()V

    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->pinholeTtsBridgeParamsExtension:Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;

    .line 611
    :cond_13
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->pinholeTtsBridgeParamsExtension:Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 615
    :sswitch_18
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3EvalInfoExtension:Lcom/google/speech/s3/S3$S3EvalInfo;

    if-nez v1, :cond_14

    .line 616
    new-instance v1, Lcom/google/speech/s3/S3$S3EvalInfo;

    invoke-direct {v1}, Lcom/google/speech/s3/S3$S3EvalInfo;-><init>()V

    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3EvalInfoExtension:Lcom/google/speech/s3/S3$S3EvalInfo;

    .line 618
    :cond_14
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3EvalInfoExtension:Lcom/google/speech/s3/S3$S3EvalInfo;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 622
    :sswitch_19
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->ttsCapabilitiesRequestExtension:Lcom/google/speech/speech/s3/Synthesizer$TtsCapabilitiesRequest;

    if-nez v1, :cond_15

    .line 623
    new-instance v1, Lcom/google/speech/speech/s3/Synthesizer$TtsCapabilitiesRequest;

    invoke-direct {v1}, Lcom/google/speech/speech/s3/Synthesizer$TtsCapabilitiesRequest;-><init>()V

    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->ttsCapabilitiesRequestExtension:Lcom/google/speech/speech/s3/Synthesizer$TtsCapabilitiesRequest;

    .line 625
    :cond_15
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->ttsCapabilitiesRequestExtension:Lcom/google/speech/speech/s3/Synthesizer$TtsCapabilitiesRequest;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 629
    :sswitch_1a
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3DebugInfoExtension:Lcom/google/speech/s3/S3$S3DebugInfo;

    if-nez v1, :cond_16

    .line 630
    new-instance v1, Lcom/google/speech/s3/S3$S3DebugInfo;

    invoke-direct {v1}, Lcom/google/speech/s3/S3$S3DebugInfo;-><init>()V

    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3DebugInfoExtension:Lcom/google/speech/s3/S3$S3DebugInfo;

    .line 632
    :cond_16
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3DebugInfoExtension:Lcom/google/speech/s3/S3$S3DebugInfo;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 636
    :sswitch_1b
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->recognizerVocabularyContextExtension:Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;

    if-nez v1, :cond_17

    .line 637
    new-instance v1, Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;

    invoke-direct {v1}, Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;-><init>()V

    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->recognizerVocabularyContextExtension:Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;

    .line 639
    :cond_17
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->recognizerVocabularyContextExtension:Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 643
    :sswitch_1c
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->clockworkParamsExtension:Lcom/google/speech/s3/Clockwork$ClockworkParams;

    if-nez v1, :cond_18

    .line 644
    new-instance v1, Lcom/google/speech/s3/Clockwork$ClockworkParams;

    invoke-direct {v1}, Lcom/google/speech/s3/Clockwork$ClockworkParams;-><init>()V

    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->clockworkParamsExtension:Lcom/google/speech/s3/Clockwork$ClockworkParams;

    .line 646
    :cond_18
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->clockworkParamsExtension:Lcom/google/speech/s3/Clockwork$ClockworkParams;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 650
    :sswitch_1d
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->streamParsingInputExtension:Lcom/google/speech/s3/StreamParsing$StreamParsingInput;

    if-nez v1, :cond_19

    .line 651
    new-instance v1, Lcom/google/speech/s3/StreamParsing$StreamParsingInput;

    invoke-direct {v1}, Lcom/google/speech/s3/StreamParsing$StreamParsingInput;-><init>()V

    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->streamParsingInputExtension:Lcom/google/speech/s3/StreamParsing$StreamParsingInput;

    .line 653
    :cond_19
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->streamParsingInputExtension:Lcom/google/speech/s3/StreamParsing$StreamParsingInput;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 657
    :sswitch_1e
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3AudioDataPreambleExtension:Lcom/google/speech/s3/Audio$S3AudioData;

    if-nez v1, :cond_1a

    .line 658
    new-instance v1, Lcom/google/speech/s3/Audio$S3AudioData;

    invoke-direct {v1}, Lcom/google/speech/s3/Audio$S3AudioData;-><init>()V

    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3AudioDataPreambleExtension:Lcom/google/speech/s3/Audio$S3AudioData;

    .line 660
    :cond_1a
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3AudioDataPreambleExtension:Lcom/google/speech/s3/Audio$S3AudioData;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 452
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x23c442 -> :sswitch_5
        0x23c762 -> :sswitch_6
        0x23c76a -> :sswitch_7
        0x23e382 -> :sswitch_8
        0x23f322 -> :sswitch_9
        0xd04a4b2 -> :sswitch_a
        0xd1390a2 -> :sswitch_b
        0xd419f3a -> :sswitch_c
        0xd41bd62 -> :sswitch_d
        0xd45d062 -> :sswitch_e
        0xe2db382 -> :sswitch_f
        0xfe7f7c2 -> :sswitch_10
        0x106160b2 -> :sswitch_11
        0x1079db3a -> :sswitch_12
        0x10db6c4a -> :sswitch_13
        0x10dec51a -> :sswitch_14
        0x10dedcd2 -> :sswitch_15
        0x10f61532 -> :sswitch_16
        0x1385b41a -> :sswitch_17
        0x1580deb2 -> :sswitch_18
        0x15ecf962 -> :sswitch_19
        0x16750f22 -> :sswitch_1a
        0x1a106712 -> :sswitch_1b
        0x1b9e8252 -> :sswitch_1c
        0x1d85dd42 -> :sswitch_1d
        0x1de8d3f2 -> :sswitch_1e
    .end sparse-switch
.end method

.method public setDebuggingEnabled(Z)Lcom/google/speech/s3/S3$S3Request;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/google/speech/s3/S3$S3Request;->debuggingEnabled_:Z

    .line 75
    iget v0, p0, Lcom/google/speech/s3/S3$S3Request;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/speech/s3/S3$S3Request;->bitField0_:I

    .line 76
    return-object p0
.end method

.method public setEndOfData(Z)Lcom/google/speech/s3/S3$S3Request;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/google/speech/s3/S3$S3Request;->endOfData_:Z

    .line 94
    iget v0, p0, Lcom/google/speech/s3/S3$S3Request;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/speech/s3/S3$S3Request;->bitField0_:I

    .line 95
    return-object p0
.end method

.method public setLoggingEnabled(Z)Lcom/google/speech/s3/S3$S3Request;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/google/speech/s3/S3$S3Request;->loggingEnabled_:Z

    .line 56
    iget v0, p0, Lcom/google/speech/s3/S3$S3Request;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/s3/S3$S3Request;->bitField0_:I

    .line 57
    return-object p0
.end method

.method public setService(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3Request;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 33
    if-nez p1, :cond_0

    .line 34
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 36
    :cond_0
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3Request;->service_:Ljava/lang/String;

    .line 37
    iget v0, p0, Lcom/google/speech/s3/S3$S3Request;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/s3/S3$S3Request;->bitField0_:I

    .line 38
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
    .line 227
    iget v0, p0, Lcom/google/speech/s3/S3$S3Request;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 228
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->service_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 230
    :cond_0
    iget v0, p0, Lcom/google/speech/s3/S3$S3Request;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 231
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/speech/s3/S3$S3Request;->loggingEnabled_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 233
    :cond_1
    iget v0, p0, Lcom/google/speech/s3/S3$S3Request;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 234
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/speech/s3/S3$S3Request;->endOfData_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 236
    :cond_2
    iget v0, p0, Lcom/google/speech/s3/S3$S3Request;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 237
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/speech/s3/S3$S3Request;->debuggingEnabled_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 239
    :cond_3
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->s3UserInfoExtension:Lcom/google/speech/s3/S3$S3UserInfo;

    if-eqz v0, :cond_4

    .line 240
    const v0, 0x47888

    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3UserInfoExtension:Lcom/google/speech/s3/S3$S3UserInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 242
    :cond_4
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->s3AudioInfoExtension:Lcom/google/speech/s3/Audio$S3AudioInfo;

    if-eqz v0, :cond_5

    .line 243
    const v0, 0x478ec

    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3AudioInfoExtension:Lcom/google/speech/s3/Audio$S3AudioInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 245
    :cond_5
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->s3AudioDataExtension:Lcom/google/speech/s3/Audio$S3AudioData;

    if-eqz v0, :cond_6

    .line 246
    const v0, 0x478ed

    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3AudioDataExtension:Lcom/google/speech/s3/Audio$S3AudioData;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 248
    :cond_6
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->s3ClientInfoExtension:Lcom/google/speech/s3/S3$S3ClientInfo;

    if-eqz v0, :cond_7

    .line 249
    const v0, 0x47c70

    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3ClientInfoExtension:Lcom/google/speech/s3/S3$S3ClientInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 251
    :cond_7
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->s3RecognizerInfoExtension:Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    if-eqz v0, :cond_8

    .line 252
    const v0, 0x47e64

    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3RecognizerInfoExtension:Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 254
    :cond_8
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->mobileUserInfoExtension:Lcom/google/speech/s3/MobileUser$MobileUserInfo;

    if-eqz v0, :cond_9

    .line 255
    const v0, 0x1a09496

    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->mobileUserInfoExtension:Lcom/google/speech/s3/MobileUser$MobileUserInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 257
    :cond_9
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->s3SessionInfoExtension:Lcom/google/speech/s3/S3$S3SessionInfo;

    if-eqz v0, :cond_a

    .line 258
    const v0, 0x1a27214

    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3SessionInfoExtension:Lcom/google/speech/s3/S3$S3SessionInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 260
    :cond_a
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->clientLogRequestExtension:Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;

    if-eqz v0, :cond_b

    .line 261
    const v0, 0x1a833e7

    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->clientLogRequestExtension:Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 263
    :cond_b
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->ttsServiceRequestExtension:Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;

    if-eqz v0, :cond_c

    .line 264
    const v0, 0x1a837ac

    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->ttsServiceRequestExtension:Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 266
    :cond_c
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->majelServiceRequestExtension:Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;

    if-eqz v0, :cond_d

    .line 267
    const v0, 0x1a8ba0c

    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->majelServiceRequestExtension:Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 269
    :cond_d
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->majelClientInfoExtension:Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    if-eqz v0, :cond_e

    .line 270
    const v0, 0x1c5b670

    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->majelClientInfoExtension:Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 272
    :cond_e
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->s3ExperimentInfoExtension:Lcom/google/speech/s3/S3$S3ExperimentInfo;

    if-eqz v0, :cond_f

    .line 273
    const v0, 0x1fcfef8

    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3ExperimentInfoExtension:Lcom/google/speech/s3/S3$S3ExperimentInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 275
    :cond_f
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->pinholeParamsExtension:Lcom/google/speech/s3/PinholeStream$PinholeParams;

    if-eqz v0, :cond_10

    .line 276
    const v0, 0x20c2c16

    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->pinholeParamsExtension:Lcom/google/speech/s3/PinholeStream$PinholeParams;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 278
    :cond_10
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->s3ConnectionInfoExtension:Lcom/google/speech/s3/S3$S3ConnectionInfo;

    if-eqz v0, :cond_11

    .line 279
    const v0, 0x20f3b67

    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3ConnectionInfoExtension:Lcom/google/speech/s3/S3$S3ConnectionInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 281
    :cond_11
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->soundSearchInfoExtension:Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    if-eqz v0, :cond_12

    .line 282
    const v0, 0x21b6d89

    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->soundSearchInfoExtension:Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 284
    :cond_12
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->gogglesClientLogExtension:Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;

    if-eqz v0, :cond_13

    .line 285
    const v0, 0x21bd8a3

    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->gogglesClientLogExtension:Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 287
    :cond_13
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->gogglesS3SessionOptionsExtension:Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;

    if-eqz v0, :cond_14

    .line 288
    const v0, 0x21bdb9a

    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->gogglesS3SessionOptionsExtension:Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 290
    :cond_14
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->gogglesStreamRequestExtension:Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;

    if-eqz v0, :cond_15

    .line 291
    const v0, 0x21ec2a6

    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->gogglesStreamRequestExtension:Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 293
    :cond_15
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->pinholeTtsBridgeParamsExtension:Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;

    if-eqz v0, :cond_16

    .line 294
    const v0, 0x270b683

    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->pinholeTtsBridgeParamsExtension:Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 296
    :cond_16
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->s3EvalInfoExtension:Lcom/google/speech/s3/S3$S3EvalInfo;

    if-eqz v0, :cond_17

    .line 297
    const v0, 0x2b01bd6

    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3EvalInfoExtension:Lcom/google/speech/s3/S3$S3EvalInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 299
    :cond_17
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->ttsCapabilitiesRequestExtension:Lcom/google/speech/speech/s3/Synthesizer$TtsCapabilitiesRequest;

    if-eqz v0, :cond_18

    .line 300
    const v0, 0x2bd9f2c

    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->ttsCapabilitiesRequestExtension:Lcom/google/speech/speech/s3/Synthesizer$TtsCapabilitiesRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 302
    :cond_18
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->s3DebugInfoExtension:Lcom/google/speech/s3/S3$S3DebugInfo;

    if-eqz v0, :cond_19

    .line 303
    const v0, 0x2cea1e4

    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3DebugInfoExtension:Lcom/google/speech/s3/S3$S3DebugInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 305
    :cond_19
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->recognizerVocabularyContextExtension:Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;

    if-eqz v0, :cond_1a

    .line 306
    const v0, 0x3420ce2

    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->recognizerVocabularyContextExtension:Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 308
    :cond_1a
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->clockworkParamsExtension:Lcom/google/speech/s3/Clockwork$ClockworkParams;

    if-eqz v0, :cond_1b

    .line 309
    const v0, 0x373d04a

    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->clockworkParamsExtension:Lcom/google/speech/s3/Clockwork$ClockworkParams;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 311
    :cond_1b
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->streamParsingInputExtension:Lcom/google/speech/s3/StreamParsing$StreamParsingInput;

    if-eqz v0, :cond_1c

    .line 312
    const v0, 0x3b0bba8

    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->streamParsingInputExtension:Lcom/google/speech/s3/StreamParsing$StreamParsingInput;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 314
    :cond_1c
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->s3AudioDataPreambleExtension:Lcom/google/speech/s3/Audio$S3AudioData;

    if-eqz v0, :cond_1d

    .line 315
    const v0, 0x3bd1a7e

    iget-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3AudioDataPreambleExtension:Lcom/google/speech/s3/Audio$S3AudioData;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 317
    :cond_1d
    return-void
.end method
