.class public final Lcom/google/e/a/bp;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile a:[Lcom/google/e/a/bp;


# instance fields
.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6669
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 6670
    invoke-direct {p0}, Lcom/google/e/a/bp;->b()Lcom/google/e/a/bp;

    .line 6671
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/bp;
    .locals 1

    .prologue
    .line 6712
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 6713
    sparse-switch v0, :sswitch_data_0

    .line 6717
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6718
    :sswitch_0
    return-object p0

    .line 6723
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/bp;->c:Ljava/lang/String;

    .line 6724
    iget v0, p0, Lcom/google/e/a/bp;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/bp;->b:I

    goto :goto_0

    .line 6728
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/bp;->d:Ljava/lang/String;

    .line 6729
    iget v0, p0, Lcom/google/e/a/bp;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/e/a/bp;->b:I

    goto :goto_0

    .line 6713
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public static a()[Lcom/google/e/a/bp;
    .locals 2

    .prologue
    .line 6612
    sget-object v0, Lcom/google/e/a/bp;->a:[Lcom/google/e/a/bp;

    if-nez v0, :cond_1

    .line 6613
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 6615
    :try_start_0
    sget-object v0, Lcom/google/e/a/bp;->a:[Lcom/google/e/a/bp;

    if-nez v0, :cond_0

    .line 6616
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/e/a/bp;

    sput-object v0, Lcom/google/e/a/bp;->a:[Lcom/google/e/a/bp;

    .line 6618
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6620
    :cond_1
    sget-object v0, Lcom/google/e/a/bp;->a:[Lcom/google/e/a/bp;

    return-object v0

    .line 6618
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/e/a/bp;
    .locals 1

    .prologue
    .line 6674
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/e/a/bp;->b:I

    .line 6675
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/bp;->c:Ljava/lang/String;

    .line 6676
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/bp;->d:Ljava/lang/String;

    .line 6677
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/bp;->cachedSize:I

    .line 6678
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 6694
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 6695
    iget v1, p0, Lcom/google/e/a/bp;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 6696
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/e/a/bp;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6699
    :cond_0
    iget v1, p0, Lcom/google/e/a/bp;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 6700
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/e/a/bp;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6703
    :cond_1
    iput v0, p0, Lcom/google/e/a/bp;->cachedSize:I

    .line 6704
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 6606
    invoke-direct {p0, p1}, Lcom/google/e/a/bp;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/bp;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 6684
    iget v0, p0, Lcom/google/e/a/bp;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 6685
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/e/a/bp;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6687
    :cond_0
    iget v0, p0, Lcom/google/e/a/bp;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 6688
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/e/a/bp;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6690
    :cond_1
    return-void
.end method
