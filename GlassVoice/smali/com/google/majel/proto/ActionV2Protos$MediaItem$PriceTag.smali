.class public final Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos$MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PriceTag"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;


# instance fields
.field private bitField0_:I

.field private priceType_:Ljava/lang/String;

.field private price_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14294
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 14295
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;->clear()Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;

    .line 14296
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;
    .locals 2

    .prologue
    .line 14237
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;

    if-nez v0, :cond_1

    .line 14238
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 14240
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;

    if-nez v0, :cond_0

    .line 14241
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;

    .line 14243
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14245
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;

    return-object v0

    .line 14243
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14369
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 14363
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;
    .locals 1

    .prologue
    .line 14299
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;->bitField0_:I

    .line 14300
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;->priceType_:Ljava/lang/String;

    .line 14301
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;->price_:Ljava/lang/String;

    .line 14302
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;->cachedSize:I

    .line 14303
    return-object p0
.end method

.method public clearPrice()Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;
    .locals 1

    .prologue
    .line 14289
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;->price_:Ljava/lang/String;

    .line 14290
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;->bitField0_:I

    .line 14291
    return-object p0
.end method

.method public clearPriceType()Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;
    .locals 1

    .prologue
    .line 14267
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;->priceType_:Ljava/lang/String;

    .line 14268
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;->bitField0_:I

    .line 14269
    return-object p0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14275
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;->price_:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14253
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;->priceType_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 14319
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 14320
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 14321
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;->priceType_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14324
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 14325
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;->price_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14328
    :cond_1
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;->cachedSize:I

    .line 14329
    return v0
.end method

.method public hasPrice()Z
    .locals 1

    .prologue
    .line 14286
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPriceType()Z
    .locals 1

    .prologue
    .line 14264
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;->bitField0_:I

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
    .line 14231
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14337
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 14338
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 14342
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 14343
    :sswitch_0
    return-object p0

    .line 14348
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;->priceType_:Ljava/lang/String;

    .line 14349
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;->bitField0_:I

    goto :goto_0

    .line 14353
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;->price_:Ljava/lang/String;

    .line 14354
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;->bitField0_:I

    goto :goto_0

    .line 14338
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setPrice(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 14278
    if-nez p1, :cond_0

    .line 14279
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14281
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;->price_:Ljava/lang/String;

    .line 14282
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;->bitField0_:I

    .line 14283
    return-object p0
.end method

.method public setPriceType(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 14256
    if-nez p1, :cond_0

    .line 14257
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14259
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;->priceType_:Ljava/lang/String;

    .line 14260
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;->bitField0_:I

    .line 14261
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
    .line 14309
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 14310
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;->priceType_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 14312
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 14313
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$PriceTag;->price_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 14315
    :cond_1
    return-void
.end method
