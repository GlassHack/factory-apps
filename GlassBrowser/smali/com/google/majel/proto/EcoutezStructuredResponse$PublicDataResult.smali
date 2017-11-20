.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PublicDataResult"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;


# instance fields
.field private bitField0_:I

.field private disclaimerText_:Ljava/lang/String;

.field private disclaimerUrl_:Ljava/lang/String;

.field private sourceLabel_:Ljava/lang/String;

.field private sourceName_:Ljava/lang/String;

.field private symbolAfter_:Ljava/lang/String;

.field private symbolBefore_:Ljava/lang/String;

.field private time_:Ljava/lang/String;

.field private unit_:Ljava/lang/String;

.field private value_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11646
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 11647
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->clear()Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;

    .line 11648
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;
    .locals 2

    .prologue
    .line 11435
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;

    if-nez v0, :cond_1

    .line 11436
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 11438
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;

    if-nez v0, :cond_0

    .line 11439
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;

    sput-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;

    .line 11441
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11443
    :cond_1
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;

    return-object v0

    .line 11441
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11812
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 11806
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;
    .locals 1

    .prologue
    .line 11651
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    .line 11652
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->symbolBefore_:Ljava/lang/String;

    .line 11653
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->value_:Ljava/lang/String;

    .line 11654
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->symbolAfter_:Ljava/lang/String;

    .line 11655
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->unit_:Ljava/lang/String;

    .line 11656
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->time_:Ljava/lang/String;

    .line 11657
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->sourceLabel_:Ljava/lang/String;

    .line 11658
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->sourceName_:Ljava/lang/String;

    .line 11659
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->disclaimerUrl_:Ljava/lang/String;

    .line 11660
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->disclaimerText_:Ljava/lang/String;

    .line 11661
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->cachedSize:I

    .line 11662
    return-object p0
.end method

.method public clearDisclaimerText()Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;
    .locals 1

    .prologue
    .line 11641
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->disclaimerText_:Ljava/lang/String;

    .line 11642
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    .line 11643
    return-object p0
.end method

.method public clearDisclaimerUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;
    .locals 1

    .prologue
    .line 11619
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->disclaimerUrl_:Ljava/lang/String;

    .line 11620
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    .line 11621
    return-object p0
.end method

.method public clearSourceLabel()Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;
    .locals 1

    .prologue
    .line 11575
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->sourceLabel_:Ljava/lang/String;

    .line 11576
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    .line 11577
    return-object p0
.end method

.method public clearSourceName()Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;
    .locals 1

    .prologue
    .line 11597
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->sourceName_:Ljava/lang/String;

    .line 11598
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    .line 11599
    return-object p0
.end method

.method public clearSymbolAfter()Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;
    .locals 1

    .prologue
    .line 11509
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->symbolAfter_:Ljava/lang/String;

    .line 11510
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    .line 11511
    return-object p0
.end method

.method public clearSymbolBefore()Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;
    .locals 1

    .prologue
    .line 11465
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->symbolBefore_:Ljava/lang/String;

    .line 11466
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    .line 11467
    return-object p0
.end method

.method public clearTime()Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;
    .locals 1

    .prologue
    .line 11553
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->time_:Ljava/lang/String;

    .line 11554
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    .line 11555
    return-object p0
.end method

.method public clearUnit()Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;
    .locals 1

    .prologue
    .line 11531
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->unit_:Ljava/lang/String;

    .line 11532
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    .line 11533
    return-object p0
.end method

.method public clearValue()Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;
    .locals 1

    .prologue
    .line 11487
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->value_:Ljava/lang/String;

    .line 11488
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    .line 11489
    return-object p0
.end method

.method public getDisclaimerText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11627
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->disclaimerText_:Ljava/lang/String;

    return-object v0
.end method

.method public getDisclaimerUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11605
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->disclaimerUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 11699
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 11700
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 11701
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->symbolBefore_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11704
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 11705
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->value_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11708
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 11709
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->symbolAfter_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11712
    :cond_2
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 11713
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->unit_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11716
    :cond_3
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 11717
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->time_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11720
    :cond_4
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 11721
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->sourceLabel_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11724
    :cond_5
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 11725
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->sourceName_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11728
    :cond_6
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 11729
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->disclaimerUrl_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11732
    :cond_7
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    .line 11733
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->disclaimerText_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11736
    :cond_8
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->cachedSize:I

    .line 11737
    return v0
.end method

.method public getSourceLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11561
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->sourceLabel_:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11583
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->sourceName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSymbolAfter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11495
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->symbolAfter_:Ljava/lang/String;

    return-object v0
.end method

.method public getSymbolBefore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11451
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->symbolBefore_:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11539
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->time_:Ljava/lang/String;

    return-object v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11517
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->unit_:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11473
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->value_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDisclaimerText()Z
    .locals 1

    .prologue
    .line 11638
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDisclaimerUrl()Z
    .locals 1

    .prologue
    .line 11616
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSourceLabel()Z
    .locals 1

    .prologue
    .line 11572
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSourceName()Z
    .locals 1

    .prologue
    .line 11594
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSymbolAfter()Z
    .locals 1

    .prologue
    .line 11506
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSymbolBefore()Z
    .locals 1

    .prologue
    .line 11462
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTime()Z
    .locals 1

    .prologue
    .line 11550
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUnit()Z
    .locals 1

    .prologue
    .line 11528
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 11484
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

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
    .line 11429
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11745
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 11746
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 11750
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 11751
    :sswitch_0
    return-object p0

    .line 11756
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->symbolBefore_:Ljava/lang/String;

    .line 11757
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    goto :goto_0

    .line 11761
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->value_:Ljava/lang/String;

    .line 11762
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    goto :goto_0

    .line 11766
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->symbolAfter_:Ljava/lang/String;

    .line 11767
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    goto :goto_0

    .line 11771
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->unit_:Ljava/lang/String;

    .line 11772
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    goto :goto_0

    .line 11776
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->time_:Ljava/lang/String;

    .line 11777
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    goto :goto_0

    .line 11781
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->sourceLabel_:Ljava/lang/String;

    .line 11782
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    goto :goto_0

    .line 11786
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->sourceName_:Ljava/lang/String;

    .line 11787
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    goto :goto_0

    .line 11791
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->disclaimerUrl_:Ljava/lang/String;

    .line 11792
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    goto :goto_0

    .line 11796
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->disclaimerText_:Ljava/lang/String;

    .line 11797
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    goto/16 :goto_0

    .line 11746
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
        0x4a -> :sswitch_9
    .end sparse-switch
.end method

.method public setDisclaimerText(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 11630
    if-nez p1, :cond_0

    .line 11631
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11633
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->disclaimerText_:Ljava/lang/String;

    .line 11634
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    .line 11635
    return-object p0
.end method

.method public setDisclaimerUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 11608
    if-nez p1, :cond_0

    .line 11609
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11611
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->disclaimerUrl_:Ljava/lang/String;

    .line 11612
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    .line 11613
    return-object p0
.end method

.method public setSourceLabel(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 11564
    if-nez p1, :cond_0

    .line 11565
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11567
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->sourceLabel_:Ljava/lang/String;

    .line 11568
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    .line 11569
    return-object p0
.end method

.method public setSourceName(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 11586
    if-nez p1, :cond_0

    .line 11587
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11589
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->sourceName_:Ljava/lang/String;

    .line 11590
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    .line 11591
    return-object p0
.end method

.method public setSymbolAfter(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 11498
    if-nez p1, :cond_0

    .line 11499
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11501
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->symbolAfter_:Ljava/lang/String;

    .line 11502
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    .line 11503
    return-object p0
.end method

.method public setSymbolBefore(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 11454
    if-nez p1, :cond_0

    .line 11455
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11457
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->symbolBefore_:Ljava/lang/String;

    .line 11458
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    .line 11459
    return-object p0
.end method

.method public setTime(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 11542
    if-nez p1, :cond_0

    .line 11543
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11545
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->time_:Ljava/lang/String;

    .line 11546
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    .line 11547
    return-object p0
.end method

.method public setUnit(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 11520
    if-nez p1, :cond_0

    .line 11521
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11523
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->unit_:Ljava/lang/String;

    .line 11524
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    .line 11525
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 11476
    if-nez p1, :cond_0

    .line 11477
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11479
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->value_:Ljava/lang/String;

    .line 11480
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    .line 11481
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
    .line 11668
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 11669
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->symbolBefore_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 11671
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 11672
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->value_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 11674
    :cond_1
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 11675
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->symbolAfter_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 11677
    :cond_2
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 11678
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->unit_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 11680
    :cond_3
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 11681
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->time_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 11683
    :cond_4
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 11684
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->sourceLabel_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 11686
    :cond_5
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 11687
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->sourceName_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 11689
    :cond_6
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 11690
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->disclaimerUrl_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 11692
    :cond_7
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    .line 11693
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;->disclaimerText_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 11695
    :cond_8
    return-void
.end method
