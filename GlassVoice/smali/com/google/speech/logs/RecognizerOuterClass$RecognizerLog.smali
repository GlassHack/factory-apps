.class public final Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "RecognizerOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/RecognizerOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognizerLog"
.end annotation


# static fields
.field public static final AUDIO_ENCODING_TYPE_ADTS_AAC:I = 0x8

.field public static final AUDIO_ENCODING_TYPE_AMR:I = 0x3

.field public static final AUDIO_ENCODING_TYPE_AMR_WB:I = 0x9

.field public static final AUDIO_ENCODING_TYPE_FLAC:I = 0x2

.field public static final AUDIO_ENCODING_TYPE_FLOAT32:I = 0x1

.field public static final AUDIO_ENCODING_TYPE_LINEAR16:I = 0x0

.field public static final AUDIO_ENCODING_TYPE_MULAW:I = 0x4

.field public static final AUDIO_ENCODING_TYPE_OGG_VORBIS:I = 0x7

.field public static final AUDIO_ENCODING_TYPE_SPEEX_NB:I = 0x5

.field public static final AUDIO_ENCODING_TYPE_SPEEX_WB:I = 0x6

.field public static final RECOGNIZER_STATUS_CODE_COMPLETE_NO_MATCH:I = 0x1

.field public static final RECOGNIZER_STATUS_CODE_COMPLETE_SUCCESS:I

.field private static volatile _emptyArray:[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;


# instance fields
.field public additionalSpokenLanguage:[Ljava/lang/String;

.field private audioEncoding_:I

.field private averageConfidence_:F

.field private bitField0_:I

.field private channelCount_:I

.field public context:[Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;

.field private dEPRECATEDAcousticModelVersion_:Ljava/lang/String;

.field private dEPRECATEDLanguageModelVersion_:Ljava/lang/String;

.field private dEPRECATEDLexiconVersion_:Ljava/lang/String;

.field private dEPRECATEDTextnormVersion_:Ljava/lang/String;

.field private decoderGaussianSelectionCentroids_:I

.field private decoderLmWeight_:F

.field private decoderLocalBeam_:F

.field private decoderMaxArcs_:I

.field private decoderWordPen_:F

.field public features:Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;

.field public langPack:Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

.field private noiseCancelerEnabled_:Z

.field private personalizationEnabled_:Z

.field public recognizerContext:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

.field private recognizerLanguage_:Ljava/lang/String;

.field public recognizerSegment:[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

.field private recognizerStatus_:I

.field private requestDurationMs_:I

.field private sampleRate_:F

.field private serverCluster_:Ljava/lang/String;

.field private serverMachineName_:Ljava/lang/String;

.field private spokenLanguage_:Ljava/lang/String;

.field private startTimeMs_:J

.field private topContactEnabled_:Z

.field public topHypothesis:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

.field private totalAudioDurationMs_:I

.field private utteranceId_:Ljava/lang/String;

.field private waveform_:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 588
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 589
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clear()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 590
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->_emptyArray:[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    if-nez v0, :cond_1

    .line 31
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 33
    :try_start_0
    sget-object v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->_emptyArray:[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    if-nez v0, :cond_0

    .line 34
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    sput-object v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->_emptyArray:[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 36
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_1
    sget-object v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->_emptyArray:[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1151
    new-instance v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    invoke-direct {v0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1145
    new-instance v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    invoke-direct {v0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 593
    iput v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    .line 594
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->utteranceId_:Ljava/lang/String;

    .line 595
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->waveform_:[B

    .line 596
    iput v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->channelCount_:I

    .line 597
    iput v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->audioEncoding_:I

    .line 598
    iput-object v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->features:Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;

    .line 599
    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->sampleRate_:F

    .line 600
    iput-object v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerContext:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    .line 601
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDAcousticModelVersion_:Ljava/lang/String;

    .line 602
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDLanguageModelVersion_:Ljava/lang/String;

    .line 603
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDTextnormVersion_:Ljava/lang/String;

    .line 604
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDLexiconVersion_:Ljava/lang/String;

    .line 605
    iput v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderMaxArcs_:I

    .line 606
    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderLocalBeam_:F

    .line 607
    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderWordPen_:F

    .line 608
    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderLmWeight_:F

    .line 609
    iput v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderGaussianSelectionCentroids_:I

    .line 610
    iput-boolean v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->noiseCancelerEnabled_:Z

    .line 611
    iput-object v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->topHypothesis:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    .line 612
    iput v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->totalAudioDurationMs_:I

    .line 613
    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->averageConfidence_:F

    .line 614
    iput v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerStatus_:I

    .line 615
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->spokenLanguage_:Ljava/lang/String;

    .line 616
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->additionalSpokenLanguage:[Ljava/lang/String;

    .line 617
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerLanguage_:Ljava/lang/String;

    .line 618
    invoke-static {}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->emptyArray()[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerSegment:[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    .line 619
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->serverCluster_:Ljava/lang/String;

    .line 620
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->serverMachineName_:Ljava/lang/String;

    .line 621
    iput v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->requestDurationMs_:I

    .line 622
    iput-boolean v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->personalizationEnabled_:Z

    .line 623
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->startTimeMs_:J

    .line 624
    iput-object v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->langPack:Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    .line 625
    iput-boolean v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->topContactEnabled_:Z

    .line 626
    invoke-static {}, Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;->emptyArray()[Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->context:[Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;

    .line 627
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->cachedSize:I

    .line 628
    return-object p0
.end method

.method public clearAudioEncoding()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->audioEncoding_:I

    .line 121
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    .line 122
    return-object p0
.end method

.method public clearAverageConfidence()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 2

    .prologue
    .line 388
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->averageConfidence_:F

    .line 389
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    .line 390
    return-object p0
.end method

.method public clearChannelCount()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->channelCount_:I

    .line 102
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    .line 103
    return-object p0
.end method

.method public clearDEPRECATEDAcousticModelVersion()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 167
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDAcousticModelVersion_:Ljava/lang/String;

    .line 168
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    .line 169
    return-object p0
.end method

.method public clearDEPRECATEDLanguageModelVersion()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 189
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDLanguageModelVersion_:Ljava/lang/String;

    .line 190
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    .line 191
    return-object p0
.end method

.method public clearDEPRECATEDLexiconVersion()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 233
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDLexiconVersion_:Ljava/lang/String;

    .line 234
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    .line 235
    return-object p0
.end method

.method public clearDEPRECATEDTextnormVersion()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 211
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDTextnormVersion_:Ljava/lang/String;

    .line 212
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    .line 213
    return-object p0
.end method

.method public clearDecoderGaussianSelectionCentroids()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderGaussianSelectionCentroids_:I

    .line 329
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    .line 330
    return-object p0
.end method

.method public clearDecoderLmWeight()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 309
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderLmWeight_:F

    .line 310
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    .line 311
    return-object p0
.end method

.method public clearDecoderLocalBeam()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderLocalBeam_:F

    .line 272
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    .line 273
    return-object p0
.end method

.method public clearDecoderMaxArcs()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderMaxArcs_:I

    .line 253
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    .line 254
    return-object p0
.end method

.method public clearDecoderWordPen()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderWordPen_:F

    .line 291
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    .line 292
    return-object p0
.end method

.method public clearNoiseCancelerEnabled()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->noiseCancelerEnabled_:Z

    .line 348
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    .line 349
    return-object p0
.end method

.method public clearPersonalizationEnabled()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 2

    .prologue
    .line 539
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->personalizationEnabled_:Z

    .line 540
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    .line 541
    return-object p0
.end method

.method public clearRecognizerLanguage()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 2

    .prologue
    .line 454
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerLanguage_:Ljava/lang/String;

    .line 455
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    .line 456
    return-object p0
.end method

.method public clearRecognizerStatus()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 2

    .prologue
    .line 407
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerStatus_:I

    .line 408
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    .line 409
    return-object p0
.end method

.method public clearRequestDurationMs()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 2

    .prologue
    .line 520
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->requestDurationMs_:I

    .line 521
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    .line 522
    return-object p0
.end method

.method public clearSampleRate()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->sampleRate_:F

    .line 143
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    .line 144
    return-object p0
.end method

.method public clearServerCluster()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 2

    .prologue
    .line 479
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->serverCluster_:Ljava/lang/String;

    .line 480
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    .line 481
    return-object p0
.end method

.method public clearServerMachineName()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 2

    .prologue
    .line 501
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->serverMachineName_:Ljava/lang/String;

    .line 502
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    .line 503
    return-object p0
.end method

.method public clearSpokenLanguage()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 2

    .prologue
    .line 429
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->spokenLanguage_:Ljava/lang/String;

    .line 430
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    .line 431
    return-object p0
.end method

.method public clearStartTimeMs()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 2

    .prologue
    .line 558
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->startTimeMs_:J

    .line 559
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    .line 560
    return-object p0
.end method

.method public clearTopContactEnabled()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 2

    .prologue
    .line 580
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->topContactEnabled_:Z

    .line 581
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    .line 582
    return-object p0
.end method

.method public clearTotalAudioDurationMs()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 2

    .prologue
    .line 369
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->totalAudioDurationMs_:I

    .line 370
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    .line 371
    return-object p0
.end method

.method public clearUtteranceId()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->utteranceId_:Ljava/lang/String;

    .line 61
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    .line 62
    return-object p0
.end method

.method public clearWaveform()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->waveform_:[B

    .line 83
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    .line 84
    return-object p0
.end method

.method public getAudioEncoding()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->audioEncoding_:I

    return v0
.end method

.method public getAverageConfidence()F
    .locals 1

    .prologue
    .line 377
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->averageConfidence_:F

    return v0
.end method

.method public getChannelCount()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->channelCount_:I

    return v0
.end method

.method public getDEPRECATEDAcousticModelVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDAcousticModelVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getDEPRECATEDLanguageModelVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDLanguageModelVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getDEPRECATEDLexiconVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDLexiconVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getDEPRECATEDTextnormVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDTextnormVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getDecoderGaussianSelectionCentroids()I
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderGaussianSelectionCentroids_:I

    return v0
.end method

.method public getDecoderLmWeight()F
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderLmWeight_:F

    return v0
.end method

.method public getDecoderLocalBeam()F
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderLocalBeam_:F

    return v0
.end method

.method public getDecoderMaxArcs()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderMaxArcs_:I

    return v0
.end method

.method public getDecoderWordPen()F
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderWordPen_:F

    return v0
.end method

.method public getNoiseCancelerEnabled()Z
    .locals 1

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->noiseCancelerEnabled_:Z

    return v0
.end method

.method public getPersonalizationEnabled()Z
    .locals 1

    .prologue
    .line 528
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->personalizationEnabled_:Z

    return v0
.end method

.method public getRecognizerLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerLanguage_:Ljava/lang/String;

    return-object v0
.end method

.method public getRecognizerStatus()I
    .locals 1

    .prologue
    .line 396
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerStatus_:I

    return v0
.end method

.method public getRequestDurationMs()I
    .locals 1

    .prologue
    .line 509
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->requestDurationMs_:I

    return v0
.end method

.method public getSampleRate()F
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->sampleRate_:F

    return v0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    .line 752
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v4

    .line 753
    .local v4, "size":I
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 754
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->utteranceId_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 757
    :cond_0
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    .line 758
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->waveform_:[B

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v5

    add-int/2addr v4, v5

    .line 761
    :cond_1
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_2

    .line 762
    const/4 v5, 0x3

    iget v6, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->audioEncoding_:I

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 765
    :cond_2
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_3

    .line 766
    const/4 v5, 0x4

    iget v6, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->sampleRate_:F

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v5

    add-int/2addr v4, v5

    .line 769
    :cond_3
    iget-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerContext:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    if-eqz v5, :cond_4

    .line 770
    const/4 v5, 0x5

    iget-object v6, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerContext:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 773
    :cond_4
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_5

    .line 774
    const/4 v5, 0x6

    iget-object v6, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDAcousticModelVersion_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 777
    :cond_5
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_6

    .line 778
    const/4 v5, 0x7

    iget-object v6, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDLanguageModelVersion_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 781
    :cond_6
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_7

    .line 782
    const/16 v5, 0x8

    iget-object v6, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDTextnormVersion_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 785
    :cond_7
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_8

    .line 786
    const/16 v5, 0x9

    iget-object v6, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDLexiconVersion_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 789
    :cond_8
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit16 v5, v5, 0x200

    if-eqz v5, :cond_9

    .line 790
    const/16 v5, 0xa

    iget v6, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderMaxArcs_:I

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 793
    :cond_9
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_a

    .line 794
    const/16 v5, 0xb

    iget v6, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderLocalBeam_:F

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v5

    add-int/2addr v4, v5

    .line 797
    :cond_a
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit16 v5, v5, 0x800

    if-eqz v5, :cond_b

    .line 798
    const/16 v5, 0xc

    iget v6, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderWordPen_:F

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v5

    add-int/2addr v4, v5

    .line 801
    :cond_b
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit16 v5, v5, 0x1000

    if-eqz v5, :cond_c

    .line 802
    const/16 v5, 0xd

    iget v6, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderLmWeight_:F

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v5

    add-int/2addr v4, v5

    .line 805
    :cond_c
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit16 v5, v5, 0x2000

    if-eqz v5, :cond_d

    .line 806
    const/16 v5, 0xe

    iget v6, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderGaussianSelectionCentroids_:I

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 809
    :cond_d
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit16 v5, v5, 0x4000

    if-eqz v5, :cond_e

    .line 810
    const/16 v5, 0xf

    iget-boolean v6, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->noiseCancelerEnabled_:Z

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v4, v5

    .line 813
    :cond_e
    iget-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->topHypothesis:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    if-eqz v5, :cond_f

    .line 814
    const/16 v5, 0x10

    iget-object v6, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->topHypothesis:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 817
    :cond_f
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const v6, 0x8000

    and-int/2addr v5, v6

    if-eqz v5, :cond_10

    .line 818
    const/16 v5, 0x11

    iget v6, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->totalAudioDurationMs_:I

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 821
    :cond_10
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const/high16 v6, 0x10000

    and-int/2addr v5, v6

    if-eqz v5, :cond_11

    .line 822
    const/16 v5, 0x12

    iget v6, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->averageConfidence_:F

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v5

    add-int/2addr v4, v5

    .line 825
    :cond_11
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const/high16 v6, 0x20000

    and-int/2addr v5, v6

    if-eqz v5, :cond_12

    .line 826
    const/16 v5, 0x13

    iget v6, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerStatus_:I

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 829
    :cond_12
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const/high16 v6, 0x40000

    and-int/2addr v5, v6

    if-eqz v5, :cond_13

    .line 830
    const/16 v5, 0x14

    iget-object v6, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->spokenLanguage_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 833
    :cond_13
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const/high16 v6, 0x80000

    and-int/2addr v5, v6

    if-eqz v5, :cond_14

    .line 834
    const/16 v5, 0x15

    iget-object v6, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerLanguage_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 837
    :cond_14
    iget-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerSegment:[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    if-eqz v5, :cond_16

    iget-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerSegment:[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    array-length v5, v5

    if-lez v5, :cond_16

    .line 838
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerSegment:[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    array-length v5, v5

    if-ge v3, v5, :cond_16

    .line 839
    iget-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerSegment:[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    aget-object v2, v5, v3

    .line 840
    .local v2, "element":Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
    if-eqz v2, :cond_15

    .line 841
    const/16 v5, 0x16

    invoke-static {v5, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 838
    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 846
    .end local v2    # "element":Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
    .end local v3    # "i":I
    :cond_16
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const/high16 v6, 0x100000

    and-int/2addr v5, v6

    if-eqz v5, :cond_17

    .line 847
    const/16 v5, 0x17

    iget-object v6, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->serverCluster_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 850
    :cond_17
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const/high16 v6, 0x400000

    and-int/2addr v5, v6

    if-eqz v5, :cond_18

    .line 851
    const/16 v5, 0x18

    iget v6, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->requestDurationMs_:I

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 854
    :cond_18
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const/high16 v6, 0x800000

    and-int/2addr v5, v6

    if-eqz v5, :cond_19

    .line 855
    const/16 v5, 0x19

    iget-boolean v6, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->personalizationEnabled_:Z

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v4, v5

    .line 858
    :cond_19
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const/high16 v6, 0x1000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_1a

    .line 859
    const/16 v5, 0x1a

    iget-wide v6, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->startTimeMs_:J

    invoke-static {v5, v6, v7}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    .line 862
    :cond_1a
    iget-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->langPack:Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    if-eqz v5, :cond_1b

    .line 863
    const/16 v5, 0x1b

    iget-object v6, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->langPack:Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 866
    :cond_1b
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const/high16 v6, 0x200000

    and-int/2addr v5, v6

    if-eqz v5, :cond_1c

    .line 867
    const/16 v5, 0x1c

    iget-object v6, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->serverMachineName_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 870
    :cond_1c
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_1d

    .line 871
    const/16 v5, 0x1d

    iget v6, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->channelCount_:I

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 874
    :cond_1d
    iget-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->features:Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;

    if-eqz v5, :cond_1e

    .line 875
    const/16 v5, 0x1e

    iget-object v6, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->features:Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 878
    :cond_1e
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const/high16 v6, 0x2000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_1f

    .line 879
    const/16 v5, 0x1f

    iget-boolean v6, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->topContactEnabled_:Z

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v4, v5

    .line 882
    :cond_1f
    iget-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->context:[Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;

    if-eqz v5, :cond_21

    iget-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->context:[Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;

    array-length v5, v5

    if-lez v5, :cond_21

    .line 883
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->context:[Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;

    array-length v5, v5

    if-ge v3, v5, :cond_21

    .line 884
    iget-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->context:[Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;

    aget-object v2, v5, v3

    .line 885
    .local v2, "element":Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;
    if-eqz v2, :cond_20

    .line 886
    const/16 v5, 0x20

    invoke-static {v5, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 883
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 891
    .end local v2    # "element":Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;
    .end local v3    # "i":I
    :cond_21
    iget-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->additionalSpokenLanguage:[Ljava/lang/String;

    if-eqz v5, :cond_24

    iget-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->additionalSpokenLanguage:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_24

    .line 892
    const/4 v0, 0x0

    .line 893
    .local v0, "dataCount":I
    const/4 v1, 0x0

    .line 894
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    iget-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->additionalSpokenLanguage:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_23

    .line 895
    iget-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->additionalSpokenLanguage:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 896
    .local v2, "element":Ljava/lang/String;
    if-eqz v2, :cond_22

    .line 897
    add-int/lit8 v0, v0, 0x1

    .line 898
    invoke-static {v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 894
    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 902
    .end local v2    # "element":Ljava/lang/String;
    :cond_23
    add-int/2addr v4, v1

    .line 903
    mul-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    .line 905
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_24
    iput v4, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->cachedSize:I

    .line 906
    return v4
.end method

.method public getServerCluster()Ljava/lang/String;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->serverCluster_:Ljava/lang/String;

    return-object v0
.end method

.method public getServerMachineName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->serverMachineName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSpokenLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->spokenLanguage_:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTimeMs()J
    .locals 2

    .prologue
    .line 547
    iget-wide v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->startTimeMs_:J

    return-wide v0
.end method

.method public getTopContactEnabled()Z
    .locals 1

    .prologue
    .line 569
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->topContactEnabled_:Z

    return v0
.end method

.method public getTotalAudioDurationMs()I
    .locals 1

    .prologue
    .line 358
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->totalAudioDurationMs_:I

    return v0
.end method

.method public getUtteranceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->utteranceId_:Ljava/lang/String;

    return-object v0
.end method

.method public getWaveform()[B
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->waveform_:[B

    return-object v0
.end method

.method public hasAudioEncoding()Z
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAverageConfidence()Z
    .locals 2

    .prologue
    .line 385
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasChannelCount()Z
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDEPRECATEDAcousticModelVersion()Z
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDEPRECATEDLanguageModelVersion()Z
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDEPRECATEDLexiconVersion()Z
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDEPRECATEDTextnormVersion()Z
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDecoderGaussianSelectionCentroids()Z
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDecoderLmWeight()Z
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDecoderLocalBeam()Z
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDecoderMaxArcs()Z
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDecoderWordPen()Z
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNoiseCancelerEnabled()Z
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPersonalizationEnabled()Z
    .locals 2

    .prologue
    .line 536
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRecognizerLanguage()Z
    .locals 2

    .prologue
    .line 451
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRecognizerStatus()Z
    .locals 2

    .prologue
    .line 404
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRequestDurationMs()Z
    .locals 2

    .prologue
    .line 517
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

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
    .line 139
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasServerCluster()Z
    .locals 2

    .prologue
    .line 476
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasServerMachineName()Z
    .locals 2

    .prologue
    .line 498
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSpokenLanguage()Z
    .locals 2

    .prologue
    .line 426
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStartTimeMs()Z
    .locals 2

    .prologue
    .line 555
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTopContactEnabled()Z
    .locals 2

    .prologue
    .line 577
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTotalAudioDurationMs()Z
    .locals 2

    .prologue
    .line 366
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

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

.method public hasUtteranceId()Z
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWaveform()Z
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

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
    .line 8
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 7
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 914
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 915
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 919
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 920
    :sswitch_0
    return-object p0

    .line 925
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->utteranceId_:Ljava/lang/String;

    .line 926
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    goto :goto_0

    .line 930
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->waveform_:[B

    .line 931
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    goto :goto_0

    .line 935
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->audioEncoding_:I

    .line 936
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    goto :goto_0

    .line 940
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v5

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->sampleRate_:F

    .line 941
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    goto :goto_0

    .line 945
    :sswitch_5
    iget-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerContext:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    if-nez v5, :cond_1

    .line 946
    new-instance v5, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    invoke-direct {v5}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;-><init>()V

    iput-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerContext:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    .line 948
    :cond_1
    iget-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerContext:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 952
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDAcousticModelVersion_:Ljava/lang/String;

    .line 953
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    goto :goto_0

    .line 957
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDLanguageModelVersion_:Ljava/lang/String;

    .line 958
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    or-int/lit8 v5, v5, 0x40

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    goto :goto_0

    .line 962
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDTextnormVersion_:Ljava/lang/String;

    .line 963
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    or-int/lit16 v5, v5, 0x80

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    goto :goto_0

    .line 967
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDLexiconVersion_:Ljava/lang/String;

    .line 968
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    or-int/lit16 v5, v5, 0x100

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    goto/16 :goto_0

    .line 972
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderMaxArcs_:I

    .line 973
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    or-int/lit16 v5, v5, 0x200

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    goto/16 :goto_0

    .line 977
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v5

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderLocalBeam_:F

    .line 978
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    goto/16 :goto_0

    .line 982
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v5

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderWordPen_:F

    .line 983
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    or-int/lit16 v5, v5, 0x800

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    goto/16 :goto_0

    .line 987
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v5

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderLmWeight_:F

    .line 988
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    or-int/lit16 v5, v5, 0x1000

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    goto/16 :goto_0

    .line 992
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderGaussianSelectionCentroids_:I

    .line 993
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    or-int/lit16 v5, v5, 0x2000

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    goto/16 :goto_0

    .line 997
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->noiseCancelerEnabled_:Z

    .line 998
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    or-int/lit16 v5, v5, 0x4000

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    goto/16 :goto_0

    .line 1002
    :sswitch_10
    iget-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->topHypothesis:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    if-nez v5, :cond_2

    .line 1003
    new-instance v5, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    invoke-direct {v5}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;-><init>()V

    iput-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->topHypothesis:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    .line 1005
    :cond_2
    iget-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->topHypothesis:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1009
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->totalAudioDurationMs_:I

    .line 1010
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const v6, 0x8000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    goto/16 :goto_0

    .line 1014
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v5

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->averageConfidence_:F

    .line 1015
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const/high16 v6, 0x10000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    goto/16 :goto_0

    .line 1019
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerStatus_:I

    .line 1020
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const/high16 v6, 0x20000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    goto/16 :goto_0

    .line 1024
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->spokenLanguage_:Ljava/lang/String;

    .line 1025
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const/high16 v6, 0x40000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    goto/16 :goto_0

    .line 1029
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerLanguage_:Ljava/lang/String;

    .line 1030
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const/high16 v6, 0x80000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    goto/16 :goto_0

    .line 1034
    :sswitch_16
    const/16 v5, 0xb2

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1036
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerSegment:[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    if-nez v5, :cond_4

    move v1, v4

    .line 1037
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    .line 1039
    .local v2, "newArray":[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
    if-eqz v1, :cond_3

    .line 1040
    iget-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerSegment:[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1042
    :cond_3
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_5

    .line 1043
    new-instance v5, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    invoke-direct {v5}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;-><init>()V

    aput-object v5, v2, v1

    .line 1044
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1045
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1042
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1036
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
    :cond_4
    iget-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerSegment:[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    array-length v1, v5

    goto :goto_1

    .line 1048
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
    :cond_5
    new-instance v5, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    invoke-direct {v5}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;-><init>()V

    aput-object v5, v2, v1

    .line 1049
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1050
    iput-object v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerSegment:[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    goto/16 :goto_0

    .line 1054
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
    :sswitch_17
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->serverCluster_:Ljava/lang/String;

    .line 1055
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const/high16 v6, 0x100000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    goto/16 :goto_0

    .line 1059
    :sswitch_18
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->requestDurationMs_:I

    .line 1060
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const/high16 v6, 0x400000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    goto/16 :goto_0

    .line 1064
    :sswitch_19
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->personalizationEnabled_:Z

    .line 1065
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const/high16 v6, 0x800000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    goto/16 :goto_0

    .line 1069
    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->startTimeMs_:J

    .line 1070
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const/high16 v6, 0x1000000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    goto/16 :goto_0

    .line 1074
    :sswitch_1b
    iget-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->langPack:Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    if-nez v5, :cond_6

    .line 1075
    new-instance v5, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    invoke-direct {v5}, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;-><init>()V

    iput-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->langPack:Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    .line 1077
    :cond_6
    iget-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->langPack:Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1081
    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->serverMachineName_:Ljava/lang/String;

    .line 1082
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const/high16 v6, 0x200000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    goto/16 :goto_0

    .line 1086
    :sswitch_1d
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->channelCount_:I

    .line 1087
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    goto/16 :goto_0

    .line 1091
    :sswitch_1e
    iget-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->features:Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;

    if-nez v5, :cond_7

    .line 1092
    new-instance v5, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;

    invoke-direct {v5}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;-><init>()V

    iput-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->features:Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;

    .line 1094
    :cond_7
    iget-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->features:Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1098
    :sswitch_1f
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->topContactEnabled_:Z

    .line 1099
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const/high16 v6, 0x2000000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    goto/16 :goto_0

    .line 1103
    :sswitch_20
    const/16 v5, 0x102

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1105
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->context:[Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;

    if-nez v5, :cond_9

    move v1, v4

    .line 1106
    .restart local v1    # "i":I
    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;

    .line 1108
    .local v2, "newArray":[Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;
    if-eqz v1, :cond_8

    .line 1109
    iget-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->context:[Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1111
    :cond_8
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_a

    .line 1112
    new-instance v5, Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;

    invoke-direct {v5}, Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;-><init>()V

    aput-object v5, v2, v1

    .line 1113
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1114
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1111
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1105
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;
    :cond_9
    iget-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->context:[Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;

    array-length v1, v5

    goto :goto_3

    .line 1117
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;
    :cond_a
    new-instance v5, Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;

    invoke-direct {v5}, Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;-><init>()V

    aput-object v5, v2, v1

    .line 1118
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1119
    iput-object v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->context:[Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;

    goto/16 :goto_0

    .line 1123
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;
    :sswitch_21
    const/16 v5, 0x10a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1125
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->additionalSpokenLanguage:[Ljava/lang/String;

    if-nez v5, :cond_c

    move v1, v4

    .line 1126
    .restart local v1    # "i":I
    :goto_5
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    .line 1127
    .local v2, "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_b

    .line 1128
    iget-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->additionalSpokenLanguage:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1130
    :cond_b
    :goto_6
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_d

    .line 1131
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 1132
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1130
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1125
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :cond_c
    iget-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->additionalSpokenLanguage:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_5

    .line 1135
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Ljava/lang/String;
    :cond_d
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 1136
    iput-object v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->additionalSpokenLanguage:[Ljava/lang/String;

    goto/16 :goto_0

    .line 915
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x25 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x50 -> :sswitch_a
        0x5d -> :sswitch_b
        0x65 -> :sswitch_c
        0x6d -> :sswitch_d
        0x70 -> :sswitch_e
        0x78 -> :sswitch_f
        0x82 -> :sswitch_10
        0x88 -> :sswitch_11
        0x95 -> :sswitch_12
        0x98 -> :sswitch_13
        0xa2 -> :sswitch_14
        0xaa -> :sswitch_15
        0xb2 -> :sswitch_16
        0xba -> :sswitch_17
        0xc0 -> :sswitch_18
        0xc8 -> :sswitch_19
        0xd0 -> :sswitch_1a
        0xda -> :sswitch_1b
        0xe2 -> :sswitch_1c
        0xe8 -> :sswitch_1d
        0xf2 -> :sswitch_1e
        0xf8 -> :sswitch_1f
        0x102 -> :sswitch_20
        0x10a -> :sswitch_21
    .end sparse-switch
.end method

.method public setAudioEncoding(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 112
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->audioEncoding_:I

    .line 113
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    .line 114
    return-object p0
.end method

.method public setAverageConfidence(F)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 380
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->averageConfidence_:F

    .line 381
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    .line 382
    return-object p0
.end method

.method public setChannelCount(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->channelCount_:I

    .line 94
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    .line 95
    return-object p0
.end method

.method public setDEPRECATEDAcousticModelVersion(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 156
    if-nez p1, :cond_0

    .line 157
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 159
    :cond_0
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDAcousticModelVersion_:Ljava/lang/String;

    .line 160
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    .line 161
    return-object p0
.end method

.method public setDEPRECATEDLanguageModelVersion(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 178
    if-nez p1, :cond_0

    .line 179
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 181
    :cond_0
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDLanguageModelVersion_:Ljava/lang/String;

    .line 182
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    .line 183
    return-object p0
.end method

.method public setDEPRECATEDLexiconVersion(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 222
    if-nez p1, :cond_0

    .line 223
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 225
    :cond_0
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDLexiconVersion_:Ljava/lang/String;

    .line 226
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    .line 227
    return-object p0
.end method

.method public setDEPRECATEDTextnormVersion(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 200
    if-nez p1, :cond_0

    .line 201
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 203
    :cond_0
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDTextnormVersion_:Ljava/lang/String;

    .line 204
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    .line 205
    return-object p0
.end method

.method public setDecoderGaussianSelectionCentroids(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 320
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderGaussianSelectionCentroids_:I

    .line 321
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    .line 322
    return-object p0
.end method

.method public setDecoderLmWeight(F)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 301
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderLmWeight_:F

    .line 302
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    .line 303
    return-object p0
.end method

.method public setDecoderLocalBeam(F)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 263
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderLocalBeam_:F

    .line 264
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    .line 265
    return-object p0
.end method

.method public setDecoderMaxArcs(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 244
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderMaxArcs_:I

    .line 245
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    .line 246
    return-object p0
.end method

.method public setDecoderWordPen(F)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 282
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderWordPen_:F

    .line 283
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    .line 284
    return-object p0
.end method

.method public setNoiseCancelerEnabled(Z)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 339
    iput-boolean p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->noiseCancelerEnabled_:Z

    .line 340
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    .line 341
    return-object p0
.end method

.method public setPersonalizationEnabled(Z)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 531
    iput-boolean p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->personalizationEnabled_:Z

    .line 532
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    .line 533
    return-object p0
.end method

.method public setRecognizerLanguage(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 443
    if-nez p1, :cond_0

    .line 444
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 446
    :cond_0
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerLanguage_:Ljava/lang/String;

    .line 447
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    .line 448
    return-object p0
.end method

.method public setRecognizerStatus(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 399
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerStatus_:I

    .line 400
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    .line 401
    return-object p0
.end method

.method public setRequestDurationMs(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 512
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->requestDurationMs_:I

    .line 513
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    .line 514
    return-object p0
.end method

.method public setSampleRate(F)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 134
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->sampleRate_:F

    .line 135
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    .line 136
    return-object p0
.end method

.method public setServerCluster(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 468
    if-nez p1, :cond_0

    .line 469
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 471
    :cond_0
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->serverCluster_:Ljava/lang/String;

    .line 472
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    .line 473
    return-object p0
.end method

.method public setServerMachineName(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 490
    if-nez p1, :cond_0

    .line 491
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 493
    :cond_0
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->serverMachineName_:Ljava/lang/String;

    .line 494
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    .line 495
    return-object p0
.end method

.method public setSpokenLanguage(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 418
    if-nez p1, :cond_0

    .line 419
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 421
    :cond_0
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->spokenLanguage_:Ljava/lang/String;

    .line 422
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    .line 423
    return-object p0
.end method

.method public setStartTimeMs(J)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 550
    iput-wide p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->startTimeMs_:J

    .line 551
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    .line 552
    return-object p0
.end method

.method public setTopContactEnabled(Z)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 572
    iput-boolean p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->topContactEnabled_:Z

    .line 573
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    .line 574
    return-object p0
.end method

.method public setTotalAudioDurationMs(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 361
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->totalAudioDurationMs_:I

    .line 362
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    .line 363
    return-object p0
.end method

.method public setUtteranceId(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 49
    if-nez p1, :cond_0

    .line 50
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 52
    :cond_0
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->utteranceId_:Ljava/lang/String;

    .line 53
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    .line 54
    return-object p0
.end method

.method public setWaveform([B)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 71
    if-nez p1, :cond_0

    .line 72
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 74
    :cond_0
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->waveform_:[B

    .line 75
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    .line 76
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 634
    iget v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 635
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->utteranceId_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 637
    :cond_0
    iget v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 638
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->waveform_:[B

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 640
    :cond_1
    iget v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_2

    .line 641
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->audioEncoding_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 643
    :cond_2
    iget v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_3

    .line 644
    const/4 v2, 0x4

    iget v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->sampleRate_:F

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 646
    :cond_3
    iget-object v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerContext:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    if-eqz v2, :cond_4

    .line 647
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerContext:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 649
    :cond_4
    iget v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_5

    .line 650
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDAcousticModelVersion_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 652
    :cond_5
    iget v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_6

    .line 653
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDLanguageModelVersion_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 655
    :cond_6
    iget v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_7

    .line 656
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDTextnormVersion_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 658
    :cond_7
    iget v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_8

    .line 659
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDLexiconVersion_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 661
    :cond_8
    iget v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_9

    .line 662
    const/16 v2, 0xa

    iget v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderMaxArcs_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 664
    :cond_9
    iget v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_a

    .line 665
    const/16 v2, 0xb

    iget v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderLocalBeam_:F

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 667
    :cond_a
    iget v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_b

    .line 668
    const/16 v2, 0xc

    iget v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderWordPen_:F

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 670
    :cond_b
    iget v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_c

    .line 671
    const/16 v2, 0xd

    iget v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderLmWeight_:F

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 673
    :cond_c
    iget v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_d

    .line 674
    const/16 v2, 0xe

    iget v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderGaussianSelectionCentroids_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 676
    :cond_d
    iget v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_e

    .line 677
    const/16 v2, 0xf

    iget-boolean v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->noiseCancelerEnabled_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 679
    :cond_e
    iget-object v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->topHypothesis:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    if-eqz v2, :cond_f

    .line 680
    const/16 v2, 0x10

    iget-object v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->topHypothesis:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 682
    :cond_f
    iget v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const v3, 0x8000

    and-int/2addr v2, v3

    if-eqz v2, :cond_10

    .line 683
    const/16 v2, 0x11

    iget v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->totalAudioDurationMs_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 685
    :cond_10
    iget v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const/high16 v3, 0x10000

    and-int/2addr v2, v3

    if-eqz v2, :cond_11

    .line 686
    const/16 v2, 0x12

    iget v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->averageConfidence_:F

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 688
    :cond_11
    iget v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const/high16 v3, 0x20000

    and-int/2addr v2, v3

    if-eqz v2, :cond_12

    .line 689
    const/16 v2, 0x13

    iget v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerStatus_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 691
    :cond_12
    iget v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const/high16 v3, 0x40000

    and-int/2addr v2, v3

    if-eqz v2, :cond_13

    .line 692
    const/16 v2, 0x14

    iget-object v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->spokenLanguage_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 694
    :cond_13
    iget v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const/high16 v3, 0x80000

    and-int/2addr v2, v3

    if-eqz v2, :cond_14

    .line 695
    const/16 v2, 0x15

    iget-object v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerLanguage_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 697
    :cond_14
    iget-object v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerSegment:[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerSegment:[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    array-length v2, v2

    if-lez v2, :cond_16

    .line 698
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerSegment:[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    array-length v2, v2

    if-ge v1, v2, :cond_16

    .line 699
    iget-object v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerSegment:[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    aget-object v0, v2, v1

    .line 700
    .local v0, "element":Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
    if-eqz v0, :cond_15

    .line 701
    const/16 v2, 0x16

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 698
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 705
    .end local v0    # "element":Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
    .end local v1    # "i":I
    :cond_16
    iget v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const/high16 v3, 0x100000

    and-int/2addr v2, v3

    if-eqz v2, :cond_17

    .line 706
    const/16 v2, 0x17

    iget-object v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->serverCluster_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 708
    :cond_17
    iget v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const/high16 v3, 0x400000

    and-int/2addr v2, v3

    if-eqz v2, :cond_18

    .line 709
    const/16 v2, 0x18

    iget v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->requestDurationMs_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 711
    :cond_18
    iget v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const/high16 v3, 0x800000

    and-int/2addr v2, v3

    if-eqz v2, :cond_19

    .line 712
    const/16 v2, 0x19

    iget-boolean v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->personalizationEnabled_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 714
    :cond_19
    iget v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const/high16 v3, 0x1000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1a

    .line 715
    const/16 v2, 0x1a

    iget-wide v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->startTimeMs_:J

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 717
    :cond_1a
    iget-object v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->langPack:Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    if-eqz v2, :cond_1b

    .line 718
    const/16 v2, 0x1b

    iget-object v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->langPack:Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 720
    :cond_1b
    iget v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const/high16 v3, 0x200000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1c

    .line 721
    const/16 v2, 0x1c

    iget-object v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->serverMachineName_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 723
    :cond_1c
    iget v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1d

    .line 724
    const/16 v2, 0x1d

    iget v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->channelCount_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 726
    :cond_1d
    iget-object v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->features:Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;

    if-eqz v2, :cond_1e

    .line 727
    const/16 v2, 0x1e

    iget-object v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->features:Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 729
    :cond_1e
    iget v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->bitField0_:I

    const/high16 v3, 0x2000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1f

    .line 730
    const/16 v2, 0x1f

    iget-boolean v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->topContactEnabled_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 732
    :cond_1f
    iget-object v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->context:[Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->context:[Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;

    array-length v2, v2

    if-lez v2, :cond_21

    .line 733
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->context:[Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;

    array-length v2, v2

    if-ge v1, v2, :cond_21

    .line 734
    iget-object v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->context:[Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;

    aget-object v0, v2, v1

    .line 735
    .local v0, "element":Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;
    if-eqz v0, :cond_20

    .line 736
    const/16 v2, 0x20

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 733
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 740
    .end local v0    # "element":Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;
    .end local v1    # "i":I
    :cond_21
    iget-object v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->additionalSpokenLanguage:[Ljava/lang/String;

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->additionalSpokenLanguage:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_23

    .line 741
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->additionalSpokenLanguage:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_23

    .line 742
    iget-object v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->additionalSpokenLanguage:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 743
    .local v0, "element":Ljava/lang/String;
    if-eqz v0, :cond_22

    .line 744
    const/16 v2, 0x21

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 741
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 748
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_23
    return-void
.end method
