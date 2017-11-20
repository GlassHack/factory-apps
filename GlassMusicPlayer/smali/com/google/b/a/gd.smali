.class public final Lcom/google/b/a/gd;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile b:[Lcom/google/b/a/gd;


# instance fields
.field public a:Lcom/google/b/a/gn;

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3333
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 3334
    invoke-direct {p0}, Lcom/google/b/a/gd;->b()Lcom/google/b/a/gd;

    .line 3335
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/gd;
    .locals 1

    .prologue
    .line 3392
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3393
    sparse-switch v0, :sswitch_data_0

    .line 3397
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3398
    :sswitch_0
    return-object p0

    .line 3403
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/gd;->d:I

    .line 3404
    iget v0, p0, Lcom/google/b/a/gd;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/gd;->c:I

    goto :goto_0

    .line 3408
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/gd;->e:I

    .line 3409
    iget v0, p0, Lcom/google/b/a/gd;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/gd;->c:I

    goto :goto_0

    .line 3413
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/gd;->f:I

    .line 3414
    iget v0, p0, Lcom/google/b/a/gd;->c:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/b/a/gd;->c:I

    goto :goto_0

    .line 3418
    :sswitch_4
    iget-object v0, p0, Lcom/google/b/a/gd;->a:Lcom/google/b/a/gn;

    if-nez v0, :cond_1

    .line 3419
    new-instance v0, Lcom/google/b/a/gn;

    invoke-direct {v0}, Lcom/google/b/a/gn;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/gd;->a:Lcom/google/b/a/gn;

    .line 3421
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/gd;->a:Lcom/google/b/a/gn;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 3393
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public static a()[Lcom/google/b/a/gd;
    .locals 2

    .prologue
    .line 3260
    sget-object v0, Lcom/google/b/a/gd;->b:[Lcom/google/b/a/gd;

    if-nez v0, :cond_1

    .line 3261
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3263
    :try_start_0
    sget-object v0, Lcom/google/b/a/gd;->b:[Lcom/google/b/a/gd;

    if-nez v0, :cond_0

    .line 3264
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/b/a/gd;

    sput-object v0, Lcom/google/b/a/gd;->b:[Lcom/google/b/a/gd;

    .line 3266
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3268
    :cond_1
    sget-object v0, Lcom/google/b/a/gd;->b:[Lcom/google/b/a/gd;

    return-object v0

    .line 3266
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/b/a/gd;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3338
    iput v0, p0, Lcom/google/b/a/gd;->c:I

    .line 3339
    iput v0, p0, Lcom/google/b/a/gd;->d:I

    .line 3340
    iput v0, p0, Lcom/google/b/a/gd;->e:I

    .line 3341
    iput v0, p0, Lcom/google/b/a/gd;->f:I

    .line 3342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/b/a/gd;->a:Lcom/google/b/a/gn;

    .line 3343
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/gd;->cachedSize:I

    .line 3344
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 3366
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 3367
    iget v1, p0, Lcom/google/b/a/gd;->c:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 3368
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/b/a/gd;->d:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3371
    :cond_0
    iget v1, p0, Lcom/google/b/a/gd;->c:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 3372
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/b/a/gd;->e:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3375
    :cond_1
    iget v1, p0, Lcom/google/b/a/gd;->c:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 3376
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/b/a/gd;->f:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3379
    :cond_2
    iget-object v1, p0, Lcom/google/b/a/gd;->a:Lcom/google/b/a/gn;

    if-eqz v1, :cond_3

    .line 3380
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/b/a/gd;->a:Lcom/google/b/a/gn;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3383
    :cond_3
    iput v0, p0, Lcom/google/b/a/gd;->cachedSize:I

    .line 3384
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 3233
    invoke-direct {p0, p1}, Lcom/google/b/a/gd;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/gd;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 3350
    iget v0, p0, Lcom/google/b/a/gd;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3351
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/b/a/gd;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3353
    :cond_0
    iget v0, p0, Lcom/google/b/a/gd;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 3354
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/b/a/gd;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3356
    :cond_1
    iget v0, p0, Lcom/google/b/a/gd;->c:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 3357
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/b/a/gd;->f:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3359
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/gd;->a:Lcom/google/b/a/gn;

    if-eqz v0, :cond_3

    .line 3360
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/b/a/gd;->a:Lcom/google/b/a/gn;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3362
    :cond_3
    return-void
.end method
