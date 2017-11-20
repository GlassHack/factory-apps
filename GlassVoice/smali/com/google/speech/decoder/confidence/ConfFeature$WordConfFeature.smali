.class public final Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ConfFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/decoder/confidence/ConfFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WordConfFeature"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;


# instance fields
.field private amScore_:F

.field private ascoreBest_:F

.field private ascoreMean_:F

.field private ascoreMeandiff_:F

.field private ascoreStddev_:F

.field private ascoreWorst_:F

.field private bitField0_:I

.field private durScore_:F

.field private framePosterior_:F

.field private isEpsilon_:Z

.field private latPosterior_:F

.field private lmScore_:F

.field private numPhones_:F

.field private pivotPosterior_:F

.field private wordDuration_:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 294
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->clear()Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    .line 295
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->_emptyArray:[Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    if-nez v0, :cond_1

    .line 15
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->_emptyArray:[Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    if-nez v0, :cond_0

    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    sput-object v0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->_emptyArray:[Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    .line 20
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_1
    sget-object v0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->_emptyArray:[Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

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

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 524
    new-instance v0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    invoke-direct {v0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 518
    new-instance v0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    invoke-direct {v0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 298
    iput v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    .line 299
    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->latPosterior_:F

    .line 300
    iput-boolean v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->isEpsilon_:Z

    .line 301
    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->framePosterior_:F

    .line 302
    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->numPhones_:F

    .line 303
    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->wordDuration_:F

    .line 304
    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->ascoreMean_:F

    .line 305
    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->ascoreStddev_:F

    .line 306
    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->ascoreWorst_:F

    .line 307
    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->ascoreMeandiff_:F

    .line 308
    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->ascoreBest_:F

    .line 309
    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->lmScore_:F

    .line 310
    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->durScore_:F

    .line 311
    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->amScore_:F

    .line 312
    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->pivotPosterior_:F

    .line 313
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->cachedSize:I

    .line 314
    return-object p0
.end method

.method public clearAmScore()Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->amScore_:F

    .line 270
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    .line 271
    return-object p0
.end method

.method public clearAscoreBest()Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->ascoreBest_:F

    .line 213
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    .line 214
    return-object p0
.end method

.method public clearAscoreMean()Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->ascoreMean_:F

    .line 137
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    .line 138
    return-object p0
.end method

.method public clearAscoreMeandiff()Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->ascoreMeandiff_:F

    .line 194
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    .line 195
    return-object p0
.end method

.method public clearAscoreStddev()Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->ascoreStddev_:F

    .line 156
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    .line 157
    return-object p0
.end method

.method public clearAscoreWorst()Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->ascoreWorst_:F

    .line 175
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    .line 176
    return-object p0
.end method

.method public clearDurScore()Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->durScore_:F

    .line 251
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    .line 252
    return-object p0
.end method

.method public clearFramePosterior()Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->framePosterior_:F

    .line 80
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    .line 81
    return-object p0
.end method

.method public clearIsEpsilon()Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->isEpsilon_:Z

    .line 61
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    .line 62
    return-object p0
.end method

.method public clearLatPosterior()Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->latPosterior_:F

    .line 42
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    .line 43
    return-object p0
.end method

.method public clearLmScore()Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->lmScore_:F

    .line 232
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    .line 233
    return-object p0
.end method

.method public clearNumPhones()Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->numPhones_:F

    .line 99
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    .line 100
    return-object p0
.end method

.method public clearPivotPosterior()Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->pivotPosterior_:F

    .line 289
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    .line 290
    return-object p0
.end method

.method public clearWordDuration()Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->wordDuration_:F

    .line 118
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    .line 119
    return-object p0
.end method

.method public getAmScore()F
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->amScore_:F

    return v0
.end method

.method public getAscoreBest()F
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->ascoreBest_:F

    return v0
.end method

.method public getAscoreMean()F
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->ascoreMean_:F

    return v0
.end method

.method public getAscoreMeandiff()F
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->ascoreMeandiff_:F

    return v0
.end method

.method public getAscoreStddev()F
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->ascoreStddev_:F

    return v0
.end method

.method public getAscoreWorst()F
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->ascoreWorst_:F

    return v0
.end method

.method public getDurScore()F
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->durScore_:F

    return v0
.end method

.method public getFramePosterior()F
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->framePosterior_:F

    return v0
.end method

.method public getIsEpsilon()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->isEpsilon_:Z

    return v0
.end method

.method public getLatPosterior()F
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->latPosterior_:F

    return v0
.end method

.method public getLmScore()F
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->lmScore_:F

    return v0
.end method

.method public getNumPhones()F
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->numPhones_:F

    return v0
.end method

.method public getPivotPosterior()F
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->pivotPosterior_:F

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 366
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 367
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 368
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->latPosterior_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 371
    :cond_0
    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    .line 372
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->framePosterior_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 375
    :cond_1
    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_2

    .line 376
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->numPhones_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 379
    :cond_2
    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_3

    .line 380
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->wordDuration_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 383
    :cond_3
    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_4

    .line 384
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->ascoreMean_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 387
    :cond_4
    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_5

    .line 388
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->ascoreStddev_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 391
    :cond_5
    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_6

    .line 392
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->ascoreWorst_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 395
    :cond_6
    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_7

    .line 396
    const/16 v1, 0x8

    iget v2, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->ascoreMeandiff_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 399
    :cond_7
    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_8

    .line 400
    const/16 v1, 0x9

    iget v2, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->ascoreBest_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 403
    :cond_8
    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_9

    .line 404
    const/16 v1, 0xa

    iget v2, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->lmScore_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 407
    :cond_9
    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_a

    .line 408
    const/16 v1, 0xb

    iget v2, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->durScore_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 411
    :cond_a
    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_b

    .line 412
    const/16 v1, 0xc

    iget v2, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->amScore_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 415
    :cond_b
    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_c

    .line 416
    const/16 v1, 0xd

    iget v2, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->pivotPosterior_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 419
    :cond_c
    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_d

    .line 420
    const/16 v1, 0xe

    iget-boolean v2, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->isEpsilon_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 423
    :cond_d
    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->cachedSize:I

    .line 424
    return v0
.end method

.method public getWordDuration()F
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->wordDuration_:F

    return v0
.end method

.method public hasAmScore()Z
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

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
    .line 209
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

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
    .line 133
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

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
    .line 190
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

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
    .line 152
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

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
    .line 171
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

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
    .line 247
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFramePosterior()Z
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsEpsilon()Z
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLatPosterior()Z
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

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
    .line 228
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

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
    .line 95
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPivotPosterior()Z
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWordDuration()Z
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

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
    invoke-virtual {p0, p1}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 432
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 433
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 437
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 438
    :sswitch_0
    return-object p0

    .line 443
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->latPosterior_:F

    .line 444
    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    goto :goto_0

    .line 448
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->framePosterior_:F

    .line 449
    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    goto :goto_0

    .line 453
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->numPhones_:F

    .line 454
    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    goto :goto_0

    .line 458
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->wordDuration_:F

    .line 459
    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    goto :goto_0

    .line 463
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->ascoreMean_:F

    .line 464
    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    goto :goto_0

    .line 468
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->ascoreStddev_:F

    .line 469
    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    goto :goto_0

    .line 473
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->ascoreWorst_:F

    .line 474
    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    goto :goto_0

    .line 478
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->ascoreMeandiff_:F

    .line 479
    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    goto :goto_0

    .line 483
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->ascoreBest_:F

    .line 484
    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    goto/16 :goto_0

    .line 488
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->lmScore_:F

    .line 489
    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    goto/16 :goto_0

    .line 493
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->durScore_:F

    .line 494
    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    goto/16 :goto_0

    .line 498
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->amScore_:F

    .line 499
    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    goto/16 :goto_0

    .line 503
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->pivotPosterior_:F

    .line 504
    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    goto/16 :goto_0

    .line 508
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->isEpsilon_:Z

    .line 509
    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    goto/16 :goto_0

    .line 433
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
        0x25 -> :sswitch_4
        0x2d -> :sswitch_5
        0x35 -> :sswitch_6
        0x3d -> :sswitch_7
        0x45 -> :sswitch_8
        0x4d -> :sswitch_9
        0x55 -> :sswitch_a
        0x5d -> :sswitch_b
        0x65 -> :sswitch_c
        0x6d -> :sswitch_d
        0x70 -> :sswitch_e
    .end sparse-switch
.end method

.method public setAmScore(F)Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 261
    iput p1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->amScore_:F

    .line 262
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    .line 263
    return-object p0
.end method

.method public setAscoreBest(F)Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 204
    iput p1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->ascoreBest_:F

    .line 205
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    .line 206
    return-object p0
.end method

.method public setAscoreMean(F)Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 128
    iput p1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->ascoreMean_:F

    .line 129
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    .line 130
    return-object p0
.end method

.method public setAscoreMeandiff(F)Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 185
    iput p1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->ascoreMeandiff_:F

    .line 186
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    .line 187
    return-object p0
.end method

.method public setAscoreStddev(F)Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 147
    iput p1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->ascoreStddev_:F

    .line 148
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    .line 149
    return-object p0
.end method

.method public setAscoreWorst(F)Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 166
    iput p1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->ascoreWorst_:F

    .line 167
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    .line 168
    return-object p0
.end method

.method public setDurScore(F)Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 242
    iput p1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->durScore_:F

    .line 243
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    .line 244
    return-object p0
.end method

.method public setFramePosterior(F)Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 71
    iput p1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->framePosterior_:F

    .line 72
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    .line 73
    return-object p0
.end method

.method public setIsEpsilon(Z)Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->isEpsilon_:Z

    .line 53
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    .line 54
    return-object p0
.end method

.method public setLatPosterior(F)Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 33
    iput p1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->latPosterior_:F

    .line 34
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    .line 35
    return-object p0
.end method

.method public setLmScore(F)Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 223
    iput p1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->lmScore_:F

    .line 224
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    .line 225
    return-object p0
.end method

.method public setNumPhones(F)Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 90
    iput p1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->numPhones_:F

    .line 91
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    .line 92
    return-object p0
.end method

.method public setPivotPosterior(F)Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 280
    iput p1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->pivotPosterior_:F

    .line 281
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    .line 282
    return-object p0
.end method

.method public setWordDuration(F)Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 109
    iput p1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->wordDuration_:F

    .line 110
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    .line 111
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
    .line 320
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 321
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->latPosterior_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 323
    :cond_0
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 324
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->framePosterior_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 326
    :cond_1
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 327
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->numPhones_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 329
    :cond_2
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    .line 330
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->wordDuration_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 332
    :cond_3
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4

    .line 333
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->ascoreMean_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 335
    :cond_4
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_5

    .line 336
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->ascoreStddev_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 338
    :cond_5
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6

    .line 339
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->ascoreWorst_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 341
    :cond_6
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_7

    .line 342
    const/16 v0, 0x8

    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->ascoreMeandiff_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 344
    :cond_7
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    .line 345
    const/16 v0, 0x9

    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->ascoreBest_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 347
    :cond_8
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_9

    .line 348
    const/16 v0, 0xa

    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->lmScore_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 350
    :cond_9
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_a

    .line 351
    const/16 v0, 0xb

    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->durScore_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 353
    :cond_a
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_b

    .line 354
    const/16 v0, 0xc

    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->amScore_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 356
    :cond_b
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_c

    .line 357
    const/16 v0, 0xd

    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->pivotPosterior_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 359
    :cond_c
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_d

    .line 360
    const/16 v0, 0xe

    iget-boolean v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->isEpsilon_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 362
    :cond_d
    return-void
.end method
