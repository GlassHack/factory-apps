.class public final Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EarsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/audio/ears/proto/EarsService$ProductOffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PricingInfo"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;


# instance fields
.field private bitField0_:I

.field public country:[Ljava/lang/String;

.field private currencyCode_:Ljava/lang/String;

.field private priceMicros_:J

.field private price_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3290
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 3291
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->clear()Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    .line 3292
    return-void
.end method

.method public static emptyArray()[Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    .locals 2

    .prologue
    .line 3211
    sget-object v0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    if-nez v0, :cond_1

    .line 3212
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3214
    :try_start_0
    sget-object v0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    if-nez v0, :cond_0

    .line 3215
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    sput-object v0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    .line 3217
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3219
    :cond_1
    sget-object v0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    return-object v0

    .line 3217
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3418
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3412
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    .locals 2

    .prologue
    .line 3295
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->bitField0_:I

    .line 3296
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->price_:Ljava/lang/String;

    .line 3297
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->country:[Ljava/lang/String;

    .line 3298
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->priceMicros_:J

    .line 3299
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->currencyCode_:Ljava/lang/String;

    .line 3300
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->cachedSize:I

    .line 3301
    return-object p0
.end method

.method public clearCurrencyCode()Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    .locals 1

    .prologue
    .line 3285
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->currencyCode_:Ljava/lang/String;

    .line 3286
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->bitField0_:I

    .line 3287
    return-object p0
.end method

.method public clearPrice()Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    .locals 1

    .prologue
    .line 3241
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->price_:Ljava/lang/String;

    .line 3242
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->bitField0_:I

    .line 3243
    return-object p0
.end method

.method public clearPriceMicros()Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    .locals 2

    .prologue
    .line 3263
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->priceMicros_:J

    .line 3264
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->bitField0_:I

    .line 3265
    return-object p0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3271
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->currencyCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3227
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->price_:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceMicros()J
    .locals 2

    .prologue
    .line 3252
    iget-wide v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->priceMicros_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    .line 3328
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v4

    .line 3329
    .local v4, "size":I
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 3330
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->price_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 3333
    :cond_0
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->country:[Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->country:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_3

    .line 3334
    const/4 v0, 0x0

    .line 3335
    .local v0, "dataCount":I
    const/4 v1, 0x0

    .line 3336
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->country:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_2

    .line 3337
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->country:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 3338
    .local v2, "element":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 3339
    add-int/lit8 v0, v0, 0x1

    .line 3340
    invoke-static {v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 3336
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3344
    .end local v2    # "element":Ljava/lang/String;
    :cond_2
    add-int/2addr v4, v1

    .line 3345
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 3347
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_3
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->bitField0_:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_4

    .line 3348
    const/4 v5, 0x3

    iget-wide v6, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->priceMicros_:J

    invoke-static {v5, v6, v7}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    .line 3351
    :cond_4
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->bitField0_:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_5

    .line 3352
    const/4 v5, 0x4

    iget-object v6, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->currencyCode_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 3355
    :cond_5
    iput v4, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->cachedSize:I

    .line 3356
    return v4
.end method

.method public hasCurrencyCode()Z
    .locals 1

    .prologue
    .line 3282
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrice()Z
    .locals 1

    .prologue
    .line 3238
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPriceMicros()Z
    .locals 1

    .prologue
    .line 3260
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    .locals 7
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3364
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 3365
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 3369
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3370
    :sswitch_0
    return-object p0

    .line 3375
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->price_:Ljava/lang/String;

    .line 3376
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->bitField0_:I

    goto :goto_0

    .line 3380
    :sswitch_2
    const/16 v5, 0x12

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 3382
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->country:[Ljava/lang/String;

    if-nez v5, :cond_2

    move v1, v4

    .line 3383
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    .line 3384
    .local v2, "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 3385
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->country:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3387
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 3388
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 3389
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 3387
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3382
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->country:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_1

    .line 3392
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 3393
    iput-object v2, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->country:[Ljava/lang/String;

    goto :goto_0

    .line 3397
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->priceMicros_:J

    .line 3398
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->bitField0_:I

    goto :goto_0

    .line 3402
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->currencyCode_:Ljava/lang/String;

    .line 3403
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->bitField0_:I

    goto :goto_0

    .line 3365
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
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
    .line 3205
    invoke-virtual {p0, p1}, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    move-result-object v0

    return-object v0
.end method

.method public setCurrencyCode(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3274
    if-nez p1, :cond_0

    .line 3275
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3277
    :cond_0
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->currencyCode_:Ljava/lang/String;

    .line 3278
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->bitField0_:I

    .line 3279
    return-object p0
.end method

.method public setPrice(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3230
    if-nez p1, :cond_0

    .line 3231
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3233
    :cond_0
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->price_:Ljava/lang/String;

    .line 3234
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->bitField0_:I

    .line 3235
    return-object p0
.end method

.method public setPriceMicros(J)Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 3255
    iput-wide p1, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->priceMicros_:J

    .line 3256
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->bitField0_:I

    .line 3257
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
    .line 3307
    iget v2, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 3308
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->price_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3310
    :cond_0
    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->country:[Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->country:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_2

    .line 3311
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->country:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 3312
    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->country:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 3313
    .local v0, "element":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 3314
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3311
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3318
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_2
    iget v2, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    .line 3319
    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->priceMicros_:J

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 3321
    :cond_3
    iget v2, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_4

    .line 3322
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->currencyCode_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3324
    :cond_4
    return-void
.end method
