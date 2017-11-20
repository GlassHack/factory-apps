.class public final Lcom/google/b/a/bi;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile a:[Lcom/google/b/a/bi;


# instance fields
.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5372
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 5373
    invoke-direct {p0}, Lcom/google/b/a/bi;->b()Lcom/google/b/a/bi;

    .line 5374
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/bi;
    .locals 1

    .prologue
    .line 5415
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 5416
    sparse-switch v0, :sswitch_data_0

    .line 5420
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5421
    :sswitch_0
    return-object p0

    .line 5426
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/bi;->c:Ljava/lang/String;

    .line 5427
    iget v0, p0, Lcom/google/b/a/bi;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/bi;->b:I

    goto :goto_0

    .line 5431
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/bi;->d:Ljava/lang/String;

    .line 5432
    iget v0, p0, Lcom/google/b/a/bi;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/bi;->b:I

    goto :goto_0

    .line 5416
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public static a()[Lcom/google/b/a/bi;
    .locals 2

    .prologue
    .line 5315
    sget-object v0, Lcom/google/b/a/bi;->a:[Lcom/google/b/a/bi;

    if-nez v0, :cond_1

    .line 5316
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 5318
    :try_start_0
    sget-object v0, Lcom/google/b/a/bi;->a:[Lcom/google/b/a/bi;

    if-nez v0, :cond_0

    .line 5319
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/b/a/bi;

    sput-object v0, Lcom/google/b/a/bi;->a:[Lcom/google/b/a/bi;

    .line 5321
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5323
    :cond_1
    sget-object v0, Lcom/google/b/a/bi;->a:[Lcom/google/b/a/bi;

    return-object v0

    .line 5321
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/b/a/bi;
    .locals 1

    .prologue
    .line 5377
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/b/a/bi;->b:I

    .line 5378
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/bi;->c:Ljava/lang/String;

    .line 5379
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/bi;->d:Ljava/lang/String;

    .line 5380
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/bi;->cachedSize:I

    .line 5381
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 5397
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 5398
    iget v1, p0, Lcom/google/b/a/bi;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 5399
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/b/a/bi;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5402
    :cond_0
    iget v1, p0, Lcom/google/b/a/bi;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 5403
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/b/a/bi;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5406
    :cond_1
    iput v0, p0, Lcom/google/b/a/bi;->cachedSize:I

    .line 5407
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 5309
    invoke-direct {p0, p1}, Lcom/google/b/a/bi;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/bi;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 5387
    iget v0, p0, Lcom/google/b/a/bi;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 5388
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/bi;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5390
    :cond_0
    iget v0, p0, Lcom/google/b/a/bi;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 5391
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/b/a/bi;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5393
    :cond_1
    return-void
.end method
