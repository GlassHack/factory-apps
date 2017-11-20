.class public final Lcom/google/e/a/gg;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/e/a/fu;

.field private b:I

.field private c:J

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1294
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1295
    invoke-direct {p0}, Lcom/google/e/a/gg;->a()Lcom/google/e/a/gg;

    .line 1296
    return-void
.end method

.method private a()Lcom/google/e/a/gg;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1299
    iput v2, p0, Lcom/google/e/a/gg;->b:I

    .line 1300
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/e/a/gg;->c:J

    .line 1301
    iput v2, p0, Lcom/google/e/a/gg;->d:I

    .line 1302
    iput v2, p0, Lcom/google/e/a/gg;->e:I

    .line 1303
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/gg;->f:Ljava/lang/String;

    .line 1304
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/gg;->g:Ljava/lang/String;

    .line 1305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/e/a/gg;->a:Lcom/google/e/a/fu;

    .line 1306
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/gg;->cachedSize:I

    .line 1307
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/gg;
    .locals 2

    .prologue
    .line 1369
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1370
    sparse-switch v0, :sswitch_data_0

    .line 1374
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1375
    :sswitch_0
    return-object p0

    .line 1380
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/e/a/gg;->c:J

    .line 1381
    iget v0, p0, Lcom/google/e/a/gg;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/gg;->b:I

    goto :goto_0

    .line 1385
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/gg;->d:I

    .line 1386
    iget v0, p0, Lcom/google/e/a/gg;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/e/a/gg;->b:I

    goto :goto_0

    .line 1390
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/gg;->e:I

    .line 1391
    iget v0, p0, Lcom/google/e/a/gg;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/e/a/gg;->b:I

    goto :goto_0

    .line 1395
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/gg;->f:Ljava/lang/String;

    .line 1396
    iget v0, p0, Lcom/google/e/a/gg;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/e/a/gg;->b:I

    goto :goto_0

    .line 1400
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/gg;->g:Ljava/lang/String;

    .line 1401
    iget v0, p0, Lcom/google/e/a/gg;->b:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/e/a/gg;->b:I

    goto :goto_0

    .line 1405
    :sswitch_6
    iget-object v0, p0, Lcom/google/e/a/gg;->a:Lcom/google/e/a/fu;

    if-nez v0, :cond_1

    .line 1406
    new-instance v0, Lcom/google/e/a/fu;

    invoke-direct {v0}, Lcom/google/e/a/fu;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/gg;->a:Lcom/google/e/a/fu;

    .line 1408
    :cond_1
    iget-object v0, p0, Lcom/google/e/a/gg;->a:Lcom/google/e/a/fu;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1370
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10 -> :sswitch_1
        0x18 -> :sswitch_2
        0x20 -> :sswitch_3
        0x2a -> :sswitch_4
        0x32 -> :sswitch_5
        0x3a -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 4

    .prologue
    .line 1335
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1336
    iget v1, p0, Lcom/google/e/a/gg;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1337
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/e/a/gg;->c:J

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1340
    :cond_0
    iget v1, p0, Lcom/google/e/a/gg;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1341
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/e/a/gg;->d:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1344
    :cond_1
    iget v1, p0, Lcom/google/e/a/gg;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 1345
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/e/a/gg;->e:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1348
    :cond_2
    iget v1, p0, Lcom/google/e/a/gg;->b:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 1349
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/e/a/gg;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1352
    :cond_3
    iget v1, p0, Lcom/google/e/a/gg;->b:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 1353
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/e/a/gg;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1356
    :cond_4
    iget-object v1, p0, Lcom/google/e/a/gg;->a:Lcom/google/e/a/fu;

    if-eqz v1, :cond_5

    .line 1357
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/e/a/gg;->a:Lcom/google/e/a/fu;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1360
    :cond_5
    iput v0, p0, Lcom/google/e/a/gg;->cachedSize:I

    .line 1361
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 1167
    invoke-direct {p0, p1}, Lcom/google/e/a/gg;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/gg;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 1313
    iget v0, p0, Lcom/google/e/a/gg;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1314
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/e/a/gg;->c:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1316
    :cond_0
    iget v0, p0, Lcom/google/e/a/gg;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1317
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/e/a/gg;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1319
    :cond_1
    iget v0, p0, Lcom/google/e/a/gg;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 1320
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/e/a/gg;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1322
    :cond_2
    iget v0, p0, Lcom/google/e/a/gg;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 1323
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/e/a/gg;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1325
    :cond_3
    iget v0, p0, Lcom/google/e/a/gg;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 1326
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/e/a/gg;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1328
    :cond_4
    iget-object v0, p0, Lcom/google/e/a/gg;->a:Lcom/google/e/a/fu;

    if-eqz v0, :cond_5

    .line 1329
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/e/a/gg;->a:Lcom/google/e/a/fu;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1331
    :cond_5
    return-void
.end method
