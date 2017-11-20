.class public final Lcom/google/a/a/a/d;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:[Lcom/google/a/a/a/e;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 274
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 275
    invoke-direct {p0}, Lcom/google/a/a/a/d;->a()Lcom/google/a/a/a/d;

    .line 276
    return-void
.end method

.method private a()Lcom/google/a/a/a/d;
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/a/a/a/d;->b:I

    .line 280
    const-string v0, ""

    iput-object v0, p0, Lcom/google/a/a/a/d;->c:Ljava/lang/String;

    .line 281
    const-string v0, ""

    iput-object v0, p0, Lcom/google/a/a/a/d;->d:Ljava/lang/String;

    .line 282
    const-string v0, ""

    iput-object v0, p0, Lcom/google/a/a/a/d;->e:Ljava/lang/String;

    .line 283
    invoke-static {}, Lcom/google/a/a/a/e;->a()[Lcom/google/a/a/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/d;->a:[Lcom/google/a/a/a/e;

    .line 284
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/d;->cachedSize:I

    .line 285
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/a/a/a/d;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 343
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 344
    sparse-switch v0, :sswitch_data_0

    .line 348
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    :sswitch_0
    return-object p0

    .line 354
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/d;->c:Ljava/lang/String;

    .line 355
    iget v0, p0, Lcom/google/a/a/a/d;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/a/a/d;->b:I

    goto :goto_0

    .line 359
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/d;->e:Ljava/lang/String;

    .line 360
    iget v0, p0, Lcom/google/a/a/a/d;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/a/a/a/d;->b:I

    goto :goto_0

    .line 364
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/d;->d:Ljava/lang/String;

    .line 365
    iget v0, p0, Lcom/google/a/a/a/d;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/a/a/a/d;->b:I

    goto :goto_0

    .line 369
    :sswitch_4
    const/16 v0, 0x3a

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 371
    iget-object v0, p0, Lcom/google/a/a/a/d;->a:[Lcom/google/a/a/a/e;

    if-nez v0, :cond_2

    move v0, v1

    .line 372
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/a/a/a/e;

    .line 374
    if-eqz v0, :cond_1

    .line 375
    iget-object v3, p0, Lcom/google/a/a/a/d;->a:[Lcom/google/a/a/a/e;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 377
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 378
    new-instance v3, Lcom/google/a/a/a/e;

    invoke-direct {v3}, Lcom/google/a/a/a/e;-><init>()V

    aput-object v3, v2, v0

    .line 379
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 380
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 377
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 371
    :cond_2
    iget-object v0, p0, Lcom/google/a/a/a/d;->a:[Lcom/google/a/a/a/e;

    array-length v0, v0

    goto :goto_1

    .line 383
    :cond_3
    new-instance v3, Lcom/google/a/a/a/e;

    invoke-direct {v3}, Lcom/google/a/a/a/e;-><init>()V

    aput-object v3, v2, v0

    .line 384
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 385
    iput-object v2, p0, Lcom/google/a/a/a/d;->a:[Lcom/google/a/a/a/e;

    goto :goto_0

    .line 344
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x3a -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 5

    .prologue
    .line 312
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 313
    iget v1, p0, Lcom/google/a/a/a/d;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 314
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/d;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 317
    :cond_0
    iget v1, p0, Lcom/google/a/a/a/d;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    .line 318
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/a/a/a/d;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 321
    :cond_1
    iget v1, p0, Lcom/google/a/a/a/d;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 322
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/a/a/a/d;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 325
    :cond_2
    iget-object v1, p0, Lcom/google/a/a/a/d;->a:[Lcom/google/a/a/a/e;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/a/a/a/d;->a:[Lcom/google/a/a/a/e;

    array-length v1, v1

    if-lez v1, :cond_5

    .line 326
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/a/a/a/d;->a:[Lcom/google/a/a/a/e;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 327
    iget-object v2, p0, Lcom/google/a/a/a/d;->a:[Lcom/google/a/a/a/e;

    aget-object v2, v2, v0

    .line 328
    if-eqz v2, :cond_3

    .line 329
    const/4 v3, 0x7

    invoke-static {v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 326
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 334
    :cond_5
    iput v0, p0, Lcom/google/a/a/a/d;->cachedSize:I

    .line 335
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/google/a/a/a/d;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/a/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 291
    iget v0, p0, Lcom/google/a/a/a/d;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 292
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/d;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 294
    :cond_0
    iget v0, p0, Lcom/google/a/a/a/d;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 295
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/a/a/a/d;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 297
    :cond_1
    iget v0, p0, Lcom/google/a/a/a/d;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 298
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/a/a/a/d;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 300
    :cond_2
    iget-object v0, p0, Lcom/google/a/a/a/d;->a:[Lcom/google/a/a/a/e;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/a/a/a/d;->a:[Lcom/google/a/a/a/e;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 301
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/a/a/a/d;->a:[Lcom/google/a/a/a/e;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 302
    iget-object v1, p0, Lcom/google/a/a/a/d;->a:[Lcom/google/a/a/a/e;

    aget-object v1, v1, v0

    .line 303
    if-eqz v1, :cond_3

    .line 304
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 301
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 308
    :cond_4
    return-void
.end method
