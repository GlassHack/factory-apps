.class public final Lcom/google/audio/ears/proto/EarsService$ProductOffer;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EarsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/audio/ears/proto/EarsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProductOffer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    }
.end annotation


# static fields
.field public static final VENDOR_ID_AMAZON:I = 0x0

.field public static final VENDOR_ID_GOOGLE_MUSIC:I = 0x2

.field public static final VENDOR_ID_ITUNES:I = 0x1

.field private static volatile _emptyArray:[Lcom/google/audio/ears/proto/EarsService$ProductOffer;


# instance fields
.field private bitField0_:I

.field private identifier_:Ljava/lang/String;

.field private parentIdentifier_:Ljava/lang/String;

.field public parentPricingInfo:[Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

.field private previewUrl_:Ljava/lang/String;

.field public pricingInfo:[Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

.field private url_:Ljava/lang/String;

.field private vendor_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3551
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 3552
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->clear()Lcom/google/audio/ears/proto/EarsService$ProductOffer;

    .line 3553
    return-void
.end method

.method public static emptyArray()[Lcom/google/audio/ears/proto/EarsService$ProductOffer;
    .locals 2

    .prologue
    .line 3425
    sget-object v0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$ProductOffer;

    if-nez v0, :cond_1

    .line 3426
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3428
    :try_start_0
    sget-object v0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$ProductOffer;

    if-nez v0, :cond_0

    .line 3429
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/audio/ears/proto/EarsService$ProductOffer;

    sput-object v0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$ProductOffer;

    .line 3431
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3433
    :cond_1
    sget-object v0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$ProductOffer;

    return-object v0

    .line 3431
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$ProductOffer;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3741
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$ProductOffer;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/audio/ears/proto/EarsService$ProductOffer;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3735
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/audio/ears/proto/EarsService$ProductOffer;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3556
    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->bitField0_:I

    .line 3557
    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->vendor_:I

    .line 3558
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->identifier_:Ljava/lang/String;

    .line 3559
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->parentIdentifier_:Ljava/lang/String;

    .line 3560
    invoke-static {}, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->emptyArray()[Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->pricingInfo:[Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    .line 3561
    invoke-static {}, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->emptyArray()[Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->parentPricingInfo:[Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    .line 3562
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->url_:Ljava/lang/String;

    .line 3563
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->previewUrl_:Ljava/lang/String;

    .line 3564
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->cachedSize:I

    .line 3565
    return-object p0
.end method

.method public clearIdentifier()Lcom/google/audio/ears/proto/EarsService$ProductOffer;
    .locals 1

    .prologue
    .line 3474
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->identifier_:Ljava/lang/String;

    .line 3475
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->bitField0_:I

    .line 3476
    return-object p0
.end method

.method public clearParentIdentifier()Lcom/google/audio/ears/proto/EarsService$ProductOffer;
    .locals 1

    .prologue
    .line 3496
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->parentIdentifier_:Ljava/lang/String;

    .line 3497
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->bitField0_:I

    .line 3498
    return-object p0
.end method

.method public clearPreviewUrl()Lcom/google/audio/ears/proto/EarsService$ProductOffer;
    .locals 1

    .prologue
    .line 3546
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->previewUrl_:Ljava/lang/String;

    .line 3547
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->bitField0_:I

    .line 3548
    return-object p0
.end method

.method public clearUrl()Lcom/google/audio/ears/proto/EarsService$ProductOffer;
    .locals 1

    .prologue
    .line 3524
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->url_:Ljava/lang/String;

    .line 3525
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->bitField0_:I

    .line 3526
    return-object p0
.end method

.method public clearVendor()Lcom/google/audio/ears/proto/EarsService$ProductOffer;
    .locals 1

    .prologue
    .line 3452
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->vendor_:I

    .line 3453
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->bitField0_:I

    .line 3454
    return-object p0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3460
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->identifier_:Ljava/lang/String;

    return-object v0
.end method

.method public getParentIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3482
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->parentIdentifier_:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3532
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->previewUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 3606
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 3607
    .local v2, "size":I
    iget v3, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 3608
    const/4 v3, 0x1

    iget v4, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->vendor_:I

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 3611
    :cond_0
    iget v3, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 3612
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->identifier_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3615
    :cond_1
    iget v3, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    .line 3616
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->parentIdentifier_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3619
    :cond_2
    iget-object v3, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->pricingInfo:[Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->pricingInfo:[Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    array-length v3, v3

    if-lez v3, :cond_4

    .line 3620
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->pricingInfo:[Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 3621
    iget-object v3, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->pricingInfo:[Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    aget-object v0, v3, v1

    .line 3622
    .local v0, "element":Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    if-eqz v0, :cond_3

    .line 3623
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3620
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3628
    .end local v0    # "element":Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    .end local v1    # "i":I
    :cond_4
    iget v3, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_5

    .line 3629
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->url_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3632
    :cond_5
    iget-object v3, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->parentPricingInfo:[Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->parentPricingInfo:[Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    array-length v3, v3

    if-lez v3, :cond_7

    .line 3633
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->parentPricingInfo:[Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    array-length v3, v3

    if-ge v1, v3, :cond_7

    .line 3634
    iget-object v3, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->parentPricingInfo:[Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    aget-object v0, v3, v1

    .line 3635
    .restart local v0    # "element":Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    if-eqz v0, :cond_6

    .line 3636
    const/4 v3, 0x6

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3633
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3641
    .end local v0    # "element":Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    .end local v1    # "i":I
    :cond_7
    iget v3, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_8

    .line 3642
    const/4 v3, 0x7

    iget-object v4, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->previewUrl_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3645
    :cond_8
    iput v2, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->cachedSize:I

    .line 3646
    return v2
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3510
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public getVendor()I
    .locals 1

    .prologue
    .line 3441
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->vendor_:I

    return v0
.end method

.method public hasIdentifier()Z
    .locals 1

    .prologue
    .line 3471
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasParentIdentifier()Z
    .locals 1

    .prologue
    .line 3493
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPreviewUrl()Z
    .locals 1

    .prologue
    .line 3543
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

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
    .line 3521
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVendor()Z
    .locals 1

    .prologue
    .line 3449
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$ProductOffer;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3654
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 3655
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 3659
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3660
    :sswitch_0
    return-object p0

    .line 3665
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->vendor_:I

    .line 3666
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->bitField0_:I

    goto :goto_0

    .line 3670
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->identifier_:Ljava/lang/String;

    .line 3671
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->bitField0_:I

    goto :goto_0

    .line 3675
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->parentIdentifier_:Ljava/lang/String;

    .line 3676
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->bitField0_:I

    goto :goto_0

    .line 3680
    :sswitch_4
    const/16 v5, 0x22

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 3682
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->pricingInfo:[Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    if-nez v5, :cond_2

    move v1, v4

    .line 3683
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    .line 3685
    .local v2, "newArray":[Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    if-eqz v1, :cond_1

    .line 3686
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->pricingInfo:[Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3688
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 3689
    new-instance v5, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    invoke-direct {v5}, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;-><init>()V

    aput-object v5, v2, v1

    .line 3690
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3691
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 3688
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3682
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    :cond_2
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->pricingInfo:[Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    array-length v1, v5

    goto :goto_1

    .line 3694
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    :cond_3
    new-instance v5, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    invoke-direct {v5}, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;-><init>()V

    aput-object v5, v2, v1

    .line 3695
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3696
    iput-object v2, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->pricingInfo:[Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    goto :goto_0

    .line 3700
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->url_:Ljava/lang/String;

    .line 3701
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->bitField0_:I

    goto/16 :goto_0

    .line 3705
    :sswitch_6
    const/16 v5, 0x32

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 3707
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->parentPricingInfo:[Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    if-nez v5, :cond_5

    move v1, v4

    .line 3708
    .restart local v1    # "i":I
    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    .line 3710
    .restart local v2    # "newArray":[Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    if-eqz v1, :cond_4

    .line 3711
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->parentPricingInfo:[Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3713
    :cond_4
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_6

    .line 3714
    new-instance v5, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    invoke-direct {v5}, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;-><init>()V

    aput-object v5, v2, v1

    .line 3715
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3716
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 3713
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3707
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    :cond_5
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->parentPricingInfo:[Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    array-length v1, v5

    goto :goto_3

    .line 3719
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    :cond_6
    new-instance v5, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    invoke-direct {v5}, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;-><init>()V

    aput-object v5, v2, v1

    .line 3720
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3721
    iput-object v2, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->parentPricingInfo:[Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    goto/16 :goto_0

    .line 3725
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->previewUrl_:Ljava/lang/String;

    .line 3726
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->bitField0_:I

    goto/16 :goto_0

    .line 3655
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch
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
    .line 3197
    invoke-virtual {p0, p1}, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$ProductOffer;

    move-result-object v0

    return-object v0
.end method

.method public setIdentifier(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$ProductOffer;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3463
    if-nez p1, :cond_0

    .line 3464
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3466
    :cond_0
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->identifier_:Ljava/lang/String;

    .line 3467
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->bitField0_:I

    .line 3468
    return-object p0
.end method

.method public setParentIdentifier(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$ProductOffer;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3485
    if-nez p1, :cond_0

    .line 3486
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3488
    :cond_0
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->parentIdentifier_:Ljava/lang/String;

    .line 3489
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->bitField0_:I

    .line 3490
    return-object p0
.end method

.method public setPreviewUrl(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$ProductOffer;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3535
    if-nez p1, :cond_0

    .line 3536
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3538
    :cond_0
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->previewUrl_:Ljava/lang/String;

    .line 3539
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->bitField0_:I

    .line 3540
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$ProductOffer;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3513
    if-nez p1, :cond_0

    .line 3514
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3516
    :cond_0
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->url_:Ljava/lang/String;

    .line 3517
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->bitField0_:I

    .line 3518
    return-object p0
.end method

.method public setVendor(I)Lcom/google/audio/ears/proto/EarsService$ProductOffer;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3444
    iput p1, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->vendor_:I

    .line 3445
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->bitField0_:I

    .line 3446
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
    .line 3571
    iget v2, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 3572
    const/4 v2, 0x1

    iget v3, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->vendor_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3574
    :cond_0
    iget v2, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 3575
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->identifier_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3577
    :cond_1
    iget v2, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 3578
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->parentIdentifier_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3580
    :cond_2
    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->pricingInfo:[Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->pricingInfo:[Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    array-length v2, v2

    if-lez v2, :cond_4

    .line 3581
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->pricingInfo:[Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 3582
    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->pricingInfo:[Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    aget-object v0, v2, v1

    .line 3583
    .local v0, "element":Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    if-eqz v0, :cond_3

    .line 3584
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3581
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3588
    .end local v0    # "element":Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    .end local v1    # "i":I
    :cond_4
    iget v2, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_5

    .line 3589
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->url_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3591
    :cond_5
    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->parentPricingInfo:[Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->parentPricingInfo:[Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    array-length v2, v2

    if-lez v2, :cond_7

    .line 3592
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->parentPricingInfo:[Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    .line 3593
    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->parentPricingInfo:[Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    aget-object v0, v2, v1

    .line 3594
    .restart local v0    # "element":Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    if-eqz v0, :cond_6

    .line 3595
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3592
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3599
    .end local v0    # "element":Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    .end local v1    # "i":I
    :cond_7
    iget v2, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_8

    .line 3600
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->previewUrl_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3602
    :cond_8
    return-void
.end method
