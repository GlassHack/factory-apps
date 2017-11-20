.class public final Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "HotwordFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/recognizer/api/HotwordFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HotwordConfidenceFeature"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;


# instance fields
.field private amScore_:F

.field private ascoreBest_:F

.field private ascoreMean_:F

.field private ascoreMeandiff_:F

.field private ascoreStddev_:F

.field private ascoreWorst_:F

.field private bitField0_:I

.field private durScore_:F

.field public frameDistance:[F

.field private lmScore_:F

.field private normalizedWordDuration_:F

.field private numPhones_:F

.field public phAlign:[Z

.field public phAlignDelete:[Z

.field public phAlignInsert:[Z

.field public phExpectationAlign:[Z

.field public phExpectationDeleteAlign:[Z

.field public phExpectationDeleteNn:[Z

.field public phExpectationInsertAlign:[Z

.field public phExpectationInsertNn:[Z

.field public phExpectationNn:[Z

.field public phNn:[Z

.field public phNnDelete:[Z

.field public phNnInsert:[Z

.field private phoneDurationScore_:F

.field private speakerRate_:F

.field private stability_:F

.field private startFrame_:F

.field private wordDurationFrames_:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 352
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clear()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 353
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->_emptyArray:[Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    if-nez v0, :cond_1

    .line 15
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->_emptyArray:[Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    if-nez v0, :cond_0

    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    sput-object v0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->_emptyArray:[Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 20
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_1
    sget-object v0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->_emptyArray:[Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

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

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1251
    new-instance v0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1245
    new-instance v0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 356
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    .line 357
    iput v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phoneDurationScore_:F

    .line 358
    iput v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->speakerRate_:F

    .line 359
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->frameDistance:[F

    .line 360
    iput v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->wordDurationFrames_:F

    .line 361
    iput v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->numPhones_:F

    .line 362
    iput v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->normalizedWordDuration_:F

    .line 363
    iput v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreMean_:F

    .line 364
    iput v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreStddev_:F

    .line 365
    iput v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreWorst_:F

    .line 366
    iput v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreMeandiff_:F

    .line 367
    iput v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreBest_:F

    .line 368
    iput v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->lmScore_:F

    .line 369
    iput v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->durScore_:F

    .line 370
    iput v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->amScore_:F

    .line 371
    iput v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->startFrame_:F

    .line 372
    iput v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->stability_:F

    .line 373
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BOOLEAN_ARRAY:[Z

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlign:[Z

    .line 374
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BOOLEAN_ARRAY:[Z

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignDelete:[Z

    .line 375
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BOOLEAN_ARRAY:[Z

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignInsert:[Z

    .line 376
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BOOLEAN_ARRAY:[Z

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNn:[Z

    .line 377
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BOOLEAN_ARRAY:[Z

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnDelete:[Z

    .line 378
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BOOLEAN_ARRAY:[Z

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnInsert:[Z

    .line 379
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BOOLEAN_ARRAY:[Z

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationAlign:[Z

    .line 380
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BOOLEAN_ARRAY:[Z

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationNn:[Z

    .line 381
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BOOLEAN_ARRAY:[Z

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteAlign:[Z

    .line 382
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BOOLEAN_ARRAY:[Z

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertAlign:[Z

    .line 383
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BOOLEAN_ARRAY:[Z

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteNn:[Z

    .line 384
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BOOLEAN_ARRAY:[Z

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertNn:[Z

    .line 385
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->cachedSize:I

    .line 386
    return-object p0
.end method

.method public clearAmScore()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->amScore_:F

    .line 273
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    .line 274
    return-object p0
.end method

.method public clearAscoreBest()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreBest_:F

    .line 216
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    .line 217
    return-object p0
.end method

.method public clearAscoreMean()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreMean_:F

    .line 140
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    .line 141
    return-object p0
.end method

.method public clearAscoreMeandiff()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreMeandiff_:F

    .line 197
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    .line 198
    return-object p0
.end method

.method public clearAscoreStddev()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreStddev_:F

    .line 159
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    .line 160
    return-object p0
.end method

.method public clearAscoreWorst()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreWorst_:F

    .line 178
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    .line 179
    return-object p0
.end method

.method public clearDurScore()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->durScore_:F

    .line 254
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    .line 255
    return-object p0
.end method

.method public clearLmScore()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->lmScore_:F

    .line 235
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    .line 236
    return-object p0
.end method

.method public clearNormalizedWordDuration()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->normalizedWordDuration_:F

    .line 121
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    .line 122
    return-object p0
.end method

.method public clearNumPhones()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->numPhones_:F

    .line 102
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    .line 103
    return-object p0
.end method

.method public clearPhoneDurationScore()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phoneDurationScore_:F

    .line 42
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    .line 43
    return-object p0
.end method

.method public clearSpeakerRate()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->speakerRate_:F

    .line 61
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    .line 62
    return-object p0
.end method

.method public clearStability()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->stability_:F

    .line 311
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    .line 312
    return-object p0
.end method

.method public clearStartFrame()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->startFrame_:F

    .line 292
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    .line 293
    return-object p0
.end method

.method public clearWordDurationFrames()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->wordDurationFrames_:F

    .line 83
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    .line 84
    return-object p0
.end method

.method public getAmScore()F
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->amScore_:F

    return v0
.end method

.method public getAscoreBest()F
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreBest_:F

    return v0
.end method

.method public getAscoreMean()F
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreMean_:F

    return v0
.end method

.method public getAscoreMeandiff()F
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreMeandiff_:F

    return v0
.end method

.method public getAscoreStddev()F
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreStddev_:F

    return v0
.end method

.method public getAscoreWorst()F
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreWorst_:F

    return v0
.end method

.method public getDurScore()F
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->durScore_:F

    return v0
.end method

.method public getLmScore()F
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->lmScore_:F

    return v0
.end method

.method public getNormalizedWordDuration()F
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->normalizedWordDuration_:F

    return v0
.end method

.method public getNumPhones()F
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->numPhones_:F

    return v0
.end method

.method public getPhoneDurationScore()F
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phoneDurationScore_:F

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 506
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v1

    .line 507
    .local v1, "size":I
    iget v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 508
    const/4 v2, 0x1

    iget v3, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phoneDurationScore_:F

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v1, v2

    .line 511
    :cond_0
    iget v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 512
    const/4 v2, 0x2

    iget v3, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->speakerRate_:F

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v1, v2

    .line 515
    :cond_1
    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->frameDistance:[F

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->frameDistance:[F

    array-length v2, v2

    if-lez v2, :cond_2

    .line 516
    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->frameDistance:[F

    array-length v2, v2

    mul-int/lit8 v0, v2, 0x4

    .line 517
    .local v0, "dataSize":I
    add-int/2addr v1, v0

    .line 518
    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->frameDistance:[F

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    .line 520
    .end local v0    # "dataSize":I
    :cond_2
    iget v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    .line 521
    const/4 v2, 0x4

    iget v3, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->wordDurationFrames_:F

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v1, v2

    .line 524
    :cond_3
    iget v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_4

    .line 525
    const/16 v2, 0x8

    iget v3, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->numPhones_:F

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v1, v2

    .line 528
    :cond_4
    iget v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_5

    .line 529
    const/16 v2, 0x9

    iget v3, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->normalizedWordDuration_:F

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v1, v2

    .line 532
    :cond_5
    iget v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_6

    .line 533
    const/16 v2, 0xa

    iget v3, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreMean_:F

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v1, v2

    .line 536
    :cond_6
    iget v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_7

    .line 537
    const/16 v2, 0xb

    iget v3, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreStddev_:F

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v1, v2

    .line 540
    :cond_7
    iget v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_8

    .line 541
    const/16 v2, 0xc

    iget v3, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreWorst_:F

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v1, v2

    .line 544
    :cond_8
    iget v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_9

    .line 545
    const/16 v2, 0xd

    iget v3, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreMeandiff_:F

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v1, v2

    .line 548
    :cond_9
    iget v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_a

    .line 549
    const/16 v2, 0xe

    iget v3, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreBest_:F

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v1, v2

    .line 552
    :cond_a
    iget v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_b

    .line 553
    const/16 v2, 0xf

    iget v3, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->lmScore_:F

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v1, v2

    .line 556
    :cond_b
    iget v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_c

    .line 557
    const/16 v2, 0x10

    iget v3, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->durScore_:F

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v1, v2

    .line 560
    :cond_c
    iget v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_d

    .line 561
    const/16 v2, 0x11

    iget v3, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->amScore_:F

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v1, v2

    .line 564
    :cond_d
    iget v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_e

    .line 565
    const/16 v2, 0x12

    iget v3, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->startFrame_:F

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v1, v2

    .line 568
    :cond_e
    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationAlign:[Z

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationAlign:[Z

    array-length v2, v2

    if-lez v2, :cond_f

    .line 569
    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationAlign:[Z

    array-length v2, v2

    mul-int/lit8 v0, v2, 0x1

    .line 570
    .restart local v0    # "dataSize":I
    add-int/2addr v1, v0

    .line 571
    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationAlign:[Z

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 573
    .end local v0    # "dataSize":I
    :cond_f
    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationNn:[Z

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationNn:[Z

    array-length v2, v2

    if-lez v2, :cond_10

    .line 574
    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationNn:[Z

    array-length v2, v2

    mul-int/lit8 v0, v2, 0x1

    .line 575
    .restart local v0    # "dataSize":I
    add-int/2addr v1, v0

    .line 576
    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationNn:[Z

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 578
    .end local v0    # "dataSize":I
    :cond_10
    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteAlign:[Z

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteAlign:[Z

    array-length v2, v2

    if-lez v2, :cond_11

    .line 579
    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteAlign:[Z

    array-length v2, v2

    mul-int/lit8 v0, v2, 0x1

    .line 580
    .restart local v0    # "dataSize":I
    add-int/2addr v1, v0

    .line 581
    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteAlign:[Z

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 583
    .end local v0    # "dataSize":I
    :cond_11
    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertAlign:[Z

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertAlign:[Z

    array-length v2, v2

    if-lez v2, :cond_12

    .line 584
    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertAlign:[Z

    array-length v2, v2

    mul-int/lit8 v0, v2, 0x1

    .line 585
    .restart local v0    # "dataSize":I
    add-int/2addr v1, v0

    .line 586
    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertAlign:[Z

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 588
    .end local v0    # "dataSize":I
    :cond_12
    iget v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_13

    .line 589
    const/16 v2, 0x17

    iget v3, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->stability_:F

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v1, v2

    .line 592
    :cond_13
    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteNn:[Z

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteNn:[Z

    array-length v2, v2

    if-lez v2, :cond_14

    .line 593
    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteNn:[Z

    array-length v2, v2

    mul-int/lit8 v0, v2, 0x1

    .line 594
    .restart local v0    # "dataSize":I
    add-int/2addr v1, v0

    .line 595
    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteNn:[Z

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 597
    .end local v0    # "dataSize":I
    :cond_14
    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertNn:[Z

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertNn:[Z

    array-length v2, v2

    if-lez v2, :cond_15

    .line 598
    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertNn:[Z

    array-length v2, v2

    mul-int/lit8 v0, v2, 0x1

    .line 599
    .restart local v0    # "dataSize":I
    add-int/2addr v1, v0

    .line 600
    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertNn:[Z

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 602
    .end local v0    # "dataSize":I
    :cond_15
    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlign:[Z

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlign:[Z

    array-length v2, v2

    if-lez v2, :cond_16

    .line 603
    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlign:[Z

    array-length v2, v2

    mul-int/lit8 v0, v2, 0x1

    .line 604
    .restart local v0    # "dataSize":I
    add-int/2addr v1, v0

    .line 605
    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlign:[Z

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 607
    .end local v0    # "dataSize":I
    :cond_16
    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignDelete:[Z

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignDelete:[Z

    array-length v2, v2

    if-lez v2, :cond_17

    .line 608
    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignDelete:[Z

    array-length v2, v2

    mul-int/lit8 v0, v2, 0x1

    .line 609
    .restart local v0    # "dataSize":I
    add-int/2addr v1, v0

    .line 610
    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignDelete:[Z

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 612
    .end local v0    # "dataSize":I
    :cond_17
    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignInsert:[Z

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignInsert:[Z

    array-length v2, v2

    if-lez v2, :cond_18

    .line 613
    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignInsert:[Z

    array-length v2, v2

    mul-int/lit8 v0, v2, 0x1

    .line 614
    .restart local v0    # "dataSize":I
    add-int/2addr v1, v0

    .line 615
    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignInsert:[Z

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 617
    .end local v0    # "dataSize":I
    :cond_18
    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNn:[Z

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNn:[Z

    array-length v2, v2

    if-lez v2, :cond_19

    .line 618
    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNn:[Z

    array-length v2, v2

    mul-int/lit8 v0, v2, 0x1

    .line 619
    .restart local v0    # "dataSize":I
    add-int/2addr v1, v0

    .line 620
    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNn:[Z

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 622
    .end local v0    # "dataSize":I
    :cond_19
    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnDelete:[Z

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnDelete:[Z

    array-length v2, v2

    if-lez v2, :cond_1a

    .line 623
    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnDelete:[Z

    array-length v2, v2

    mul-int/lit8 v0, v2, 0x1

    .line 624
    .restart local v0    # "dataSize":I
    add-int/2addr v1, v0

    .line 625
    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnDelete:[Z

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 627
    .end local v0    # "dataSize":I
    :cond_1a
    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnInsert:[Z

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnInsert:[Z

    array-length v2, v2

    if-lez v2, :cond_1b

    .line 628
    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnInsert:[Z

    array-length v2, v2

    mul-int/lit8 v0, v2, 0x1

    .line 629
    .restart local v0    # "dataSize":I
    add-int/2addr v1, v0

    .line 630
    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnInsert:[Z

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 632
    .end local v0    # "dataSize":I
    :cond_1b
    iput v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->cachedSize:I

    .line 633
    return v1
.end method

.method public getSpeakerRate()F
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->speakerRate_:F

    return v0
.end method

.method public getStability()F
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->stability_:F

    return v0
.end method

.method public getStartFrame()F
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->startFrame_:F

    return v0
.end method

.method public getWordDurationFrames()F
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->wordDurationFrames_:F

    return v0
.end method

.method public hasAmScore()Z
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAscoreBest()Z
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAscoreMean()Z
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAscoreMeandiff()Z
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAscoreStddev()Z
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAscoreWorst()Z
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDurScore()Z
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLmScore()Z
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNormalizedWordDuration()Z
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNumPhones()Z
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPhoneDurationScore()Z
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSpeakerRate()Z
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStability()Z
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStartFrame()Z
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWordDurationFrames()Z
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

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
    invoke-virtual {p0, p1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 9
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 641
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v6

    .line 642
    .local v6, "tag":I
    sparse-switch v6, :sswitch_data_0

    .line 646
    invoke-static {p1, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 647
    :sswitch_0
    return-object p0

    .line 652
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v8

    iput v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phoneDurationScore_:F

    .line 653
    iget v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    goto :goto_0

    .line 657
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v8

    iput v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->speakerRate_:F

    .line 658
    iget v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    goto :goto_0

    .line 662
    :sswitch_3
    const/16 v8, 0x1d

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 664
    .local v0, "arrayLength":I
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->frameDistance:[F

    if-nez v8, :cond_2

    move v1, v7

    .line 665
    .local v1, "i":I
    :goto_1
    add-int v8, v1, v0

    new-array v4, v8, [F

    .line 666
    .local v4, "newArray":[F
    if-eqz v1, :cond_1

    .line 667
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->frameDistance:[F

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 669
    :cond_1
    :goto_2
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_3

    .line 670
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v8

    aput v8, v4, v1

    .line 671
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 669
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 664
    .end local v1    # "i":I
    .end local v4    # "newArray":[F
    :cond_2
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->frameDistance:[F

    array-length v1, v8

    goto :goto_1

    .line 674
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[F
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v8

    aput v8, v4, v1

    .line 675
    iput-object v4, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->frameDistance:[F

    goto :goto_0

    .line 679
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[F
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 680
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 681
    .local v3, "limit":I
    div-int/lit8 v0, v2, 0x4

    .line 682
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->frameDistance:[F

    if-nez v8, :cond_5

    move v1, v7

    .line 683
    .restart local v1    # "i":I
    :goto_3
    add-int v8, v1, v0

    new-array v4, v8, [F

    .line 684
    .restart local v4    # "newArray":[F
    if-eqz v1, :cond_4

    .line 685
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->frameDistance:[F

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 687
    :cond_4
    :goto_4
    array-length v8, v4

    if-ge v1, v8, :cond_6

    .line 688
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v8

    aput v8, v4, v1

    .line 687
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 682
    .end local v1    # "i":I
    .end local v4    # "newArray":[F
    :cond_5
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->frameDistance:[F

    array-length v1, v8

    goto :goto_3

    .line 690
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[F
    :cond_6
    iput-object v4, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->frameDistance:[F

    .line 691
    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 695
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[F
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v8

    iput v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->wordDurationFrames_:F

    .line 696
    iget v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    goto/16 :goto_0

    .line 700
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v8

    iput v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->numPhones_:F

    .line 701
    iget v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    goto/16 :goto_0

    .line 705
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v8

    iput v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->normalizedWordDuration_:F

    .line 706
    iget v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    goto/16 :goto_0

    .line 710
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v8

    iput v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreMean_:F

    .line 711
    iget v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    goto/16 :goto_0

    .line 715
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v8

    iput v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreStddev_:F

    .line 716
    iget v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    or-int/lit8 v8, v8, 0x40

    iput v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    goto/16 :goto_0

    .line 720
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v8

    iput v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreWorst_:F

    .line 721
    iget v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    or-int/lit16 v8, v8, 0x80

    iput v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    goto/16 :goto_0

    .line 725
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v8

    iput v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreMeandiff_:F

    .line 726
    iget v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    or-int/lit16 v8, v8, 0x100

    iput v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    goto/16 :goto_0

    .line 730
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v8

    iput v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreBest_:F

    .line 731
    iget v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    or-int/lit16 v8, v8, 0x200

    iput v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    goto/16 :goto_0

    .line 735
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v8

    iput v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->lmScore_:F

    .line 736
    iget v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    or-int/lit16 v8, v8, 0x400

    iput v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    goto/16 :goto_0

    .line 740
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v8

    iput v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->durScore_:F

    .line 741
    iget v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    or-int/lit16 v8, v8, 0x800

    iput v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    goto/16 :goto_0

    .line 745
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v8

    iput v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->amScore_:F

    .line 746
    iget v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    or-int/lit16 v8, v8, 0x1000

    iput v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    goto/16 :goto_0

    .line 750
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v8

    iput v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->startFrame_:F

    .line 751
    iget v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    or-int/lit16 v8, v8, 0x2000

    iput v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    goto/16 :goto_0

    .line 755
    :sswitch_11
    const/16 v8, 0x98

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 757
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationAlign:[Z

    if-nez v8, :cond_8

    move v1, v7

    .line 758
    .restart local v1    # "i":I
    :goto_5
    add-int v8, v1, v0

    new-array v4, v8, [Z

    .line 759
    .local v4, "newArray":[Z
    if-eqz v1, :cond_7

    .line 760
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationAlign:[Z

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 762
    :cond_7
    :goto_6
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_9

    .line 763
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    aput-boolean v8, v4, v1

    .line 764
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 762
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 757
    .end local v1    # "i":I
    .end local v4    # "newArray":[Z
    :cond_8
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationAlign:[Z

    array-length v1, v8

    goto :goto_5

    .line 767
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Z
    :cond_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    aput-boolean v8, v4, v1

    .line 768
    iput-object v4, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationAlign:[Z

    goto/16 :goto_0

    .line 772
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Z
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 773
    .restart local v2    # "length":I
    invoke-virtual {p1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 775
    .restart local v3    # "limit":I
    const/4 v0, 0x0

    .line 776
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 777
    .local v5, "startPos":I
    :goto_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_a

    .line 778
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    .line 779
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 781
    :cond_a
    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 782
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationAlign:[Z

    if-nez v8, :cond_c

    move v1, v7

    .line 783
    .restart local v1    # "i":I
    :goto_8
    add-int v8, v1, v0

    new-array v4, v8, [Z

    .line 784
    .restart local v4    # "newArray":[Z
    if-eqz v1, :cond_b

    .line 785
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationAlign:[Z

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 787
    :cond_b
    :goto_9
    array-length v8, v4

    if-ge v1, v8, :cond_d

    .line 788
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    aput-boolean v8, v4, v1

    .line 787
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 782
    .end local v1    # "i":I
    .end local v4    # "newArray":[Z
    :cond_c
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationAlign:[Z

    array-length v1, v8

    goto :goto_8

    .line 790
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Z
    :cond_d
    iput-object v4, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationAlign:[Z

    .line 791
    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 795
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[Z
    .end local v5    # "startPos":I
    :sswitch_13
    const/16 v8, 0xa0

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 797
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationNn:[Z

    if-nez v8, :cond_f

    move v1, v7

    .line 798
    .restart local v1    # "i":I
    :goto_a
    add-int v8, v1, v0

    new-array v4, v8, [Z

    .line 799
    .restart local v4    # "newArray":[Z
    if-eqz v1, :cond_e

    .line 800
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationNn:[Z

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 802
    :cond_e
    :goto_b
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_10

    .line 803
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    aput-boolean v8, v4, v1

    .line 804
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 802
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 797
    .end local v1    # "i":I
    .end local v4    # "newArray":[Z
    :cond_f
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationNn:[Z

    array-length v1, v8

    goto :goto_a

    .line 807
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Z
    :cond_10
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    aput-boolean v8, v4, v1

    .line 808
    iput-object v4, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationNn:[Z

    goto/16 :goto_0

    .line 812
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Z
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 813
    .restart local v2    # "length":I
    invoke-virtual {p1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 815
    .restart local v3    # "limit":I
    const/4 v0, 0x0

    .line 816
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 817
    .restart local v5    # "startPos":I
    :goto_c
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_11

    .line 818
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    .line 819
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 821
    :cond_11
    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 822
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationNn:[Z

    if-nez v8, :cond_13

    move v1, v7

    .line 823
    .restart local v1    # "i":I
    :goto_d
    add-int v8, v1, v0

    new-array v4, v8, [Z

    .line 824
    .restart local v4    # "newArray":[Z
    if-eqz v1, :cond_12

    .line 825
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationNn:[Z

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 827
    :cond_12
    :goto_e
    array-length v8, v4

    if-ge v1, v8, :cond_14

    .line 828
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    aput-boolean v8, v4, v1

    .line 827
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 822
    .end local v1    # "i":I
    .end local v4    # "newArray":[Z
    :cond_13
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationNn:[Z

    array-length v1, v8

    goto :goto_d

    .line 830
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Z
    :cond_14
    iput-object v4, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationNn:[Z

    .line 831
    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 835
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[Z
    .end local v5    # "startPos":I
    :sswitch_15
    const/16 v8, 0xa8

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 837
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteAlign:[Z

    if-nez v8, :cond_16

    move v1, v7

    .line 838
    .restart local v1    # "i":I
    :goto_f
    add-int v8, v1, v0

    new-array v4, v8, [Z

    .line 839
    .restart local v4    # "newArray":[Z
    if-eqz v1, :cond_15

    .line 840
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteAlign:[Z

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 842
    :cond_15
    :goto_10
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_17

    .line 843
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    aput-boolean v8, v4, v1

    .line 844
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 842
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 837
    .end local v1    # "i":I
    .end local v4    # "newArray":[Z
    :cond_16
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteAlign:[Z

    array-length v1, v8

    goto :goto_f

    .line 847
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Z
    :cond_17
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    aput-boolean v8, v4, v1

    .line 848
    iput-object v4, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteAlign:[Z

    goto/16 :goto_0

    .line 852
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Z
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 853
    .restart local v2    # "length":I
    invoke-virtual {p1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 855
    .restart local v3    # "limit":I
    const/4 v0, 0x0

    .line 856
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 857
    .restart local v5    # "startPos":I
    :goto_11
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_18

    .line 858
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    .line 859
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 861
    :cond_18
    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 862
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteAlign:[Z

    if-nez v8, :cond_1a

    move v1, v7

    .line 863
    .restart local v1    # "i":I
    :goto_12
    add-int v8, v1, v0

    new-array v4, v8, [Z

    .line 864
    .restart local v4    # "newArray":[Z
    if-eqz v1, :cond_19

    .line 865
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteAlign:[Z

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 867
    :cond_19
    :goto_13
    array-length v8, v4

    if-ge v1, v8, :cond_1b

    .line 868
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    aput-boolean v8, v4, v1

    .line 867
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 862
    .end local v1    # "i":I
    .end local v4    # "newArray":[Z
    :cond_1a
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteAlign:[Z

    array-length v1, v8

    goto :goto_12

    .line 870
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Z
    :cond_1b
    iput-object v4, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteAlign:[Z

    .line 871
    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 875
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[Z
    .end local v5    # "startPos":I
    :sswitch_17
    const/16 v8, 0xb0

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 877
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertAlign:[Z

    if-nez v8, :cond_1d

    move v1, v7

    .line 878
    .restart local v1    # "i":I
    :goto_14
    add-int v8, v1, v0

    new-array v4, v8, [Z

    .line 879
    .restart local v4    # "newArray":[Z
    if-eqz v1, :cond_1c

    .line 880
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertAlign:[Z

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 882
    :cond_1c
    :goto_15
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_1e

    .line 883
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    aput-boolean v8, v4, v1

    .line 884
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 882
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 877
    .end local v1    # "i":I
    .end local v4    # "newArray":[Z
    :cond_1d
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertAlign:[Z

    array-length v1, v8

    goto :goto_14

    .line 887
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Z
    :cond_1e
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    aput-boolean v8, v4, v1

    .line 888
    iput-object v4, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertAlign:[Z

    goto/16 :goto_0

    .line 892
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Z
    :sswitch_18
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 893
    .restart local v2    # "length":I
    invoke-virtual {p1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 895
    .restart local v3    # "limit":I
    const/4 v0, 0x0

    .line 896
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 897
    .restart local v5    # "startPos":I
    :goto_16
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_1f

    .line 898
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    .line 899
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 901
    :cond_1f
    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 902
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertAlign:[Z

    if-nez v8, :cond_21

    move v1, v7

    .line 903
    .restart local v1    # "i":I
    :goto_17
    add-int v8, v1, v0

    new-array v4, v8, [Z

    .line 904
    .restart local v4    # "newArray":[Z
    if-eqz v1, :cond_20

    .line 905
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertAlign:[Z

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 907
    :cond_20
    :goto_18
    array-length v8, v4

    if-ge v1, v8, :cond_22

    .line 908
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    aput-boolean v8, v4, v1

    .line 907
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 902
    .end local v1    # "i":I
    .end local v4    # "newArray":[Z
    :cond_21
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertAlign:[Z

    array-length v1, v8

    goto :goto_17

    .line 910
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Z
    :cond_22
    iput-object v4, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertAlign:[Z

    .line 911
    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 915
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[Z
    .end local v5    # "startPos":I
    :sswitch_19
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v8

    iput v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->stability_:F

    .line 916
    iget v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    or-int/lit16 v8, v8, 0x4000

    iput v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    goto/16 :goto_0

    .line 920
    :sswitch_1a
    const/16 v8, 0xc0

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 922
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteNn:[Z

    if-nez v8, :cond_24

    move v1, v7

    .line 923
    .restart local v1    # "i":I
    :goto_19
    add-int v8, v1, v0

    new-array v4, v8, [Z

    .line 924
    .restart local v4    # "newArray":[Z
    if-eqz v1, :cond_23

    .line 925
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteNn:[Z

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 927
    :cond_23
    :goto_1a
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_25

    .line 928
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    aput-boolean v8, v4, v1

    .line 929
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 927
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 922
    .end local v1    # "i":I
    .end local v4    # "newArray":[Z
    :cond_24
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteNn:[Z

    array-length v1, v8

    goto :goto_19

    .line 932
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Z
    :cond_25
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    aput-boolean v8, v4, v1

    .line 933
    iput-object v4, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteNn:[Z

    goto/16 :goto_0

    .line 937
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Z
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 938
    .restart local v2    # "length":I
    invoke-virtual {p1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 940
    .restart local v3    # "limit":I
    const/4 v0, 0x0

    .line 941
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 942
    .restart local v5    # "startPos":I
    :goto_1b
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_26

    .line 943
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    .line 944
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 946
    :cond_26
    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 947
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteNn:[Z

    if-nez v8, :cond_28

    move v1, v7

    .line 948
    .restart local v1    # "i":I
    :goto_1c
    add-int v8, v1, v0

    new-array v4, v8, [Z

    .line 949
    .restart local v4    # "newArray":[Z
    if-eqz v1, :cond_27

    .line 950
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteNn:[Z

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 952
    :cond_27
    :goto_1d
    array-length v8, v4

    if-ge v1, v8, :cond_29

    .line 953
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    aput-boolean v8, v4, v1

    .line 952
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 947
    .end local v1    # "i":I
    .end local v4    # "newArray":[Z
    :cond_28
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteNn:[Z

    array-length v1, v8

    goto :goto_1c

    .line 955
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Z
    :cond_29
    iput-object v4, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteNn:[Z

    .line 956
    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 960
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[Z
    .end local v5    # "startPos":I
    :sswitch_1c
    const/16 v8, 0xc8

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 962
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertNn:[Z

    if-nez v8, :cond_2b

    move v1, v7

    .line 963
    .restart local v1    # "i":I
    :goto_1e
    add-int v8, v1, v0

    new-array v4, v8, [Z

    .line 964
    .restart local v4    # "newArray":[Z
    if-eqz v1, :cond_2a

    .line 965
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertNn:[Z

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 967
    :cond_2a
    :goto_1f
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_2c

    .line 968
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    aput-boolean v8, v4, v1

    .line 969
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 967
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 962
    .end local v1    # "i":I
    .end local v4    # "newArray":[Z
    :cond_2b
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertNn:[Z

    array-length v1, v8

    goto :goto_1e

    .line 972
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Z
    :cond_2c
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    aput-boolean v8, v4, v1

    .line 973
    iput-object v4, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertNn:[Z

    goto/16 :goto_0

    .line 977
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Z
    :sswitch_1d
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 978
    .restart local v2    # "length":I
    invoke-virtual {p1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 980
    .restart local v3    # "limit":I
    const/4 v0, 0x0

    .line 981
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 982
    .restart local v5    # "startPos":I
    :goto_20
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_2d

    .line 983
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    .line 984
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 986
    :cond_2d
    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 987
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertNn:[Z

    if-nez v8, :cond_2f

    move v1, v7

    .line 988
    .restart local v1    # "i":I
    :goto_21
    add-int v8, v1, v0

    new-array v4, v8, [Z

    .line 989
    .restart local v4    # "newArray":[Z
    if-eqz v1, :cond_2e

    .line 990
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertNn:[Z

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 992
    :cond_2e
    :goto_22
    array-length v8, v4

    if-ge v1, v8, :cond_30

    .line 993
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    aput-boolean v8, v4, v1

    .line 992
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 987
    .end local v1    # "i":I
    .end local v4    # "newArray":[Z
    :cond_2f
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertNn:[Z

    array-length v1, v8

    goto :goto_21

    .line 995
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Z
    :cond_30
    iput-object v4, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertNn:[Z

    .line 996
    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 1000
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[Z
    .end local v5    # "startPos":I
    :sswitch_1e
    const/16 v8, 0xd0

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1002
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlign:[Z

    if-nez v8, :cond_32

    move v1, v7

    .line 1003
    .restart local v1    # "i":I
    :goto_23
    add-int v8, v1, v0

    new-array v4, v8, [Z

    .line 1004
    .restart local v4    # "newArray":[Z
    if-eqz v1, :cond_31

    .line 1005
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlign:[Z

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1007
    :cond_31
    :goto_24
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_33

    .line 1008
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    aput-boolean v8, v4, v1

    .line 1009
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1007
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 1002
    .end local v1    # "i":I
    .end local v4    # "newArray":[Z
    :cond_32
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlign:[Z

    array-length v1, v8

    goto :goto_23

    .line 1012
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Z
    :cond_33
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    aput-boolean v8, v4, v1

    .line 1013
    iput-object v4, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlign:[Z

    goto/16 :goto_0

    .line 1017
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Z
    :sswitch_1f
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 1018
    .restart local v2    # "length":I
    invoke-virtual {p1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 1020
    .restart local v3    # "limit":I
    const/4 v0, 0x0

    .line 1021
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 1022
    .restart local v5    # "startPos":I
    :goto_25
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_34

    .line 1023
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    .line 1024
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 1026
    :cond_34
    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 1027
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlign:[Z

    if-nez v8, :cond_36

    move v1, v7

    .line 1028
    .restart local v1    # "i":I
    :goto_26
    add-int v8, v1, v0

    new-array v4, v8, [Z

    .line 1029
    .restart local v4    # "newArray":[Z
    if-eqz v1, :cond_35

    .line 1030
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlign:[Z

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1032
    :cond_35
    :goto_27
    array-length v8, v4

    if-ge v1, v8, :cond_37

    .line 1033
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    aput-boolean v8, v4, v1

    .line 1032
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 1027
    .end local v1    # "i":I
    .end local v4    # "newArray":[Z
    :cond_36
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlign:[Z

    array-length v1, v8

    goto :goto_26

    .line 1035
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Z
    :cond_37
    iput-object v4, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlign:[Z

    .line 1036
    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 1040
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[Z
    .end local v5    # "startPos":I
    :sswitch_20
    const/16 v8, 0xd8

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1042
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignDelete:[Z

    if-nez v8, :cond_39

    move v1, v7

    .line 1043
    .restart local v1    # "i":I
    :goto_28
    add-int v8, v1, v0

    new-array v4, v8, [Z

    .line 1044
    .restart local v4    # "newArray":[Z
    if-eqz v1, :cond_38

    .line 1045
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignDelete:[Z

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1047
    :cond_38
    :goto_29
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_3a

    .line 1048
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    aput-boolean v8, v4, v1

    .line 1049
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1047
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 1042
    .end local v1    # "i":I
    .end local v4    # "newArray":[Z
    :cond_39
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignDelete:[Z

    array-length v1, v8

    goto :goto_28

    .line 1052
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Z
    :cond_3a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    aput-boolean v8, v4, v1

    .line 1053
    iput-object v4, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignDelete:[Z

    goto/16 :goto_0

    .line 1057
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Z
    :sswitch_21
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 1058
    .restart local v2    # "length":I
    invoke-virtual {p1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 1060
    .restart local v3    # "limit":I
    const/4 v0, 0x0

    .line 1061
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 1062
    .restart local v5    # "startPos":I
    :goto_2a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_3b

    .line 1063
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    .line 1064
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 1066
    :cond_3b
    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 1067
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignDelete:[Z

    if-nez v8, :cond_3d

    move v1, v7

    .line 1068
    .restart local v1    # "i":I
    :goto_2b
    add-int v8, v1, v0

    new-array v4, v8, [Z

    .line 1069
    .restart local v4    # "newArray":[Z
    if-eqz v1, :cond_3c

    .line 1070
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignDelete:[Z

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1072
    :cond_3c
    :goto_2c
    array-length v8, v4

    if-ge v1, v8, :cond_3e

    .line 1073
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    aput-boolean v8, v4, v1

    .line 1072
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 1067
    .end local v1    # "i":I
    .end local v4    # "newArray":[Z
    :cond_3d
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignDelete:[Z

    array-length v1, v8

    goto :goto_2b

    .line 1075
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Z
    :cond_3e
    iput-object v4, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignDelete:[Z

    .line 1076
    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 1080
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[Z
    .end local v5    # "startPos":I
    :sswitch_22
    const/16 v8, 0xe0

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1082
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignInsert:[Z

    if-nez v8, :cond_40

    move v1, v7

    .line 1083
    .restart local v1    # "i":I
    :goto_2d
    add-int v8, v1, v0

    new-array v4, v8, [Z

    .line 1084
    .restart local v4    # "newArray":[Z
    if-eqz v1, :cond_3f

    .line 1085
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignInsert:[Z

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1087
    :cond_3f
    :goto_2e
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_41

    .line 1088
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    aput-boolean v8, v4, v1

    .line 1089
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1087
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 1082
    .end local v1    # "i":I
    .end local v4    # "newArray":[Z
    :cond_40
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignInsert:[Z

    array-length v1, v8

    goto :goto_2d

    .line 1092
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Z
    :cond_41
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    aput-boolean v8, v4, v1

    .line 1093
    iput-object v4, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignInsert:[Z

    goto/16 :goto_0

    .line 1097
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Z
    :sswitch_23
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 1098
    .restart local v2    # "length":I
    invoke-virtual {p1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 1100
    .restart local v3    # "limit":I
    const/4 v0, 0x0

    .line 1101
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 1102
    .restart local v5    # "startPos":I
    :goto_2f
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_42

    .line 1103
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    .line 1104
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 1106
    :cond_42
    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 1107
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignInsert:[Z

    if-nez v8, :cond_44

    move v1, v7

    .line 1108
    .restart local v1    # "i":I
    :goto_30
    add-int v8, v1, v0

    new-array v4, v8, [Z

    .line 1109
    .restart local v4    # "newArray":[Z
    if-eqz v1, :cond_43

    .line 1110
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignInsert:[Z

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1112
    :cond_43
    :goto_31
    array-length v8, v4

    if-ge v1, v8, :cond_45

    .line 1113
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    aput-boolean v8, v4, v1

    .line 1112
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 1107
    .end local v1    # "i":I
    .end local v4    # "newArray":[Z
    :cond_44
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignInsert:[Z

    array-length v1, v8

    goto :goto_30

    .line 1115
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Z
    :cond_45
    iput-object v4, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignInsert:[Z

    .line 1116
    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 1120
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[Z
    .end local v5    # "startPos":I
    :sswitch_24
    const/16 v8, 0xe8

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1122
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNn:[Z

    if-nez v8, :cond_47

    move v1, v7

    .line 1123
    .restart local v1    # "i":I
    :goto_32
    add-int v8, v1, v0

    new-array v4, v8, [Z

    .line 1124
    .restart local v4    # "newArray":[Z
    if-eqz v1, :cond_46

    .line 1125
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNn:[Z

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1127
    :cond_46
    :goto_33
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_48

    .line 1128
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    aput-boolean v8, v4, v1

    .line 1129
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1127
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 1122
    .end local v1    # "i":I
    .end local v4    # "newArray":[Z
    :cond_47
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNn:[Z

    array-length v1, v8

    goto :goto_32

    .line 1132
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Z
    :cond_48
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    aput-boolean v8, v4, v1

    .line 1133
    iput-object v4, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNn:[Z

    goto/16 :goto_0

    .line 1137
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Z
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 1138
    .restart local v2    # "length":I
    invoke-virtual {p1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 1140
    .restart local v3    # "limit":I
    const/4 v0, 0x0

    .line 1141
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 1142
    .restart local v5    # "startPos":I
    :goto_34
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_49

    .line 1143
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    .line 1144
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 1146
    :cond_49
    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 1147
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNn:[Z

    if-nez v8, :cond_4b

    move v1, v7

    .line 1148
    .restart local v1    # "i":I
    :goto_35
    add-int v8, v1, v0

    new-array v4, v8, [Z

    .line 1149
    .restart local v4    # "newArray":[Z
    if-eqz v1, :cond_4a

    .line 1150
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNn:[Z

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1152
    :cond_4a
    :goto_36
    array-length v8, v4

    if-ge v1, v8, :cond_4c

    .line 1153
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    aput-boolean v8, v4, v1

    .line 1152
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 1147
    .end local v1    # "i":I
    .end local v4    # "newArray":[Z
    :cond_4b
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNn:[Z

    array-length v1, v8

    goto :goto_35

    .line 1155
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Z
    :cond_4c
    iput-object v4, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNn:[Z

    .line 1156
    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 1160
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[Z
    .end local v5    # "startPos":I
    :sswitch_26
    const/16 v8, 0xf0

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1162
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnDelete:[Z

    if-nez v8, :cond_4e

    move v1, v7

    .line 1163
    .restart local v1    # "i":I
    :goto_37
    add-int v8, v1, v0

    new-array v4, v8, [Z

    .line 1164
    .restart local v4    # "newArray":[Z
    if-eqz v1, :cond_4d

    .line 1165
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnDelete:[Z

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1167
    :cond_4d
    :goto_38
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_4f

    .line 1168
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    aput-boolean v8, v4, v1

    .line 1169
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1167
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 1162
    .end local v1    # "i":I
    .end local v4    # "newArray":[Z
    :cond_4e
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnDelete:[Z

    array-length v1, v8

    goto :goto_37

    .line 1172
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Z
    :cond_4f
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    aput-boolean v8, v4, v1

    .line 1173
    iput-object v4, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnDelete:[Z

    goto/16 :goto_0

    .line 1177
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Z
    :sswitch_27
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 1178
    .restart local v2    # "length":I
    invoke-virtual {p1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 1180
    .restart local v3    # "limit":I
    const/4 v0, 0x0

    .line 1181
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 1182
    .restart local v5    # "startPos":I
    :goto_39
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_50

    .line 1183
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    .line 1184
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 1186
    :cond_50
    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 1187
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnDelete:[Z

    if-nez v8, :cond_52

    move v1, v7

    .line 1188
    .restart local v1    # "i":I
    :goto_3a
    add-int v8, v1, v0

    new-array v4, v8, [Z

    .line 1189
    .restart local v4    # "newArray":[Z
    if-eqz v1, :cond_51

    .line 1190
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnDelete:[Z

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1192
    :cond_51
    :goto_3b
    array-length v8, v4

    if-ge v1, v8, :cond_53

    .line 1193
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    aput-boolean v8, v4, v1

    .line 1192
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 1187
    .end local v1    # "i":I
    .end local v4    # "newArray":[Z
    :cond_52
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnDelete:[Z

    array-length v1, v8

    goto :goto_3a

    .line 1195
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Z
    :cond_53
    iput-object v4, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnDelete:[Z

    .line 1196
    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 1200
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[Z
    .end local v5    # "startPos":I
    :sswitch_28
    const/16 v8, 0xf8

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1202
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnInsert:[Z

    if-nez v8, :cond_55

    move v1, v7

    .line 1203
    .restart local v1    # "i":I
    :goto_3c
    add-int v8, v1, v0

    new-array v4, v8, [Z

    .line 1204
    .restart local v4    # "newArray":[Z
    if-eqz v1, :cond_54

    .line 1205
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnInsert:[Z

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1207
    :cond_54
    :goto_3d
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_56

    .line 1208
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    aput-boolean v8, v4, v1

    .line 1209
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1207
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 1202
    .end local v1    # "i":I
    .end local v4    # "newArray":[Z
    :cond_55
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnInsert:[Z

    array-length v1, v8

    goto :goto_3c

    .line 1212
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Z
    :cond_56
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    aput-boolean v8, v4, v1

    .line 1213
    iput-object v4, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnInsert:[Z

    goto/16 :goto_0

    .line 1217
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Z
    :sswitch_29
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 1218
    .restart local v2    # "length":I
    invoke-virtual {p1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 1220
    .restart local v3    # "limit":I
    const/4 v0, 0x0

    .line 1221
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 1222
    .restart local v5    # "startPos":I
    :goto_3e
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_57

    .line 1223
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    .line 1224
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    .line 1226
    :cond_57
    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 1227
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnInsert:[Z

    if-nez v8, :cond_59

    move v1, v7

    .line 1228
    .restart local v1    # "i":I
    :goto_3f
    add-int v8, v1, v0

    new-array v4, v8, [Z

    .line 1229
    .restart local v4    # "newArray":[Z
    if-eqz v1, :cond_58

    .line 1230
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnInsert:[Z

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1232
    :cond_58
    :goto_40
    array-length v8, v4

    if-ge v1, v8, :cond_5a

    .line 1233
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    aput-boolean v8, v4, v1

    .line 1232
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 1227
    .end local v1    # "i":I
    .end local v4    # "newArray":[Z
    :cond_59
    iget-object v8, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnInsert:[Z

    array-length v1, v8

    goto :goto_3f

    .line 1235
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Z
    :cond_5a
    iput-object v4, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnInsert:[Z

    .line 1236
    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 642
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
        0x1a -> :sswitch_4
        0x1d -> :sswitch_3
        0x25 -> :sswitch_5
        0x45 -> :sswitch_6
        0x4d -> :sswitch_7
        0x55 -> :sswitch_8
        0x5d -> :sswitch_9
        0x65 -> :sswitch_a
        0x6d -> :sswitch_b
        0x75 -> :sswitch_c
        0x7d -> :sswitch_d
        0x85 -> :sswitch_e
        0x8d -> :sswitch_f
        0x95 -> :sswitch_10
        0x98 -> :sswitch_11
        0x9a -> :sswitch_12
        0xa0 -> :sswitch_13
        0xa2 -> :sswitch_14
        0xa8 -> :sswitch_15
        0xaa -> :sswitch_16
        0xb0 -> :sswitch_17
        0xb2 -> :sswitch_18
        0xbd -> :sswitch_19
        0xc0 -> :sswitch_1a
        0xc2 -> :sswitch_1b
        0xc8 -> :sswitch_1c
        0xca -> :sswitch_1d
        0xd0 -> :sswitch_1e
        0xd2 -> :sswitch_1f
        0xd8 -> :sswitch_20
        0xda -> :sswitch_21
        0xe0 -> :sswitch_22
        0xe2 -> :sswitch_23
        0xe8 -> :sswitch_24
        0xea -> :sswitch_25
        0xf0 -> :sswitch_26
        0xf2 -> :sswitch_27
        0xf8 -> :sswitch_28
        0xfa -> :sswitch_29
    .end sparse-switch
.end method

.method public setAmScore(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 264
    iput p1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->amScore_:F

    .line 265
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    .line 266
    return-object p0
.end method

.method public setAscoreBest(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 207
    iput p1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreBest_:F

    .line 208
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    .line 209
    return-object p0
.end method

.method public setAscoreMean(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 131
    iput p1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreMean_:F

    .line 132
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    .line 133
    return-object p0
.end method

.method public setAscoreMeandiff(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 188
    iput p1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreMeandiff_:F

    .line 189
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    .line 190
    return-object p0
.end method

.method public setAscoreStddev(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 150
    iput p1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreStddev_:F

    .line 151
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    .line 152
    return-object p0
.end method

.method public setAscoreWorst(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 169
    iput p1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreWorst_:F

    .line 170
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    .line 171
    return-object p0
.end method

.method public setDurScore(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 245
    iput p1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->durScore_:F

    .line 246
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    .line 247
    return-object p0
.end method

.method public setLmScore(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 226
    iput p1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->lmScore_:F

    .line 227
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    .line 228
    return-object p0
.end method

.method public setNormalizedWordDuration(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 112
    iput p1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->normalizedWordDuration_:F

    .line 113
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    .line 114
    return-object p0
.end method

.method public setNumPhones(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 93
    iput p1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->numPhones_:F

    .line 94
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    .line 95
    return-object p0
.end method

.method public setPhoneDurationScore(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 33
    iput p1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phoneDurationScore_:F

    .line 34
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    .line 35
    return-object p0
.end method

.method public setSpeakerRate(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 52
    iput p1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->speakerRate_:F

    .line 53
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    .line 54
    return-object p0
.end method

.method public setStability(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 302
    iput p1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->stability_:F

    .line 303
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    .line 304
    return-object p0
.end method

.method public setStartFrame(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 283
    iput p1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->startFrame_:F

    .line 284
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    .line 285
    return-object p0
.end method

.method public setWordDurationFrames(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 74
    iput p1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->wordDurationFrames_:F

    .line 75
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    .line 76
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
    .line 392
    iget v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 393
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phoneDurationScore_:F

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 395
    :cond_0
    iget v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 396
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->speakerRate_:F

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 398
    :cond_1
    iget-object v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->frameDistance:[F

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->frameDistance:[F

    array-length v1, v1

    if-lez v1, :cond_2

    .line 399
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->frameDistance:[F

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 400
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->frameDistance:[F

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 399
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 403
    .end local v0    # "i":I
    :cond_2
    iget v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 404
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->wordDurationFrames_:F

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 406
    :cond_3
    iget v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    .line 407
    const/16 v1, 0x8

    iget v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->numPhones_:F

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 409
    :cond_4
    iget v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_5

    .line 410
    const/16 v1, 0x9

    iget v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->normalizedWordDuration_:F

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 412
    :cond_5
    iget v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_6

    .line 413
    const/16 v1, 0xa

    iget v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreMean_:F

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 415
    :cond_6
    iget v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_7

    .line 416
    const/16 v1, 0xb

    iget v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreStddev_:F

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 418
    :cond_7
    iget v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_8

    .line 419
    const/16 v1, 0xc

    iget v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreWorst_:F

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 421
    :cond_8
    iget v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_9

    .line 422
    const/16 v1, 0xd

    iget v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreMeandiff_:F

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 424
    :cond_9
    iget v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_a

    .line 425
    const/16 v1, 0xe

    iget v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreBest_:F

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 427
    :cond_a
    iget v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_b

    .line 428
    const/16 v1, 0xf

    iget v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->lmScore_:F

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 430
    :cond_b
    iget v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_c

    .line 431
    const/16 v1, 0x10

    iget v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->durScore_:F

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 433
    :cond_c
    iget v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_d

    .line 434
    const/16 v1, 0x11

    iget v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->amScore_:F

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 436
    :cond_d
    iget v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_e

    .line 437
    const/16 v1, 0x12

    iget v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->startFrame_:F

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 439
    :cond_e
    iget-object v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationAlign:[Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationAlign:[Z

    array-length v1, v1

    if-lez v1, :cond_f

    .line 440
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationAlign:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_f

    .line 441
    const/16 v1, 0x13

    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationAlign:[Z

    aget-boolean v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 440
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 444
    .end local v0    # "i":I
    :cond_f
    iget-object v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationNn:[Z

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationNn:[Z

    array-length v1, v1

    if-lez v1, :cond_10

    .line 445
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationNn:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_10

    .line 446
    const/16 v1, 0x14

    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationNn:[Z

    aget-boolean v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 445
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 449
    .end local v0    # "i":I
    :cond_10
    iget-object v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteAlign:[Z

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteAlign:[Z

    array-length v1, v1

    if-lez v1, :cond_11

    .line 450
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteAlign:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_11

    .line 451
    const/16 v1, 0x15

    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteAlign:[Z

    aget-boolean v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 450
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 454
    .end local v0    # "i":I
    :cond_11
    iget-object v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertAlign:[Z

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertAlign:[Z

    array-length v1, v1

    if-lez v1, :cond_12

    .line 455
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    iget-object v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertAlign:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_12

    .line 456
    const/16 v1, 0x16

    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertAlign:[Z

    aget-boolean v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 455
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 459
    .end local v0    # "i":I
    :cond_12
    iget v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->bitField0_:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_13

    .line 460
    const/16 v1, 0x17

    iget v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->stability_:F

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 462
    :cond_13
    iget-object v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteNn:[Z

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteNn:[Z

    array-length v1, v1

    if-lez v1, :cond_14

    .line 463
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    iget-object v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteNn:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 464
    const/16 v1, 0x18

    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteNn:[Z

    aget-boolean v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 463
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 467
    .end local v0    # "i":I
    :cond_14
    iget-object v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertNn:[Z

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertNn:[Z

    array-length v1, v1

    if-lez v1, :cond_15

    .line 468
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_6
    iget-object v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertNn:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_15

    .line 469
    const/16 v1, 0x19

    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertNn:[Z

    aget-boolean v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 468
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 472
    .end local v0    # "i":I
    :cond_15
    iget-object v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlign:[Z

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlign:[Z

    array-length v1, v1

    if-lez v1, :cond_16

    .line 473
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_7
    iget-object v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlign:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_16

    .line 474
    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlign:[Z

    aget-boolean v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 473
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 477
    .end local v0    # "i":I
    :cond_16
    iget-object v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignDelete:[Z

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignDelete:[Z

    array-length v1, v1

    if-lez v1, :cond_17

    .line 478
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_8
    iget-object v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignDelete:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_17

    .line 479
    const/16 v1, 0x1b

    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignDelete:[Z

    aget-boolean v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 478
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 482
    .end local v0    # "i":I
    :cond_17
    iget-object v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignInsert:[Z

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignInsert:[Z

    array-length v1, v1

    if-lez v1, :cond_18

    .line 483
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_9
    iget-object v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignInsert:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_18

    .line 484
    const/16 v1, 0x1c

    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignInsert:[Z

    aget-boolean v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 483
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 487
    .end local v0    # "i":I
    :cond_18
    iget-object v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNn:[Z

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNn:[Z

    array-length v1, v1

    if-lez v1, :cond_19

    .line 488
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_a
    iget-object v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNn:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_19

    .line 489
    const/16 v1, 0x1d

    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNn:[Z

    aget-boolean v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 488
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 492
    .end local v0    # "i":I
    :cond_19
    iget-object v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnDelete:[Z

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnDelete:[Z

    array-length v1, v1

    if-lez v1, :cond_1a

    .line 493
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_b
    iget-object v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnDelete:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_1a

    .line 494
    const/16 v1, 0x1e

    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnDelete:[Z

    aget-boolean v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 493
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 497
    .end local v0    # "i":I
    :cond_1a
    iget-object v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnInsert:[Z

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnInsert:[Z

    array-length v1, v1

    if-lez v1, :cond_1b

    .line 498
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_c
    iget-object v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnInsert:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_1b

    .line 499
    const/16 v1, 0x1f

    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnInsert:[Z

    aget-boolean v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 498
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 502
    .end local v0    # "i":I
    :cond_1b
    return-void
.end method
