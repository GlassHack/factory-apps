.class public final Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "RecognizerSessionParamsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognizerSessionParams"
.end annotation


# static fields
.field public static final AUDIO_TYPE_ADTS_AAC:I = 0x8

.field public static final AUDIO_TYPE_AMR:I = 0x3

.field public static final AUDIO_TYPE_AMR_WB:I = 0x9

.field public static final AUDIO_TYPE_FLAC:I = 0x2

.field public static final AUDIO_TYPE_FLOAT32:I = 0x1

.field public static final AUDIO_TYPE_LINEAR16:I = 0x0

.field public static final AUDIO_TYPE_MULAW:I = 0x4

.field public static final AUDIO_TYPE_OGG_VORBIS:I = 0x7

.field public static final AUDIO_TYPE_SPEEX_NB:I = 0x5

.field public static final AUDIO_TYPE_SPEEX_WB:I = 0x6

.field private static volatile _emptyArray:[Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;


# instance fields
.field public alternateParams:Lcom/google/speech/common/Alternates$AlternateParams;

.field private bitField0_:I

.field private channelCount_:I

.field private enableAlternates_:Z

.field private enableFrameLogging_:Z

.field private enablePartialNbest_:Z

.field private enablePartialResults_:Z

.field private enableResultPrefetch_:Z

.field private enableSpeakerTraining_:Z

.field private forceTranscript_:Ljava/lang/String;

.field private hotwordDecisionThreshold_:F

.field private maskOffensiveWords_:Z

.field private numNbest_:I

.field private resetIntervalMs_:I

.field private sampleRate_:F

.field private speakerId_:Ljava/lang/String;

.field private speakerProfilesFilename_:Ljava/lang/String;

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 355
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 356
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->clear()Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    .line 357
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 2

    .prologue
    .line 26
    sget-object v0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->_emptyArray:[Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    if-nez v0, :cond_1

    .line 27
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-object v0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->_emptyArray:[Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    if-nez v0, :cond_0

    .line 30
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    sput-object v0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->_emptyArray:[Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    .line 32
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_1
    sget-object v0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->_emptyArray:[Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 627
    new-instance v0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 621
    new-instance v0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 360
    iput v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    .line 361
    iput v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->type_:I

    .line 362
    const/high16 v0, 0x45fa0000    # 8000.0f

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->sampleRate_:F

    .line 363
    iput-boolean v2, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->maskOffensiveWords_:Z

    .line 364
    iput-boolean v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->enableAlternates_:Z

    .line 365
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->alternateParams:Lcom/google/speech/common/Alternates$AlternateParams;

    .line 366
    iput v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->numNbest_:I

    .line 367
    iput-boolean v2, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->enablePartialResults_:Z

    .line 368
    iput v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->resetIntervalMs_:I

    .line 369
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hotwordDecisionThreshold_:F

    .line 370
    iput v2, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->channelCount_:I

    .line 371
    iput-boolean v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->enableFrameLogging_:Z

    .line 372
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->forceTranscript_:Ljava/lang/String;

    .line 373
    iput-boolean v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->enablePartialNbest_:Z

    .line 374
    iput-boolean v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->enableResultPrefetch_:Z

    .line 375
    iput-boolean v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->enableSpeakerTraining_:Z

    .line 376
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->speakerId_:Ljava/lang/String;

    .line 377
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->speakerProfilesFilename_:Ljava/lang/String;

    .line 378
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->cachedSize:I

    .line 379
    return-object p0
.end method

.method public clearChannelCount()Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->channelCount_:I

    .line 209
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    .line 210
    return-object p0
.end method

.method public clearEnableAlternates()Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->enableAlternates_:Z

    .line 111
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    .line 112
    return-object p0
.end method

.method public clearEnableFrameLogging()Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->enableFrameLogging_:Z

    .line 228
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    .line 229
    return-object p0
.end method

.method public clearEnablePartialNbest()Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->enablePartialNbest_:Z

    .line 269
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    .line 270
    return-object p0
.end method

.method public clearEnablePartialResults()Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->enablePartialResults_:Z

    .line 152
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    .line 153
    return-object p0
.end method

.method public clearEnableResultPrefetch()Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->enableResultPrefetch_:Z

    .line 288
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    .line 289
    return-object p0
.end method

.method public clearEnableSpeakerTraining()Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->enableSpeakerTraining_:Z

    .line 307
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    .line 308
    return-object p0
.end method

.method public clearForceTranscript()Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1

    .prologue
    .line 249
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->forceTranscript_:Ljava/lang/String;

    .line 250
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    .line 251
    return-object p0
.end method

.method public clearHotwordDecisionThreshold()Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hotwordDecisionThreshold_:F

    .line 190
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    .line 191
    return-object p0
.end method

.method public clearMaskOffensiveWords()Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->maskOffensiveWords_:Z

    .line 92
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    .line 93
    return-object p0
.end method

.method public clearNumNbest()Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->numNbest_:I

    .line 133
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    .line 134
    return-object p0
.end method

.method public clearResetIntervalMs()Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->resetIntervalMs_:I

    .line 171
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    .line 172
    return-object p0
.end method

.method public clearSampleRate()Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1

    .prologue
    .line 72
    const/high16 v0, 0x45fa0000    # 8000.0f

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->sampleRate_:F

    .line 73
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    .line 74
    return-object p0
.end method

.method public clearSpeakerId()Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1

    .prologue
    .line 328
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->speakerId_:Ljava/lang/String;

    .line 329
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    .line 330
    return-object p0
.end method

.method public clearSpeakerProfilesFilename()Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 2

    .prologue
    .line 350
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->speakerProfilesFilename_:Ljava/lang/String;

    .line 351
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    .line 352
    return-object p0
.end method

.method public clearType()Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->type_:I

    .line 54
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    .line 55
    return-object p0
.end method

.method public getChannelCount()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->channelCount_:I

    return v0
.end method

.method public getEnableAlternates()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->enableAlternates_:Z

    return v0
.end method

.method public getEnableFrameLogging()Z
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->enableFrameLogging_:Z

    return v0
.end method

.method public getEnablePartialNbest()Z
    .locals 1

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->enablePartialNbest_:Z

    return v0
.end method

.method public getEnablePartialResults()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->enablePartialResults_:Z

    return v0
.end method

.method public getEnableResultPrefetch()Z
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->enableResultPrefetch_:Z

    return v0
.end method

.method public getEnableSpeakerTraining()Z
    .locals 1

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->enableSpeakerTraining_:Z

    return v0
.end method

.method public getForceTranscript()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->forceTranscript_:Ljava/lang/String;

    return-object v0
.end method

.method public getHotwordDecisionThreshold()F
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hotwordDecisionThreshold_:F

    return v0
.end method

.method public getMaskOffensiveWords()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->maskOffensiveWords_:Z

    return v0
.end method

.method public getNumNbest()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->numNbest_:I

    return v0
.end method

.method public getResetIntervalMs()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->resetIntervalMs_:I

    return v0
.end method

.method public getSampleRate()F
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->sampleRate_:F

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 440
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 441
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 442
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->type_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 445
    :cond_0
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 446
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->sampleRate_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 449
    :cond_1
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 450
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->maskOffensiveWords_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 453
    :cond_2
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 454
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->enableAlternates_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 457
    :cond_3
    iget-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->alternateParams:Lcom/google/speech/common/Alternates$AlternateParams;

    if-eqz v1, :cond_4

    .line 458
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->alternateParams:Lcom/google/speech/common/Alternates$AlternateParams;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 461
    :cond_4
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_5

    .line 462
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->numNbest_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 465
    :cond_5
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_6

    .line 466
    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->enablePartialResults_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 469
    :cond_6
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_7

    .line 470
    const/16 v1, 0x8

    iget v2, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->resetIntervalMs_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 473
    :cond_7
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_8

    .line 474
    const/16 v1, 0x9

    iget v2, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hotwordDecisionThreshold_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 477
    :cond_8
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_9

    .line 478
    const/16 v1, 0xa

    iget v2, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->channelCount_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 481
    :cond_9
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_a

    .line 482
    const/16 v1, 0xb

    iget-boolean v2, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->enableFrameLogging_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 485
    :cond_a
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_b

    .line 486
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->forceTranscript_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 489
    :cond_b
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_c

    .line 490
    const/16 v1, 0xd

    iget-boolean v2, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->enablePartialNbest_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 493
    :cond_c
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_d

    .line 494
    const/16 v1, 0xe

    iget-boolean v2, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->enableSpeakerTraining_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 497
    :cond_d
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_e

    .line 498
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->speakerId_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 501
    :cond_e
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_f

    .line 502
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->speakerProfilesFilename_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 505
    :cond_f
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_10

    .line 506
    const/16 v1, 0x11

    iget-boolean v2, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->enableResultPrefetch_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 509
    :cond_10
    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->cachedSize:I

    .line 510
    return v0
.end method

.method public getSpeakerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->speakerId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeakerProfilesFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->speakerProfilesFilename_:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->type_:I

    return v0
.end method

.method public hasChannelCount()Z
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEnableAlternates()Z
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEnableFrameLogging()Z
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEnablePartialNbest()Z
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEnablePartialResults()Z
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEnableResultPrefetch()Z
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEnableSpeakerTraining()Z
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasForceTranscript()Z
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHotwordDecisionThreshold()Z
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMaskOffensiveWords()Z
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNumNbest()Z
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasResetIntervalMs()Z
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSampleRate()Z
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSpeakerId()Z
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSpeakerProfilesFilename()Z
    .locals 2

    .prologue
    .line 347
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

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
    invoke-virtual {p0, p1}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 3
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 518
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 519
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 523
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 524
    :sswitch_0
    return-object p0

    .line 529
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->type_:I

    .line 530
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    goto :goto_0

    .line 534
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->sampleRate_:F

    .line 535
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    goto :goto_0

    .line 539
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->maskOffensiveWords_:Z

    .line 540
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    goto :goto_0

    .line 544
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->enableAlternates_:Z

    .line 545
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    goto :goto_0

    .line 549
    :sswitch_5
    iget-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->alternateParams:Lcom/google/speech/common/Alternates$AlternateParams;

    if-nez v1, :cond_1

    .line 550
    new-instance v1, Lcom/google/speech/common/Alternates$AlternateParams;

    invoke-direct {v1}, Lcom/google/speech/common/Alternates$AlternateParams;-><init>()V

    iput-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->alternateParams:Lcom/google/speech/common/Alternates$AlternateParams;

    .line 552
    :cond_1
    iget-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->alternateParams:Lcom/google/speech/common/Alternates$AlternateParams;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 556
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->numNbest_:I

    .line 557
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    goto :goto_0

    .line 561
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->enablePartialResults_:Z

    .line 562
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    goto :goto_0

    .line 566
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->resetIntervalMs_:I

    .line 567
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    goto :goto_0

    .line 571
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hotwordDecisionThreshold_:F

    .line 572
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    goto/16 :goto_0

    .line 576
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->channelCount_:I

    .line 577
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    goto/16 :goto_0

    .line 581
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->enableFrameLogging_:Z

    .line 582
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    goto/16 :goto_0

    .line 586
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->forceTranscript_:Ljava/lang/String;

    .line 587
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    goto/16 :goto_0

    .line 591
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->enablePartialNbest_:Z

    .line 592
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    goto/16 :goto_0

    .line 596
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->enableSpeakerTraining_:Z

    .line 597
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    goto/16 :goto_0

    .line 601
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->speakerId_:Ljava/lang/String;

    .line 602
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    goto/16 :goto_0

    .line 606
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->speakerProfilesFilename_:Ljava/lang/String;

    .line 607
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    const v2, 0x8000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    goto/16 :goto_0

    .line 611
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->enableResultPrefetch_:Z

    .line 612
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    goto/16 :goto_0

    .line 519
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x15 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x4d -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x62 -> :sswitch_c
        0x68 -> :sswitch_d
        0x70 -> :sswitch_e
        0x7a -> :sswitch_f
        0x82 -> :sswitch_10
        0x88 -> :sswitch_11
    .end sparse-switch
.end method

.method public setChannelCount(I)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 200
    iput p1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->channelCount_:I

    .line 201
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    .line 202
    return-object p0
.end method

.method public setEnableAlternates(Z)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->enableAlternates_:Z

    .line 103
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    .line 104
    return-object p0
.end method

.method public setEnableFrameLogging(Z)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 219
    iput-boolean p1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->enableFrameLogging_:Z

    .line 220
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    .line 221
    return-object p0
.end method

.method public setEnablePartialNbest(Z)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 260
    iput-boolean p1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->enablePartialNbest_:Z

    .line 261
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    .line 262
    return-object p0
.end method

.method public setEnablePartialResults(Z)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->enablePartialResults_:Z

    .line 144
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    .line 145
    return-object p0
.end method

.method public setEnableResultPrefetch(Z)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 279
    iput-boolean p1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->enableResultPrefetch_:Z

    .line 280
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    .line 281
    return-object p0
.end method

.method public setEnableSpeakerTraining(Z)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 298
    iput-boolean p1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->enableSpeakerTraining_:Z

    .line 299
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    .line 300
    return-object p0
.end method

.method public setForceTranscript(Ljava/lang/String;)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 238
    if-nez p1, :cond_0

    .line 239
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 241
    :cond_0
    iput-object p1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->forceTranscript_:Ljava/lang/String;

    .line 242
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    .line 243
    return-object p0
.end method

.method public setHotwordDecisionThreshold(F)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 181
    iput p1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hotwordDecisionThreshold_:F

    .line 182
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    .line 183
    return-object p0
.end method

.method public setMaskOffensiveWords(Z)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->maskOffensiveWords_:Z

    .line 84
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    .line 85
    return-object p0
.end method

.method public setNumNbest(I)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 124
    iput p1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->numNbest_:I

    .line 125
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    .line 126
    return-object p0
.end method

.method public setResetIntervalMs(I)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 162
    iput p1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->resetIntervalMs_:I

    .line 163
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    .line 164
    return-object p0
.end method

.method public setSampleRate(F)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 64
    iput p1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->sampleRate_:F

    .line 65
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    .line 66
    return-object p0
.end method

.method public setSpeakerId(Ljava/lang/String;)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 317
    if-nez p1, :cond_0

    .line 318
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 320
    :cond_0
    iput-object p1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->speakerId_:Ljava/lang/String;

    .line 321
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    .line 322
    return-object p0
.end method

.method public setSpeakerProfilesFilename(Ljava/lang/String;)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 339
    if-nez p1, :cond_0

    .line 340
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 342
    :cond_0
    iput-object p1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->speakerProfilesFilename_:Ljava/lang/String;

    .line 343
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    .line 344
    return-object p0
.end method

.method public setType(I)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->type_:I

    .line 46
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    .line 47
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
    .line 385
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 386
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->type_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 388
    :cond_0
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 389
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->sampleRate_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 391
    :cond_1
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 392
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->maskOffensiveWords_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 394
    :cond_2
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 395
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->enableAlternates_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 397
    :cond_3
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->alternateParams:Lcom/google/speech/common/Alternates$AlternateParams;

    if-eqz v0, :cond_4

    .line 398
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->alternateParams:Lcom/google/speech/common/Alternates$AlternateParams;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 400
    :cond_4
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    .line 401
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->numNbest_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 403
    :cond_5
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 404
    const/4 v0, 0x7

    iget-boolean v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->enablePartialResults_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 406
    :cond_6
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7

    .line 407
    const/16 v0, 0x8

    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->resetIntervalMs_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 409
    :cond_7
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    .line 410
    const/16 v0, 0x9

    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hotwordDecisionThreshold_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 412
    :cond_8
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_9

    .line 413
    const/16 v0, 0xa

    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->channelCount_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 415
    :cond_9
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_a

    .line 416
    const/16 v0, 0xb

    iget-boolean v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->enableFrameLogging_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 418
    :cond_a
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_b

    .line 419
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->forceTranscript_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 421
    :cond_b
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_c

    .line 422
    const/16 v0, 0xd

    iget-boolean v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->enablePartialNbest_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 424
    :cond_c
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_d

    .line 425
    const/16 v0, 0xe

    iget-boolean v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->enableSpeakerTraining_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 427
    :cond_d
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_e

    .line 428
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->speakerId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 430
    :cond_e
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_f

    .line 431
    const/16 v0, 0x10

    iget-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->speakerProfilesFilename_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 433
    :cond_f
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_10

    .line 434
    const/16 v0, 0x11

    iget-boolean v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->enableResultPrefetch_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 436
    :cond_10
    return-void
.end method
