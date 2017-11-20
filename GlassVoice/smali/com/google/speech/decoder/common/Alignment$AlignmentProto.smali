.class public final Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "Alignment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/decoder/common/Alignment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlignmentProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;
    }
.end annotation


# static fields
.field public static final LABEL_ALIGN_TYPE_UNDEFINED:I = 0x0

.field public static final LABEL_ALIGN_TYPE_WORD_FINAL:I = 0x2

.field public static final LABEL_ALIGN_TYPE_WORD_INITIAL:I = 0x1

.field private static volatile _emptyArray:[Lcom/google/speech/decoder/common/Alignment$AlignmentProto;


# instance fields
.field public amCost:F

.field private bitField0_:I

.field public frameDuration:F

.field private itableChecksum_:Ljava/lang/String;

.field private itableFilename_:Ljava/lang/String;

.field public lmCost:F

.field private otableChecksum_:Ljava/lang/String;

.field private otableFilename_:Ljava/lang/String;

.field public segment:[Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

.field public totalCost:F

.field private wordLabelPosition_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 393
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->clear()Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    .line 394
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    .locals 2

    .prologue
    .line 257
    sget-object v0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->_emptyArray:[Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    if-nez v0, :cond_1

    .line 258
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 260
    :try_start_0
    sget-object v0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->_emptyArray:[Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    if-nez v0, :cond_0

    .line 261
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    sput-object v0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->_emptyArray:[Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    .line 263
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    :cond_1
    sget-object v0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->_emptyArray:[Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    return-object v0

    .line 263
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 576
    new-instance v0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    invoke-direct {v0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 570
    new-instance v0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    invoke-direct {v0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 397
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->bitField0_:I

    .line 398
    iput v1, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->frameDuration:F

    .line 399
    iput v1, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->totalCost:F

    .line 400
    iput v1, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->amCost:F

    .line 401
    iput v1, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->lmCost:F

    .line 402
    invoke-static {}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->emptyArray()[Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->segment:[Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    .line 403
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->itableChecksum_:Ljava/lang/String;

    .line 404
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->itableFilename_:Ljava/lang/String;

    .line 405
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->otableChecksum_:Ljava/lang/String;

    .line 406
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->otableFilename_:Ljava/lang/String;

    .line 407
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->wordLabelPosition_:I

    .line 408
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->cachedSize:I

    .line 409
    return-object p0
.end method

.method public clearItableChecksum()Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    .locals 1

    .prologue
    .line 302
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->itableChecksum_:Ljava/lang/String;

    .line 303
    iget v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->bitField0_:I

    .line 304
    return-object p0
.end method

.method public clearItableFilename()Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    .locals 1

    .prologue
    .line 324
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->itableFilename_:Ljava/lang/String;

    .line 325
    iget v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->bitField0_:I

    .line 326
    return-object p0
.end method

.method public clearOtableChecksum()Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    .locals 1

    .prologue
    .line 346
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->otableChecksum_:Ljava/lang/String;

    .line 347
    iget v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->bitField0_:I

    .line 348
    return-object p0
.end method

.method public clearOtableFilename()Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    .locals 1

    .prologue
    .line 368
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->otableFilename_:Ljava/lang/String;

    .line 369
    iget v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->bitField0_:I

    .line 370
    return-object p0
.end method

.method public clearWordLabelPosition()Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    .locals 1

    .prologue
    .line 387
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->wordLabelPosition_:I

    .line 388
    iget v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->bitField0_:I

    .line 389
    return-object p0
.end method

.method public getItableChecksum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->itableChecksum_:Ljava/lang/String;

    return-object v0
.end method

.method public getItableFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->itableFilename_:Ljava/lang/String;

    return-object v0
.end method

.method public getOtableChecksum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->otableChecksum_:Ljava/lang/String;

    return-object v0
.end method

.method public getOtableFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->otableFilename_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 446
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 447
    .local v2, "size":I
    const/4 v3, 0x1

    iget v4, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->frameDuration:F

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v3

    add-int/2addr v2, v3

    .line 449
    const/4 v3, 0x2

    iget v4, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->totalCost:F

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v3

    add-int/2addr v2, v3

    .line 451
    const/4 v3, 0x3

    iget v4, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->amCost:F

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v3

    add-int/2addr v2, v3

    .line 453
    const/4 v3, 0x4

    iget v4, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->lmCost:F

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v3

    add-int/2addr v2, v3

    .line 455
    iget-object v3, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->segment:[Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->segment:[Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 456
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->segment:[Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 457
    iget-object v3, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->segment:[Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    aget-object v0, v3, v1

    .line 458
    .local v0, "element":Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;
    if-eqz v0, :cond_0

    .line 459
    const/4 v3, 0x5

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeGroupSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 456
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 464
    .end local v0    # "element":Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;
    .end local v1    # "i":I
    :cond_1
    iget v3, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 465
    const/16 v3, 0x11

    iget-object v4, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->itableChecksum_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 468
    :cond_2
    iget v3, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    .line 469
    const/16 v3, 0x12

    iget-object v4, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->itableFilename_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 472
    :cond_3
    iget v3, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_4

    .line 473
    const/16 v3, 0x13

    iget-object v4, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->otableChecksum_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 476
    :cond_4
    iget v3, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_5

    .line 477
    const/16 v3, 0x14

    iget-object v4, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->otableFilename_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 480
    :cond_5
    iget v3, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_6

    .line 481
    const/16 v3, 0x15

    iget v4, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->wordLabelPosition_:I

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 484
    :cond_6
    iput v2, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->cachedSize:I

    .line 485
    return v2
.end method

.method public getWordLabelPosition()I
    .locals 1

    .prologue
    .line 376
    iget v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->wordLabelPosition_:I

    return v0
.end method

.method public hasItableChecksum()Z
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasItableFilename()Z
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOtableChecksum()Z
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOtableFilename()Z
    .locals 1

    .prologue
    .line 365
    iget v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWordLabelPosition()Z
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->bitField0_:I

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
    invoke-virtual {p0, p1}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    .locals 7
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x5

    const/4 v4, 0x0

    .line 493
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 494
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 498
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 499
    :sswitch_0
    return-object p0

    .line 504
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v5

    iput v5, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->frameDuration:F

    goto :goto_0

    .line 508
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v5

    iput v5, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->totalCost:F

    goto :goto_0

    .line 512
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v5

    iput v5, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->amCost:F

    goto :goto_0

    .line 516
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v5

    iput v5, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->lmCost:F

    goto :goto_0

    .line 520
    :sswitch_5
    const/16 v5, 0x2b

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 522
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->segment:[Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    if-nez v5, :cond_2

    move v1, v4

    .line 523
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    .line 525
    .local v2, "newArray":[Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;
    if-eqz v1, :cond_1

    .line 526
    iget-object v5, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->segment:[Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 528
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 529
    new-instance v5, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    invoke-direct {v5}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;-><init>()V

    aput-object v5, v2, v1

    .line 530
    aget-object v5, v2, v1

    invoke-virtual {p1, v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readGroup(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;I)V

    .line 531
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 528
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 522
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;
    :cond_2
    iget-object v5, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->segment:[Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    array-length v1, v5

    goto :goto_1

    .line 534
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;
    :cond_3
    new-instance v5, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    invoke-direct {v5}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;-><init>()V

    aput-object v5, v2, v1

    .line 535
    aget-object v5, v2, v1

    invoke-virtual {p1, v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readGroup(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;I)V

    .line 536
    iput-object v2, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->segment:[Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    goto :goto_0

    .line 540
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->itableChecksum_:Ljava/lang/String;

    .line 541
    iget v5, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->bitField0_:I

    goto :goto_0

    .line 545
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->itableFilename_:Ljava/lang/String;

    .line 546
    iget v5, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->bitField0_:I

    goto/16 :goto_0

    .line 550
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->otableChecksum_:Ljava/lang/String;

    .line 551
    iget v5, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->bitField0_:I

    goto/16 :goto_0

    .line 555
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->otableFilename_:Ljava/lang/String;

    .line 556
    iget v5, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->bitField0_:I

    goto/16 :goto_0

    .line 560
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->wordLabelPosition_:I

    .line 561
    iget v5, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->bitField0_:I

    goto/16 :goto_0

    .line 494
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
        0x25 -> :sswitch_4
        0x2b -> :sswitch_5
        0x8a -> :sswitch_6
        0x92 -> :sswitch_7
        0x9a -> :sswitch_8
        0xa2 -> :sswitch_9
        0xa8 -> :sswitch_a
    .end sparse-switch
.end method

.method public setItableChecksum(Ljava/lang/String;)Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 291
    if-nez p1, :cond_0

    .line 292
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 294
    :cond_0
    iput-object p1, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->itableChecksum_:Ljava/lang/String;

    .line 295
    iget v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->bitField0_:I

    .line 296
    return-object p0
.end method

.method public setItableFilename(Ljava/lang/String;)Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 313
    if-nez p1, :cond_0

    .line 314
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 316
    :cond_0
    iput-object p1, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->itableFilename_:Ljava/lang/String;

    .line 317
    iget v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->bitField0_:I

    .line 318
    return-object p0
.end method

.method public setOtableChecksum(Ljava/lang/String;)Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 335
    if-nez p1, :cond_0

    .line 336
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 338
    :cond_0
    iput-object p1, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->otableChecksum_:Ljava/lang/String;

    .line 339
    iget v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->bitField0_:I

    .line 340
    return-object p0
.end method

.method public setOtableFilename(Ljava/lang/String;)Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 357
    if-nez p1, :cond_0

    .line 358
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 360
    :cond_0
    iput-object p1, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->otableFilename_:Ljava/lang/String;

    .line 361
    iget v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->bitField0_:I

    .line 362
    return-object p0
.end method

.method public setWordLabelPosition(I)Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 379
    iput p1, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->wordLabelPosition_:I

    .line 380
    iget v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->bitField0_:I

    .line 381
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
    .line 415
    const/4 v2, 0x1

    iget v3, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->frameDuration:F

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 416
    const/4 v2, 0x2

    iget v3, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->totalCost:F

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 417
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->amCost:F

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 418
    const/4 v2, 0x4

    iget v3, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->lmCost:F

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 419
    iget-object v2, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->segment:[Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->segment:[Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 420
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->segment:[Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 421
    iget-object v2, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->segment:[Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    aget-object v0, v2, v1

    .line 422
    .local v0, "element":Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;
    if-eqz v0, :cond_0

    .line 423
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeGroup(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 420
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 427
    .end local v0    # "element":Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;
    .end local v1    # "i":I
    :cond_1
    iget v2, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 428
    const/16 v2, 0x11

    iget-object v3, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->itableChecksum_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 430
    :cond_2
    iget v2, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    .line 431
    const/16 v2, 0x12

    iget-object v3, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->itableFilename_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 433
    :cond_3
    iget v2, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_4

    .line 434
    const/16 v2, 0x13

    iget-object v3, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->otableChecksum_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 436
    :cond_4
    iget v2, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_5

    .line 437
    const/16 v2, 0x14

    iget-object v3, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->otableFilename_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 439
    :cond_5
    iget v2, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_6

    .line 440
    const/16 v2, 0x15

    iget v3, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->wordLabelPosition_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 442
    :cond_6
    return-void
.end method
