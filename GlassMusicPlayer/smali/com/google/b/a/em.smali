.class public final Lcom/google/b/a/em;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/b/a/cm;

.field public b:[Lcom/google/b/a/ee;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11297
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 11298
    invoke-direct {p0}, Lcom/google/b/a/em;->a()Lcom/google/b/a/em;

    .line 11299
    return-void
.end method

.method private a()Lcom/google/b/a/em;
    .locals 1

    .prologue
    .line 11302
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/b/a/em;->c:I

    .line 11303
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/em;->d:Ljava/lang/String;

    .line 11304
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/em;->e:Ljava/lang/String;

    .line 11305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/b/a/em;->a:Lcom/google/b/a/cm;

    .line 11306
    invoke-static {}, Lcom/google/b/a/ee;->a()[Lcom/google/b/a/ee;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/em;->b:[Lcom/google/b/a/ee;

    .line 11307
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/em;->cachedSize:I

    .line 11308
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/em;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 11366
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 11367
    sparse-switch v0, :sswitch_data_0

    .line 11371
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11372
    :sswitch_0
    return-object p0

    .line 11377
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/em;->d:Ljava/lang/String;

    .line 11378
    iget v0, p0, Lcom/google/b/a/em;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/em;->c:I

    goto :goto_0

    .line 11382
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/em;->e:Ljava/lang/String;

    .line 11383
    iget v0, p0, Lcom/google/b/a/em;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/em;->c:I

    goto :goto_0

    .line 11387
    :sswitch_3
    iget-object v0, p0, Lcom/google/b/a/em;->a:Lcom/google/b/a/cm;

    if-nez v0, :cond_1

    .line 11388
    new-instance v0, Lcom/google/b/a/cm;

    invoke-direct {v0}, Lcom/google/b/a/cm;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/em;->a:Lcom/google/b/a/cm;

    .line 11390
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/em;->a:Lcom/google/b/a/cm;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 11394
    :sswitch_4
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 11396
    iget-object v0, p0, Lcom/google/b/a/em;->b:[Lcom/google/b/a/ee;

    if-nez v0, :cond_3

    move v0, v1

    .line 11397
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/b/a/ee;

    .line 11399
    if-eqz v0, :cond_2

    .line 11400
    iget-object v3, p0, Lcom/google/b/a/em;->b:[Lcom/google/b/a/ee;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11402
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 11403
    new-instance v3, Lcom/google/b/a/ee;

    invoke-direct {v3}, Lcom/google/b/a/ee;-><init>()V

    aput-object v3, v2, v0

    .line 11404
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 11405
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 11402
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 11396
    :cond_3
    iget-object v0, p0, Lcom/google/b/a/em;->b:[Lcom/google/b/a/ee;

    array-length v0, v0

    goto :goto_1

    .line 11408
    :cond_4
    new-instance v3, Lcom/google/b/a/ee;

    invoke-direct {v3}, Lcom/google/b/a/ee;-><init>()V

    aput-object v3, v2, v0

    .line 11409
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 11410
    iput-object v2, p0, Lcom/google/b/a/em;->b:[Lcom/google/b/a/ee;

    goto :goto_0

    .line 11367
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 5

    .prologue
    .line 11335
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 11336
    iget v1, p0, Lcom/google/b/a/em;->c:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 11337
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/b/a/em;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11340
    :cond_0
    iget v1, p0, Lcom/google/b/a/em;->c:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 11341
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/b/a/em;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11344
    :cond_1
    iget-object v1, p0, Lcom/google/b/a/em;->a:Lcom/google/b/a/cm;

    if-eqz v1, :cond_2

    .line 11345
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/b/a/em;->a:Lcom/google/b/a/cm;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11348
    :cond_2
    iget-object v1, p0, Lcom/google/b/a/em;->b:[Lcom/google/b/a/ee;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/b/a/em;->b:[Lcom/google/b/a/ee;

    array-length v1, v1

    if-lez v1, :cond_5

    .line 11349
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/b/a/em;->b:[Lcom/google/b/a/ee;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 11350
    iget-object v2, p0, Lcom/google/b/a/em;->b:[Lcom/google/b/a/ee;

    aget-object v2, v2, v0

    .line 11351
    if-eqz v2, :cond_3

    .line 11352
    const/4 v3, 0x4

    invoke-static {v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 11349
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 11357
    :cond_5
    iput v0, p0, Lcom/google/b/a/em;->cachedSize:I

    .line 11358
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 11228
    invoke-direct {p0, p1}, Lcom/google/b/a/em;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/em;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 11314
    iget v0, p0, Lcom/google/b/a/em;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 11315
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/em;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 11317
    :cond_0
    iget v0, p0, Lcom/google/b/a/em;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 11318
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/b/a/em;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 11320
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/em;->a:Lcom/google/b/a/cm;

    if-eqz v0, :cond_2

    .line 11321
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/b/a/em;->a:Lcom/google/b/a/cm;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 11323
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/em;->b:[Lcom/google/b/a/ee;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/b/a/em;->b:[Lcom/google/b/a/ee;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 11324
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/b/a/em;->b:[Lcom/google/b/a/ee;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 11325
    iget-object v1, p0, Lcom/google/b/a/em;->b:[Lcom/google/b/a/ee;

    aget-object v1, v1, v0

    .line 11326
    if-eqz v1, :cond_3

    .line 11327
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 11324
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11331
    :cond_4
    return-void
.end method
