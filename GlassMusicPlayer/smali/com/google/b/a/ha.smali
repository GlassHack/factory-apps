.class public final Lcom/google/b/a/ha;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile a:[Lcom/google/b/a/ha;


# instance fields
.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:[B

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1385
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1386
    invoke-direct {p0}, Lcom/google/b/a/ha;->b()Lcom/google/b/a/ha;

    .line 1387
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/ha;
    .locals 1

    .prologue
    .line 1452
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1453
    sparse-switch v0, :sswitch_data_0

    .line 1457
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1458
    :sswitch_0
    return-object p0

    .line 1463
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ha;->c:Ljava/lang/String;

    .line 1464
    iget v0, p0, Lcom/google/b/a/ha;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/ha;->b:I

    goto :goto_0

    .line 1468
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ha;->d:Ljava/lang/String;

    .line 1469
    iget v0, p0, Lcom/google/b/a/ha;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/ha;->b:I

    goto :goto_0

    .line 1473
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ha;->e:Ljava/lang/String;

    .line 1474
    iget v0, p0, Lcom/google/b/a/ha;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/b/a/ha;->b:I

    goto :goto_0

    .line 1478
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ha;->f:[B

    .line 1479
    iget v0, p0, Lcom/google/b/a/ha;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/b/a/ha;->b:I

    goto :goto_0

    .line 1483
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/ha;->g:I

    .line 1484
    iget v0, p0, Lcom/google/b/a/ha;->b:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/b/a/ha;->b:I

    goto :goto_0

    .line 1453
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public static a()[Lcom/google/b/a/ha;
    .locals 2

    .prologue
    .line 1265
    sget-object v0, Lcom/google/b/a/ha;->a:[Lcom/google/b/a/ha;

    if-nez v0, :cond_1

    .line 1266
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1268
    :try_start_0
    sget-object v0, Lcom/google/b/a/ha;->a:[Lcom/google/b/a/ha;

    if-nez v0, :cond_0

    .line 1269
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/b/a/ha;

    sput-object v0, Lcom/google/b/a/ha;->a:[Lcom/google/b/a/ha;

    .line 1271
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1273
    :cond_1
    sget-object v0, Lcom/google/b/a/ha;->a:[Lcom/google/b/a/ha;

    return-object v0

    .line 1271
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/b/a/ha;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1390
    iput v1, p0, Lcom/google/b/a/ha;->b:I

    .line 1391
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ha;->c:Ljava/lang/String;

    .line 1392
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ha;->d:Ljava/lang/String;

    .line 1393
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ha;->e:Ljava/lang/String;

    .line 1394
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/b/a/ha;->f:[B

    .line 1395
    iput v1, p0, Lcom/google/b/a/ha;->g:I

    .line 1396
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/ha;->cachedSize:I

    .line 1397
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 1422
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1423
    iget v1, p0, Lcom/google/b/a/ha;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1424
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/b/a/ha;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1427
    :cond_0
    iget v1, p0, Lcom/google/b/a/ha;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1428
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/b/a/ha;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1431
    :cond_1
    iget v1, p0, Lcom/google/b/a/ha;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 1432
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/b/a/ha;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1435
    :cond_2
    iget v1, p0, Lcom/google/b/a/ha;->b:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 1436
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/b/a/ha;->f:[B

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 1439
    :cond_3
    iget v1, p0, Lcom/google/b/a/ha;->b:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 1440
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/b/a/ha;->g:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1443
    :cond_4
    iput v0, p0, Lcom/google/b/a/ha;->cachedSize:I

    .line 1444
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 1259
    invoke-direct {p0, p1}, Lcom/google/b/a/ha;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/ha;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 1403
    iget v0, p0, Lcom/google/b/a/ha;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1404
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/ha;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1406
    :cond_0
    iget v0, p0, Lcom/google/b/a/ha;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1407
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/b/a/ha;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1409
    :cond_1
    iget v0, p0, Lcom/google/b/a/ha;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 1410
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/b/a/ha;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1412
    :cond_2
    iget v0, p0, Lcom/google/b/a/ha;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 1413
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/b/a/ha;->f:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 1415
    :cond_3
    iget v0, p0, Lcom/google/b/a/ha;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 1416
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/b/a/ha;->g:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1418
    :cond_4
    return-void
.end method
