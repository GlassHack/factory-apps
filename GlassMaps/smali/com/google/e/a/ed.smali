.class public final Lcom/google/e/a/ed;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:[Lcom/google/e/a/ec;

.field public b:[Lcom/google/e/a/ec;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:[B

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6197
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 6198
    invoke-direct {p0}, Lcom/google/e/a/ed;->a()Lcom/google/e/a/ed;

    .line 6199
    return-void
.end method

.method private a()Lcom/google/e/a/ed;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6202
    iput v1, p0, Lcom/google/e/a/ed;->c:I

    .line 6203
    invoke-static {}, Lcom/google/e/a/ec;->a()[Lcom/google/e/a/ec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/ed;->a:[Lcom/google/e/a/ec;

    .line 6204
    invoke-static {}, Lcom/google/e/a/ec;->a()[Lcom/google/e/a/ec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/ed;->b:[Lcom/google/e/a/ec;

    .line 6205
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/ed;->d:Ljava/lang/String;

    .line 6206
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/e/a/ed;->e:[B

    .line 6207
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/ed;->f:Ljava/lang/String;

    .line 6208
    iput v1, p0, Lcom/google/e/a/ed;->g:I

    .line 6209
    iput v1, p0, Lcom/google/e/a/ed;->h:I

    .line 6210
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/ed;->cachedSize:I

    .line 6211
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/ed;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 6300
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 6301
    sparse-switch v0, :sswitch_data_0

    .line 6305
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6306
    :sswitch_0
    return-object p0

    .line 6311
    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 6313
    iget-object v0, p0, Lcom/google/e/a/ed;->a:[Lcom/google/e/a/ec;

    if-nez v0, :cond_2

    move v0, v1

    .line 6314
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/e/a/ec;

    .line 6316
    if-eqz v0, :cond_1

    .line 6317
    iget-object v3, p0, Lcom/google/e/a/ed;->a:[Lcom/google/e/a/ec;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6319
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 6320
    new-instance v3, Lcom/google/e/a/ec;

    invoke-direct {v3}, Lcom/google/e/a/ec;-><init>()V

    aput-object v3, v2, v0

    .line 6321
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 6322
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 6319
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 6313
    :cond_2
    iget-object v0, p0, Lcom/google/e/a/ed;->a:[Lcom/google/e/a/ec;

    array-length v0, v0

    goto :goto_1

    .line 6325
    :cond_3
    new-instance v3, Lcom/google/e/a/ec;

    invoke-direct {v3}, Lcom/google/e/a/ec;-><init>()V

    aput-object v3, v2, v0

    .line 6326
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 6327
    iput-object v2, p0, Lcom/google/e/a/ed;->a:[Lcom/google/e/a/ec;

    goto :goto_0

    .line 6331
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/ed;->d:Ljava/lang/String;

    .line 6332
    iget v0, p0, Lcom/google/e/a/ed;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/ed;->c:I

    goto :goto_0

    .line 6336
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/ed;->g:I

    .line 6337
    iget v0, p0, Lcom/google/e/a/ed;->c:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/e/a/ed;->c:I

    goto :goto_0

    .line 6341
    :sswitch_4
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 6343
    iget-object v0, p0, Lcom/google/e/a/ed;->b:[Lcom/google/e/a/ec;

    if-nez v0, :cond_5

    move v0, v1

    .line 6344
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/e/a/ec;

    .line 6346
    if-eqz v0, :cond_4

    .line 6347
    iget-object v3, p0, Lcom/google/e/a/ed;->b:[Lcom/google/e/a/ec;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6349
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 6350
    new-instance v3, Lcom/google/e/a/ec;

    invoke-direct {v3}, Lcom/google/e/a/ec;-><init>()V

    aput-object v3, v2, v0

    .line 6351
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 6352
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 6349
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 6343
    :cond_5
    iget-object v0, p0, Lcom/google/e/a/ed;->b:[Lcom/google/e/a/ec;

    array-length v0, v0

    goto :goto_3

    .line 6355
    :cond_6
    new-instance v3, Lcom/google/e/a/ec;

    invoke-direct {v3}, Lcom/google/e/a/ec;-><init>()V

    aput-object v3, v2, v0

    .line 6356
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 6357
    iput-object v2, p0, Lcom/google/e/a/ed;->b:[Lcom/google/e/a/ec;

    goto/16 :goto_0

    .line 6361
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/ed;->h:I

    .line 6362
    iget v0, p0, Lcom/google/e/a/ed;->c:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/e/a/ed;->c:I

    goto/16 :goto_0

    .line 6366
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/ed;->f:Ljava/lang/String;

    .line 6367
    iget v0, p0, Lcom/google/e/a/ed;->c:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/e/a/ed;->c:I

    goto/16 :goto_0

    .line 6371
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/ed;->e:[B

    .line 6372
    iget v0, p0, Lcom/google/e/a/ed;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/e/a/ed;->c:I

    goto/16 :goto_0

    .line 6301
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 6252
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 6253
    iget-object v2, p0, Lcom/google/e/a/ed;->a:[Lcom/google/e/a/ec;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/e/a/ed;->a:[Lcom/google/e/a/ec;

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v0

    move v0, v1

    .line 6254
    :goto_0
    iget-object v3, p0, Lcom/google/e/a/ed;->a:[Lcom/google/e/a/ec;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 6255
    iget-object v3, p0, Lcom/google/e/a/ed;->a:[Lcom/google/e/a/ec;

    aget-object v3, v3, v0

    .line 6256
    if-eqz v3, :cond_0

    .line 6257
    const/4 v4, 0x1

    invoke-static {v4, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 6254
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 6262
    :cond_2
    iget v2, p0, Lcom/google/e/a/ed;->c:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 6263
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/e/a/ed;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6266
    :cond_3
    iget v2, p0, Lcom/google/e/a/ed;->c:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_4

    .line 6267
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/e/a/ed;->g:I

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 6270
    :cond_4
    iget-object v2, p0, Lcom/google/e/a/ed;->b:[Lcom/google/e/a/ec;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/e/a/ed;->b:[Lcom/google/e/a/ec;

    array-length v2, v2

    if-lez v2, :cond_6

    .line 6271
    :goto_1
    iget-object v2, p0, Lcom/google/e/a/ed;->b:[Lcom/google/e/a/ec;

    array-length v2, v2

    if-ge v1, v2, :cond_6

    .line 6272
    iget-object v2, p0, Lcom/google/e/a/ed;->b:[Lcom/google/e/a/ec;

    aget-object v2, v2, v1

    .line 6273
    if-eqz v2, :cond_5

    .line 6274
    const/4 v3, 0x4

    invoke-static {v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6271
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6279
    :cond_6
    iget v1, p0, Lcom/google/e/a/ed;->c:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_7

    .line 6280
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/e/a/ed;->h:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6283
    :cond_7
    iget v1, p0, Lcom/google/e/a/ed;->c:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_8

    .line 6284
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/e/a/ed;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6287
    :cond_8
    iget v1, p0, Lcom/google/e/a/ed;->c:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_9

    .line 6288
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/e/a/ed;->e:[B

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 6291
    :cond_9
    iput v0, p0, Lcom/google/e/a/ed;->cachedSize:I

    .line 6292
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 6061
    invoke-direct {p0, p1}, Lcom/google/e/a/ed;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/ed;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 6217
    iget-object v0, p0, Lcom/google/e/a/ed;->a:[Lcom/google/e/a/ec;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/e/a/ed;->a:[Lcom/google/e/a/ec;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 6218
    :goto_0
    iget-object v2, p0, Lcom/google/e/a/ed;->a:[Lcom/google/e/a/ec;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 6219
    iget-object v2, p0, Lcom/google/e/a/ed;->a:[Lcom/google/e/a/ec;

    aget-object v2, v2, v0

    .line 6220
    if-eqz v2, :cond_0

    .line 6221
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 6218
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6225
    :cond_1
    iget v0, p0, Lcom/google/e/a/ed;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 6226
    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/e/a/ed;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6228
    :cond_2
    iget v0, p0, Lcom/google/e/a/ed;->c:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 6229
    const/4 v0, 0x3

    iget v2, p0, Lcom/google/e/a/ed;->g:I

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6231
    :cond_3
    iget-object v0, p0, Lcom/google/e/a/ed;->b:[Lcom/google/e/a/ec;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/e/a/ed;->b:[Lcom/google/e/a/ec;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 6232
    :goto_1
    iget-object v0, p0, Lcom/google/e/a/ed;->b:[Lcom/google/e/a/ec;

    array-length v0, v0

    if-ge v1, v0, :cond_5

    .line 6233
    iget-object v0, p0, Lcom/google/e/a/ed;->b:[Lcom/google/e/a/ec;

    aget-object v0, v0, v1

    .line 6234
    if-eqz v0, :cond_4

    .line 6235
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 6232
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6239
    :cond_5
    iget v0, p0, Lcom/google/e/a/ed;->c:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_6

    .line 6240
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/e/a/ed;->h:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6242
    :cond_6
    iget v0, p0, Lcom/google/e/a/ed;->c:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_7

    .line 6243
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/e/a/ed;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6245
    :cond_7
    iget v0, p0, Lcom/google/e/a/ed;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    .line 6246
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/e/a/ed;->e:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 6248
    :cond_8
    return-void
.end method
