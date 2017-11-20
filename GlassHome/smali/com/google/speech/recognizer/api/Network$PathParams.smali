.class public final Lcom/google/speech/recognizer/api/Network$PathParams;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "Network.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/recognizer/api/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PathParams"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/speech/recognizer/api/Network$PathParams;


# instance fields
.field private bitField0_:I

.field public dictionaryPron:[Ljava/lang/String;

.field private lastPhoneOptional_:Z

.field private outputLabelPos_:I

.field private phoneDecodeFilepath_:Ljava/lang/String;

.field private reference_:Ljava/lang/String;

.field private symbol_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 342
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/recognizer/api/Network$PathParams;

    sput-object v0, Lcom/google/speech/recognizer/api/Network$PathParams;->EMPTY_ARRAY:[Lcom/google/speech/recognizer/api/Network$PathParams;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 348
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->symbol_:Ljava/lang/String;

    .line 370
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->reference_:Ljava/lang/String;

    .line 392
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->dictionaryPron:[Ljava/lang/String;

    .line 395
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->phoneDecodeFilepath_:Ljava/lang/String;

    .line 417
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->lastPhoneOptional_:Z

    .line 436
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->outputLabelPos_:I

    .line 343
    return-void
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/Network$PathParams;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 609
    new-instance v0, Lcom/google/speech/recognizer/api/Network$PathParams;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/Network$PathParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/recognizer/api/Network$PathParams;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/Network$PathParams;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/recognizer/api/Network$PathParams;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 603
    new-instance v0, Lcom/google/speech/recognizer/api/Network$PathParams;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/Network$PathParams;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/api/Network$PathParams;

    return-object v0
.end method


# virtual methods
.method public clearLastPhoneOptional()Lcom/google/speech/recognizer/api/Network$PathParams;
    .locals 1

    .prologue
    .line 430
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->lastPhoneOptional_:Z

    .line 431
    iget v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->bitField0_:I

    .line 432
    return-object p0
.end method

.method public clearOutputLabelPos()Lcom/google/speech/recognizer/api/Network$PathParams;
    .locals 1

    .prologue
    .line 449
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->outputLabelPos_:I

    .line 450
    iget v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->bitField0_:I

    .line 451
    return-object p0
.end method

.method public clearPhoneDecodeFilepath()Lcom/google/speech/recognizer/api/Network$PathParams;
    .locals 1

    .prologue
    .line 411
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->phoneDecodeFilepath_:Ljava/lang/String;

    .line 412
    iget v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->bitField0_:I

    .line 413
    return-object p0
.end method

.method public clearReference()Lcom/google/speech/recognizer/api/Network$PathParams;
    .locals 1

    .prologue
    .line 386
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->reference_:Ljava/lang/String;

    .line 387
    iget v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->bitField0_:I

    .line 388
    return-object p0
.end method

.method public clearSymbol()Lcom/google/speech/recognizer/api/Network$PathParams;
    .locals 1

    .prologue
    .line 364
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->symbol_:Ljava/lang/String;

    .line 365
    iget v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->bitField0_:I

    .line 366
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 456
    if-ne p1, p0, :cond_1

    .line 459
    :cond_0
    :goto_0
    return v1

    .line 457
    :cond_1
    instance-of v3, p1, Lcom/google/speech/recognizer/api/Network$PathParams;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 458
    check-cast v0, Lcom/google/speech/recognizer/api/Network$PathParams;

    .line 459
    .local v0, "other":Lcom/google/speech/recognizer/api/Network$PathParams;
    iget-object v3, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->symbol_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/speech/recognizer/api/Network$PathParams;->symbol_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->reference_:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/speech/recognizer/api/Network$PathParams;->reference_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_2
    iget-object v3, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->dictionaryPron:[Ljava/lang/String;

    iget-object v4, v0, Lcom/google/speech/recognizer/api/Network$PathParams;->dictionaryPron:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->phoneDecodeFilepath_:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/speech/recognizer/api/Network$PathParams;->phoneDecodeFilepath_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_3
    iget-boolean v3, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->lastPhoneOptional_:Z

    iget-boolean v4, v0, Lcom/google/speech/recognizer/api/Network$PathParams;->lastPhoneOptional_:Z

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->outputLabelPos_:I

    iget v4, v0, Lcom/google/speech/recognizer/api/Network$PathParams;->outputLabelPos_:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->symbol_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/speech/recognizer/api/Network$PathParams;->symbol_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->reference_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/speech/recognizer/api/Network$PathParams;->reference_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->phoneDecodeFilepath_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/speech/recognizer/api/Network$PathParams;->phoneDecodeFilepath_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3
.end method

.method public getLastPhoneOptional()Z
    .locals 1

    .prologue
    .line 419
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->lastPhoneOptional_:Z

    return v0
.end method

.method public getOutputLabelPos()I
    .locals 1

    .prologue
    .line 438
    iget v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->outputLabelPos_:I

    return v0
.end method

.method public getPhoneDecodeFilepath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->phoneDecodeFilepath_:Ljava/lang/String;

    return-object v0
.end method

.method public getReference()Ljava/lang/String;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->reference_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    .line 509
    const/4 v5, 0x0

    .line 510
    .local v5, "size":I
    iget v6, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->bitField0_:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    .line 511
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->symbol_:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 514
    :cond_0
    iget-object v6, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->dictionaryPron:[Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->dictionaryPron:[Ljava/lang/String;

    array-length v6, v6

    if-lez v6, :cond_2

    .line 515
    const/4 v1, 0x0

    .line 516
    .local v1, "dataSize":I
    iget-object v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->dictionaryPron:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 517
    .local v2, "element":Ljava/lang/String;
    invoke-static {v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v1, v6

    .line 516
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 520
    .end local v2    # "element":Ljava/lang/String;
    :cond_1
    add-int/2addr v5, v1

    .line 521
    iget-object v6, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->dictionaryPron:[Ljava/lang/String;

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    .line 523
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "dataSize":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_2
    iget v6, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->bitField0_:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_3

    .line 524
    const/4 v6, 0x3

    iget-object v7, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->phoneDecodeFilepath_:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 527
    :cond_3
    iget v6, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->bitField0_:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_4

    .line 528
    const/4 v6, 0x4

    iget-boolean v7, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->lastPhoneOptional_:Z

    invoke-static {v6, v7}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v6

    add-int/2addr v5, v6

    .line 531
    :cond_4
    iget v6, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->bitField0_:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_5

    .line 532
    const/4 v6, 0x5

    iget v7, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->outputLabelPos_:I

    invoke-static {v6, v7}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    .line 535
    :cond_5
    iget v6, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->bitField0_:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_6

    .line 536
    const/4 v6, 0x6

    iget-object v7, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->reference_:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 539
    :cond_6
    iput v5, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->cachedSize:I

    .line 540
    return v5
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->symbol_:Ljava/lang/String;

    return-object v0
.end method

.method public hasLastPhoneOptional()Z
    .locals 1

    .prologue
    .line 427
    iget v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOutputLabelPos()Z
    .locals 1

    .prologue
    .line 446
    iget v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPhoneDecodeFilepath()Z
    .locals 1

    .prologue
    .line 408
    iget v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasReference()Z
    .locals 1

    .prologue
    .line 383
    iget v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSymbol()Z
    .locals 1

    .prologue
    .line 361
    iget v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 468
    const/16 v1, 0x11

    .line 469
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->symbol_:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    add-int/lit16 v1, v2, 0x20f

    .line 470
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->reference_:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 471
    iget-object v2, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->dictionaryPron:[Ljava/lang/String;

    if-nez v2, :cond_3

    mul-int/lit8 v1, v1, 0x1f

    .line 477
    :cond_0
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->phoneDecodeFilepath_:Ljava/lang/String;

    if-nez v4, :cond_5

    :goto_2
    add-int v1, v2, v3

    .line 478
    mul-int/lit8 v3, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->lastPhoneOptional_:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    :goto_3
    add-int v1, v3, v2

    .line 479
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->outputLabelPos_:I

    add-int v1, v2, v3

    .line 480
    return v1

    .line 469
    :cond_1
    iget-object v2, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->symbol_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 470
    :cond_2
    iget-object v2, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->reference_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 473
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v2, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->dictionaryPron:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 474
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->dictionaryPron:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_4

    move v2, v3

    :goto_5
    add-int v1, v4, v2

    .line 473
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 474
    :cond_4
    iget-object v2, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->dictionaryPron:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    .line 477
    .end local v0    # "i":I
    :cond_5
    iget-object v3, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->phoneDecodeFilepath_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2

    .line 478
    :cond_6
    const/4 v2, 0x2

    goto :goto_3
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
    .line 339
    invoke-virtual {p0, p1}, Lcom/google/speech/recognizer/api/Network$PathParams;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/Network$PathParams;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/Network$PathParams;
    .locals 7
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 548
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 549
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 553
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 554
    :sswitch_0
    return-object p0

    .line 559
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->symbol_:Ljava/lang/String;

    .line 560
    iget v4, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->bitField0_:I

    goto :goto_0

    .line 564
    :sswitch_2
    const/16 v4, 0x12

    invoke-static {p1, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 565
    .local v0, "arrayLength":I
    iget-object v4, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->dictionaryPron:[Ljava/lang/String;

    array-length v1, v4

    .line 566
    .local v1, "i":I
    add-int v4, v1, v0

    new-array v2, v4, [Ljava/lang/String;

    .line 567
    .local v2, "newArray":[Ljava/lang/String;
    iget-object v4, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->dictionaryPron:[Ljava/lang/String;

    invoke-static {v4, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 568
    iput-object v2, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->dictionaryPron:[Ljava/lang/String;

    .line 569
    :goto_1
    iget-object v4, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->dictionaryPron:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_1

    .line 570
    iget-object v4, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->dictionaryPron:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 571
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 569
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 574
    :cond_1
    iget-object v4, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->dictionaryPron:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    goto :goto_0

    .line 578
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->phoneDecodeFilepath_:Ljava/lang/String;

    .line 579
    iget v4, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->bitField0_:I

    goto :goto_0

    .line 583
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->lastPhoneOptional_:Z

    .line 584
    iget v4, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->bitField0_:I

    goto :goto_0

    .line 588
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->outputLabelPos_:I

    .line 589
    iget v4, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->bitField0_:I

    goto :goto_0

    .line 593
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->reference_:Ljava/lang/String;

    .line 594
    iget v4, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->bitField0_:I

    goto :goto_0

    .line 549
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public setLastPhoneOptional(Z)Lcom/google/speech/recognizer/api/Network$PathParams;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 422
    iput-boolean p1, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->lastPhoneOptional_:Z

    .line 423
    iget v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->bitField0_:I

    .line 424
    return-object p0
.end method

.method public setOutputLabelPos(I)Lcom/google/speech/recognizer/api/Network$PathParams;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 441
    iput p1, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->outputLabelPos_:I

    .line 442
    iget v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->bitField0_:I

    .line 443
    return-object p0
.end method

.method public setPhoneDecodeFilepath(Ljava/lang/String;)Lcom/google/speech/recognizer/api/Network$PathParams;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 400
    if-nez p1, :cond_0

    .line 401
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 403
    :cond_0
    iput-object p1, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->phoneDecodeFilepath_:Ljava/lang/String;

    .line 404
    iget v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->bitField0_:I

    .line 405
    return-object p0
.end method

.method public setReference(Ljava/lang/String;)Lcom/google/speech/recognizer/api/Network$PathParams;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 375
    if-nez p1, :cond_0

    .line 376
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 378
    :cond_0
    iput-object p1, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->reference_:Ljava/lang/String;

    .line 379
    iget v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->bitField0_:I

    .line 380
    return-object p0
.end method

.method public setSymbol(Ljava/lang/String;)Lcom/google/speech/recognizer/api/Network$PathParams;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 353
    if-nez p1, :cond_0

    .line 354
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 356
    :cond_0
    iput-object p1, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->symbol_:Ljava/lang/String;

    .line 357
    iget v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->bitField0_:I

    .line 358
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 485
    iget v4, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 486
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->symbol_:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 488
    :cond_0
    iget-object v4, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->dictionaryPron:[Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 489
    iget-object v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->dictionaryPron:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 490
    .local v1, "element":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-virtual {p1, v4, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 489
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 493
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "element":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_1
    iget v4, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    .line 494
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->phoneDecodeFilepath_:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 496
    :cond_2
    iget v4, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_3

    .line 497
    const/4 v4, 0x4

    iget-boolean v5, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->lastPhoneOptional_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 499
    :cond_3
    iget v4, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_4

    .line 500
    const/4 v4, 0x5

    iget v5, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->outputLabelPos_:I

    invoke-virtual {p1, v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 502
    :cond_4
    iget v4, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_5

    .line 503
    const/4 v4, 0x6

    iget-object v5, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->reference_:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 505
    :cond_5
    return-void
.end method
