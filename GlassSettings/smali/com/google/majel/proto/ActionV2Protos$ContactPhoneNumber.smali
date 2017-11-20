.class public final Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContactPhoneNumber"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;


# instance fields
.field private bitField0_:I

.field public dEPRECATEDDigit:[I

.field private number_:Ljava/lang/String;

.field private type_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2225
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2226
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->clear()Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    .line 2227
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;
    .locals 2

    .prologue
    .line 2165
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    if-nez v0, :cond_1

    .line 2166
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2168
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    if-nez v0, :cond_0

    .line 2169
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    .line 2171
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2173
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    return-object v0

    .line 2171
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2356
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2350
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;
    .locals 1

    .prologue
    .line 2230
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->bitField0_:I

    .line 2231
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->dEPRECATEDDigit:[I

    .line 2232
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->number_:Ljava/lang/String;

    .line 2233
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->type_:Ljava/lang/String;

    .line 2234
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->cachedSize:I

    .line 2235
    return-object p0
.end method

.method public clearNumber()Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;
    .locals 1

    .prologue
    .line 2198
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->number_:Ljava/lang/String;

    .line 2199
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->bitField0_:I

    .line 2200
    return-object p0
.end method

.method public clearType()Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;
    .locals 1

    .prologue
    .line 2220
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->type_:Ljava/lang/String;

    .line 2221
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->bitField0_:I

    .line 2222
    return-object p0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2184
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->number_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 2256
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v3

    .line 2257
    .local v3, "size":I
    iget-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->dEPRECATEDDigit:[I

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->dEPRECATEDDigit:[I

    array-length v4, v4

    if-lez v4, :cond_1

    .line 2258
    const/4 v0, 0x0

    .line 2259
    .local v0, "dataSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->dEPRECATEDDigit:[I

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 2260
    iget-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->dEPRECATEDDigit:[I

    aget v1, v4, v2

    .line 2261
    .local v1, "element":I
    invoke-static {v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 2259
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2264
    .end local v1    # "element":I
    :cond_0
    add-int/2addr v3, v0

    .line 2265
    iget-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->dEPRECATEDDigit:[I

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 2267
    .end local v0    # "dataSize":I
    .end local v2    # "i":I
    :cond_1
    iget v4, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    .line 2268
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->type_:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2271
    :cond_2
    iget v4, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3

    .line 2272
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->number_:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2275
    :cond_3
    iput v3, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->cachedSize:I

    .line 2276
    return v3
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2206
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->type_:Ljava/lang/String;

    return-object v0
.end method

.method public hasNumber()Z
    .locals 1

    .prologue
    .line 2195
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 2217
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->bitField0_:I

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
    .line 2159
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;
    .locals 9
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 2284
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v6

    .line 2285
    .local v6, "tag":I
    sparse-switch v6, :sswitch_data_0

    .line 2289
    invoke-static {p1, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2290
    :sswitch_0
    return-object p0

    .line 2295
    :sswitch_1
    const/16 v8, 0x8

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2297
    .local v0, "arrayLength":I
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->dEPRECATEDDigit:[I

    if-nez v8, :cond_2

    move v1, v7

    .line 2298
    .local v1, "i":I
    :goto_1
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 2299
    .local v4, "newArray":[I
    if-eqz v1, :cond_1

    .line 2300
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->dEPRECATEDDigit:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2302
    :cond_1
    :goto_2
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_3

    .line 2303
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 2304
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2302
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2297
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_2
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->dEPRECATEDDigit:[I

    array-length v1, v8

    goto :goto_1

    .line 2307
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 2308
    iput-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->dEPRECATEDDigit:[I

    goto :goto_0

    .line 2312
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 2313
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 2315
    .local v3, "limit":I
    const/4 v0, 0x0

    .line 2316
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 2317
    .local v5, "startPos":I
    :goto_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_4

    .line 2318
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 2319
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2321
    :cond_4
    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 2322
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->dEPRECATEDDigit:[I

    if-nez v8, :cond_6

    move v1, v7

    .line 2323
    .restart local v1    # "i":I
    :goto_4
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 2324
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_5

    .line 2325
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->dEPRECATEDDigit:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2327
    :cond_5
    :goto_5
    array-length v8, v4

    if-ge v1, v8, :cond_7

    .line 2328
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 2327
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2322
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_6
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->dEPRECATEDDigit:[I

    array-length v1, v8

    goto :goto_4

    .line 2330
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_7
    iput-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->dEPRECATEDDigit:[I

    .line 2331
    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 2335
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[I
    .end local v5    # "startPos":I
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->type_:Ljava/lang/String;

    .line 2336
    iget v8, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->bitField0_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->bitField0_:I

    goto/16 :goto_0

    .line 2340
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->number_:Ljava/lang/String;

    .line 2341
    iget v8, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->bitField0_:I

    goto/16 :goto_0

    .line 2285
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_2
        0x12 -> :sswitch_3
        0x1a -> :sswitch_4
    .end sparse-switch
.end method

.method public setNumber(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2187
    if-nez p1, :cond_0

    .line 2188
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2190
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->number_:Ljava/lang/String;

    .line 2191
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->bitField0_:I

    .line 2192
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2209
    if-nez p1, :cond_0

    .line 2210
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2212
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->type_:Ljava/lang/String;

    .line 2213
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->bitField0_:I

    .line 2214
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2241
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->dEPRECATEDDigit:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->dEPRECATEDDigit:[I

    array-length v1, v1

    if-lez v1, :cond_0

    .line 2242
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->dEPRECATEDDigit:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 2243
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->dEPRECATEDDigit:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2242
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2246
    .end local v0    # "i":I
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 2247
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->type_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2249
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 2250
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->number_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2252
    :cond_2
    return-void
.end method
