.class public final Lcom/google/e/a/aa;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile b:[Lcom/google/e/a/aa;


# instance fields
.field public a:[I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2225
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2226
    invoke-direct {p0}, Lcom/google/e/a/aa;->b()Lcom/google/e/a/aa;

    .line 2227
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/aa;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2284
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2285
    sparse-switch v0, :sswitch_data_0

    .line 2289
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2290
    :sswitch_0
    return-object p0

    .line 2295
    :sswitch_1
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2297
    iget-object v0, p0, Lcom/google/e/a/aa;->a:[I

    if-nez v0, :cond_2

    move v0, v1

    .line 2298
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [I

    .line 2299
    if-eqz v0, :cond_1

    .line 2300
    iget-object v3, p0, Lcom/google/e/a/aa;->a:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2302
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 2303
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    aput v3, v2, v0

    .line 2304
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2302
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2297
    :cond_2
    iget-object v0, p0, Lcom/google/e/a/aa;->a:[I

    array-length v0, v0

    goto :goto_1

    .line 2307
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    aput v3, v2, v0

    .line 2308
    iput-object v2, p0, Lcom/google/e/a/aa;->a:[I

    goto :goto_0

    .line 2312
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 2313
    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 2316
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    move v0, v1

    .line 2317
    :goto_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_4

    .line 2318
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 2319
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2321
    :cond_4
    invoke-virtual {p1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 2322
    iget-object v2, p0, Lcom/google/e/a/aa;->a:[I

    if-nez v2, :cond_6

    move v2, v1

    .line 2323
    :goto_4
    add-int/2addr v0, v2

    new-array v0, v0, [I

    .line 2324
    if-eqz v2, :cond_5

    .line 2325
    iget-object v4, p0, Lcom/google/e/a/aa;->a:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2327
    :cond_5
    :goto_5
    array-length v4, v0

    if-ge v2, v4, :cond_7

    .line 2328
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    aput v4, v0, v2

    .line 2327
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 2322
    :cond_6
    iget-object v2, p0, Lcom/google/e/a/aa;->a:[I

    array-length v2, v2

    goto :goto_4

    .line 2330
    :cond_7
    iput-object v0, p0, Lcom/google/e/a/aa;->a:[I

    .line 2331
    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 2335
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/aa;->e:Ljava/lang/String;

    .line 2336
    iget v0, p0, Lcom/google/e/a/aa;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/e/a/aa;->c:I

    goto/16 :goto_0

    .line 2340
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/aa;->d:Ljava/lang/String;

    .line 2341
    iget v0, p0, Lcom/google/e/a/aa;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/aa;->c:I

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

.method public static a()[Lcom/google/e/a/aa;
    .locals 2

    .prologue
    .line 2165
    sget-object v0, Lcom/google/e/a/aa;->b:[Lcom/google/e/a/aa;

    if-nez v0, :cond_1

    .line 2166
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2168
    :try_start_0
    sget-object v0, Lcom/google/e/a/aa;->b:[Lcom/google/e/a/aa;

    if-nez v0, :cond_0

    .line 2169
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/e/a/aa;

    sput-object v0, Lcom/google/e/a/aa;->b:[Lcom/google/e/a/aa;

    .line 2171
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2173
    :cond_1
    sget-object v0, Lcom/google/e/a/aa;->b:[Lcom/google/e/a/aa;

    return-object v0

    .line 2171
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/e/a/aa;
    .locals 1

    .prologue
    .line 2230
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/e/a/aa;->c:I

    .line 2231
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/e/a/aa;->a:[I

    .line 2232
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/aa;->d:Ljava/lang/String;

    .line 2233
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/aa;->e:Ljava/lang/String;

    .line 2234
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/aa;->cachedSize:I

    .line 2235
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2256
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 2257
    iget-object v1, p0, Lcom/google/e/a/aa;->a:[I

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/e/a/aa;->a:[I

    array-length v1, v1

    if-lez v1, :cond_3

    move v1, v0

    .line 2259
    :goto_0
    iget-object v3, p0, Lcom/google/e/a/aa;->a:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 2260
    iget-object v3, p0, Lcom/google/e/a/aa;->a:[I

    aget v3, v3, v0

    .line 2261
    invoke-static {v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 2259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2264
    :cond_0
    add-int v0, v2, v1

    .line 2265
    iget-object v1, p0, Lcom/google/e/a/aa;->a:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 2267
    :goto_1
    iget v1, p0, Lcom/google/e/a/aa;->c:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 2268
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/e/a/aa;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2271
    :cond_1
    iget v1, p0, Lcom/google/e/a/aa;->c:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 2272
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/e/a/aa;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2275
    :cond_2
    iput v0, p0, Lcom/google/e/a/aa;->cachedSize:I

    .line 2276
    return v0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 2159
    invoke-direct {p0, p1}, Lcom/google/e/a/aa;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/aa;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 2241
    iget-object v0, p0, Lcom/google/e/a/aa;->a:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/e/a/aa;->a:[I

    array-length v0, v0

    if-lez v0, :cond_0

    .line 2242
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/e/a/aa;->a:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 2243
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/e/a/aa;->a:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2242
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2246
    :cond_0
    iget v0, p0, Lcom/google/e/a/aa;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 2247
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/e/a/aa;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2249
    :cond_1
    iget v0, p0, Lcom/google/e/a/aa;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 2250
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/e/a/aa;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2252
    :cond_2
    return-void
.end method
