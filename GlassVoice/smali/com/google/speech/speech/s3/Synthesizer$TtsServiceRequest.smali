.class public final Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "Synthesizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/speech/s3/Synthesizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TtsServiceRequest"
.end annotation


# static fields
.field public static final ENCODING_LINEAR_16BIT:I = 0x1

.field public static final ENCODING_MP3:I = 0x4

.field public static final ENCODING_MULAW:I = 0x2

.field public static final ENCODING_SPEEX:I = 0x3

.field public static final ENCODING_SPEEX_IN_OGG:I = 0x6

.field public static final ENCODING_SPEEX_WITH_HEADER_BYTE:I = 0x5

.field private static volatile _emptyArray:[Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;


# instance fields
.field private audioChunkSize_:I

.field private audioEncoding_:I

.field private bitField0_:I

.field public engineSpecificRequest:Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;

.field private inputIsLoggable_:Z

.field private ssml_:Ljava/lang/String;

.field private synthesisPitch_:D

.field private synthesisSpeed_:D

.field private synthesisText_:Ljava/lang/String;

.field private synthesisVolume_:D

.field private voiceEngine_:Ljava/lang/String;

.field private voiceLanguage_:Ljava/lang/String;

.field private voiceName_:Ljava/lang/String;

.field private voiceSampleRate_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 282
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->clear()Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;

    .line 283
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;
    .locals 2

    .prologue
    .line 22
    sget-object v0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->_emptyArray:[Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;

    if-nez v0, :cond_1

    .line 23
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 25
    :try_start_0
    sget-object v0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->_emptyArray:[Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;

    if-nez v0, :cond_0

    .line 26
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;

    sput-object v0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->_emptyArray:[Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;

    .line 28
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_1
    sget-object v0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->_emptyArray:[Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 501
    new-instance v0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;

    invoke-direct {v0}, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 495
    new-instance v0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;

    invoke-direct {v0}, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 286
    iput v3, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    .line 287
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->synthesisText_:Ljava/lang/String;

    .line 288
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->ssml_:Ljava/lang/String;

    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->engineSpecificRequest:Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;

    .line 290
    iput-boolean v3, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->inputIsLoggable_:Z

    .line 291
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->voiceLanguage_:Ljava/lang/String;

    .line 292
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->voiceName_:Ljava/lang/String;

    .line 293
    iput v3, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->voiceSampleRate_:I

    .line 294
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->voiceEngine_:Ljava/lang/String;

    .line 295
    iput-wide v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->synthesisSpeed_:D

    .line 296
    iput-wide v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->synthesisPitch_:D

    .line 297
    iput-wide v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->synthesisVolume_:D

    .line 298
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->audioEncoding_:I

    .line 299
    const/16 v0, 0x400

    iput v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->audioChunkSize_:I

    .line 300
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->cachedSize:I

    .line 301
    return-object p0
.end method

.method public clearAudioChunkSize()Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;
    .locals 1

    .prologue
    .line 276
    const/16 v0, 0x400

    iput v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->audioChunkSize_:I

    .line 277
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    .line 278
    return-object p0
.end method

.method public clearAudioEncoding()Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->audioEncoding_:I

    .line 258
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    .line 259
    return-object p0
.end method

.method public clearInputIsLoggable()Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->inputIsLoggable_:Z

    .line 97
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    .line 98
    return-object p0
.end method

.method public clearSsml()Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;
    .locals 1

    .prologue
    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->ssml_:Ljava/lang/String;

    .line 75
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    .line 76
    return-object p0
.end method

.method public clearSynthesisPitch()Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;
    .locals 2

    .prologue
    .line 219
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->synthesisPitch_:D

    .line 220
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    .line 221
    return-object p0
.end method

.method public clearSynthesisSpeed()Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;
    .locals 2

    .prologue
    .line 200
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->synthesisSpeed_:D

    .line 201
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    .line 202
    return-object p0
.end method

.method public clearSynthesisText()Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;
    .locals 1

    .prologue
    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->synthesisText_:Ljava/lang/String;

    .line 53
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    .line 54
    return-object p0
.end method

.method public clearSynthesisVolume()Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;
    .locals 2

    .prologue
    .line 238
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->synthesisVolume_:D

    .line 239
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    .line 240
    return-object p0
.end method

.method public clearVoiceEngine()Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;
    .locals 1

    .prologue
    .line 181
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->voiceEngine_:Ljava/lang/String;

    .line 182
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    .line 183
    return-object p0
.end method

.method public clearVoiceLanguage()Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;
    .locals 1

    .prologue
    .line 118
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->voiceLanguage_:Ljava/lang/String;

    .line 119
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    .line 120
    return-object p0
.end method

.method public clearVoiceName()Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;
    .locals 1

    .prologue
    .line 140
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->voiceName_:Ljava/lang/String;

    .line 141
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    .line 142
    return-object p0
.end method

.method public clearVoiceSampleRate()Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->voiceSampleRate_:I

    .line 160
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    .line 161
    return-object p0
.end method

.method public getAudioChunkSize()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->audioChunkSize_:I

    return v0
.end method

.method public getAudioEncoding()I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->audioEncoding_:I

    return v0
.end method

.method public getInputIsLoggable()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->inputIsLoggable_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 350
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 351
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 352
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->synthesisText_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 355
    :cond_0
    iget v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 356
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->ssml_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 359
    :cond_1
    iget v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_2

    .line 360
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->voiceLanguage_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 363
    :cond_2
    iget v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_3

    .line 364
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->voiceName_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 367
    :cond_3
    iget v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_4

    .line 368
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->voiceSampleRate_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 371
    :cond_4
    iget v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_5

    .line 372
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->voiceEngine_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 375
    :cond_5
    iget v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_6

    .line 376
    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->synthesisSpeed_:D

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 379
    :cond_6
    iget v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_7

    .line 380
    const/16 v1, 0x8

    iget-wide v2, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->synthesisPitch_:D

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 383
    :cond_7
    iget v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_8

    .line 384
    const/16 v1, 0x9

    iget-wide v2, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->synthesisVolume_:D

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 387
    :cond_8
    iget v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_9

    .line 388
    const/16 v1, 0xa

    iget v2, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->audioEncoding_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 391
    :cond_9
    iget v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_a

    .line 392
    const/16 v1, 0xb

    iget v2, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->audioChunkSize_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 395
    :cond_a
    iget v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_b

    .line 396
    const/16 v1, 0xc

    iget-boolean v2, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->inputIsLoggable_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 399
    :cond_b
    iget-object v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->engineSpecificRequest:Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;

    if-eqz v1, :cond_c

    .line 400
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->engineSpecificRequest:Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 403
    :cond_c
    iput v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->cachedSize:I

    .line 404
    return v0
.end method

.method public getSsml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->ssml_:Ljava/lang/String;

    return-object v0
.end method

.method public getSynthesisPitch()D
    .locals 2

    .prologue
    .line 208
    iget-wide v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->synthesisPitch_:D

    return-wide v0
.end method

.method public getSynthesisSpeed()D
    .locals 2

    .prologue
    .line 189
    iget-wide v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->synthesisSpeed_:D

    return-wide v0
.end method

.method public getSynthesisText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->synthesisText_:Ljava/lang/String;

    return-object v0
.end method

.method public getSynthesisVolume()D
    .locals 2

    .prologue
    .line 227
    iget-wide v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->synthesisVolume_:D

    return-wide v0
.end method

.method public getVoiceEngine()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->voiceEngine_:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->voiceLanguage_:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->voiceName_:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceSampleRate()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->voiceSampleRate_:I

    return v0
.end method

.method public hasAudioChunkSize()Z
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

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
    .line 254
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInputIsLoggable()Z
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSsml()Z
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSynthesisPitch()Z
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSynthesisSpeed()Z
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSynthesisText()Z
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSynthesisVolume()Z
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVoiceEngine()Z
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVoiceLanguage()Z
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVoiceName()Z
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVoiceSampleRate()Z
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

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
    invoke-virtual {p0, p1}, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;
    .locals 3
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 412
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 413
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 417
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 418
    :sswitch_0
    return-object p0

    .line 423
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->synthesisText_:Ljava/lang/String;

    .line 424
    iget v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    goto :goto_0

    .line 428
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->ssml_:Ljava/lang/String;

    .line 429
    iget v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    goto :goto_0

    .line 433
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->voiceLanguage_:Ljava/lang/String;

    .line 434
    iget v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    goto :goto_0

    .line 438
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->voiceName_:Ljava/lang/String;

    .line 439
    iget v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    goto :goto_0

    .line 443
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->voiceSampleRate_:I

    .line 444
    iget v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    goto :goto_0

    .line 448
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->voiceEngine_:Ljava/lang/String;

    .line 449
    iget v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    goto :goto_0

    .line 453
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->synthesisSpeed_:D

    .line 454
    iget v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    goto :goto_0

    .line 458
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->synthesisPitch_:D

    .line 459
    iget v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    goto :goto_0

    .line 463
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->synthesisVolume_:D

    .line 464
    iget v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    goto/16 :goto_0

    .line 468
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->audioEncoding_:I

    .line 469
    iget v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    goto/16 :goto_0

    .line 473
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->audioChunkSize_:I

    .line 474
    iget v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    goto/16 :goto_0

    .line 478
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->inputIsLoggable_:Z

    .line 479
    iget v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    goto/16 :goto_0

    .line 483
    :sswitch_d
    iget-object v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->engineSpecificRequest:Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;

    if-nez v1, :cond_1

    .line 484
    new-instance v1, Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;

    invoke-direct {v1}, Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;-><init>()V

    iput-object v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->engineSpecificRequest:Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;

    .line 486
    :cond_1
    iget-object v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->engineSpecificRequest:Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 413
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x39 -> :sswitch_7
        0x41 -> :sswitch_8
        0x49 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
        0x6a -> :sswitch_d
    .end sparse-switch
.end method

.method public setAudioChunkSize(I)Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 268
    iput p1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->audioChunkSize_:I

    .line 269
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    .line 270
    return-object p0
.end method

.method public setAudioEncoding(I)Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 249
    iput p1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->audioEncoding_:I

    .line 250
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    .line 251
    return-object p0
.end method

.method public setInputIsLoggable(Z)Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->inputIsLoggable_:Z

    .line 89
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    .line 90
    return-object p0
.end method

.method public setSsml(Ljava/lang/String;)Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 63
    if-nez p1, :cond_0

    .line 64
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 66
    :cond_0
    iput-object p1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->ssml_:Ljava/lang/String;

    .line 67
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    .line 68
    return-object p0
.end method

.method public setSynthesisPitch(D)Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 211
    iput-wide p1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->synthesisPitch_:D

    .line 212
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    .line 213
    return-object p0
.end method

.method public setSynthesisSpeed(D)Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 192
    iput-wide p1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->synthesisSpeed_:D

    .line 193
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    .line 194
    return-object p0
.end method

.method public setSynthesisText(Ljava/lang/String;)Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 41
    if-nez p1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 44
    :cond_0
    iput-object p1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->synthesisText_:Ljava/lang/String;

    .line 45
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    .line 46
    return-object p0
.end method

.method public setSynthesisVolume(D)Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 230
    iput-wide p1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->synthesisVolume_:D

    .line 231
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    .line 232
    return-object p0
.end method

.method public setVoiceEngine(Ljava/lang/String;)Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 170
    if-nez p1, :cond_0

    .line 171
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 173
    :cond_0
    iput-object p1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->voiceEngine_:Ljava/lang/String;

    .line 174
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    .line 175
    return-object p0
.end method

.method public setVoiceLanguage(Ljava/lang/String;)Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 107
    if-nez p1, :cond_0

    .line 108
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 110
    :cond_0
    iput-object p1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->voiceLanguage_:Ljava/lang/String;

    .line 111
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    .line 112
    return-object p0
.end method

.method public setVoiceName(Ljava/lang/String;)Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 129
    if-nez p1, :cond_0

    .line 130
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 132
    :cond_0
    iput-object p1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->voiceName_:Ljava/lang/String;

    .line 133
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    .line 134
    return-object p0
.end method

.method public setVoiceSampleRate(I)Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 151
    iput p1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->voiceSampleRate_:I

    .line 152
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    .line 153
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
    .line 307
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 308
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->synthesisText_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 310
    :cond_0
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 311
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->ssml_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 313
    :cond_1
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 314
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->voiceLanguage_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 316
    :cond_2
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    .line 317
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->voiceName_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 319
    :cond_3
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4

    .line 320
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->voiceSampleRate_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 322
    :cond_4
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_5

    .line 323
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->voiceEngine_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 325
    :cond_5
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6

    .line 326
    const/4 v0, 0x7

    iget-wide v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->synthesisSpeed_:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 328
    :cond_6
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_7

    .line 329
    const/16 v0, 0x8

    iget-wide v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->synthesisPitch_:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 331
    :cond_7
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    .line 332
    const/16 v0, 0x9

    iget-wide v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->synthesisVolume_:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 334
    :cond_8
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_9

    .line 335
    const/16 v0, 0xa

    iget v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->audioEncoding_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 337
    :cond_9
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_a

    .line 338
    const/16 v0, 0xb

    iget v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->audioChunkSize_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 340
    :cond_a
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_b

    .line 341
    const/16 v0, 0xc

    iget-boolean v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->inputIsLoggable_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 343
    :cond_b
    iget-object v0, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->engineSpecificRequest:Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;

    if-eqz v0, :cond_c

    .line 344
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceRequest;->engineSpecificRequest:Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 346
    :cond_c
    return-void
.end method
