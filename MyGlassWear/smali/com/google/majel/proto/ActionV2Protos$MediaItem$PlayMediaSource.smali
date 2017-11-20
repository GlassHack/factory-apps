.class public final Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos$MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlayMediaSource"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;


# instance fields
.field private bitField0_:I

.field private contentUrl_:Ljava/lang/String;

.field private itemNumberOfRatings_:I

.field private itemRating_:D

.field private playStoreUrl_:Ljava/lang/String;

.field public priceTag:[Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13298
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 13299
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->clear()Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;

    .line 13300
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;
    .locals 2

    .prologue
    .line 13200
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;

    if-nez v0, :cond_1

    .line 13201
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 13203
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;

    if-nez v0, :cond_0

    .line 13204
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;

    .line 13206
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13208
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;

    return-object v0

    .line 13206
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13437
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 13431
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 13303
    iput v2, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->bitField0_:I

    .line 13304
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->playStoreUrl_:Ljava/lang/String;

    .line 13305
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->contentUrl_:Ljava/lang/String;

    .line 13306
    invoke-static {}, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;->emptyArray()[Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->priceTag:[Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;

    .line 13307
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->itemRating_:D

    .line 13308
    iput v2, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->itemNumberOfRatings_:I

    .line 13309
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->cachedSize:I

    .line 13310
    return-object p0
.end method

.method public clearContentUrl()Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;
    .locals 1

    .prologue
    .line 13252
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->contentUrl_:Ljava/lang/String;

    .line 13253
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->bitField0_:I

    .line 13254
    return-object p0
.end method

.method public clearItemNumberOfRatings()Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;
    .locals 1

    .prologue
    .line 13293
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->itemNumberOfRatings_:I

    .line 13294
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->bitField0_:I

    .line 13295
    return-object p0
.end method

.method public clearItemRating()Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;
    .locals 2

    .prologue
    .line 13274
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->itemRating_:D

    .line 13275
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->bitField0_:I

    .line 13276
    return-object p0
.end method

.method public clearPlayStoreUrl()Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;
    .locals 1

    .prologue
    .line 13230
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->playStoreUrl_:Ljava/lang/String;

    .line 13231
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->bitField0_:I

    .line 13232
    return-object p0
.end method

.method public getContentUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13238
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->contentUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getItemNumberOfRatings()I
    .locals 1

    .prologue
    .line 13282
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->itemNumberOfRatings_:I

    return v0
.end method

.method public getItemRating()D
    .locals 2

    .prologue
    .line 13263
    iget-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->itemRating_:D

    return-wide v0
.end method

.method public getPlayStoreUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13216
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->playStoreUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 13340
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 13341
    .local v2, "size":I
    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 13342
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->playStoreUrl_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 13345
    :cond_0
    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 13346
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->contentUrl_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 13349
    :cond_1
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->priceTag:[Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->priceTag:[Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;

    array-length v3, v3

    if-lez v3, :cond_3

    .line 13350
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->priceTag:[Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 13351
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->priceTag:[Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;

    aget-object v0, v3, v1

    .line 13352
    .local v0, "element":Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;
    if-eqz v0, :cond_2

    .line 13353
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 13350
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13358
    .end local v0    # "element":Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;
    .end local v1    # "i":I
    :cond_3
    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_4

    .line 13359
    const/4 v3, 0x4

    iget-wide v4, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->itemRating_:D

    invoke-static {v3, v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v3

    add-int/2addr v2, v3

    .line 13362
    :cond_4
    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_5

    .line 13363
    const/4 v3, 0x5

    iget v4, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->itemNumberOfRatings_:I

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 13366
    :cond_5
    iput v2, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->cachedSize:I

    .line 13367
    return v2
.end method

.method public hasContentUrl()Z
    .locals 1

    .prologue
    .line 13249
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasItemNumberOfRatings()Z
    .locals 1

    .prologue
    .line 13290
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasItemRating()Z
    .locals 1

    .prologue
    .line 13271
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPlayStoreUrl()Z
    .locals 1

    .prologue
    .line 13227
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->bitField0_:I

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
    .line 13194
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;
    .locals 7
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 13375
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 13376
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 13380
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 13381
    :sswitch_0
    return-object p0

    .line 13386
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->playStoreUrl_:Ljava/lang/String;

    .line 13387
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->bitField0_:I

    goto :goto_0

    .line 13391
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->contentUrl_:Ljava/lang/String;

    .line 13392
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->bitField0_:I

    goto :goto_0

    .line 13396
    :sswitch_3
    const/16 v5, 0x1a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 13398
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->priceTag:[Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;

    if-nez v5, :cond_2

    move v1, v4

    .line 13399
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;

    .line 13401
    .local v2, "newArray":[Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;
    if-eqz v1, :cond_1

    .line 13402
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->priceTag:[Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13404
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 13405
    new-instance v5, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;

    invoke-direct {v5}, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;-><init>()V

    aput-object v5, v2, v1

    .line 13406
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 13407
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 13404
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 13398
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->priceTag:[Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;

    array-length v1, v5

    goto :goto_1

    .line 13410
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;
    :cond_3
    new-instance v5, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;

    invoke-direct {v5}, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;-><init>()V

    aput-object v5, v2, v1

    .line 13411
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 13412
    iput-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->priceTag:[Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;

    goto :goto_0

    .line 13416
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->itemRating_:D

    .line 13417
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->bitField0_:I

    goto :goto_0

    .line 13421
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->itemNumberOfRatings_:I

    .line 13422
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->bitField0_:I

    goto/16 :goto_0

    .line 13376
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x21 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public setContentUrl(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 13241
    if-nez p1, :cond_0

    .line 13242
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13244
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->contentUrl_:Ljava/lang/String;

    .line 13245
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->bitField0_:I

    .line 13246
    return-object p0
.end method

.method public setItemNumberOfRatings(I)Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 13285
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->itemNumberOfRatings_:I

    .line 13286
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->bitField0_:I

    .line 13287
    return-object p0
.end method

.method public setItemRating(D)Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 13266
    iput-wide p1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->itemRating_:D

    .line 13267
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->bitField0_:I

    .line 13268
    return-object p0
.end method

.method public setPlayStoreUrl(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 13219
    if-nez p1, :cond_0

    .line 13220
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13222
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->playStoreUrl_:Ljava/lang/String;

    .line 13223
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->bitField0_:I

    .line 13224
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13316
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 13317
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->playStoreUrl_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 13319
    :cond_0
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 13320
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->contentUrl_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 13322
    :cond_1
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->priceTag:[Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->priceTag:[Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 13323
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->priceTag:[Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 13324
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->priceTag:[Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;

    aget-object v0, v2, v1

    .line 13325
    .local v0, "element":Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;
    if-eqz v0, :cond_2

    .line 13326
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 13323
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13330
    .end local v0    # "element":Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;
    .end local v1    # "i":I
    :cond_3
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_4

    .line 13331
    const/4 v2, 0x4

    iget-wide v3, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->itemRating_:D

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 13333
    :cond_4
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_5

    .line 13334
    const/4 v2, 0x5

    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PlayMediaSource;->itemNumberOfRatings_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 13336
    :cond_5
    return-void
.end method
