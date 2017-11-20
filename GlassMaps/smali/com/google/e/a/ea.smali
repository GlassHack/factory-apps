.class public final Lcom/google/e/a/ea;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:[Lcom/google/e/a/eu;

.field public b:[Lcom/google/e/a/fd;

.field public c:Lcom/google/e/a/dz;

.field public d:Lcom/google/e/a/dz;

.field public e:[Lcom/google/e/a/dz;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7204
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 7205
    invoke-direct {p0}, Lcom/google/e/a/ea;->a()Lcom/google/e/a/ea;

    .line 7206
    return-void
.end method

.method private a()Lcom/google/e/a/ea;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7209
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/e/a/ea;->f:I

    .line 7210
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/ea;->g:Ljava/lang/String;

    .line 7211
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/ea;->h:Ljava/lang/String;

    .line 7212
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/ea;->i:Ljava/lang/String;

    .line 7213
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/ea;->j:Ljava/lang/String;

    .line 7214
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/ea;->k:Ljava/lang/String;

    .line 7215
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/ea;->l:Ljava/lang/String;

    .line 7216
    invoke-static {}, Lcom/google/e/a/eu;->a()[Lcom/google/e/a/eu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/ea;->a:[Lcom/google/e/a/eu;

    .line 7217
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/ea;->m:Ljava/lang/String;

    .line 7218
    invoke-static {}, Lcom/google/e/a/fd;->a()[Lcom/google/e/a/fd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/ea;->b:[Lcom/google/e/a/fd;

    .line 7219
    iput-object v1, p0, Lcom/google/e/a/ea;->c:Lcom/google/e/a/dz;

    .line 7220
    iput-object v1, p0, Lcom/google/e/a/ea;->d:Lcom/google/e/a/dz;

    .line 7221
    invoke-static {}, Lcom/google/e/a/dz;->a()[Lcom/google/e/a/dz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/ea;->e:[Lcom/google/e/a/dz;

    .line 7222
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/ea;->cachedSize:I

    .line 7223
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/ea;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 7357
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 7358
    sparse-switch v0, :sswitch_data_0

    .line 7362
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7363
    :sswitch_0
    return-object p0

    .line 7368
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/ea;->g:Ljava/lang/String;

    .line 7369
    iget v0, p0, Lcom/google/e/a/ea;->f:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/ea;->f:I

    goto :goto_0

    .line 7373
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/ea;->h:Ljava/lang/String;

    .line 7374
    iget v0, p0, Lcom/google/e/a/ea;->f:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/e/a/ea;->f:I

    goto :goto_0

    .line 7378
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/ea;->i:Ljava/lang/String;

    .line 7379
    iget v0, p0, Lcom/google/e/a/ea;->f:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/e/a/ea;->f:I

    goto :goto_0

    .line 7383
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/ea;->j:Ljava/lang/String;

    .line 7384
    iget v0, p0, Lcom/google/e/a/ea;->f:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/e/a/ea;->f:I

    goto :goto_0

    .line 7388
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/ea;->k:Ljava/lang/String;

    .line 7389
    iget v0, p0, Lcom/google/e/a/ea;->f:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/e/a/ea;->f:I

    goto :goto_0

    .line 7393
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/ea;->l:Ljava/lang/String;

    .line 7394
    iget v0, p0, Lcom/google/e/a/ea;->f:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/e/a/ea;->f:I

    goto :goto_0

    .line 7398
    :sswitch_7
    const/16 v0, 0x3a

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 7400
    iget-object v0, p0, Lcom/google/e/a/ea;->a:[Lcom/google/e/a/eu;

    if-nez v0, :cond_2

    move v0, v1

    .line 7401
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/e/a/eu;

    .line 7403
    if-eqz v0, :cond_1

    .line 7404
    iget-object v3, p0, Lcom/google/e/a/ea;->a:[Lcom/google/e/a/eu;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7406
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 7407
    new-instance v3, Lcom/google/e/a/eu;

    invoke-direct {v3}, Lcom/google/e/a/eu;-><init>()V

    aput-object v3, v2, v0

    .line 7408
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 7409
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 7406
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 7400
    :cond_2
    iget-object v0, p0, Lcom/google/e/a/ea;->a:[Lcom/google/e/a/eu;

    array-length v0, v0

    goto :goto_1

    .line 7412
    :cond_3
    new-instance v3, Lcom/google/e/a/eu;

    invoke-direct {v3}, Lcom/google/e/a/eu;-><init>()V

    aput-object v3, v2, v0

    .line 7413
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 7414
    iput-object v2, p0, Lcom/google/e/a/ea;->a:[Lcom/google/e/a/eu;

    goto/16 :goto_0

    .line 7418
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/ea;->m:Ljava/lang/String;

    .line 7419
    iget v0, p0, Lcom/google/e/a/ea;->f:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/e/a/ea;->f:I

    goto/16 :goto_0

    .line 7423
    :sswitch_9
    const/16 v0, 0x4a

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 7425
    iget-object v0, p0, Lcom/google/e/a/ea;->b:[Lcom/google/e/a/fd;

    if-nez v0, :cond_5

    move v0, v1

    .line 7426
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/e/a/fd;

    .line 7428
    if-eqz v0, :cond_4

    .line 7429
    iget-object v3, p0, Lcom/google/e/a/ea;->b:[Lcom/google/e/a/fd;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7431
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 7432
    new-instance v3, Lcom/google/e/a/fd;

    invoke-direct {v3}, Lcom/google/e/a/fd;-><init>()V

    aput-object v3, v2, v0

    .line 7433
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 7434
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 7431
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 7425
    :cond_5
    iget-object v0, p0, Lcom/google/e/a/ea;->b:[Lcom/google/e/a/fd;

    array-length v0, v0

    goto :goto_3

    .line 7437
    :cond_6
    new-instance v3, Lcom/google/e/a/fd;

    invoke-direct {v3}, Lcom/google/e/a/fd;-><init>()V

    aput-object v3, v2, v0

    .line 7438
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 7439
    iput-object v2, p0, Lcom/google/e/a/ea;->b:[Lcom/google/e/a/fd;

    goto/16 :goto_0

    .line 7443
    :sswitch_a
    iget-object v0, p0, Lcom/google/e/a/ea;->c:Lcom/google/e/a/dz;

    if-nez v0, :cond_7

    .line 7444
    new-instance v0, Lcom/google/e/a/dz;

    invoke-direct {v0}, Lcom/google/e/a/dz;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/ea;->c:Lcom/google/e/a/dz;

    .line 7446
    :cond_7
    iget-object v0, p0, Lcom/google/e/a/ea;->c:Lcom/google/e/a/dz;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 7450
    :sswitch_b
    iget-object v0, p0, Lcom/google/e/a/ea;->d:Lcom/google/e/a/dz;

    if-nez v0, :cond_8

    .line 7451
    new-instance v0, Lcom/google/e/a/dz;

    invoke-direct {v0}, Lcom/google/e/a/dz;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/ea;->d:Lcom/google/e/a/dz;

    .line 7453
    :cond_8
    iget-object v0, p0, Lcom/google/e/a/ea;->d:Lcom/google/e/a/dz;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 7457
    :sswitch_c
    const/16 v0, 0x62

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 7459
    iget-object v0, p0, Lcom/google/e/a/ea;->e:[Lcom/google/e/a/dz;

    if-nez v0, :cond_a

    move v0, v1

    .line 7460
    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/e/a/dz;

    .line 7462
    if-eqz v0, :cond_9

    .line 7463
    iget-object v3, p0, Lcom/google/e/a/ea;->e:[Lcom/google/e/a/dz;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7465
    :cond_9
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_b

    .line 7466
    new-instance v3, Lcom/google/e/a/dz;

    invoke-direct {v3}, Lcom/google/e/a/dz;-><init>()V

    aput-object v3, v2, v0

    .line 7467
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 7468
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 7465
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 7459
    :cond_a
    iget-object v0, p0, Lcom/google/e/a/ea;->e:[Lcom/google/e/a/dz;

    array-length v0, v0

    goto :goto_5

    .line 7471
    :cond_b
    new-instance v3, Lcom/google/e/a/dz;

    invoke-direct {v3}, Lcom/google/e/a/dz;-><init>()V

    aput-object v3, v2, v0

    .line 7472
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 7473
    iput-object v2, p0, Lcom/google/e/a/ea;->e:[Lcom/google/e/a/dz;

    goto/16 :goto_0

    .line 7358
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
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 7284
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 7285
    iget v2, p0, Lcom/google/e/a/ea;->f:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 7286
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/e/a/ea;->g:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7289
    :cond_0
    iget v2, p0, Lcom/google/e/a/ea;->f:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 7290
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/e/a/ea;->h:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7293
    :cond_1
    iget v2, p0, Lcom/google/e/a/ea;->f:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 7294
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/e/a/ea;->i:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7297
    :cond_2
    iget v2, p0, Lcom/google/e/a/ea;->f:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    .line 7298
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/e/a/ea;->j:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7301
    :cond_3
    iget v2, p0, Lcom/google/e/a/ea;->f:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_4

    .line 7302
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/e/a/ea;->k:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7305
    :cond_4
    iget v2, p0, Lcom/google/e/a/ea;->f:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_5

    .line 7306
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/e/a/ea;->l:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7309
    :cond_5
    iget-object v2, p0, Lcom/google/e/a/ea;->a:[Lcom/google/e/a/eu;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/e/a/ea;->a:[Lcom/google/e/a/eu;

    array-length v2, v2

    if-lez v2, :cond_8

    move v2, v0

    move v0, v1

    .line 7310
    :goto_0
    iget-object v3, p0, Lcom/google/e/a/ea;->a:[Lcom/google/e/a/eu;

    array-length v3, v3

    if-ge v0, v3, :cond_7

    .line 7311
    iget-object v3, p0, Lcom/google/e/a/ea;->a:[Lcom/google/e/a/eu;

    aget-object v3, v3, v0

    .line 7312
    if-eqz v3, :cond_6

    .line 7313
    const/4 v4, 0x7

    invoke-static {v4, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 7310
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    move v0, v2

    .line 7318
    :cond_8
    iget v2, p0, Lcom/google/e/a/ea;->f:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_9

    .line 7319
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/e/a/ea;->m:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7322
    :cond_9
    iget-object v2, p0, Lcom/google/e/a/ea;->b:[Lcom/google/e/a/fd;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/google/e/a/ea;->b:[Lcom/google/e/a/fd;

    array-length v2, v2

    if-lez v2, :cond_c

    move v2, v0

    move v0, v1

    .line 7323
    :goto_1
    iget-object v3, p0, Lcom/google/e/a/ea;->b:[Lcom/google/e/a/fd;

    array-length v3, v3

    if-ge v0, v3, :cond_b

    .line 7324
    iget-object v3, p0, Lcom/google/e/a/ea;->b:[Lcom/google/e/a/fd;

    aget-object v3, v3, v0

    .line 7325
    if-eqz v3, :cond_a

    .line 7326
    const/16 v4, 0x9

    invoke-static {v4, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 7323
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    move v0, v2

    .line 7331
    :cond_c
    iget-object v2, p0, Lcom/google/e/a/ea;->c:Lcom/google/e/a/dz;

    if-eqz v2, :cond_d

    .line 7332
    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/e/a/ea;->c:Lcom/google/e/a/dz;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7335
    :cond_d
    iget-object v2, p0, Lcom/google/e/a/ea;->d:Lcom/google/e/a/dz;

    if-eqz v2, :cond_e

    .line 7336
    const/16 v2, 0xb

    iget-object v3, p0, Lcom/google/e/a/ea;->d:Lcom/google/e/a/dz;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7339
    :cond_e
    iget-object v2, p0, Lcom/google/e/a/ea;->e:[Lcom/google/e/a/dz;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/google/e/a/ea;->e:[Lcom/google/e/a/dz;

    array-length v2, v2

    if-lez v2, :cond_10

    .line 7340
    :goto_2
    iget-object v2, p0, Lcom/google/e/a/ea;->e:[Lcom/google/e/a/dz;

    array-length v2, v2

    if-ge v1, v2, :cond_10

    .line 7341
    iget-object v2, p0, Lcom/google/e/a/ea;->e:[Lcom/google/e/a/dz;

    aget-object v2, v2, v1

    .line 7342
    if-eqz v2, :cond_f

    .line 7343
    const/16 v3, 0xc

    invoke-static {v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7340
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 7348
    :cond_10
    iput v0, p0, Lcom/google/e/a/ea;->cachedSize:I

    .line 7349
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 7016
    invoke-direct {p0, p1}, Lcom/google/e/a/ea;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/ea;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 7229
    iget v0, p0, Lcom/google/e/a/ea;->f:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7230
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/e/a/ea;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7232
    :cond_0
    iget v0, p0, Lcom/google/e/a/ea;->f:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 7233
    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/e/a/ea;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7235
    :cond_1
    iget v0, p0, Lcom/google/e/a/ea;->f:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 7236
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/e/a/ea;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7238
    :cond_2
    iget v0, p0, Lcom/google/e/a/ea;->f:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 7239
    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/e/a/ea;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7241
    :cond_3
    iget v0, p0, Lcom/google/e/a/ea;->f:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 7242
    const/4 v0, 0x5

    iget-object v2, p0, Lcom/google/e/a/ea;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7244
    :cond_4
    iget v0, p0, Lcom/google/e/a/ea;->f:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 7245
    const/4 v0, 0x6

    iget-object v2, p0, Lcom/google/e/a/ea;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7247
    :cond_5
    iget-object v0, p0, Lcom/google/e/a/ea;->a:[Lcom/google/e/a/eu;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/e/a/ea;->a:[Lcom/google/e/a/eu;

    array-length v0, v0

    if-lez v0, :cond_7

    move v0, v1

    .line 7248
    :goto_0
    iget-object v2, p0, Lcom/google/e/a/ea;->a:[Lcom/google/e/a/eu;

    array-length v2, v2

    if-ge v0, v2, :cond_7

    .line 7249
    iget-object v2, p0, Lcom/google/e/a/ea;->a:[Lcom/google/e/a/eu;

    aget-object v2, v2, v0

    .line 7250
    if-eqz v2, :cond_6

    .line 7251
    const/4 v3, 0x7

    invoke-virtual {p1, v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 7248
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7255
    :cond_7
    iget v0, p0, Lcom/google/e/a/ea;->f:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    .line 7256
    const/16 v0, 0x8

    iget-object v2, p0, Lcom/google/e/a/ea;->m:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7258
    :cond_8
    iget-object v0, p0, Lcom/google/e/a/ea;->b:[Lcom/google/e/a/fd;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/e/a/ea;->b:[Lcom/google/e/a/fd;

    array-length v0, v0

    if-lez v0, :cond_a

    move v0, v1

    .line 7259
    :goto_1
    iget-object v2, p0, Lcom/google/e/a/ea;->b:[Lcom/google/e/a/fd;

    array-length v2, v2

    if-ge v0, v2, :cond_a

    .line 7260
    iget-object v2, p0, Lcom/google/e/a/ea;->b:[Lcom/google/e/a/fd;

    aget-object v2, v2, v0

    .line 7261
    if-eqz v2, :cond_9

    .line 7262
    const/16 v3, 0x9

    invoke-virtual {p1, v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 7259
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7266
    :cond_a
    iget-object v0, p0, Lcom/google/e/a/ea;->c:Lcom/google/e/a/dz;

    if-eqz v0, :cond_b

    .line 7267
    const/16 v0, 0xa

    iget-object v2, p0, Lcom/google/e/a/ea;->c:Lcom/google/e/a/dz;

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 7269
    :cond_b
    iget-object v0, p0, Lcom/google/e/a/ea;->d:Lcom/google/e/a/dz;

    if-eqz v0, :cond_c

    .line 7270
    const/16 v0, 0xb

    iget-object v2, p0, Lcom/google/e/a/ea;->d:Lcom/google/e/a/dz;

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 7272
    :cond_c
    iget-object v0, p0, Lcom/google/e/a/ea;->e:[Lcom/google/e/a/dz;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/e/a/ea;->e:[Lcom/google/e/a/dz;

    array-length v0, v0

    if-lez v0, :cond_e

    .line 7273
    :goto_2
    iget-object v0, p0, Lcom/google/e/a/ea;->e:[Lcom/google/e/a/dz;

    array-length v0, v0

    if-ge v1, v0, :cond_e

    .line 7274
    iget-object v0, p0, Lcom/google/e/a/ea;->e:[Lcom/google/e/a/dz;

    aget-object v0, v0, v1

    .line 7275
    if-eqz v0, :cond_d

    .line 7276
    const/16 v2, 0xc

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 7273
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 7280
    :cond_e
    return-void
.end method
