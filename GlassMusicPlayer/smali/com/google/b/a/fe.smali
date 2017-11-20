.class public final Lcom/google/b/a/fe;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/b/a/eo;

.field public b:Lcom/google/b/a/ew;

.field public c:Lcom/google/b/a/et;

.field public d:Lcom/google/b/a/eq;

.field public e:Lcom/google/b/a/ep;

.field public f:Lcom/google/b/a/ep;

.field public g:Lcom/google/b/a/ep;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10222
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 10223
    invoke-direct {p0}, Lcom/google/b/a/fe;->a()Lcom/google/b/a/fe;

    .line 10224
    return-void
.end method

.method private a()Lcom/google/b/a/fe;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10227
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/b/a/fe;->h:I

    .line 10228
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/fe;->i:Ljava/lang/String;

    .line 10229
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/fe;->j:Ljava/lang/String;

    .line 10230
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/fe;->k:Ljava/lang/String;

    .line 10231
    iput-object v1, p0, Lcom/google/b/a/fe;->a:Lcom/google/b/a/eo;

    .line 10232
    iput-object v1, p0, Lcom/google/b/a/fe;->b:Lcom/google/b/a/ew;

    .line 10233
    iput-object v1, p0, Lcom/google/b/a/fe;->c:Lcom/google/b/a/et;

    .line 10234
    iput-object v1, p0, Lcom/google/b/a/fe;->d:Lcom/google/b/a/eq;

    .line 10235
    iput-object v1, p0, Lcom/google/b/a/fe;->e:Lcom/google/b/a/ep;

    .line 10236
    iput-object v1, p0, Lcom/google/b/a/fe;->f:Lcom/google/b/a/ep;

    .line 10237
    iput-object v1, p0, Lcom/google/b/a/fe;->g:Lcom/google/b/a/ep;

    .line 10238
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/fe;->cachedSize:I

    .line 10239
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/fe;
    .locals 1

    .prologue
    .line 10329
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 10330
    sparse-switch v0, :sswitch_data_0

    .line 10334
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10335
    :sswitch_0
    return-object p0

    .line 10340
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/fe;->i:Ljava/lang/String;

    .line 10341
    iget v0, p0, Lcom/google/b/a/fe;->h:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/fe;->h:I

    goto :goto_0

    .line 10345
    :sswitch_2
    iget-object v0, p0, Lcom/google/b/a/fe;->b:Lcom/google/b/a/ew;

    if-nez v0, :cond_1

    .line 10346
    new-instance v0, Lcom/google/b/a/ew;

    invoke-direct {v0}, Lcom/google/b/a/ew;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/fe;->b:Lcom/google/b/a/ew;

    .line 10348
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/fe;->b:Lcom/google/b/a/ew;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 10352
    :sswitch_3
    iget-object v0, p0, Lcom/google/b/a/fe;->c:Lcom/google/b/a/et;

    if-nez v0, :cond_2

    .line 10353
    new-instance v0, Lcom/google/b/a/et;

    invoke-direct {v0}, Lcom/google/b/a/et;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/fe;->c:Lcom/google/b/a/et;

    .line 10355
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/fe;->c:Lcom/google/b/a/et;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 10359
    :sswitch_4
    iget-object v0, p0, Lcom/google/b/a/fe;->d:Lcom/google/b/a/eq;

    if-nez v0, :cond_3

    .line 10360
    new-instance v0, Lcom/google/b/a/eq;

    invoke-direct {v0}, Lcom/google/b/a/eq;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/fe;->d:Lcom/google/b/a/eq;

    .line 10362
    :cond_3
    iget-object v0, p0, Lcom/google/b/a/fe;->d:Lcom/google/b/a/eq;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 10366
    :sswitch_5
    iget-object v0, p0, Lcom/google/b/a/fe;->e:Lcom/google/b/a/ep;

    if-nez v0, :cond_4

    .line 10367
    new-instance v0, Lcom/google/b/a/ep;

    invoke-direct {v0}, Lcom/google/b/a/ep;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/fe;->e:Lcom/google/b/a/ep;

    .line 10369
    :cond_4
    iget-object v0, p0, Lcom/google/b/a/fe;->e:Lcom/google/b/a/ep;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 10373
    :sswitch_6
    iget-object v0, p0, Lcom/google/b/a/fe;->f:Lcom/google/b/a/ep;

    if-nez v0, :cond_5

    .line 10374
    new-instance v0, Lcom/google/b/a/ep;

    invoke-direct {v0}, Lcom/google/b/a/ep;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/fe;->f:Lcom/google/b/a/ep;

    .line 10376
    :cond_5
    iget-object v0, p0, Lcom/google/b/a/fe;->f:Lcom/google/b/a/ep;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 10380
    :sswitch_7
    iget-object v0, p0, Lcom/google/b/a/fe;->g:Lcom/google/b/a/ep;

    if-nez v0, :cond_6

    .line 10381
    new-instance v0, Lcom/google/b/a/ep;

    invoke-direct {v0}, Lcom/google/b/a/ep;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/fe;->g:Lcom/google/b/a/ep;

    .line 10383
    :cond_6
    iget-object v0, p0, Lcom/google/b/a/fe;->g:Lcom/google/b/a/ep;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 10387
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/fe;->k:Ljava/lang/String;

    .line 10388
    iget v0, p0, Lcom/google/b/a/fe;->h:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/b/a/fe;->h:I

    goto/16 :goto_0

    .line 10392
    :sswitch_9
    iget-object v0, p0, Lcom/google/b/a/fe;->a:Lcom/google/b/a/eo;

    if-nez v0, :cond_7

    .line 10393
    new-instance v0, Lcom/google/b/a/eo;

    invoke-direct {v0}, Lcom/google/b/a/eo;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/fe;->a:Lcom/google/b/a/eo;

    .line 10395
    :cond_7
    iget-object v0, p0, Lcom/google/b/a/fe;->a:Lcom/google/b/a/eo;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 10399
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/fe;->j:Ljava/lang/String;

    .line 10400
    iget v0, p0, Lcom/google/b/a/fe;->h:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/fe;->h:I

    goto/16 :goto_0

    .line 10330
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
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 10279
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 10280
    iget v1, p0, Lcom/google/b/a/fe;->h:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 10281
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/b/a/fe;->i:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10284
    :cond_0
    iget-object v1, p0, Lcom/google/b/a/fe;->b:Lcom/google/b/a/ew;

    if-eqz v1, :cond_1

    .line 10285
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/b/a/fe;->b:Lcom/google/b/a/ew;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10288
    :cond_1
    iget-object v1, p0, Lcom/google/b/a/fe;->c:Lcom/google/b/a/et;

    if-eqz v1, :cond_2

    .line 10289
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/b/a/fe;->c:Lcom/google/b/a/et;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10292
    :cond_2
    iget-object v1, p0, Lcom/google/b/a/fe;->d:Lcom/google/b/a/eq;

    if-eqz v1, :cond_3

    .line 10293
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/b/a/fe;->d:Lcom/google/b/a/eq;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10296
    :cond_3
    iget-object v1, p0, Lcom/google/b/a/fe;->e:Lcom/google/b/a/ep;

    if-eqz v1, :cond_4

    .line 10297
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/b/a/fe;->e:Lcom/google/b/a/ep;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10300
    :cond_4
    iget-object v1, p0, Lcom/google/b/a/fe;->f:Lcom/google/b/a/ep;

    if-eqz v1, :cond_5

    .line 10301
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/b/a/fe;->f:Lcom/google/b/a/ep;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10304
    :cond_5
    iget-object v1, p0, Lcom/google/b/a/fe;->g:Lcom/google/b/a/ep;

    if-eqz v1, :cond_6

    .line 10305
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/b/a/fe;->g:Lcom/google/b/a/ep;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10308
    :cond_6
    iget v1, p0, Lcom/google/b/a/fe;->h:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_7

    .line 10309
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/b/a/fe;->k:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10312
    :cond_7
    iget-object v1, p0, Lcom/google/b/a/fe;->a:Lcom/google/b/a/eo;

    if-eqz v1, :cond_8

    .line 10313
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/b/a/fe;->a:Lcom/google/b/a/eo;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10316
    :cond_8
    iget v1, p0, Lcom/google/b/a/fe;->h:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_9

    .line 10317
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/b/a/fe;->j:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10320
    :cond_9
    iput v0, p0, Lcom/google/b/a/fe;->cachedSize:I

    .line 10321
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 10116
    invoke-direct {p0, p1}, Lcom/google/b/a/fe;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/fe;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 10245
    iget v0, p0, Lcom/google/b/a/fe;->h:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 10246
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/fe;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 10248
    :cond_0
    iget-object v0, p0, Lcom/google/b/a/fe;->b:Lcom/google/b/a/ew;

    if-eqz v0, :cond_1

    .line 10249
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/b/a/fe;->b:Lcom/google/b/a/ew;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10251
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/fe;->c:Lcom/google/b/a/et;

    if-eqz v0, :cond_2

    .line 10252
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/b/a/fe;->c:Lcom/google/b/a/et;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10254
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/fe;->d:Lcom/google/b/a/eq;

    if-eqz v0, :cond_3

    .line 10255
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/b/a/fe;->d:Lcom/google/b/a/eq;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10257
    :cond_3
    iget-object v0, p0, Lcom/google/b/a/fe;->e:Lcom/google/b/a/ep;

    if-eqz v0, :cond_4

    .line 10258
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/b/a/fe;->e:Lcom/google/b/a/ep;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10260
    :cond_4
    iget-object v0, p0, Lcom/google/b/a/fe;->f:Lcom/google/b/a/ep;

    if-eqz v0, :cond_5

    .line 10261
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/b/a/fe;->f:Lcom/google/b/a/ep;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10263
    :cond_5
    iget-object v0, p0, Lcom/google/b/a/fe;->g:Lcom/google/b/a/ep;

    if-eqz v0, :cond_6

    .line 10264
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/b/a/fe;->g:Lcom/google/b/a/ep;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10266
    :cond_6
    iget v0, p0, Lcom/google/b/a/fe;->h:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_7

    .line 10267
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/b/a/fe;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 10269
    :cond_7
    iget-object v0, p0, Lcom/google/b/a/fe;->a:Lcom/google/b/a/eo;

    if-eqz v0, :cond_8

    .line 10270
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/b/a/fe;->a:Lcom/google/b/a/eo;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10272
    :cond_8
    iget v0, p0, Lcom/google/b/a/fe;->h:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_9

    .line 10273
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/b/a/fe;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 10275
    :cond_9
    return-void
.end method
