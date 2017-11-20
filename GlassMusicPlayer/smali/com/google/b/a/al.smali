.class public final Lcom/google/b/a/al;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Z

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1330
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1331
    invoke-direct {p0}, Lcom/google/b/a/al;->a()Lcom/google/b/a/al;

    .line 1332
    return-void
.end method

.method private a()Lcom/google/b/a/al;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1335
    iput v0, p0, Lcom/google/b/a/al;->a:I

    .line 1336
    iput-boolean v0, p0, Lcom/google/b/a/al;->b:Z

    .line 1337
    iput v0, p0, Lcom/google/b/a/al;->c:I

    .line 1338
    iput-boolean v0, p0, Lcom/google/b/a/al;->d:Z

    .line 1339
    iput-boolean v0, p0, Lcom/google/b/a/al;->e:Z

    .line 1340
    iput-boolean v0, p0, Lcom/google/b/a/al;->f:Z

    .line 1341
    iput v0, p0, Lcom/google/b/a/al;->g:I

    .line 1342
    iput v0, p0, Lcom/google/b/a/al;->h:I

    .line 1343
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/al;->cachedSize:I

    .line 1344
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/al;
    .locals 1

    .prologue
    .line 1413
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1414
    sparse-switch v0, :sswitch_data_0

    .line 1418
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1419
    :sswitch_0
    return-object p0

    .line 1424
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/b/a/al;->b:Z

    .line 1425
    iget v0, p0, Lcom/google/b/a/al;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/al;->a:I

    goto :goto_0

    .line 1429
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/al;->c:I

    .line 1430
    iget v0, p0, Lcom/google/b/a/al;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/al;->a:I

    goto :goto_0

    .line 1434
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/b/a/al;->d:Z

    .line 1435
    iget v0, p0, Lcom/google/b/a/al;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/b/a/al;->a:I

    goto :goto_0

    .line 1439
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/b/a/al;->e:Z

    .line 1440
    iget v0, p0, Lcom/google/b/a/al;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/b/a/al;->a:I

    goto :goto_0

    .line 1444
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/b/a/al;->f:Z

    .line 1445
    iget v0, p0, Lcom/google/b/a/al;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/b/a/al;->a:I

    goto :goto_0

    .line 1449
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/al;->g:I

    .line 1450
    iget v0, p0, Lcom/google/b/a/al;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/b/a/al;->a:I

    goto :goto_0

    .line 1454
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/al;->h:I

    .line 1455
    iget v0, p0, Lcom/google/b/a/al;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/b/a/al;->a:I

    goto :goto_0

    .line 1414
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 1375
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1376
    iget v1, p0, Lcom/google/b/a/al;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1377
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/b/a/al;->b:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1380
    :cond_0
    iget v1, p0, Lcom/google/b/a/al;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1381
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/b/a/al;->c:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1384
    :cond_1
    iget v1, p0, Lcom/google/b/a/al;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 1385
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/b/a/al;->d:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1388
    :cond_2
    iget v1, p0, Lcom/google/b/a/al;->a:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 1389
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/b/a/al;->e:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1392
    :cond_3
    iget v1, p0, Lcom/google/b/a/al;->a:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 1393
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/b/a/al;->f:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1396
    :cond_4
    iget v1, p0, Lcom/google/b/a/al;->a:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 1397
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/b/a/al;->g:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1400
    :cond_5
    iget v1, p0, Lcom/google/b/a/al;->a:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 1401
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/b/a/al;->h:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1404
    :cond_6
    iput v0, p0, Lcom/google/b/a/al;->cachedSize:I

    .line 1405
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 1178
    invoke-direct {p0, p1}, Lcom/google/b/a/al;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/al;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 1350
    iget v0, p0, Lcom/google/b/a/al;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1351
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/b/a/al;->b:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1353
    :cond_0
    iget v0, p0, Lcom/google/b/a/al;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1354
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/b/a/al;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1356
    :cond_1
    iget v0, p0, Lcom/google/b/a/al;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 1357
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/b/a/al;->d:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1359
    :cond_2
    iget v0, p0, Lcom/google/b/a/al;->a:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 1360
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/b/a/al;->e:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1362
    :cond_3
    iget v0, p0, Lcom/google/b/a/al;->a:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 1363
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/b/a/al;->f:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1365
    :cond_4
    iget v0, p0, Lcom/google/b/a/al;->a:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 1366
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/b/a/al;->g:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1368
    :cond_5
    iget v0, p0, Lcom/google/b/a/al;->a:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 1369
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/b/a/al;->h:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1371
    :cond_6
    return-void
.end method
