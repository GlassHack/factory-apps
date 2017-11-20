.class public final Lcom/google/b/a/bc;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile a:[Lcom/google/b/a/bc;


# instance fields
.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14294
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 14295
    invoke-direct {p0}, Lcom/google/b/a/bc;->b()Lcom/google/b/a/bc;

    .line 14296
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/bc;
    .locals 1

    .prologue
    .line 14337
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 14338
    sparse-switch v0, :sswitch_data_0

    .line 14342
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14343
    :sswitch_0
    return-object p0

    .line 14348
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/bc;->c:Ljava/lang/String;

    .line 14349
    iget v0, p0, Lcom/google/b/a/bc;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/bc;->b:I

    goto :goto_0

    .line 14353
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/bc;->d:Ljava/lang/String;

    .line 14354
    iget v0, p0, Lcom/google/b/a/bc;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/bc;->b:I

    goto :goto_0

    .line 14338
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public static a()[Lcom/google/b/a/bc;
    .locals 2

    .prologue
    .line 14237
    sget-object v0, Lcom/google/b/a/bc;->a:[Lcom/google/b/a/bc;

    if-nez v0, :cond_1

    .line 14238
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 14240
    :try_start_0
    sget-object v0, Lcom/google/b/a/bc;->a:[Lcom/google/b/a/bc;

    if-nez v0, :cond_0

    .line 14241
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/b/a/bc;

    sput-object v0, Lcom/google/b/a/bc;->a:[Lcom/google/b/a/bc;

    .line 14243
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14245
    :cond_1
    sget-object v0, Lcom/google/b/a/bc;->a:[Lcom/google/b/a/bc;

    return-object v0

    .line 14243
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/b/a/bc;
    .locals 1

    .prologue
    .line 14299
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/b/a/bc;->b:I

    .line 14300
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/bc;->c:Ljava/lang/String;

    .line 14301
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/bc;->d:Ljava/lang/String;

    .line 14302
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/bc;->cachedSize:I

    .line 14303
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 14319
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 14320
    iget v1, p0, Lcom/google/b/a/bc;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 14321
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/b/a/bc;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14324
    :cond_0
    iget v1, p0, Lcom/google/b/a/bc;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 14325
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/b/a/bc;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14328
    :cond_1
    iput v0, p0, Lcom/google/b/a/bc;->cachedSize:I

    .line 14329
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 14231
    invoke-direct {p0, p1}, Lcom/google/b/a/bc;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/bc;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 14309
    iget v0, p0, Lcom/google/b/a/bc;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 14310
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/bc;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 14312
    :cond_0
    iget v0, p0, Lcom/google/b/a/bc;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 14313
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/b/a/bc;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 14315
    :cond_1
    return-void
.end method
