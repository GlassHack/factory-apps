.class public final Lcom/google/e/a/gj;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile d:[Lcom/google/e/a/gj;


# instance fields
.field public a:Lcom/google/e/a/gc;

.field public b:Lcom/google/e/a/fy;

.field public c:Lcom/google/e/a/fy;

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2309
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2310
    invoke-direct {p0}, Lcom/google/e/a/gj;->b()Lcom/google/e/a/gj;

    .line 2311
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/gj;
    .locals 1

    .prologue
    .line 2392
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2393
    sparse-switch v0, :sswitch_data_0

    .line 2397
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2398
    :sswitch_0
    return-object p0

    .line 2403
    :sswitch_1
    iget-object v0, p0, Lcom/google/e/a/gj;->a:Lcom/google/e/a/gc;

    if-nez v0, :cond_1

    .line 2404
    new-instance v0, Lcom/google/e/a/gc;

    invoke-direct {v0}, Lcom/google/e/a/gc;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/gj;->a:Lcom/google/e/a/gc;

    .line 2406
    :cond_1
    iget-object v0, p0, Lcom/google/e/a/gj;->a:Lcom/google/e/a/gc;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2410
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/gj;->f:I

    .line 2411
    iget v0, p0, Lcom/google/e/a/gj;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/gj;->e:I

    goto :goto_0

    .line 2415
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/gj;->g:Ljava/lang/String;

    .line 2416
    iget v0, p0, Lcom/google/e/a/gj;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/e/a/gj;->e:I

    goto :goto_0

    .line 2420
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/gj;->h:I

    .line 2421
    iget v0, p0, Lcom/google/e/a/gj;->e:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/e/a/gj;->e:I

    goto :goto_0

    .line 2425
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/gj;->i:I

    .line 2426
    iget v0, p0, Lcom/google/e/a/gj;->e:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/e/a/gj;->e:I

    goto :goto_0

    .line 2430
    :sswitch_6
    iget-object v0, p0, Lcom/google/e/a/gj;->b:Lcom/google/e/a/fy;

    if-nez v0, :cond_2

    .line 2431
    new-instance v0, Lcom/google/e/a/fy;

    invoke-direct {v0}, Lcom/google/e/a/fy;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/gj;->b:Lcom/google/e/a/fy;

    .line 2433
    :cond_2
    iget-object v0, p0, Lcom/google/e/a/gj;->b:Lcom/google/e/a/fy;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2437
    :sswitch_7
    iget-object v0, p0, Lcom/google/e/a/gj;->c:Lcom/google/e/a/fy;

    if-nez v0, :cond_3

    .line 2438
    new-instance v0, Lcom/google/e/a/fy;

    invoke-direct {v0}, Lcom/google/e/a/fy;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/gj;->c:Lcom/google/e/a/fy;

    .line 2440
    :cond_3
    iget-object v0, p0, Lcom/google/e/a/gj;->c:Lcom/google/e/a/fy;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2393
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x2a -> :sswitch_3
        0x30 -> :sswitch_4
        0x38 -> :sswitch_5
        0x1f42 -> :sswitch_6
        0x1db1e292 -> :sswitch_7
    .end sparse-switch
.end method

.method public static a()[Lcom/google/e/a/gj;
    .locals 2

    .prologue
    .line 2208
    sget-object v0, Lcom/google/e/a/gj;->d:[Lcom/google/e/a/gj;

    if-nez v0, :cond_1

    .line 2209
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2211
    :try_start_0
    sget-object v0, Lcom/google/e/a/gj;->d:[Lcom/google/e/a/gj;

    if-nez v0, :cond_0

    .line 2212
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/e/a/gj;

    sput-object v0, Lcom/google/e/a/gj;->d:[Lcom/google/e/a/gj;

    .line 2214
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2216
    :cond_1
    sget-object v0, Lcom/google/e/a/gj;->d:[Lcom/google/e/a/gj;

    return-object v0

    .line 2214
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/e/a/gj;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2314
    iput v1, p0, Lcom/google/e/a/gj;->e:I

    .line 2315
    iput-object v2, p0, Lcom/google/e/a/gj;->a:Lcom/google/e/a/gc;

    .line 2316
    iput v1, p0, Lcom/google/e/a/gj;->f:I

    .line 2317
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/gj;->g:Ljava/lang/String;

    .line 2318
    iput v1, p0, Lcom/google/e/a/gj;->h:I

    .line 2319
    iput v1, p0, Lcom/google/e/a/gj;->i:I

    .line 2320
    iput-object v2, p0, Lcom/google/e/a/gj;->b:Lcom/google/e/a/fy;

    .line 2321
    iput-object v2, p0, Lcom/google/e/a/gj;->c:Lcom/google/e/a/fy;

    .line 2322
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/gj;->cachedSize:I

    .line 2323
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 2354
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 2355
    iget-object v1, p0, Lcom/google/e/a/gj;->a:Lcom/google/e/a/gc;

    if-eqz v1, :cond_0

    .line 2356
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/e/a/gj;->a:Lcom/google/e/a/gc;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2359
    :cond_0
    iget v1, p0, Lcom/google/e/a/gj;->e:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 2360
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/e/a/gj;->f:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2363
    :cond_1
    iget v1, p0, Lcom/google/e/a/gj;->e:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 2364
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/e/a/gj;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2367
    :cond_2
    iget v1, p0, Lcom/google/e/a/gj;->e:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 2368
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/e/a/gj;->h:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2371
    :cond_3
    iget v1, p0, Lcom/google/e/a/gj;->e:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    .line 2372
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/e/a/gj;->i:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2375
    :cond_4
    iget-object v1, p0, Lcom/google/e/a/gj;->b:Lcom/google/e/a/fy;

    if-eqz v1, :cond_5

    .line 2376
    const/16 v1, 0x3e8

    iget-object v2, p0, Lcom/google/e/a/gj;->b:Lcom/google/e/a/fy;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2379
    :cond_5
    iget-object v1, p0, Lcom/google/e/a/gj;->c:Lcom/google/e/a/fy;

    if-eqz v1, :cond_6

    .line 2380
    const v1, 0x3b63c52

    iget-object v2, p0, Lcom/google/e/a/gj;->c:Lcom/google/e/a/fy;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2383
    :cond_6
    iput v0, p0, Lcom/google/e/a/gj;->cachedSize:I

    .line 2384
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 2195
    invoke-direct {p0, p1}, Lcom/google/e/a/gj;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/gj;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 2329
    iget-object v0, p0, Lcom/google/e/a/gj;->a:Lcom/google/e/a/gc;

    if-eqz v0, :cond_0

    .line 2330
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/e/a/gj;->a:Lcom/google/e/a/gc;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2332
    :cond_0
    iget v0, p0, Lcom/google/e/a/gj;->e:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 2333
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/e/a/gj;->f:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2335
    :cond_1
    iget v0, p0, Lcom/google/e/a/gj;->e:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 2336
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/e/a/gj;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2338
    :cond_2
    iget v0, p0, Lcom/google/e/a/gj;->e:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 2339
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/e/a/gj;->h:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2341
    :cond_3
    iget v0, p0, Lcom/google/e/a/gj;->e:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 2342
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/e/a/gj;->i:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2344
    :cond_4
    iget-object v0, p0, Lcom/google/e/a/gj;->b:Lcom/google/e/a/fy;

    if-eqz v0, :cond_5

    .line 2345
    const/16 v0, 0x3e8

    iget-object v1, p0, Lcom/google/e/a/gj;->b:Lcom/google/e/a/fy;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2347
    :cond_5
    iget-object v0, p0, Lcom/google/e/a/gj;->c:Lcom/google/e/a/fy;

    if-eqz v0, :cond_6

    .line 2348
    const v0, 0x3b63c52

    iget-object v1, p0, Lcom/google/e/a/gj;->c:Lcom/google/e/a/fy;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2350
    :cond_6
    return-void
.end method
