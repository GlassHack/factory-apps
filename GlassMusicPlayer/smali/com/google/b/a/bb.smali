.class public final Lcom/google/b/a/bb;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:[Lcom/google/b/a/bc;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:D

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13298
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 13299
    invoke-direct {p0}, Lcom/google/b/a/bb;->a()Lcom/google/b/a/bb;

    .line 13300
    return-void
.end method

.method private a()Lcom/google/b/a/bb;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 13303
    iput v2, p0, Lcom/google/b/a/bb;->b:I

    .line 13304
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/bb;->c:Ljava/lang/String;

    .line 13305
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/bb;->d:Ljava/lang/String;

    .line 13306
    invoke-static {}, Lcom/google/b/a/bc;->a()[Lcom/google/b/a/bc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/bb;->a:[Lcom/google/b/a/bc;

    .line 13307
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/b/a/bb;->e:D

    .line 13308
    iput v2, p0, Lcom/google/b/a/bb;->f:I

    .line 13309
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/bb;->cachedSize:I

    .line 13310
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/bb;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 13375
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 13376
    sparse-switch v0, :sswitch_data_0

    .line 13380
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 13381
    :sswitch_0
    return-object p0

    .line 13386
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/bb;->c:Ljava/lang/String;

    .line 13387
    iget v0, p0, Lcom/google/b/a/bb;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/bb;->b:I

    goto :goto_0

    .line 13391
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/bb;->d:Ljava/lang/String;

    .line 13392
    iget v0, p0, Lcom/google/b/a/bb;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/bb;->b:I

    goto :goto_0

    .line 13396
    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 13398
    iget-object v0, p0, Lcom/google/b/a/bb;->a:[Lcom/google/b/a/bc;

    if-nez v0, :cond_2

    move v0, v1

    .line 13399
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/b/a/bc;

    .line 13401
    if-eqz v0, :cond_1

    .line 13402
    iget-object v3, p0, Lcom/google/b/a/bb;->a:[Lcom/google/b/a/bc;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13404
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 13405
    new-instance v3, Lcom/google/b/a/bc;

    invoke-direct {v3}, Lcom/google/b/a/bc;-><init>()V

    aput-object v3, v2, v0

    .line 13406
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 13407
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 13404
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 13398
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/bb;->a:[Lcom/google/b/a/bc;

    array-length v0, v0

    goto :goto_1

    .line 13410
    :cond_3
    new-instance v3, Lcom/google/b/a/bc;

    invoke-direct {v3}, Lcom/google/b/a/bc;-><init>()V

    aput-object v3, v2, v0

    .line 13411
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 13412
    iput-object v2, p0, Lcom/google/b/a/bb;->a:[Lcom/google/b/a/bc;

    goto :goto_0

    .line 13416
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/b/a/bb;->e:D

    .line 13417
    iget v0, p0, Lcom/google/b/a/bb;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/b/a/bb;->b:I

    goto :goto_0

    .line 13421
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/bb;->f:I

    .line 13422
    iget v0, p0, Lcom/google/b/a/bb;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/b/a/bb;->b:I

    goto :goto_0

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


# virtual methods
.method public final getSerializedSize()I
    .locals 5

    .prologue
    .line 13340
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 13341
    iget v1, p0, Lcom/google/b/a/bb;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 13342
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/b/a/bb;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13345
    :cond_0
    iget v1, p0, Lcom/google/b/a/bb;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 13346
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/b/a/bb;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13349
    :cond_1
    iget-object v1, p0, Lcom/google/b/a/bb;->a:[Lcom/google/b/a/bc;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/b/a/bb;->a:[Lcom/google/b/a/bc;

    array-length v1, v1

    if-lez v1, :cond_4

    .line 13350
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/b/a/bb;->a:[Lcom/google/b/a/bc;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 13351
    iget-object v2, p0, Lcom/google/b/a/bb;->a:[Lcom/google/b/a/bc;

    aget-object v2, v2, v0

    .line 13352
    if-eqz v2, :cond_2

    .line 13353
    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 13350
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 13358
    :cond_4
    iget v1, p0, Lcom/google/b/a/bb;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    .line 13359
    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/b/a/bb;->e:D

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 13362
    :cond_5
    iget v1, p0, Lcom/google/b/a/bb;->b:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_6

    .line 13363
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/b/a/bb;->f:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 13366
    :cond_6
    iput v0, p0, Lcom/google/b/a/bb;->cachedSize:I

    .line 13367
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 13194
    invoke-direct {p0, p1}, Lcom/google/b/a/bb;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/bb;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 13316
    iget v0, p0, Lcom/google/b/a/bb;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 13317
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/bb;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 13319
    :cond_0
    iget v0, p0, Lcom/google/b/a/bb;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 13320
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/b/a/bb;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 13322
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/bb;->a:[Lcom/google/b/a/bc;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/b/a/bb;->a:[Lcom/google/b/a/bc;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 13323
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/b/a/bb;->a:[Lcom/google/b/a/bc;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 13324
    iget-object v1, p0, Lcom/google/b/a/bb;->a:[Lcom/google/b/a/bc;

    aget-object v1, v1, v0

    .line 13325
    if-eqz v1, :cond_2

    .line 13326
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 13323
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13330
    :cond_3
    iget v0, p0, Lcom/google/b/a/bb;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 13331
    const/4 v0, 0x4

    iget-wide v1, p0, Lcom/google/b/a/bb;->e:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 13333
    :cond_4
    iget v0, p0, Lcom/google/b/a/bb;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    .line 13334
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/b/a/bb;->f:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 13336
    :cond_5
    return-void
.end method
