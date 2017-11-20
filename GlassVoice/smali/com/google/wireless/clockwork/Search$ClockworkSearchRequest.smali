.class public final Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "Search.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/clockwork/Search;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClockworkSearchRequest"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;


# instance fields
.field private bitField0_:I

.field public cgiParam:[Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;

.field public cookie:[Lcom/google/wireless/clockwork/Search$ClockworkCookie;

.field public httpHeader:[Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;

.field private query_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 521
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 522
    invoke-virtual {p0}, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->clear()Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;

    .line 523
    return-void
.end method

.method public static emptyArray()[Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;
    .locals 2

    .prologue
    .line 477
    sget-object v0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->_emptyArray:[Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;

    if-nez v0, :cond_1

    .line 478
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 480
    :try_start_0
    sget-object v0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->_emptyArray:[Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;

    if-nez v0, :cond_0

    .line 481
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;

    sput-object v0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->_emptyArray:[Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;

    .line 483
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    :cond_1
    sget-object v0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->_emptyArray:[Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;

    return-object v0

    .line 483
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 697
    new-instance v0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;

    invoke-direct {v0}, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 691
    new-instance v0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;

    invoke-direct {v0}, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;
    .locals 1

    .prologue
    .line 526
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->bitField0_:I

    .line 527
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->query_:Ljava/lang/String;

    .line 528
    invoke-static {}, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->emptyArray()[Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->httpHeader:[Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;

    .line 529
    invoke-static {}, Lcom/google/wireless/clockwork/Search$ClockworkCookie;->emptyArray()[Lcom/google/wireless/clockwork/Search$ClockworkCookie;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->cookie:[Lcom/google/wireless/clockwork/Search$ClockworkCookie;

    .line 530
    invoke-static {}, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;->emptyArray()[Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->cgiParam:[Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;

    .line 531
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->cachedSize:I

    .line 532
    return-object p0
.end method

.method public clearQuery()Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;
    .locals 1

    .prologue
    .line 507
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->query_:Ljava/lang/String;

    .line 508
    iget v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->bitField0_:I

    .line 509
    return-object p0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->query_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 569
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 570
    .local v2, "size":I
    iget v3, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 571
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->query_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 574
    :cond_0
    iget-object v3, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->httpHeader:[Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->httpHeader:[Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;

    array-length v3, v3

    if-lez v3, :cond_2

    .line 575
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->httpHeader:[Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 576
    iget-object v3, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->httpHeader:[Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;

    aget-object v0, v3, v1

    .line 577
    .local v0, "element":Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;
    if-eqz v0, :cond_1

    .line 578
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 575
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 583
    .end local v0    # "element":Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;
    .end local v1    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->cookie:[Lcom/google/wireless/clockwork/Search$ClockworkCookie;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->cookie:[Lcom/google/wireless/clockwork/Search$ClockworkCookie;

    array-length v3, v3

    if-lez v3, :cond_4

    .line 584
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->cookie:[Lcom/google/wireless/clockwork/Search$ClockworkCookie;

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 585
    iget-object v3, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->cookie:[Lcom/google/wireless/clockwork/Search$ClockworkCookie;

    aget-object v0, v3, v1

    .line 586
    .local v0, "element":Lcom/google/wireless/clockwork/Search$ClockworkCookie;
    if-eqz v0, :cond_3

    .line 587
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 584
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 592
    .end local v0    # "element":Lcom/google/wireless/clockwork/Search$ClockworkCookie;
    .end local v1    # "i":I
    :cond_4
    iget-object v3, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->cgiParam:[Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->cgiParam:[Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;

    array-length v3, v3

    if-lez v3, :cond_6

    .line 593
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v3, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->cgiParam:[Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;

    array-length v3, v3

    if-ge v1, v3, :cond_6

    .line 594
    iget-object v3, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->cgiParam:[Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;

    aget-object v0, v3, v1

    .line 595
    .local v0, "element":Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;
    if-eqz v0, :cond_5

    .line 596
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 593
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 601
    .end local v0    # "element":Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;
    .end local v1    # "i":I
    :cond_6
    iput v2, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->cachedSize:I

    .line 602
    return v2
.end method

.method public hasQuery()Z
    .locals 1

    .prologue
    .line 504
    iget v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->bitField0_:I

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
    .line 471
    invoke-virtual {p0, p1}, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 610
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 611
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 615
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 616
    :sswitch_0
    return-object p0

    .line 621
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->query_:Ljava/lang/String;

    .line 622
    iget v5, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->bitField0_:I

    goto :goto_0

    .line 626
    :sswitch_2
    const/16 v5, 0x12

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 628
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->httpHeader:[Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;

    if-nez v5, :cond_2

    move v1, v4

    .line 629
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;

    .line 631
    .local v2, "newArray":[Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;
    if-eqz v1, :cond_1

    .line 632
    iget-object v5, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->httpHeader:[Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 634
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 635
    new-instance v5, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;

    invoke-direct {v5}, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;-><init>()V

    aput-object v5, v2, v1

    .line 636
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 637
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 634
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 628
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;
    :cond_2
    iget-object v5, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->httpHeader:[Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;

    array-length v1, v5

    goto :goto_1

    .line 640
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;
    :cond_3
    new-instance v5, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;

    invoke-direct {v5}, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;-><init>()V

    aput-object v5, v2, v1

    .line 641
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 642
    iput-object v2, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->httpHeader:[Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;

    goto :goto_0

    .line 646
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;
    :sswitch_3
    const/16 v5, 0x1a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 648
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->cookie:[Lcom/google/wireless/clockwork/Search$ClockworkCookie;

    if-nez v5, :cond_5

    move v1, v4

    .line 649
    .restart local v1    # "i":I
    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/wireless/clockwork/Search$ClockworkCookie;

    .line 651
    .local v2, "newArray":[Lcom/google/wireless/clockwork/Search$ClockworkCookie;
    if-eqz v1, :cond_4

    .line 652
    iget-object v5, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->cookie:[Lcom/google/wireless/clockwork/Search$ClockworkCookie;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 654
    :cond_4
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_6

    .line 655
    new-instance v5, Lcom/google/wireless/clockwork/Search$ClockworkCookie;

    invoke-direct {v5}, Lcom/google/wireless/clockwork/Search$ClockworkCookie;-><init>()V

    aput-object v5, v2, v1

    .line 656
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 657
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 654
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 648
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/wireless/clockwork/Search$ClockworkCookie;
    :cond_5
    iget-object v5, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->cookie:[Lcom/google/wireless/clockwork/Search$ClockworkCookie;

    array-length v1, v5

    goto :goto_3

    .line 660
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/wireless/clockwork/Search$ClockworkCookie;
    :cond_6
    new-instance v5, Lcom/google/wireless/clockwork/Search$ClockworkCookie;

    invoke-direct {v5}, Lcom/google/wireless/clockwork/Search$ClockworkCookie;-><init>()V

    aput-object v5, v2, v1

    .line 661
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 662
    iput-object v2, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->cookie:[Lcom/google/wireless/clockwork/Search$ClockworkCookie;

    goto/16 :goto_0

    .line 666
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/wireless/clockwork/Search$ClockworkCookie;
    :sswitch_4
    const/16 v5, 0x22

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 668
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->cgiParam:[Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;

    if-nez v5, :cond_8

    move v1, v4

    .line 669
    .restart local v1    # "i":I
    :goto_5
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;

    .line 671
    .local v2, "newArray":[Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;
    if-eqz v1, :cond_7

    .line 672
    iget-object v5, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->cgiParam:[Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 674
    :cond_7
    :goto_6
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_9

    .line 675
    new-instance v5, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;

    invoke-direct {v5}, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;-><init>()V

    aput-object v5, v2, v1

    .line 676
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 677
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 674
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 668
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;
    :cond_8
    iget-object v5, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->cgiParam:[Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;

    array-length v1, v5

    goto :goto_5

    .line 680
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;
    :cond_9
    new-instance v5, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;

    invoke-direct {v5}, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;-><init>()V

    aput-object v5, v2, v1

    .line 681
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 682
    iput-object v2, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->cgiParam:[Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;

    goto/16 :goto_0

    .line 611
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public setQuery(Ljava/lang/String;)Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 496
    if-nez p1, :cond_0

    .line 497
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 499
    :cond_0
    iput-object p1, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->query_:Ljava/lang/String;

    .line 500
    iget v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->bitField0_:I

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
    .line 538
    iget v2, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 539
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->query_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 541
    :cond_0
    iget-object v2, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->httpHeader:[Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->httpHeader:[Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;

    array-length v2, v2

    if-lez v2, :cond_2

    .line 542
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->httpHeader:[Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 543
    iget-object v2, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->httpHeader:[Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;

    aget-object v0, v2, v1

    .line 544
    .local v0, "element":Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;
    if-eqz v0, :cond_1

    .line 545
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 542
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 549
    .end local v0    # "element":Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;
    .end local v1    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->cookie:[Lcom/google/wireless/clockwork/Search$ClockworkCookie;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->cookie:[Lcom/google/wireless/clockwork/Search$ClockworkCookie;

    array-length v2, v2

    if-lez v2, :cond_4

    .line 550
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->cookie:[Lcom/google/wireless/clockwork/Search$ClockworkCookie;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 551
    iget-object v2, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->cookie:[Lcom/google/wireless/clockwork/Search$ClockworkCookie;

    aget-object v0, v2, v1

    .line 552
    .local v0, "element":Lcom/google/wireless/clockwork/Search$ClockworkCookie;
    if-eqz v0, :cond_3

    .line 553
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 550
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 557
    .end local v0    # "element":Lcom/google/wireless/clockwork/Search$ClockworkCookie;
    .end local v1    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->cgiParam:[Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->cgiParam:[Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;

    array-length v2, v2

    if-lez v2, :cond_6

    .line 558
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->cgiParam:[Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;

    array-length v2, v2

    if-ge v1, v2, :cond_6

    .line 559
    iget-object v2, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchRequest;->cgiParam:[Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;

    aget-object v0, v2, v1

    .line 560
    .local v0, "element":Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;
    if-eqz v0, :cond_5

    .line 561
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 558
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 565
    .end local v0    # "element":Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;
    .end local v1    # "i":I
    :cond_6
    return-void
.end method
