.class public final Lcom/google/majel/proto/PeanutProtos$Image;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "PeanutProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/PeanutProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Image"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/PeanutProtos$Image;


# instance fields
.field public attribution:[Lcom/google/majel/proto/AttributionProtos$Attribution;

.field private bitField0_:I

.field private data_:[B

.field private height_:I

.field private thumbData_:[B

.field private thumbHeight_:I

.field private thumbUrl_:Ljava/lang/String;

.field private thumbWidth_:I

.field private url_:Ljava/lang/String;

.field private width_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 616
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 617
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Image;->clear()Lcom/google/majel/proto/PeanutProtos$Image;

    .line 618
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/PeanutProtos$Image;
    .locals 2

    .prologue
    .line 436
    sget-object v0, Lcom/google/majel/proto/PeanutProtos$Image;->_emptyArray:[Lcom/google/majel/proto/PeanutProtos$Image;

    if-nez v0, :cond_1

    .line 437
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 439
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/PeanutProtos$Image;->_emptyArray:[Lcom/google/majel/proto/PeanutProtos$Image;

    if-nez v0, :cond_0

    .line 440
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/PeanutProtos$Image;

    sput-object v0, Lcom/google/majel/proto/PeanutProtos$Image;->_emptyArray:[Lcom/google/majel/proto/PeanutProtos$Image;

    .line 442
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    :cond_1
    sget-object v0, Lcom/google/majel/proto/PeanutProtos$Image;->_emptyArray:[Lcom/google/majel/proto/PeanutProtos$Image;

    return-object v0

    .line 442
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/PeanutProtos$Image;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 807
    new-instance v0, Lcom/google/majel/proto/PeanutProtos$Image;

    invoke-direct {v0}, Lcom/google/majel/proto/PeanutProtos$Image;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/PeanutProtos$Image;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/PeanutProtos$Image;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/PeanutProtos$Image;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 801
    new-instance v0, Lcom/google/majel/proto/PeanutProtos$Image;

    invoke-direct {v0}, Lcom/google/majel/proto/PeanutProtos$Image;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/PeanutProtos$Image;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/PeanutProtos$Image;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 621
    iput v1, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    .line 622
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->url_:Ljava/lang/String;

    .line 623
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->data_:[B

    .line 624
    iput v1, p0, Lcom/google/majel/proto/PeanutProtos$Image;->width_:I

    .line 625
    iput v1, p0, Lcom/google/majel/proto/PeanutProtos$Image;->height_:I

    .line 626
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->thumbUrl_:Ljava/lang/String;

    .line 627
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->thumbData_:[B

    .line 628
    iput v1, p0, Lcom/google/majel/proto/PeanutProtos$Image;->thumbWidth_:I

    .line 629
    iput v1, p0, Lcom/google/majel/proto/PeanutProtos$Image;->thumbHeight_:I

    .line 630
    invoke-static {}, Lcom/google/majel/proto/AttributionProtos$Attribution;->emptyArray()[Lcom/google/majel/proto/AttributionProtos$Attribution;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->attribution:[Lcom/google/majel/proto/AttributionProtos$Attribution;

    .line 631
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->cachedSize:I

    .line 632
    return-object p0
.end method

.method public clearData()Lcom/google/majel/proto/PeanutProtos$Image;
    .locals 1

    .prologue
    .line 488
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->data_:[B

    .line 489
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    .line 490
    return-object p0
.end method

.method public clearHeight()Lcom/google/majel/proto/PeanutProtos$Image;
    .locals 1

    .prologue
    .line 526
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->height_:I

    .line 527
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    .line 528
    return-object p0
.end method

.method public clearThumbData()Lcom/google/majel/proto/PeanutProtos$Image;
    .locals 1

    .prologue
    .line 570
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->thumbData_:[B

    .line 571
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    .line 572
    return-object p0
.end method

.method public clearThumbHeight()Lcom/google/majel/proto/PeanutProtos$Image;
    .locals 1

    .prologue
    .line 608
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->thumbHeight_:I

    .line 609
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    .line 610
    return-object p0
.end method

.method public clearThumbUrl()Lcom/google/majel/proto/PeanutProtos$Image;
    .locals 1

    .prologue
    .line 548
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->thumbUrl_:Ljava/lang/String;

    .line 549
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    .line 550
    return-object p0
.end method

.method public clearThumbWidth()Lcom/google/majel/proto/PeanutProtos$Image;
    .locals 1

    .prologue
    .line 589
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->thumbWidth_:I

    .line 590
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    .line 591
    return-object p0
.end method

.method public clearUrl()Lcom/google/majel/proto/PeanutProtos$Image;
    .locals 1

    .prologue
    .line 466
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->url_:Ljava/lang/String;

    .line 467
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    .line 468
    return-object p0
.end method

.method public clearWidth()Lcom/google/majel/proto/PeanutProtos$Image;
    .locals 1

    .prologue
    .line 507
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->width_:I

    .line 508
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    .line 509
    return-object p0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->data_:[B

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 515
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->height_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 674
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 675
    .local v2, "size":I
    iget v3, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 676
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/majel/proto/PeanutProtos$Image;->url_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 679
    :cond_0
    iget v3, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_1

    .line 680
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/majel/proto/PeanutProtos$Image;->thumbUrl_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 683
    :cond_1
    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Image;->attribution:[Lcom/google/majel/proto/AttributionProtos$Attribution;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Image;->attribution:[Lcom/google/majel/proto/AttributionProtos$Attribution;

    array-length v3, v3

    if-lez v3, :cond_3

    .line 684
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Image;->attribution:[Lcom/google/majel/proto/AttributionProtos$Attribution;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 685
    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Image;->attribution:[Lcom/google/majel/proto/AttributionProtos$Attribution;

    aget-object v0, v3, v1

    .line 686
    .local v0, "element":Lcom/google/majel/proto/AttributionProtos$Attribution;
    if-eqz v0, :cond_2

    .line 687
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 684
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 692
    .end local v0    # "element":Lcom/google/majel/proto/AttributionProtos$Attribution;
    .end local v1    # "i":I
    :cond_3
    iget v3, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_4

    .line 693
    const/4 v3, 0x4

    iget v4, p0, Lcom/google/majel/proto/PeanutProtos$Image;->width_:I

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 696
    :cond_4
    iget v3, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_5

    .line 697
    const/4 v3, 0x5

    iget v4, p0, Lcom/google/majel/proto/PeanutProtos$Image;->height_:I

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 700
    :cond_5
    iget v3, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_6

    .line 701
    const/4 v3, 0x6

    iget v4, p0, Lcom/google/majel/proto/PeanutProtos$Image;->thumbWidth_:I

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 704
    :cond_6
    iget v3, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_7

    .line 705
    const/4 v3, 0x7

    iget v4, p0, Lcom/google/majel/proto/PeanutProtos$Image;->thumbHeight_:I

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 708
    :cond_7
    iget v3, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_8

    .line 709
    const/16 v3, 0x8

    iget-object v4, p0, Lcom/google/majel/proto/PeanutProtos$Image;->data_:[B

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v3

    add-int/2addr v2, v3

    .line 712
    :cond_8
    iget v3, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_9

    .line 713
    const/16 v3, 0x9

    iget-object v4, p0, Lcom/google/majel/proto/PeanutProtos$Image;->thumbData_:[B

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v3

    add-int/2addr v2, v3

    .line 716
    :cond_9
    iput v2, p0, Lcom/google/majel/proto/PeanutProtos$Image;->cachedSize:I

    .line 717
    return v2
.end method

.method public getThumbData()[B
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->thumbData_:[B

    return-object v0
.end method

.method public getThumbHeight()I
    .locals 1

    .prologue
    .line 597
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->thumbHeight_:I

    return v0
.end method

.method public getThumbUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->thumbUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbWidth()I
    .locals 1

    .prologue
    .line 578
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->thumbWidth_:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 496
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->width_:I

    return v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 485
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHeight()Z
    .locals 1

    .prologue
    .line 523
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasThumbData()Z
    .locals 1

    .prologue
    .line 567
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasThumbHeight()Z
    .locals 1

    .prologue
    .line 605
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasThumbUrl()Z
    .locals 1

    .prologue
    .line 545
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasThumbWidth()Z
    .locals 1

    .prologue
    .line 586
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUrl()Z
    .locals 1

    .prologue
    .line 463
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWidth()Z
    .locals 1

    .prologue
    .line 504
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

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
    .line 430
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/PeanutProtos$Image;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/PeanutProtos$Image;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/PeanutProtos$Image;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 725
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 726
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 730
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 731
    :sswitch_0
    return-object p0

    .line 736
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Image;->url_:Ljava/lang/String;

    .line 737
    iget v5, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    goto :goto_0

    .line 741
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Image;->thumbUrl_:Ljava/lang/String;

    .line 742
    iget v5, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    goto :goto_0

    .line 746
    :sswitch_3
    const/16 v5, 0x1a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 748
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Image;->attribution:[Lcom/google/majel/proto/AttributionProtos$Attribution;

    if-nez v5, :cond_2

    move v1, v4

    .line 749
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/AttributionProtos$Attribution;

    .line 751
    .local v2, "newArray":[Lcom/google/majel/proto/AttributionProtos$Attribution;
    if-eqz v1, :cond_1

    .line 752
    iget-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Image;->attribution:[Lcom/google/majel/proto/AttributionProtos$Attribution;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 754
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 755
    new-instance v5, Lcom/google/majel/proto/AttributionProtos$Attribution;

    invoke-direct {v5}, Lcom/google/majel/proto/AttributionProtos$Attribution;-><init>()V

    aput-object v5, v2, v1

    .line 756
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 757
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 754
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 748
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/AttributionProtos$Attribution;
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Image;->attribution:[Lcom/google/majel/proto/AttributionProtos$Attribution;

    array-length v1, v5

    goto :goto_1

    .line 760
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/AttributionProtos$Attribution;
    :cond_3
    new-instance v5, Lcom/google/majel/proto/AttributionProtos$Attribution;

    invoke-direct {v5}, Lcom/google/majel/proto/AttributionProtos$Attribution;-><init>()V

    aput-object v5, v2, v1

    .line 761
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 762
    iput-object v2, p0, Lcom/google/majel/proto/PeanutProtos$Image;->attribution:[Lcom/google/majel/proto/AttributionProtos$Attribution;

    goto :goto_0

    .line 766
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/AttributionProtos$Attribution;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/majel/proto/PeanutProtos$Image;->width_:I

    .line 767
    iget v5, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    goto :goto_0

    .line 771
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/majel/proto/PeanutProtos$Image;->height_:I

    .line 772
    iget v5, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    goto/16 :goto_0

    .line 776
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/majel/proto/PeanutProtos$Image;->thumbWidth_:I

    .line 777
    iget v5, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    or-int/lit8 v5, v5, 0x40

    iput v5, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    goto/16 :goto_0

    .line 781
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/majel/proto/PeanutProtos$Image;->thumbHeight_:I

    .line 782
    iget v5, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    or-int/lit16 v5, v5, 0x80

    iput v5, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    goto/16 :goto_0

    .line 786
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Image;->data_:[B

    .line 787
    iget v5, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    goto/16 :goto_0

    .line 791
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Image;->thumbData_:[B

    .line 792
    iget v5, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    goto/16 :goto_0

    .line 726
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
    .end sparse-switch
.end method

.method public setData([B)Lcom/google/majel/proto/PeanutProtos$Image;
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 477
    if-nez p1, :cond_0

    .line 478
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 480
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$Image;->data_:[B

    .line 481
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    .line 482
    return-object p0
.end method

.method public setHeight(I)Lcom/google/majel/proto/PeanutProtos$Image;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 518
    iput p1, p0, Lcom/google/majel/proto/PeanutProtos$Image;->height_:I

    .line 519
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    .line 520
    return-object p0
.end method

.method public setThumbData([B)Lcom/google/majel/proto/PeanutProtos$Image;
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 559
    if-nez p1, :cond_0

    .line 560
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 562
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$Image;->thumbData_:[B

    .line 563
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    .line 564
    return-object p0
.end method

.method public setThumbHeight(I)Lcom/google/majel/proto/PeanutProtos$Image;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 600
    iput p1, p0, Lcom/google/majel/proto/PeanutProtos$Image;->thumbHeight_:I

    .line 601
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    .line 602
    return-object p0
.end method

.method public setThumbUrl(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Image;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 537
    if-nez p1, :cond_0

    .line 538
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 540
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$Image;->thumbUrl_:Ljava/lang/String;

    .line 541
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    .line 542
    return-object p0
.end method

.method public setThumbWidth(I)Lcom/google/majel/proto/PeanutProtos$Image;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 581
    iput p1, p0, Lcom/google/majel/proto/PeanutProtos$Image;->thumbWidth_:I

    .line 582
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    .line 583
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Image;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 455
    if-nez p1, :cond_0

    .line 456
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 458
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$Image;->url_:Ljava/lang/String;

    .line 459
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    .line 460
    return-object p0
.end method

.method public setWidth(I)Lcom/google/majel/proto/PeanutProtos$Image;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 499
    iput p1, p0, Lcom/google/majel/proto/PeanutProtos$Image;->width_:I

    .line 500
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    .line 501
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
    .line 638
    iget v2, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 639
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Image;->url_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 641
    :cond_0
    iget v2, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1

    .line 642
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Image;->thumbUrl_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 644
    :cond_1
    iget-object v2, p0, Lcom/google/majel/proto/PeanutProtos$Image;->attribution:[Lcom/google/majel/proto/AttributionProtos$Attribution;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/majel/proto/PeanutProtos$Image;->attribution:[Lcom/google/majel/proto/AttributionProtos$Attribution;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 645
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/PeanutProtos$Image;->attribution:[Lcom/google/majel/proto/AttributionProtos$Attribution;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 646
    iget-object v2, p0, Lcom/google/majel/proto/PeanutProtos$Image;->attribution:[Lcom/google/majel/proto/AttributionProtos$Attribution;

    aget-object v0, v2, v1

    .line 647
    .local v0, "element":Lcom/google/majel/proto/AttributionProtos$Attribution;
    if-eqz v0, :cond_2

    .line 648
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 645
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 652
    .end local v0    # "element":Lcom/google/majel/proto/AttributionProtos$Attribution;
    .end local v1    # "i":I
    :cond_3
    iget v2, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_4

    .line 653
    const/4 v2, 0x4

    iget v3, p0, Lcom/google/majel/proto/PeanutProtos$Image;->width_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 655
    :cond_4
    iget v2, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_5

    .line 656
    const/4 v2, 0x5

    iget v3, p0, Lcom/google/majel/proto/PeanutProtos$Image;->height_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 658
    :cond_5
    iget v2, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_6

    .line 659
    const/4 v2, 0x6

    iget v3, p0, Lcom/google/majel/proto/PeanutProtos$Image;->thumbWidth_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 661
    :cond_6
    iget v2, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_7

    .line 662
    const/4 v2, 0x7

    iget v3, p0, Lcom/google/majel/proto/PeanutProtos$Image;->thumbHeight_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 664
    :cond_7
    iget v2, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_8

    .line 665
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Image;->data_:[B

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 667
    :cond_8
    iget v2, p0, Lcom/google/majel/proto/PeanutProtos$Image;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_9

    .line 668
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Image;->thumbData_:[B

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 670
    :cond_9
    return-void
.end method
