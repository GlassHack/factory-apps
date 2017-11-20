.class public final Lcom/google/e/a/bk;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/e/a/bo;

.field public b:Lcom/google/e/a/bn;

.field public c:Lcom/google/e/a/bm;

.field public d:Lcom/google/e/a/bl;

.field public e:[Lcom/google/e/a/bp;

.field public f:[I

.field public g:[Lcom/google/e/a/bi;

.field public h:[Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:[B

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:I

.field private s:J

.field private t:D

.field private u:I

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Z

.field private y:Ljava/lang/String;

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7141
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 7142
    invoke-direct {p0}, Lcom/google/e/a/bk;->a()Lcom/google/e/a/bk;

    .line 7143
    return-void
.end method

.method private a()Lcom/google/e/a/bk;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 7146
    iput v2, p0, Lcom/google/e/a/bk;->i:I

    .line 7147
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/bk;->j:Ljava/lang/String;

    .line 7148
    iput v2, p0, Lcom/google/e/a/bk;->k:I

    .line 7149
    iput-object v1, p0, Lcom/google/e/a/bk;->a:Lcom/google/e/a/bo;

    .line 7150
    iput-object v1, p0, Lcom/google/e/a/bk;->b:Lcom/google/e/a/bn;

    .line 7151
    iput-object v1, p0, Lcom/google/e/a/bk;->c:Lcom/google/e/a/bm;

    .line 7152
    iput-object v1, p0, Lcom/google/e/a/bk;->d:Lcom/google/e/a/bl;

    .line 7153
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/bk;->l:Ljava/lang/String;

    .line 7154
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/bk;->m:Ljava/lang/String;

    .line 7155
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/bk;->n:Ljava/lang/String;

    .line 7156
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/e/a/bk;->o:[B

    .line 7157
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/bk;->p:Ljava/lang/String;

    .line 7158
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/bk;->q:Ljava/lang/String;

    .line 7159
    iput v3, p0, Lcom/google/e/a/bk;->r:I

    .line 7160
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/e/a/bk;->s:J

    .line 7161
    invoke-static {}, Lcom/google/e/a/bp;->a()[Lcom/google/e/a/bp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/bk;->e:[Lcom/google/e/a/bp;

    .line 7162
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/e/a/bk;->t:D

    .line 7163
    iput v2, p0, Lcom/google/e/a/bk;->u:I

    .line 7164
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/bk;->v:Ljava/lang/String;

    .line 7165
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/bk;->w:Ljava/lang/String;

    .line 7166
    iput-boolean v2, p0, Lcom/google/e/a/bk;->x:Z

    .line 7167
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/bk;->y:Ljava/lang/String;

    .line 7168
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/e/a/bk;->f:[I

    .line 7169
    iput-boolean v3, p0, Lcom/google/e/a/bk;->z:Z

    .line 7170
    invoke-static {}, Lcom/google/e/a/bi;->a()[Lcom/google/e/a/bi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/bk;->g:[Lcom/google/e/a/bi;

    .line 7171
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/e/a/bk;->h:[Ljava/lang/String;

    .line 7172
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/bk;->cachedSize:I

    .line 7173
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/bk;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 7411
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 7412
    sparse-switch v0, :sswitch_data_0

    .line 7416
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7417
    :sswitch_0
    return-object p0

    .line 7422
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/bk;->j:Ljava/lang/String;

    .line 7423
    iget v0, p0, Lcom/google/e/a/bk;->i:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/bk;->i:I

    goto :goto_0

    .line 7427
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/bk;->k:I

    .line 7428
    iget v0, p0, Lcom/google/e/a/bk;->i:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/e/a/bk;->i:I

    goto :goto_0

    .line 7432
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/bk;->n:Ljava/lang/String;

    .line 7433
    iget v0, p0, Lcom/google/e/a/bk;->i:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/e/a/bk;->i:I

    goto :goto_0

    .line 7437
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/bk;->y:Ljava/lang/String;

    .line 7438
    iget v0, p0, Lcom/google/e/a/bk;->i:I

    const v2, 0x8000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/e/a/bk;->i:I

    goto :goto_0

    .line 7442
    :sswitch_5
    iget-object v0, p0, Lcom/google/e/a/bk;->a:Lcom/google/e/a/bo;

    if-nez v0, :cond_1

    .line 7443
    new-instance v0, Lcom/google/e/a/bo;

    invoke-direct {v0}, Lcom/google/e/a/bo;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/bk;->a:Lcom/google/e/a/bo;

    .line 7445
    :cond_1
    iget-object v0, p0, Lcom/google/e/a/bk;->a:Lcom/google/e/a/bo;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 7449
    :sswitch_6
    iget-object v0, p0, Lcom/google/e/a/bk;->b:Lcom/google/e/a/bn;

    if-nez v0, :cond_2

    .line 7450
    new-instance v0, Lcom/google/e/a/bn;

    invoke-direct {v0}, Lcom/google/e/a/bn;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/bk;->b:Lcom/google/e/a/bn;

    .line 7452
    :cond_2
    iget-object v0, p0, Lcom/google/e/a/bk;->b:Lcom/google/e/a/bn;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 7456
    :sswitch_7
    iget-object v0, p0, Lcom/google/e/a/bk;->c:Lcom/google/e/a/bm;

    if-nez v0, :cond_3

    .line 7457
    new-instance v0, Lcom/google/e/a/bm;

    invoke-direct {v0}, Lcom/google/e/a/bm;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/bk;->c:Lcom/google/e/a/bm;

    .line 7459
    :cond_3
    iget-object v0, p0, Lcom/google/e/a/bk;->c:Lcom/google/e/a/bm;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 7463
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/bk;->l:Ljava/lang/String;

    .line 7464
    iget v0, p0, Lcom/google/e/a/bk;->i:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/e/a/bk;->i:I

    goto/16 :goto_0

    .line 7468
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/bk;->o:[B

    .line 7469
    iget v0, p0, Lcom/google/e/a/bk;->i:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/e/a/bk;->i:I

    goto/16 :goto_0

    .line 7473
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/bk;->p:Ljava/lang/String;

    .line 7474
    iget v0, p0, Lcom/google/e/a/bk;->i:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/e/a/bk;->i:I

    goto/16 :goto_0

    .line 7478
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/bk;->q:Ljava/lang/String;

    .line 7479
    iget v0, p0, Lcom/google/e/a/bk;->i:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/e/a/bk;->i:I

    goto/16 :goto_0

    .line 7483
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/e/a/bk;->s:J

    .line 7484
    iget v0, p0, Lcom/google/e/a/bk;->i:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/e/a/bk;->i:I

    goto/16 :goto_0

    .line 7488
    :sswitch_d
    const/16 v0, 0x7a

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 7490
    iget-object v0, p0, Lcom/google/e/a/bk;->e:[Lcom/google/e/a/bp;

    if-nez v0, :cond_5

    move v0, v1

    .line 7491
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/e/a/bp;

    .line 7493
    if-eqz v0, :cond_4

    .line 7494
    iget-object v3, p0, Lcom/google/e/a/bk;->e:[Lcom/google/e/a/bp;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7496
    :cond_4
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 7497
    new-instance v3, Lcom/google/e/a/bp;

    invoke-direct {v3}, Lcom/google/e/a/bp;-><init>()V

    aput-object v3, v2, v0

    .line 7498
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 7499
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 7496
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 7490
    :cond_5
    iget-object v0, p0, Lcom/google/e/a/bk;->e:[Lcom/google/e/a/bp;

    array-length v0, v0

    goto :goto_1

    .line 7502
    :cond_6
    new-instance v3, Lcom/google/e/a/bp;

    invoke-direct {v3}, Lcom/google/e/a/bp;-><init>()V

    aput-object v3, v2, v0

    .line 7503
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 7504
    iput-object v2, p0, Lcom/google/e/a/bk;->e:[Lcom/google/e/a/bp;

    goto/16 :goto_0

    .line 7508
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/e/a/bk;->t:D

    .line 7509
    iget v0, p0, Lcom/google/e/a/bk;->i:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/e/a/bk;->i:I

    goto/16 :goto_0

    .line 7513
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/bk;->u:I

    .line 7514
    iget v0, p0, Lcom/google/e/a/bk;->i:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/e/a/bk;->i:I

    goto/16 :goto_0

    .line 7518
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/bk;->v:Ljava/lang/String;

    .line 7519
    iget v0, p0, Lcom/google/e/a/bk;->i:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/e/a/bk;->i:I

    goto/16 :goto_0

    .line 7523
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/bk;->w:Ljava/lang/String;

    .line 7524
    iget v0, p0, Lcom/google/e/a/bk;->i:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/e/a/bk;->i:I

    goto/16 :goto_0

    .line 7528
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/e/a/bk;->x:Z

    .line 7529
    iget v0, p0, Lcom/google/e/a/bk;->i:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/e/a/bk;->i:I

    goto/16 :goto_0

    .line 7533
    :sswitch_13
    iget-object v0, p0, Lcom/google/e/a/bk;->d:Lcom/google/e/a/bl;

    if-nez v0, :cond_7

    .line 7534
    new-instance v0, Lcom/google/e/a/bl;

    invoke-direct {v0}, Lcom/google/e/a/bl;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/bk;->d:Lcom/google/e/a/bl;

    .line 7536
    :cond_7
    iget-object v0, p0, Lcom/google/e/a/bk;->d:Lcom/google/e/a/bl;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 7540
    :sswitch_14
    const/16 v0, 0xb0

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 7542
    iget-object v0, p0, Lcom/google/e/a/bk;->f:[I

    if-nez v0, :cond_9

    move v0, v1

    .line 7543
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [I

    .line 7544
    if-eqz v0, :cond_8

    .line 7545
    iget-object v3, p0, Lcom/google/e/a/bk;->f:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7547
    :cond_8
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_a

    .line 7548
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    aput v3, v2, v0

    .line 7549
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 7547
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 7542
    :cond_9
    iget-object v0, p0, Lcom/google/e/a/bk;->f:[I

    array-length v0, v0

    goto :goto_3

    .line 7552
    :cond_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    aput v3, v2, v0

    .line 7553
    iput-object v2, p0, Lcom/google/e/a/bk;->f:[I

    goto/16 :goto_0

    .line 7557
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 7558
    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 7561
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    move v0, v1

    .line 7562
    :goto_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_b

    .line 7563
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 7564
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 7566
    :cond_b
    invoke-virtual {p1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 7567
    iget-object v2, p0, Lcom/google/e/a/bk;->f:[I

    if-nez v2, :cond_d

    move v2, v1

    .line 7568
    :goto_6
    add-int/2addr v0, v2

    new-array v0, v0, [I

    .line 7569
    if-eqz v2, :cond_c

    .line 7570
    iget-object v4, p0, Lcom/google/e/a/bk;->f:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7572
    :cond_c
    :goto_7
    array-length v4, v0

    if-ge v2, v4, :cond_e

    .line 7573
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    aput v4, v0, v2

    .line 7572
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 7567
    :cond_d
    iget-object v2, p0, Lcom/google/e/a/bk;->f:[I

    array-length v2, v2

    goto :goto_6

    .line 7575
    :cond_e
    iput-object v0, p0, Lcom/google/e/a/bk;->f:[I

    .line 7576
    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 7580
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/e/a/bk;->z:Z

    .line 7581
    iget v0, p0, Lcom/google/e/a/bk;->i:I

    const/high16 v2, 0x10000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/e/a/bk;->i:I

    goto/16 :goto_0

    .line 7585
    :sswitch_17
    const/16 v0, 0xc2

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 7587
    iget-object v0, p0, Lcom/google/e/a/bk;->g:[Lcom/google/e/a/bi;

    if-nez v0, :cond_10

    move v0, v1

    .line 7588
    :goto_8
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/e/a/bi;

    .line 7590
    if-eqz v0, :cond_f

    .line 7591
    iget-object v3, p0, Lcom/google/e/a/bk;->g:[Lcom/google/e/a/bi;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7593
    :cond_f
    :goto_9
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_11

    .line 7594
    new-instance v3, Lcom/google/e/a/bi;

    invoke-direct {v3}, Lcom/google/e/a/bi;-><init>()V

    aput-object v3, v2, v0

    .line 7595
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 7596
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 7593
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 7587
    :cond_10
    iget-object v0, p0, Lcom/google/e/a/bk;->g:[Lcom/google/e/a/bi;

    array-length v0, v0

    goto :goto_8

    .line 7599
    :cond_11
    new-instance v3, Lcom/google/e/a/bi;

    invoke-direct {v3}, Lcom/google/e/a/bi;-><init>()V

    aput-object v3, v2, v0

    .line 7600
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 7601
    iput-object v2, p0, Lcom/google/e/a/bk;->g:[Lcom/google/e/a/bi;

    goto/16 :goto_0

    .line 7605
    :sswitch_18
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/bk;->r:I

    .line 7606
    iget v0, p0, Lcom/google/e/a/bk;->i:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/e/a/bk;->i:I

    goto/16 :goto_0

    .line 7610
    :sswitch_19
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/bk;->m:Ljava/lang/String;

    .line 7611
    iget v0, p0, Lcom/google/e/a/bk;->i:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/e/a/bk;->i:I

    goto/16 :goto_0

    .line 7615
    :sswitch_1a
    const/16 v0, 0xda

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 7617
    iget-object v0, p0, Lcom/google/e/a/bk;->h:[Ljava/lang/String;

    if-nez v0, :cond_13

    move v0, v1

    .line 7618
    :goto_a
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 7619
    if-eqz v0, :cond_12

    .line 7620
    iget-object v3, p0, Lcom/google/e/a/bk;->h:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7622
    :cond_12
    :goto_b
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_14

    .line 7623
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 7624
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 7622
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 7617
    :cond_13
    iget-object v0, p0, Lcom/google/e/a/bk;->h:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_a

    .line 7627
    :cond_14
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 7628
    iput-object v2, p0, Lcom/google/e/a/bk;->h:[Ljava/lang/String;

    goto/16 :goto_0

    .line 7412
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x18 -> :sswitch_2
        0x22 -> :sswitch_3
        0x2a -> :sswitch_4
        0x32 -> :sswitch_5
        0x3a -> :sswitch_6
        0x42 -> :sswitch_7
        0x4a -> :sswitch_8
        0x52 -> :sswitch_9
        0x5a -> :sswitch_a
        0x62 -> :sswitch_b
        0x70 -> :sswitch_c
        0x7a -> :sswitch_d
        0x81 -> :sswitch_e
        0x88 -> :sswitch_f
        0x92 -> :sswitch_10
        0x9a -> :sswitch_11
        0xa0 -> :sswitch_12
        0xaa -> :sswitch_13
        0xb0 -> :sswitch_14
        0xb2 -> :sswitch_15
        0xb8 -> :sswitch_16
        0xc2 -> :sswitch_17
        0xc8 -> :sswitch_18
        0xd2 -> :sswitch_19
        0xda -> :sswitch_1a
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 7275
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 7276
    iget v2, p0, Lcom/google/e/a/bk;->i:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 7277
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/e/a/bk;->j:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7280
    :cond_0
    iget v2, p0, Lcom/google/e/a/bk;->i:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 7281
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/e/a/bk;->k:I

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 7284
    :cond_1
    iget v2, p0, Lcom/google/e/a/bk;->i:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_2

    .line 7285
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/e/a/bk;->n:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7288
    :cond_2
    iget v2, p0, Lcom/google/e/a/bk;->i:I

    const v3, 0x8000

    and-int/2addr v2, v3

    if-eqz v2, :cond_3

    .line 7289
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/e/a/bk;->y:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7292
    :cond_3
    iget-object v2, p0, Lcom/google/e/a/bk;->a:Lcom/google/e/a/bo;

    if-eqz v2, :cond_4

    .line 7293
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/e/a/bk;->a:Lcom/google/e/a/bo;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7296
    :cond_4
    iget-object v2, p0, Lcom/google/e/a/bk;->b:Lcom/google/e/a/bn;

    if-eqz v2, :cond_5

    .line 7297
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/e/a/bk;->b:Lcom/google/e/a/bn;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7300
    :cond_5
    iget-object v2, p0, Lcom/google/e/a/bk;->c:Lcom/google/e/a/bm;

    if-eqz v2, :cond_6

    .line 7301
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/e/a/bk;->c:Lcom/google/e/a/bm;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7304
    :cond_6
    iget v2, p0, Lcom/google/e/a/bk;->i:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_7

    .line 7305
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/e/a/bk;->l:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7308
    :cond_7
    iget v2, p0, Lcom/google/e/a/bk;->i:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_8

    .line 7309
    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/e/a/bk;->o:[B

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v2

    add-int/2addr v0, v2

    .line 7312
    :cond_8
    iget v2, p0, Lcom/google/e/a/bk;->i:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_9

    .line 7313
    const/16 v2, 0xb

    iget-object v3, p0, Lcom/google/e/a/bk;->p:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7316
    :cond_9
    iget v2, p0, Lcom/google/e/a/bk;->i:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_a

    .line 7317
    const/16 v2, 0xc

    iget-object v3, p0, Lcom/google/e/a/bk;->q:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7320
    :cond_a
    iget v2, p0, Lcom/google/e/a/bk;->i:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_b

    .line 7321
    const/16 v2, 0xe

    iget-wide v3, p0, Lcom/google/e/a/bk;->s:J

    invoke-static {v2, v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 7324
    :cond_b
    iget-object v2, p0, Lcom/google/e/a/bk;->e:[Lcom/google/e/a/bp;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/google/e/a/bk;->e:[Lcom/google/e/a/bp;

    array-length v2, v2

    if-lez v2, :cond_e

    move v2, v0

    move v0, v1

    .line 7325
    :goto_0
    iget-object v3, p0, Lcom/google/e/a/bk;->e:[Lcom/google/e/a/bp;

    array-length v3, v3

    if-ge v0, v3, :cond_d

    .line 7326
    iget-object v3, p0, Lcom/google/e/a/bk;->e:[Lcom/google/e/a/bp;

    aget-object v3, v3, v0

    .line 7327
    if-eqz v3, :cond_c

    .line 7328
    const/16 v4, 0xf

    invoke-static {v4, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 7325
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_d
    move v0, v2

    .line 7333
    :cond_e
    iget v2, p0, Lcom/google/e/a/bk;->i:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_f

    .line 7334
    const/16 v2, 0x10

    iget-wide v3, p0, Lcom/google/e/a/bk;->t:D

    invoke-static {v2, v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 7337
    :cond_f
    iget v2, p0, Lcom/google/e/a/bk;->i:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_10

    .line 7338
    const/16 v2, 0x11

    iget v3, p0, Lcom/google/e/a/bk;->u:I

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 7341
    :cond_10
    iget v2, p0, Lcom/google/e/a/bk;->i:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_11

    .line 7342
    const/16 v2, 0x12

    iget-object v3, p0, Lcom/google/e/a/bk;->v:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7345
    :cond_11
    iget v2, p0, Lcom/google/e/a/bk;->i:I

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_12

    .line 7346
    const/16 v2, 0x13

    iget-object v3, p0, Lcom/google/e/a/bk;->w:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7349
    :cond_12
    iget v2, p0, Lcom/google/e/a/bk;->i:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_13

    .line 7350
    const/16 v2, 0x14

    iget-boolean v3, p0, Lcom/google/e/a/bk;->x:Z

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 7353
    :cond_13
    iget-object v2, p0, Lcom/google/e/a/bk;->d:Lcom/google/e/a/bl;

    if-eqz v2, :cond_14

    .line 7354
    const/16 v2, 0x15

    iget-object v3, p0, Lcom/google/e/a/bk;->d:Lcom/google/e/a/bl;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7357
    :cond_14
    iget-object v2, p0, Lcom/google/e/a/bk;->f:[I

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/google/e/a/bk;->f:[I

    array-length v2, v2

    if-lez v2, :cond_16

    move v2, v1

    move v3, v1

    .line 7359
    :goto_1
    iget-object v4, p0, Lcom/google/e/a/bk;->f:[I

    array-length v4, v4

    if-ge v2, v4, :cond_15

    .line 7360
    iget-object v4, p0, Lcom/google/e/a/bk;->f:[I

    aget v4, v4, v2

    .line 7361
    invoke-static {v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 7359
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 7364
    :cond_15
    add-int/2addr v0, v3

    .line 7365
    iget-object v2, p0, Lcom/google/e/a/bk;->f:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 7367
    :cond_16
    iget v2, p0, Lcom/google/e/a/bk;->i:I

    const/high16 v3, 0x10000

    and-int/2addr v2, v3

    if-eqz v2, :cond_17

    .line 7368
    const/16 v2, 0x17

    iget-boolean v3, p0, Lcom/google/e/a/bk;->z:Z

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 7371
    :cond_17
    iget-object v2, p0, Lcom/google/e/a/bk;->g:[Lcom/google/e/a/bi;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/google/e/a/bk;->g:[Lcom/google/e/a/bi;

    array-length v2, v2

    if-lez v2, :cond_1a

    move v2, v0

    move v0, v1

    .line 7372
    :goto_2
    iget-object v3, p0, Lcom/google/e/a/bk;->g:[Lcom/google/e/a/bi;

    array-length v3, v3

    if-ge v0, v3, :cond_19

    .line 7373
    iget-object v3, p0, Lcom/google/e/a/bk;->g:[Lcom/google/e/a/bi;

    aget-object v3, v3, v0

    .line 7374
    if-eqz v3, :cond_18

    .line 7375
    const/16 v4, 0x18

    invoke-static {v4, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 7372
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_19
    move v0, v2

    .line 7380
    :cond_1a
    iget v2, p0, Lcom/google/e/a/bk;->i:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_1b

    .line 7381
    const/16 v2, 0x19

    iget v3, p0, Lcom/google/e/a/bk;->r:I

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 7384
    :cond_1b
    iget v2, p0, Lcom/google/e/a/bk;->i:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_1c

    .line 7385
    const/16 v2, 0x1a

    iget-object v3, p0, Lcom/google/e/a/bk;->m:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7388
    :cond_1c
    iget-object v2, p0, Lcom/google/e/a/bk;->h:[Ljava/lang/String;

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/google/e/a/bk;->h:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_1f

    move v2, v1

    move v3, v1

    .line 7391
    :goto_3
    iget-object v4, p0, Lcom/google/e/a/bk;->h:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_1e

    .line 7392
    iget-object v4, p0, Lcom/google/e/a/bk;->h:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 7393
    if-eqz v4, :cond_1d

    .line 7394
    add-int/lit8 v3, v3, 0x1

    .line 7395
    invoke-static {v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 7391
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 7399
    :cond_1e
    add-int/2addr v0, v2

    .line 7400
    mul-int/lit8 v1, v3, 0x2

    add-int/2addr v0, v1

    .line 7402
    :cond_1f
    iput v0, p0, Lcom/google/e/a/bk;->cachedSize:I

    .line 7403
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 5451
    invoke-direct {p0, p1}, Lcom/google/e/a/bk;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/bk;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 7179
    iget v0, p0, Lcom/google/e/a/bk;->i:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7180
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/e/a/bk;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7182
    :cond_0
    iget v0, p0, Lcom/google/e/a/bk;->i:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 7183
    const/4 v0, 0x3

    iget v2, p0, Lcom/google/e/a/bk;->k:I

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7185
    :cond_1
    iget v0, p0, Lcom/google/e/a/bk;->i:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    .line 7186
    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/e/a/bk;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7188
    :cond_2
    iget v0, p0, Lcom/google/e/a/bk;->i:I

    const v2, 0x8000

    and-int/2addr v0, v2

    if-eqz v0, :cond_3

    .line 7189
    const/4 v0, 0x5

    iget-object v2, p0, Lcom/google/e/a/bk;->y:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7191
    :cond_3
    iget-object v0, p0, Lcom/google/e/a/bk;->a:Lcom/google/e/a/bo;

    if-eqz v0, :cond_4

    .line 7192
    const/4 v0, 0x6

    iget-object v2, p0, Lcom/google/e/a/bk;->a:Lcom/google/e/a/bo;

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 7194
    :cond_4
    iget-object v0, p0, Lcom/google/e/a/bk;->b:Lcom/google/e/a/bn;

    if-eqz v0, :cond_5

    .line 7195
    const/4 v0, 0x7

    iget-object v2, p0, Lcom/google/e/a/bk;->b:Lcom/google/e/a/bn;

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 7197
    :cond_5
    iget-object v0, p0, Lcom/google/e/a/bk;->c:Lcom/google/e/a/bm;

    if-eqz v0, :cond_6

    .line 7198
    const/16 v0, 0x8

    iget-object v2, p0, Lcom/google/e/a/bk;->c:Lcom/google/e/a/bm;

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 7200
    :cond_6
    iget v0, p0, Lcom/google/e/a/bk;->i:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_7

    .line 7201
    const/16 v0, 0x9

    iget-object v2, p0, Lcom/google/e/a/bk;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7203
    :cond_7
    iget v0, p0, Lcom/google/e/a/bk;->i:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    .line 7204
    const/16 v0, 0xa

    iget-object v2, p0, Lcom/google/e/a/bk;->o:[B

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 7206
    :cond_8
    iget v0, p0, Lcom/google/e/a/bk;->i:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_9

    .line 7207
    const/16 v0, 0xb

    iget-object v2, p0, Lcom/google/e/a/bk;->p:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7209
    :cond_9
    iget v0, p0, Lcom/google/e/a/bk;->i:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_a

    .line 7210
    const/16 v0, 0xc

    iget-object v2, p0, Lcom/google/e/a/bk;->q:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7212
    :cond_a
    iget v0, p0, Lcom/google/e/a/bk;->i:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_b

    .line 7213
    const/16 v0, 0xe

    iget-wide v2, p0, Lcom/google/e/a/bk;->s:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 7215
    :cond_b
    iget-object v0, p0, Lcom/google/e/a/bk;->e:[Lcom/google/e/a/bp;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/e/a/bk;->e:[Lcom/google/e/a/bp;

    array-length v0, v0

    if-lez v0, :cond_d

    move v0, v1

    .line 7216
    :goto_0
    iget-object v2, p0, Lcom/google/e/a/bk;->e:[Lcom/google/e/a/bp;

    array-length v2, v2

    if-ge v0, v2, :cond_d

    .line 7217
    iget-object v2, p0, Lcom/google/e/a/bk;->e:[Lcom/google/e/a/bp;

    aget-object v2, v2, v0

    .line 7218
    if-eqz v2, :cond_c

    .line 7219
    const/16 v3, 0xf

    invoke-virtual {p1, v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 7216
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7223
    :cond_d
    iget v0, p0, Lcom/google/e/a/bk;->i:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_e

    .line 7224
    const/16 v0, 0x10

    iget-wide v2, p0, Lcom/google/e/a/bk;->t:D

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 7226
    :cond_e
    iget v0, p0, Lcom/google/e/a/bk;->i:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_f

    .line 7227
    const/16 v0, 0x11

    iget v2, p0, Lcom/google/e/a/bk;->u:I

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7229
    :cond_f
    iget v0, p0, Lcom/google/e/a/bk;->i:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_10

    .line 7230
    const/16 v0, 0x12

    iget-object v2, p0, Lcom/google/e/a/bk;->v:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7232
    :cond_10
    iget v0, p0, Lcom/google/e/a/bk;->i:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_11

    .line 7233
    const/16 v0, 0x13

    iget-object v2, p0, Lcom/google/e/a/bk;->w:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7235
    :cond_11
    iget v0, p0, Lcom/google/e/a/bk;->i:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_12

    .line 7236
    const/16 v0, 0x14

    iget-boolean v2, p0, Lcom/google/e/a/bk;->x:Z

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 7238
    :cond_12
    iget-object v0, p0, Lcom/google/e/a/bk;->d:Lcom/google/e/a/bl;

    if-eqz v0, :cond_13

    .line 7239
    const/16 v0, 0x15

    iget-object v2, p0, Lcom/google/e/a/bk;->d:Lcom/google/e/a/bl;

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 7241
    :cond_13
    iget-object v0, p0, Lcom/google/e/a/bk;->f:[I

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/e/a/bk;->f:[I

    array-length v0, v0

    if-lez v0, :cond_14

    move v0, v1

    .line 7242
    :goto_1
    iget-object v2, p0, Lcom/google/e/a/bk;->f:[I

    array-length v2, v2

    if-ge v0, v2, :cond_14

    .line 7243
    const/16 v2, 0x16

    iget-object v3, p0, Lcom/google/e/a/bk;->f:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7242
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7246
    :cond_14
    iget v0, p0, Lcom/google/e/a/bk;->i:I

    const/high16 v2, 0x10000

    and-int/2addr v0, v2

    if-eqz v0, :cond_15

    .line 7247
    const/16 v0, 0x17

    iget-boolean v2, p0, Lcom/google/e/a/bk;->z:Z

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 7249
    :cond_15
    iget-object v0, p0, Lcom/google/e/a/bk;->g:[Lcom/google/e/a/bi;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/e/a/bk;->g:[Lcom/google/e/a/bi;

    array-length v0, v0

    if-lez v0, :cond_17

    move v0, v1

    .line 7250
    :goto_2
    iget-object v2, p0, Lcom/google/e/a/bk;->g:[Lcom/google/e/a/bi;

    array-length v2, v2

    if-ge v0, v2, :cond_17

    .line 7251
    iget-object v2, p0, Lcom/google/e/a/bk;->g:[Lcom/google/e/a/bi;

    aget-object v2, v2, v0

    .line 7252
    if-eqz v2, :cond_16

    .line 7253
    const/16 v3, 0x18

    invoke-virtual {p1, v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 7250
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 7257
    :cond_17
    iget v0, p0, Lcom/google/e/a/bk;->i:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_18

    .line 7258
    const/16 v0, 0x19

    iget v2, p0, Lcom/google/e/a/bk;->r:I

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7260
    :cond_18
    iget v0, p0, Lcom/google/e/a/bk;->i:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_19

    .line 7261
    const/16 v0, 0x1a

    iget-object v2, p0, Lcom/google/e/a/bk;->m:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7263
    :cond_19
    iget-object v0, p0, Lcom/google/e/a/bk;->h:[Ljava/lang/String;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/e/a/bk;->h:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1b

    .line 7264
    :goto_3
    iget-object v0, p0, Lcom/google/e/a/bk;->h:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_1b

    .line 7265
    iget-object v0, p0, Lcom/google/e/a/bk;->h:[Ljava/lang/String;

    aget-object v0, v0, v1

    .line 7266
    if-eqz v0, :cond_1a

    .line 7267
    const/16 v2, 0x1b

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7264
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 7271
    :cond_1b
    return-void
.end method
