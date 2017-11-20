.class public final Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ConfFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/decoder/confidence/ConfFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UtteranceConfFeature"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;


# instance fields
.field private avgAmScore_:F

.field private avgLatPosterior_:F

.field private avgLmScore_:F

.field private avgWordConf_:F

.field private bitField0_:I

.field private highLatPosterior_:F

.field private numWords_:F

.field private semanticConf_:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 680
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 681
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->clear()Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;

    .line 682
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;
    .locals 2

    .prologue
    .line 534
    sget-object v0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->_emptyArray:[Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;

    if-nez v0, :cond_1

    .line 535
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 537
    :try_start_0
    sget-object v0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->_emptyArray:[Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;

    if-nez v0, :cond_0

    .line 538
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;

    sput-object v0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->_emptyArray:[Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;

    .line 540
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 542
    :cond_1
    sget-object v0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->_emptyArray:[Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;

    return-object v0

    .line 540
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 820
    new-instance v0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;

    invoke-direct {v0}, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 814
    new-instance v0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;

    invoke-direct {v0}, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 685
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    .line 686
    iput v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->semanticConf_:F

    .line 687
    iput v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->avgWordConf_:F

    .line 688
    iput v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->avgAmScore_:F

    .line 689
    iput v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->avgLmScore_:F

    .line 690
    iput v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->avgLatPosterior_:F

    .line 691
    iput v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->highLatPosterior_:F

    .line 692
    iput v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->numWords_:F

    .line 693
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->cachedSize:I

    .line 694
    return-object p0
.end method

.method public clearAvgAmScore()Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;
    .locals 1

    .prologue
    .line 599
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->avgAmScore_:F

    .line 600
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    .line 601
    return-object p0
.end method

.method public clearAvgLatPosterior()Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;
    .locals 1

    .prologue
    .line 637
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->avgLatPosterior_:F

    .line 638
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    .line 639
    return-object p0
.end method

.method public clearAvgLmScore()Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;
    .locals 1

    .prologue
    .line 618
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->avgLmScore_:F

    .line 619
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    .line 620
    return-object p0
.end method

.method public clearAvgWordConf()Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;
    .locals 1

    .prologue
    .line 580
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->avgWordConf_:F

    .line 581
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    .line 582
    return-object p0
.end method

.method public clearHighLatPosterior()Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;
    .locals 1

    .prologue
    .line 656
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->highLatPosterior_:F

    .line 657
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    .line 658
    return-object p0
.end method

.method public clearNumWords()Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;
    .locals 1

    .prologue
    .line 675
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->numWords_:F

    .line 676
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    .line 677
    return-object p0
.end method

.method public clearSemanticConf()Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;
    .locals 1

    .prologue
    .line 561
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->semanticConf_:F

    .line 562
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    .line 563
    return-object p0
.end method

.method public getAvgAmScore()F
    .locals 1

    .prologue
    .line 588
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->avgAmScore_:F

    return v0
.end method

.method public getAvgLatPosterior()F
    .locals 1

    .prologue
    .line 626
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->avgLatPosterior_:F

    return v0
.end method

.method public getAvgLmScore()F
    .locals 1

    .prologue
    .line 607
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->avgLmScore_:F

    return v0
.end method

.method public getAvgWordConf()F
    .locals 1

    .prologue
    .line 569
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->avgWordConf_:F

    return v0
.end method

.method public getHighLatPosterior()F
    .locals 1

    .prologue
    .line 645
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->highLatPosterior_:F

    return v0
.end method

.method public getNumWords()F
    .locals 1

    .prologue
    .line 664
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->numWords_:F

    return v0
.end method

.method public getSemanticConf()F
    .locals 1

    .prologue
    .line 550
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->semanticConf_:F

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 725
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 726
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 727
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->semanticConf_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 730
    :cond_0
    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 731
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->avgWordConf_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 734
    :cond_1
    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 735
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->avgAmScore_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 738
    :cond_2
    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 739
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->avgLmScore_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 742
    :cond_3
    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 743
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->avgLatPosterior_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 746
    :cond_4
    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 747
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->highLatPosterior_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 750
    :cond_5
    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 751
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->numWords_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 754
    :cond_6
    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->cachedSize:I

    .line 755
    return v0
.end method

.method public hasAvgAmScore()Z
    .locals 1

    .prologue
    .line 596
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAvgLatPosterior()Z
    .locals 1

    .prologue
    .line 634
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAvgLmScore()Z
    .locals 1

    .prologue
    .line 615
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAvgWordConf()Z
    .locals 1

    .prologue
    .line 577
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHighLatPosterior()Z
    .locals 1

    .prologue
    .line 653
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNumWords()Z
    .locals 1

    .prologue
    .line 672
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSemanticConf()Z
    .locals 1

    .prologue
    .line 558
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

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
    .line 528
    invoke-virtual {p0, p1}, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 763
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 764
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 768
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 769
    :sswitch_0
    return-object p0

    .line 774
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->semanticConf_:F

    .line 775
    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    goto :goto_0

    .line 779
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->avgWordConf_:F

    .line 780
    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    goto :goto_0

    .line 784
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->avgAmScore_:F

    .line 785
    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    goto :goto_0

    .line 789
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->avgLmScore_:F

    .line 790
    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    goto :goto_0

    .line 794
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->avgLatPosterior_:F

    .line 795
    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    goto :goto_0

    .line 799
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->highLatPosterior_:F

    .line 800
    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    goto :goto_0

    .line 804
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->numWords_:F

    .line 805
    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    goto :goto_0

    .line 764
    nop

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
    .end sparse-switch
.end method

.method public setAvgAmScore(F)Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 591
    iput p1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->avgAmScore_:F

    .line 592
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    .line 593
    return-object p0
.end method

.method public setAvgLatPosterior(F)Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 629
    iput p1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->avgLatPosterior_:F

    .line 630
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    .line 631
    return-object p0
.end method

.method public setAvgLmScore(F)Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 610
    iput p1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->avgLmScore_:F

    .line 611
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    .line 612
    return-object p0
.end method

.method public setAvgWordConf(F)Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 572
    iput p1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->avgWordConf_:F

    .line 573
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    .line 574
    return-object p0
.end method

.method public setHighLatPosterior(F)Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 648
    iput p1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->highLatPosterior_:F

    .line 649
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    .line 650
    return-object p0
.end method

.method public setNumWords(F)Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 667
    iput p1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->numWords_:F

    .line 668
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    .line 669
    return-object p0
.end method

.method public setSemanticConf(F)Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 553
    iput p1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->semanticConf_:F

    .line 554
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    .line 555
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
    .line 700
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 701
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->semanticConf_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 703
    :cond_0
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 704
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->avgWordConf_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 706
    :cond_1
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 707
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->avgAmScore_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 709
    :cond_2
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 710
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->avgLmScore_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 712
    :cond_3
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 713
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->avgLatPosterior_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 715
    :cond_4
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 716
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->highLatPosterior_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 718
    :cond_5
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 719
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->numWords_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 721
    :cond_6
    return-void
.end method
