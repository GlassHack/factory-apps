.class public final Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "CommonStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/CommonStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TranslationResult"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;


# instance fields
.field private bitField0_:I

.field private textToTranslateLanguageDisplay_:Ljava/lang/String;

.field private textToTranslateLanguage_:Ljava/lang/String;

.field private textToTranslateTransliteration_:Ljava/lang/String;

.field private textToTranslate_:Ljava/lang/String;

.field private translatedTextLanguageDisplay_:Ljava/lang/String;

.field private translatedTextLanguage_:Ljava/lang/String;

.field private translatedTextTransliteration_:Ljava/lang/String;

.field private translatedText_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 595
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 596
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->clear()Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;

    .line 597
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;
    .locals 2

    .prologue
    .line 406
    sget-object v0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->_emptyArray:[Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;

    if-nez v0, :cond_1

    .line 407
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 409
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->_emptyArray:[Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;

    if-nez v0, :cond_0

    .line 410
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;

    sput-object v0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->_emptyArray:[Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;

    .line 412
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    :cond_1
    sget-object v0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->_emptyArray:[Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;

    return-object v0

    .line 412
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 748
    new-instance v0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;

    invoke-direct {v0}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 742
    new-instance v0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;

    invoke-direct {v0}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;
    .locals 1

    .prologue
    .line 600
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    .line 601
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->textToTranslate_:Ljava/lang/String;

    .line 602
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->textToTranslateLanguage_:Ljava/lang/String;

    .line 603
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->textToTranslateLanguageDisplay_:Ljava/lang/String;

    .line 604
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->textToTranslateTransliteration_:Ljava/lang/String;

    .line 605
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->translatedText_:Ljava/lang/String;

    .line 606
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->translatedTextLanguage_:Ljava/lang/String;

    .line 607
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->translatedTextLanguageDisplay_:Ljava/lang/String;

    .line 608
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->translatedTextTransliteration_:Ljava/lang/String;

    .line 609
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->cachedSize:I

    .line 610
    return-object p0
.end method

.method public clearTextToTranslate()Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;
    .locals 1

    .prologue
    .line 436
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->textToTranslate_:Ljava/lang/String;

    .line 437
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    .line 438
    return-object p0
.end method

.method public clearTextToTranslateLanguage()Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;
    .locals 1

    .prologue
    .line 458
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->textToTranslateLanguage_:Ljava/lang/String;

    .line 459
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    .line 460
    return-object p0
.end method

.method public clearTextToTranslateLanguageDisplay()Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;
    .locals 1

    .prologue
    .line 480
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->textToTranslateLanguageDisplay_:Ljava/lang/String;

    .line 481
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    .line 482
    return-object p0
.end method

.method public clearTextToTranslateTransliteration()Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;
    .locals 1

    .prologue
    .line 502
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->textToTranslateTransliteration_:Ljava/lang/String;

    .line 503
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    .line 504
    return-object p0
.end method

.method public clearTranslatedText()Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;
    .locals 1

    .prologue
    .line 524
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->translatedText_:Ljava/lang/String;

    .line 525
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    .line 526
    return-object p0
.end method

.method public clearTranslatedTextLanguage()Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;
    .locals 1

    .prologue
    .line 546
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->translatedTextLanguage_:Ljava/lang/String;

    .line 547
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    .line 548
    return-object p0
.end method

.method public clearTranslatedTextLanguageDisplay()Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;
    .locals 1

    .prologue
    .line 568
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->translatedTextLanguageDisplay_:Ljava/lang/String;

    .line 569
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    .line 570
    return-object p0
.end method

.method public clearTranslatedTextTransliteration()Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;
    .locals 1

    .prologue
    .line 590
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->translatedTextTransliteration_:Ljava/lang/String;

    .line 591
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    .line 592
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 644
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 645
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 646
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->textToTranslate_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 649
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 650
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->textToTranslateLanguage_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 653
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_2

    .line 654
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->translatedText_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 657
    :cond_2
    iget v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_3

    .line 658
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->translatedTextLanguage_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 661
    :cond_3
    iget v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    .line 662
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->textToTranslateLanguageDisplay_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 665
    :cond_4
    iget v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_5

    .line 666
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->textToTranslateTransliteration_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 669
    :cond_5
    iget v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 670
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->translatedTextLanguageDisplay_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 673
    :cond_6
    iget v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 674
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->translatedTextTransliteration_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 677
    :cond_7
    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->cachedSize:I

    .line 678
    return v0
.end method

.method public getTextToTranslate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->textToTranslate_:Ljava/lang/String;

    return-object v0
.end method

.method public getTextToTranslateLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->textToTranslateLanguage_:Ljava/lang/String;

    return-object v0
.end method

.method public getTextToTranslateLanguageDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->textToTranslateLanguageDisplay_:Ljava/lang/String;

    return-object v0
.end method

.method public getTextToTranslateTransliteration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->textToTranslateTransliteration_:Ljava/lang/String;

    return-object v0
.end method

.method public getTranslatedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->translatedText_:Ljava/lang/String;

    return-object v0
.end method

.method public getTranslatedTextLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->translatedTextLanguage_:Ljava/lang/String;

    return-object v0
.end method

.method public getTranslatedTextLanguageDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->translatedTextLanguageDisplay_:Ljava/lang/String;

    return-object v0
.end method

.method public getTranslatedTextTransliteration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->translatedTextTransliteration_:Ljava/lang/String;

    return-object v0
.end method

.method public hasTextToTranslate()Z
    .locals 1

    .prologue
    .line 433
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTextToTranslateLanguage()Z
    .locals 1

    .prologue
    .line 455
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTextToTranslateLanguageDisplay()Z
    .locals 1

    .prologue
    .line 477
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTextToTranslateTransliteration()Z
    .locals 1

    .prologue
    .line 499
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTranslatedText()Z
    .locals 1

    .prologue
    .line 521
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTranslatedTextLanguage()Z
    .locals 1

    .prologue
    .line 543
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTranslatedTextLanguageDisplay()Z
    .locals 1

    .prologue
    .line 565
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTranslatedTextTransliteration()Z
    .locals 1

    .prologue
    .line 587
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

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
    .line 400
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 686
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 687
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 691
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 692
    :sswitch_0
    return-object p0

    .line 697
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->textToTranslate_:Ljava/lang/String;

    .line 698
    iget v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    goto :goto_0

    .line 702
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->textToTranslateLanguage_:Ljava/lang/String;

    .line 703
    iget v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    goto :goto_0

    .line 707
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->translatedText_:Ljava/lang/String;

    .line 708
    iget v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    goto :goto_0

    .line 712
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->translatedTextLanguage_:Ljava/lang/String;

    .line 713
    iget v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    goto :goto_0

    .line 717
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->textToTranslateLanguageDisplay_:Ljava/lang/String;

    .line 718
    iget v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    goto :goto_0

    .line 722
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->textToTranslateTransliteration_:Ljava/lang/String;

    .line 723
    iget v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    goto :goto_0

    .line 727
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->translatedTextLanguageDisplay_:Ljava/lang/String;

    .line 728
    iget v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    goto :goto_0

    .line 732
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->translatedTextTransliteration_:Ljava/lang/String;

    .line 733
    iget v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    goto :goto_0

    .line 687
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
    .end sparse-switch
.end method

.method public setTextToTranslate(Ljava/lang/String;)Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 425
    if-nez p1, :cond_0

    .line 426
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 428
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->textToTranslate_:Ljava/lang/String;

    .line 429
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    .line 430
    return-object p0
.end method

.method public setTextToTranslateLanguage(Ljava/lang/String;)Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 447
    if-nez p1, :cond_0

    .line 448
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 450
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->textToTranslateLanguage_:Ljava/lang/String;

    .line 451
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    .line 452
    return-object p0
.end method

.method public setTextToTranslateLanguageDisplay(Ljava/lang/String;)Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 469
    if-nez p1, :cond_0

    .line 470
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 472
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->textToTranslateLanguageDisplay_:Ljava/lang/String;

    .line 473
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    .line 474
    return-object p0
.end method

.method public setTextToTranslateTransliteration(Ljava/lang/String;)Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 491
    if-nez p1, :cond_0

    .line 492
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 494
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->textToTranslateTransliteration_:Ljava/lang/String;

    .line 495
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    .line 496
    return-object p0
.end method

.method public setTranslatedText(Ljava/lang/String;)Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 513
    if-nez p1, :cond_0

    .line 514
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 516
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->translatedText_:Ljava/lang/String;

    .line 517
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    .line 518
    return-object p0
.end method

.method public setTranslatedTextLanguage(Ljava/lang/String;)Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 535
    if-nez p1, :cond_0

    .line 536
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 538
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->translatedTextLanguage_:Ljava/lang/String;

    .line 539
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    .line 540
    return-object p0
.end method

.method public setTranslatedTextLanguageDisplay(Ljava/lang/String;)Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 557
    if-nez p1, :cond_0

    .line 558
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 560
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->translatedTextLanguageDisplay_:Ljava/lang/String;

    .line 561
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    .line 562
    return-object p0
.end method

.method public setTranslatedTextTransliteration(Ljava/lang/String;)Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 579
    if-nez p1, :cond_0

    .line 580
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 582
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->translatedTextTransliteration_:Ljava/lang/String;

    .line 583
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    .line 584
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
    .line 616
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 617
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->textToTranslate_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 619
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 620
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->textToTranslateLanguage_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 622
    :cond_1
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    .line 623
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->translatedText_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 625
    :cond_2
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_3

    .line 626
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->translatedTextLanguage_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 628
    :cond_3
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 629
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->textToTranslateLanguageDisplay_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 631
    :cond_4
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    .line 632
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->textToTranslateTransliteration_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 634
    :cond_5
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 635
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->translatedTextLanguageDisplay_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 637
    :cond_6
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 638
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->translatedTextTransliteration_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 640
    :cond_7
    return-void
.end method
