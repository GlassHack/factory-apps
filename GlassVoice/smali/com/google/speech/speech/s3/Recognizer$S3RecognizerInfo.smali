.class public final Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "Recognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/speech/s3/Recognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "S3RecognizerInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;
    }
.end annotation


# static fields
.field public static final PROFANITY_FILTER_TYPES_FSTARS:I = 0x2

.field public static final PROFANITY_FILTER_TYPES_HASHES:I = 0x1

.field public static final PROFANITY_FILTER_TYPES_NONE:I

.field private static volatile _emptyArray:[Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;


# instance fields
.field public alternateParams:Lcom/google/speech/common/Alternates$AlternateParams;

.field private bitField0_:I

.field private condition_:Ljava/lang/String;

.field private confidenceThreshold_:F

.field private dictationMode_:Z

.field private enableAlternates_:Z

.field private enableCombinedNbest_:Z

.field private enableEndpointerEvents_:Z

.field private enableLattice_:Z

.field private enablePartialNbest_:Z

.field private enablePartialResults_:Z

.field private enablePersonalization_:Z

.field private enableResultPrefetch_:Z

.field private enableSemanticResults_:Z

.field public grammarParams:Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;

.field private greco2CompatMode_:Z

.field private logFeaturesOnly_:Z

.field private loggingDataRequested_:Z

.field private maxNbest_:I

.field private profanityFilter_:I

.field public recognitionContext:Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

.field private resetIntervalMs_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 528
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 529
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->clear()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    .line 530
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 2

    .prologue
    .line 161
    sget-object v0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->_emptyArray:[Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    if-nez v0, :cond_1

    .line 162
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 164
    :try_start_0
    sget-object v0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->_emptyArray:[Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    if-nez v0, :cond_0

    .line 165
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    sput-object v0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->_emptyArray:[Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    .line 167
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :cond_1
    sget-object v0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->_emptyArray:[Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    return-object v0

    .line 167
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 856
    new-instance v0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    invoke-direct {v0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 850
    new-instance v0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    invoke-direct {v0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 533
    iput v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    .line 534
    iput-object v2, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->recognitionContext:Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    .line 535
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->maxNbest_:I

    .line 536
    iput-object v2, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->alternateParams:Lcom/google/speech/common/Alternates$AlternateParams;

    .line 537
    iput-boolean v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enablePartialResults_:Z

    .line 538
    iput-boolean v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enablePartialNbest_:Z

    .line 539
    iput-boolean v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableResultPrefetch_:Z

    .line 540
    iput-boolean v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableLattice_:Z

    .line 541
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->profanityFilter_:I

    .line 542
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->confidenceThreshold_:F

    .line 543
    iput-object v2, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->grammarParams:Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;

    .line 544
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->condition_:Ljava/lang/String;

    .line 545
    iput-boolean v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->dictationMode_:Z

    .line 546
    iput-boolean v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableSemanticResults_:Z

    .line 547
    iput-boolean v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableAlternates_:Z

    .line 548
    iput-boolean v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableCombinedNbest_:Z

    .line 549
    iput-boolean v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->greco2CompatMode_:Z

    .line 550
    iput-boolean v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enablePersonalization_:Z

    .line 551
    iput-boolean v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->loggingDataRequested_:Z

    .line 552
    iput-boolean v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->logFeaturesOnly_:Z

    .line 553
    iput v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->resetIntervalMs_:I

    .line 554
    iput-boolean v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableEndpointerEvents_:Z

    .line 555
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->cachedSize:I

    .line 556
    return-object p0
.end method

.method public clearCondition()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1

    .prologue
    .line 333
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->condition_:Ljava/lang/String;

    .line 334
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    .line 335
    return-object p0
.end method

.method public clearConfidenceThreshold()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->confidenceThreshold_:F

    .line 309
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    .line 310
    return-object p0
.end method

.method public clearDictationMode()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->dictationMode_:Z

    .line 353
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    .line 354
    return-object p0
.end method

.method public clearEnableAlternates()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1

    .prologue
    .line 390
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableAlternates_:Z

    .line 391
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    .line 392
    return-object p0
.end method

.method public clearEnableCombinedNbest()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableCombinedNbest_:Z

    .line 410
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    .line 411
    return-object p0
.end method

.method public clearEnableEndpointerEvents()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 2

    .prologue
    .line 523
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableEndpointerEvents_:Z

    .line 524
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    .line 525
    return-object p0
.end method

.method public clearEnableLattice()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableLattice_:Z

    .line 271
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    .line 272
    return-object p0
.end method

.method public clearEnablePartialNbest()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enablePartialNbest_:Z

    .line 233
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    .line 234
    return-object p0
.end method

.method public clearEnablePartialResults()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enablePartialResults_:Z

    .line 214
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    .line 215
    return-object p0
.end method

.method public clearEnablePersonalization()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1

    .prologue
    .line 447
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enablePersonalization_:Z

    .line 448
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    .line 449
    return-object p0
.end method

.method public clearEnableResultPrefetch()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableResultPrefetch_:Z

    .line 252
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    .line 253
    return-object p0
.end method

.method public clearEnableSemanticResults()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1

    .prologue
    .line 371
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableSemanticResults_:Z

    .line 372
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    .line 373
    return-object p0
.end method

.method public clearGreco2CompatMode()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1

    .prologue
    .line 428
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->greco2CompatMode_:Z

    .line 429
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    .line 430
    return-object p0
.end method

.method public clearLogFeaturesOnly()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 2

    .prologue
    .line 485
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->logFeaturesOnly_:Z

    .line 486
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    .line 487
    return-object p0
.end method

.method public clearLoggingDataRequested()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1

    .prologue
    .line 466
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->loggingDataRequested_:Z

    .line 467
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    .line 468
    return-object p0
.end method

.method public clearMaxNbest()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->maxNbest_:I

    .line 192
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    .line 193
    return-object p0
.end method

.method public clearProfanityFilter()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->profanityFilter_:I

    .line 290
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    .line 291
    return-object p0
.end method

.method public clearResetIntervalMs()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 2

    .prologue
    .line 504
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->resetIntervalMs_:I

    .line 505
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    .line 506
    return-object p0
.end method

.method public getCondition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->condition_:Ljava/lang/String;

    return-object v0
.end method

.method public getConfidenceThreshold()F
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->confidenceThreshold_:F

    return v0
.end method

.method public getDictationMode()Z
    .locals 1

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->dictationMode_:Z

    return v0
.end method

.method public getEnableAlternates()Z
    .locals 1

    .prologue
    .line 379
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableAlternates_:Z

    return v0
.end method

.method public getEnableCombinedNbest()Z
    .locals 1

    .prologue
    .line 398
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableCombinedNbest_:Z

    return v0
.end method

.method public getEnableEndpointerEvents()Z
    .locals 1

    .prologue
    .line 512
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableEndpointerEvents_:Z

    return v0
.end method

.method public getEnableLattice()Z
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableLattice_:Z

    return v0
.end method

.method public getEnablePartialNbest()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enablePartialNbest_:Z

    return v0
.end method

.method public getEnablePartialResults()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enablePartialResults_:Z

    return v0
.end method

.method public getEnablePersonalization()Z
    .locals 1

    .prologue
    .line 436
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enablePersonalization_:Z

    return v0
.end method

.method public getEnableResultPrefetch()Z
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableResultPrefetch_:Z

    return v0
.end method

.method public getEnableSemanticResults()Z
    .locals 1

    .prologue
    .line 360
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableSemanticResults_:Z

    return v0
.end method

.method public getGreco2CompatMode()Z
    .locals 1

    .prologue
    .line 417
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->greco2CompatMode_:Z

    return v0
.end method

.method public getLogFeaturesOnly()Z
    .locals 1

    .prologue
    .line 474
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->logFeaturesOnly_:Z

    return v0
.end method

.method public getLoggingDataRequested()Z
    .locals 1

    .prologue
    .line 455
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->loggingDataRequested_:Z

    return v0
.end method

.method public getMaxNbest()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->maxNbest_:I

    return v0
.end method

.method public getProfanityFilter()I
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->profanityFilter_:I

    return v0
.end method

.method public getResetIntervalMs()I
    .locals 1

    .prologue
    .line 493
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->resetIntervalMs_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 629
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 630
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->recognitionContext:Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    if-eqz v1, :cond_0

    .line 631
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->recognitionContext:Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 634
    :cond_0
    iget v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 635
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->maxNbest_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 638
    :cond_1
    iget-object v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->alternateParams:Lcom/google/speech/common/Alternates$AlternateParams;

    if-eqz v1, :cond_2

    .line 639
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->alternateParams:Lcom/google/speech/common/Alternates$AlternateParams;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 642
    :cond_2
    iget v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 643
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enablePartialResults_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 646
    :cond_3
    iget v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 647
    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableLattice_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 650
    :cond_4
    iget v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 651
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->profanityFilter_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 654
    :cond_5
    iget v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 655
    const/16 v1, 0x8

    iget v2, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->confidenceThreshold_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 658
    :cond_6
    iget-object v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->grammarParams:Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;

    if-eqz v1, :cond_7

    .line 659
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->grammarParams:Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 662
    :cond_7
    iget v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_8

    .line 663
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->condition_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 666
    :cond_8
    iget v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_9

    .line 667
    const/16 v1, 0xb

    iget-boolean v2, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->dictationMode_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 670
    :cond_9
    iget v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_a

    .line 671
    const/16 v1, 0xc

    iget-boolean v2, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableSemanticResults_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 674
    :cond_a
    iget v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_b

    .line 675
    const/16 v1, 0xd

    iget-boolean v2, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableAlternates_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 678
    :cond_b
    iget v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_c

    .line 679
    const/16 v1, 0xe

    iget-boolean v2, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableCombinedNbest_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 682
    :cond_c
    iget v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_d

    .line 683
    const/16 v1, 0xf

    iget-boolean v2, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->greco2CompatMode_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 686
    :cond_d
    iget v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_e

    .line 687
    const/16 v1, 0x10

    iget-boolean v2, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enablePersonalization_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 690
    :cond_e
    iget v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_f

    .line 691
    const/16 v1, 0x11

    iget-boolean v2, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->loggingDataRequested_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 694
    :cond_f
    iget v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_10

    .line 695
    const/16 v1, 0x12

    iget-boolean v2, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->logFeaturesOnly_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 698
    :cond_10
    iget v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_11

    .line 699
    const/16 v1, 0x13

    iget v2, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->resetIntervalMs_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 702
    :cond_11
    iget v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_12

    .line 703
    const/16 v1, 0x14

    iget-boolean v2, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableEndpointerEvents_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 706
    :cond_12
    iget v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_13

    .line 707
    const/16 v1, 0x15

    iget-boolean v2, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enablePartialNbest_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 710
    :cond_13
    iget v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_14

    .line 711
    const/16 v1, 0x16

    iget-boolean v2, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableResultPrefetch_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 714
    :cond_14
    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->cachedSize:I

    .line 715
    return v0
.end method

.method public hasCondition()Z
    .locals 1

    .prologue
    .line 330
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasConfidenceThreshold()Z
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDictationMode()Z
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

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
    .line 387
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEnableCombinedNbest()Z
    .locals 1

    .prologue
    .line 406
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEnableEndpointerEvents()Z
    .locals 2

    .prologue
    .line 520
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

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

.method public hasEnableLattice()Z
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

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
    .line 229
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

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
    .line 210
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEnablePersonalization()Z
    .locals 1

    .prologue
    .line 444
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

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
    .line 248
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEnableSemanticResults()Z
    .locals 1

    .prologue
    .line 368
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGreco2CompatMode()Z
    .locals 1

    .prologue
    .line 425
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLogFeaturesOnly()Z
    .locals 2

    .prologue
    .line 482
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

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

.method public hasLoggingDataRequested()Z
    .locals 1

    .prologue
    .line 463
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMaxNbest()Z
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasProfanityFilter()Z
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasResetIntervalMs()Z
    .locals 2

    .prologue
    .line 501
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

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
    invoke-virtual {p0, p1}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 3
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 723
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 724
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 728
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 729
    :sswitch_0
    return-object p0

    .line 734
    :sswitch_1
    iget-object v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->recognitionContext:Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    if-nez v1, :cond_1

    .line 735
    new-instance v1, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    invoke-direct {v1}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;-><init>()V

    iput-object v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->recognitionContext:Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    .line 737
    :cond_1
    iget-object v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->recognitionContext:Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 741
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->maxNbest_:I

    .line 742
    iget v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    goto :goto_0

    .line 746
    :sswitch_3
    iget-object v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->alternateParams:Lcom/google/speech/common/Alternates$AlternateParams;

    if-nez v1, :cond_2

    .line 747
    new-instance v1, Lcom/google/speech/common/Alternates$AlternateParams;

    invoke-direct {v1}, Lcom/google/speech/common/Alternates$AlternateParams;-><init>()V

    iput-object v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->alternateParams:Lcom/google/speech/common/Alternates$AlternateParams;

    .line 749
    :cond_2
    iget-object v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->alternateParams:Lcom/google/speech/common/Alternates$AlternateParams;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 753
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enablePartialResults_:Z

    .line 754
    iget v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    goto :goto_0

    .line 758
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableLattice_:Z

    .line 759
    iget v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    goto :goto_0

    .line 763
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->profanityFilter_:I

    .line 764
    iget v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    goto :goto_0

    .line 768
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->confidenceThreshold_:F

    .line 769
    iget v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    goto :goto_0

    .line 773
    :sswitch_8
    iget-object v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->grammarParams:Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;

    if-nez v1, :cond_3

    .line 774
    new-instance v1, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;

    invoke-direct {v1}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;-><init>()V

    iput-object v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->grammarParams:Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;

    .line 776
    :cond_3
    iget-object v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->grammarParams:Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 780
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->condition_:Ljava/lang/String;

    .line 781
    iget v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    goto/16 :goto_0

    .line 785
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->dictationMode_:Z

    .line 786
    iget v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    goto/16 :goto_0

    .line 790
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableSemanticResults_:Z

    .line 791
    iget v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    goto/16 :goto_0

    .line 795
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableAlternates_:Z

    .line 796
    iget v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    goto/16 :goto_0

    .line 800
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableCombinedNbest_:Z

    .line 801
    iget v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    goto/16 :goto_0

    .line 805
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->greco2CompatMode_:Z

    .line 806
    iget v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    goto/16 :goto_0

    .line 810
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enablePersonalization_:Z

    .line 811
    iget v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    goto/16 :goto_0

    .line 815
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->loggingDataRequested_:Z

    .line 816
    iget v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    goto/16 :goto_0

    .line 820
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->logFeaturesOnly_:Z

    .line 821
    iget v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    const v2, 0x8000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    goto/16 :goto_0

    .line 825
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->resetIntervalMs_:I

    .line 826
    iget v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    const/high16 v2, 0x10000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    goto/16 :goto_0

    .line 830
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableEndpointerEvents_:Z

    .line 831
    iget v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    goto/16 :goto_0

    .line 835
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enablePartialNbest_:Z

    .line 836
    iget v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    goto/16 :goto_0

    .line 840
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableResultPrefetch_:Z

    .line 841
    iget v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    goto/16 :goto_0

    .line 724
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x18 -> :sswitch_2
        0x22 -> :sswitch_3
        0x28 -> :sswitch_4
        0x30 -> :sswitch_5
        0x38 -> :sswitch_6
        0x45 -> :sswitch_7
        0x4a -> :sswitch_8
        0x52 -> :sswitch_9
        0x58 -> :sswitch_a
        0x60 -> :sswitch_b
        0x68 -> :sswitch_c
        0x70 -> :sswitch_d
        0x78 -> :sswitch_e
        0x80 -> :sswitch_f
        0x88 -> :sswitch_10
        0x90 -> :sswitch_11
        0x98 -> :sswitch_12
        0xa0 -> :sswitch_13
        0xa8 -> :sswitch_14
        0xb0 -> :sswitch_15
    .end sparse-switch
.end method

.method public setCondition(Ljava/lang/String;)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 322
    if-nez p1, :cond_0

    .line 323
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 325
    :cond_0
    iput-object p1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->condition_:Ljava/lang/String;

    .line 326
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    .line 327
    return-object p0
.end method

.method public setConfidenceThreshold(F)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 300
    iput p1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->confidenceThreshold_:F

    .line 301
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    .line 302
    return-object p0
.end method

.method public setDictationMode(Z)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 344
    iput-boolean p1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->dictationMode_:Z

    .line 345
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    .line 346
    return-object p0
.end method

.method public setEnableAlternates(Z)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 382
    iput-boolean p1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableAlternates_:Z

    .line 383
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    .line 384
    return-object p0
.end method

.method public setEnableCombinedNbest(Z)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 401
    iput-boolean p1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableCombinedNbest_:Z

    .line 402
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    .line 403
    return-object p0
.end method

.method public setEnableEndpointerEvents(Z)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 515
    iput-boolean p1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableEndpointerEvents_:Z

    .line 516
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    .line 517
    return-object p0
.end method

.method public setEnableLattice(Z)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 262
    iput-boolean p1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableLattice_:Z

    .line 263
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    .line 264
    return-object p0
.end method

.method public setEnablePartialNbest(Z)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enablePartialNbest_:Z

    .line 225
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    .line 226
    return-object p0
.end method

.method public setEnablePartialResults(Z)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 205
    iput-boolean p1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enablePartialResults_:Z

    .line 206
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    .line 207
    return-object p0
.end method

.method public setEnablePersonalization(Z)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 439
    iput-boolean p1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enablePersonalization_:Z

    .line 440
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    .line 441
    return-object p0
.end method

.method public setEnableResultPrefetch(Z)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 243
    iput-boolean p1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableResultPrefetch_:Z

    .line 244
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    .line 245
    return-object p0
.end method

.method public setEnableSemanticResults(Z)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 363
    iput-boolean p1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableSemanticResults_:Z

    .line 364
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    .line 365
    return-object p0
.end method

.method public setGreco2CompatMode(Z)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 420
    iput-boolean p1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->greco2CompatMode_:Z

    .line 421
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    .line 422
    return-object p0
.end method

.method public setLogFeaturesOnly(Z)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 477
    iput-boolean p1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->logFeaturesOnly_:Z

    .line 478
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    .line 479
    return-object p0
.end method

.method public setLoggingDataRequested(Z)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 458
    iput-boolean p1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->loggingDataRequested_:Z

    .line 459
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    .line 460
    return-object p0
.end method

.method public setMaxNbest(I)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 183
    iput p1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->maxNbest_:I

    .line 184
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    .line 185
    return-object p0
.end method

.method public setProfanityFilter(I)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 281
    iput p1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->profanityFilter_:I

    .line 282
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    .line 283
    return-object p0
.end method

.method public setResetIntervalMs(I)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 496
    iput p1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->resetIntervalMs_:I

    .line 497
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    .line 498
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
    .line 562
    iget-object v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->recognitionContext:Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    if-eqz v0, :cond_0

    .line 563
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->recognitionContext:Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 565
    :cond_0
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 566
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->maxNbest_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 568
    :cond_1
    iget-object v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->alternateParams:Lcom/google/speech/common/Alternates$AlternateParams;

    if-eqz v0, :cond_2

    .line 569
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->alternateParams:Lcom/google/speech/common/Alternates$AlternateParams;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 571
    :cond_2
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 572
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enablePartialResults_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 574
    :cond_3
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 575
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableLattice_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 577
    :cond_4
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 578
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->profanityFilter_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 580
    :cond_5
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 581
    const/16 v0, 0x8

    iget v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->confidenceThreshold_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 583
    :cond_6
    iget-object v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->grammarParams:Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;

    if-eqz v0, :cond_7

    .line 584
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->grammarParams:Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 586
    :cond_7
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    .line 587
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->condition_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 589
    :cond_8
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_9

    .line 590
    const/16 v0, 0xb

    iget-boolean v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->dictationMode_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 592
    :cond_9
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_a

    .line 593
    const/16 v0, 0xc

    iget-boolean v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableSemanticResults_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 595
    :cond_a
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_b

    .line 596
    const/16 v0, 0xd

    iget-boolean v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableAlternates_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 598
    :cond_b
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_c

    .line 599
    const/16 v0, 0xe

    iget-boolean v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableCombinedNbest_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 601
    :cond_c
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_d

    .line 602
    const/16 v0, 0xf

    iget-boolean v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->greco2CompatMode_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 604
    :cond_d
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_e

    .line 605
    const/16 v0, 0x10

    iget-boolean v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enablePersonalization_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 607
    :cond_e
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_f

    .line 608
    const/16 v0, 0x11

    iget-boolean v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->loggingDataRequested_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 610
    :cond_f
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    .line 611
    const/16 v0, 0x12

    iget-boolean v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->logFeaturesOnly_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 613
    :cond_10
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_11

    .line 614
    const/16 v0, 0x13

    iget v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->resetIntervalMs_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 616
    :cond_11
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_12

    .line 617
    const/16 v0, 0x14

    iget-boolean v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableEndpointerEvents_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 619
    :cond_12
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_13

    .line 620
    const/16 v0, 0x15

    iget-boolean v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enablePartialNbest_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 622
    :cond_13
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_14

    .line 623
    const/16 v0, 0x16

    iget-boolean v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableResultPrefetch_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 625
    :cond_14
    return-void
.end method
