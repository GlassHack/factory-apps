.class public final Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;


# instance fields
.field private header_:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

.field public request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 459
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;

    sput-object v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 460
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 482
    sget-object v0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    .line 460
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;
    .locals 1

    .prologue
    .line 600
    new-instance v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;
    .locals 1

    .prologue
    .line 594
    new-instance v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;

    return-object v0
.end method


# virtual methods
.method public final clearHeader()Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;
    .locals 1

    .prologue
    .line 478
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->header_:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    .line 479
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 486
    if-ne p1, p0, :cond_1

    .line 491
    :cond_0
    :goto_0
    return v0

    .line 487
    :cond_1
    instance-of v2, p1, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 488
    :cond_2
    check-cast p1, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;

    .line 489
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->header_:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->header_:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    if-nez v2, :cond_3

    :goto_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    .line 490
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 491
    goto :goto_0

    .line 489
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->header_:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->header_:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    invoke-virtual {v2, v3}, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 490
    :cond_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->unknownFieldData:Ljava/util/List;

    .line 491
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getHeader()Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->header_:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 525
    .line 526
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->header_:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    if-eqz v0, :cond_2

    .line 527
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->header_:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    .line 528
    invoke-static {v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v0

    add-int/2addr v0, v1

    .line 530
    :goto_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    if-eqz v2, :cond_1

    .line 531
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 532
    if-eqz v4, :cond_0

    .line 533
    const/4 v5, 0x2

    .line 534
    invoke-static {v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v0, v4

    .line 531
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 538
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 539
    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->cachedSize:I

    .line 540
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final hasHeader()Z
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->header_:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 495
    .line 496
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->header_:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 497
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    if-nez v2, :cond_2

    mul-int/lit8 v2, v0, 0x1f

    .line 503
    :cond_0
    mul-int/lit8 v0, v2, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_4

    :goto_1
    add-int/2addr v0, v1

    .line 504
    return v0

    .line 496
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->header_:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    move v2, v0

    move v0, v1

    .line 499
    :goto_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 500
    mul-int/lit8 v3, v2, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    aget-object v2, v2, v0

    if-nez v2, :cond_3

    move v2, v1

    :goto_3
    add-int/2addr v2, v3

    .line 499
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 500
    :cond_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->hashCode()I

    move-result v2

    goto :goto_3

    .line 503
    :cond_4
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 548
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 549
    sparse-switch v0, :sswitch_data_0

    .line 553
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    .line 554
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->unknownFieldData:Ljava/util/List;

    .line 557
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v2, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 559
    :sswitch_0
    return-object p0

    .line 564
    :sswitch_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->header_:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    if-nez v0, :cond_2

    .line 565
    new-instance v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;-><init>()V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->header_:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    .line 567
    :cond_2
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->header_:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 571
    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 572
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    if-nez v0, :cond_4

    move v0, v1

    .line 573
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    .line 574
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    if-eqz v3, :cond_3

    .line 575
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 577
    :cond_3
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    .line 578
    :goto_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_5

    .line 579
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    new-instance v3, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;-><init>()V

    aput-object v3, v2, v0

    .line 580
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 581
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 578
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 572
    :cond_4
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    array-length v0, v0

    goto :goto_1

    .line 584
    :cond_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    new-instance v3, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;-><init>()V

    aput-object v3, v2, v0

    .line 585
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 549
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 456
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;

    move-result-object v0

    return-object v0
.end method

.method public final setHeader(Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;)Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;
    .locals 1

    .prologue
    .line 468
    if-nez p1, :cond_0

    .line 469
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 471
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->header_:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    .line 472
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5

    .prologue
    .line 509
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->header_:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    if-eqz v0, :cond_0

    .line 510
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->header_:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    if-eqz v0, :cond_2

    .line 513
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 514
    if-eqz v3, :cond_1

    .line 515
    const/4 v4, 0x2

    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 513
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 519
    :cond_2
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 521
    return-void
.end method
