.class public final Lcom/google/b/a/eh;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile a:[Lcom/google/b/a/eh;


# instance fields
.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2314
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2315
    invoke-direct {p0}, Lcom/google/b/a/eh;->b()Lcom/google/b/a/eh;

    .line 2316
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/eh;
    .locals 1

    .prologue
    .line 2357
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2358
    sparse-switch v0, :sswitch_data_0

    .line 2362
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2363
    :sswitch_0
    return-object p0

    .line 2368
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/eh;->c:Ljava/lang/String;

    .line 2369
    iget v0, p0, Lcom/google/b/a/eh;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/eh;->b:I

    goto :goto_0

    .line 2373
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/eh;->d:Ljava/lang/String;

    .line 2374
    iget v0, p0, Lcom/google/b/a/eh;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/eh;->b:I

    goto :goto_0

    .line 2358
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public static a()[Lcom/google/b/a/eh;
    .locals 2

    .prologue
    .line 2257
    sget-object v0, Lcom/google/b/a/eh;->a:[Lcom/google/b/a/eh;

    if-nez v0, :cond_1

    .line 2258
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2260
    :try_start_0
    sget-object v0, Lcom/google/b/a/eh;->a:[Lcom/google/b/a/eh;

    if-nez v0, :cond_0

    .line 2261
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/b/a/eh;

    sput-object v0, Lcom/google/b/a/eh;->a:[Lcom/google/b/a/eh;

    .line 2263
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2265
    :cond_1
    sget-object v0, Lcom/google/b/a/eh;->a:[Lcom/google/b/a/eh;

    return-object v0

    .line 2263
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/b/a/eh;
    .locals 1

    .prologue
    .line 2319
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/b/a/eh;->b:I

    .line 2320
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/eh;->c:Ljava/lang/String;

    .line 2321
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/eh;->d:Ljava/lang/String;

    .line 2322
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/eh;->cachedSize:I

    .line 2323
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 2339
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 2340
    iget v1, p0, Lcom/google/b/a/eh;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 2341
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/b/a/eh;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2344
    :cond_0
    iget v1, p0, Lcom/google/b/a/eh;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 2345
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/b/a/eh;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2348
    :cond_1
    iput v0, p0, Lcom/google/b/a/eh;->cachedSize:I

    .line 2349
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 2251
    invoke-direct {p0, p1}, Lcom/google/b/a/eh;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/eh;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 2329
    iget v0, p0, Lcom/google/b/a/eh;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2330
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/eh;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2332
    :cond_0
    iget v0, p0, Lcom/google/b/a/eh;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 2333
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/b/a/eh;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2335
    :cond_1
    return-void
.end method
