.class public final Lcom/google/majel/proto/ActionV2Protos$MediaItem;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;,
        Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;,
        Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;,
        Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;,
        Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;,
        Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$MediaItem;


# instance fields
.field public appItem:Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;

.field private bitField0_:I

.field public bookItem:Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;

.field private itemImageUrl_:Ljava/lang/String;

.field private itemImage_:[B

.field public movieItem:Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;

.field public musicItem:Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;

.field public playMediaSource:Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14448
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 14449
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->clear()Lcom/google/majel/proto/ActionV2Protos$MediaItem;

    .line 14450
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$MediaItem;
    .locals 2

    .prologue
    .line 14376
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$MediaItem;

    if-nez v0, :cond_1

    .line 14377
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 14379
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$MediaItem;

    if-nez v0, :cond_0

    .line 14380
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$MediaItem;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$MediaItem;

    .line 14382
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14384
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$MediaItem;

    return-object v0

    .line 14382
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$MediaItem;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14598
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$MediaItem;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$MediaItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$MediaItem;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 14592
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$MediaItem;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$MediaItem;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14453
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->bitField0_:I

    .line 14454
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->itemImage_:[B

    .line 14455
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->itemImageUrl_:Ljava/lang/String;

    .line 14456
    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->musicItem:Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;

    .line 14457
    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->movieItem:Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;

    .line 14458
    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->bookItem:Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;

    .line 14459
    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->appItem:Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;

    .line 14460
    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->playMediaSource:Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;

    .line 14461
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->cachedSize:I

    .line 14462
    return-object p0
.end method

.method public clearItemImage()Lcom/google/majel/proto/ActionV2Protos$MediaItem;
    .locals 1

    .prologue
    .line 14406
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->itemImage_:[B

    .line 14407
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->bitField0_:I

    .line 14408
    return-object p0
.end method

.method public clearItemImageUrl()Lcom/google/majel/proto/ActionV2Protos$MediaItem;
    .locals 1

    .prologue
    .line 14428
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->itemImageUrl_:Ljava/lang/String;

    .line 14429
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->bitField0_:I

    .line 14430
    return-object p0
.end method

.method public getItemImage()[B
    .locals 1

    .prologue
    .line 14392
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->itemImage_:[B

    return-object v0
.end method

.method public getItemImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14414
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->itemImageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 14493
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 14494
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 14495
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->itemImage_:[B

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 14498
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 14499
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->itemImageUrl_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14502
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->musicItem:Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;

    if-eqz v1, :cond_2

    .line 14503
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->musicItem:Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14506
    :cond_2
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->movieItem:Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;

    if-eqz v1, :cond_3

    .line 14507
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->movieItem:Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14510
    :cond_3
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->bookItem:Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;

    if-eqz v1, :cond_4

    .line 14511
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->bookItem:Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14514
    :cond_4
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->appItem:Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;

    if-eqz v1, :cond_5

    .line 14515
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->appItem:Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14518
    :cond_5
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->playMediaSource:Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;

    if-eqz v1, :cond_6

    .line 14519
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->playMediaSource:Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14522
    :cond_6
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->cachedSize:I

    .line 14523
    return v0
.end method

.method public hasItemImage()Z
    .locals 1

    .prologue
    .line 14403
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasItemImageUrl()Z
    .locals 1

    .prologue
    .line 14425
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->bitField0_:I

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
    .line 13191
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$MediaItem;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$MediaItem;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14531
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 14532
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 14536
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 14537
    :sswitch_0
    return-object p0

    .line 14542
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->itemImage_:[B

    .line 14543
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->bitField0_:I

    goto :goto_0

    .line 14547
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->itemImageUrl_:Ljava/lang/String;

    .line 14548
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->bitField0_:I

    goto :goto_0

    .line 14552
    :sswitch_3
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->musicItem:Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;

    if-nez v1, :cond_1

    .line 14553
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->musicItem:Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;

    .line 14555
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->musicItem:Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 14559
    :sswitch_4
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->movieItem:Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;

    if-nez v1, :cond_2

    .line 14560
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->movieItem:Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;

    .line 14562
    :cond_2
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->movieItem:Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 14566
    :sswitch_5
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->bookItem:Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;

    if-nez v1, :cond_3

    .line 14567
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->bookItem:Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;

    .line 14569
    :cond_3
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->bookItem:Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 14573
    :sswitch_6
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->appItem:Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;

    if-nez v1, :cond_4

    .line 14574
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->appItem:Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;

    .line 14576
    :cond_4
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->appItem:Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 14580
    :sswitch_7
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->playMediaSource:Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;

    if-nez v1, :cond_5

    .line 14581
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->playMediaSource:Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;

    .line 14583
    :cond_5
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->playMediaSource:Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 14532
    nop

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
    .end sparse-switch
.end method

.method public setItemImage([B)Lcom/google/majel/proto/ActionV2Protos$MediaItem;
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 14395
    if-nez p1, :cond_0

    .line 14396
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14398
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->itemImage_:[B

    .line 14399
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->bitField0_:I

    .line 14400
    return-object p0
.end method

.method public setItemImageUrl(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$MediaItem;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 14417
    if-nez p1, :cond_0

    .line 14418
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14420
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->itemImageUrl_:Ljava/lang/String;

    .line 14421
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->bitField0_:I

    .line 14422
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
    .line 14468
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 14469
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->itemImage_:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 14471
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 14472
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->itemImageUrl_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 14474
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->musicItem:Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;

    if-eqz v0, :cond_2

    .line 14475
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->musicItem:Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 14477
    :cond_2
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->movieItem:Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;

    if-eqz v0, :cond_3

    .line 14478
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->movieItem:Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 14480
    :cond_3
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->bookItem:Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;

    if-eqz v0, :cond_4

    .line 14481
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->bookItem:Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 14483
    :cond_4
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->appItem:Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;

    if-eqz v0, :cond_5

    .line 14484
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->appItem:Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 14486
    :cond_5
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->playMediaSource:Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;

    if-eqz v0, :cond_6

    .line 14487
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->playMediaSource:Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 14489
    :cond_6
    return-void
.end method
