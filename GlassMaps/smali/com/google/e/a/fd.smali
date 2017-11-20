.class public final Lcom/google/e/a/fd;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile b:[Lcom/google/e/a/fd;


# instance fields
.field public a:[Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6768
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 6769
    invoke-direct {p0}, Lcom/google/e/a/fd;->b()Lcom/google/e/a/fd;

    .line 6770
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/fd;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 6826
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 6827
    sparse-switch v0, :sswitch_data_0

    .line 6831
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6832
    :sswitch_0
    return-object p0

    .line 6837
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/fd;->d:Ljava/lang/String;

    .line 6838
    iget v0, p0, Lcom/google/e/a/fd;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/fd;->c:I

    goto :goto_0

    .line 6842
    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 6844
    iget-object v0, p0, Lcom/google/e/a/fd;->a:[Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    .line 6845
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 6846
    if-eqz v0, :cond_1

    .line 6847
    iget-object v3, p0, Lcom/google/e/a/fd;->a:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6849
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 6850
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 6851
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 6849
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 6844
    :cond_2
    iget-object v0, p0, Lcom/google/e/a/fd;->a:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 6854
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 6855
    iput-object v2, p0, Lcom/google/e/a/fd;->a:[Ljava/lang/String;

    goto :goto_0

    .line 6827
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public static a()[Lcom/google/e/a/fd;
    .locals 2

    .prologue
    .line 6730
    sget-object v0, Lcom/google/e/a/fd;->b:[Lcom/google/e/a/fd;

    if-nez v0, :cond_1

    .line 6731
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 6733
    :try_start_0
    sget-object v0, Lcom/google/e/a/fd;->b:[Lcom/google/e/a/fd;

    if-nez v0, :cond_0

    .line 6734
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/e/a/fd;

    sput-object v0, Lcom/google/e/a/fd;->b:[Lcom/google/e/a/fd;

    .line 6736
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6738
    :cond_1
    sget-object v0, Lcom/google/e/a/fd;->b:[Lcom/google/e/a/fd;

    return-object v0

    .line 6736
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/e/a/fd;
    .locals 1

    .prologue
    .line 6773
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/e/a/fd;->c:I

    .line 6774
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/fd;->d:Ljava/lang/String;

    .line 6775
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/e/a/fd;->a:[Ljava/lang/String;

    .line 6776
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/fd;->cachedSize:I

    .line 6777
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 6798
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 6799
    iget v2, p0, Lcom/google/e/a/fd;->c:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 6800
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/e/a/fd;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6803
    :cond_0
    iget-object v2, p0, Lcom/google/e/a/fd;->a:[Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/e/a/fd;->a:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v1

    move v3, v1

    .line 6806
    :goto_0
    iget-object v4, p0, Lcom/google/e/a/fd;->a:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 6807
    iget-object v4, p0, Lcom/google/e/a/fd;->a:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 6808
    if-eqz v4, :cond_1

    .line 6809
    add-int/lit8 v3, v3, 0x1

    .line 6810
    invoke-static {v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 6806
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6814
    :cond_2
    add-int/2addr v0, v2

    .line 6815
    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    .line 6817
    :cond_3
    iput v0, p0, Lcom/google/e/a/fd;->cachedSize:I

    .line 6818
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 6724
    invoke-direct {p0, p1}, Lcom/google/e/a/fd;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/fd;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 6783
    iget v0, p0, Lcom/google/e/a/fd;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 6784
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/e/a/fd;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6786
    :cond_0
    iget-object v0, p0, Lcom/google/e/a/fd;->a:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/e/a/fd;->a:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 6787
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/e/a/fd;->a:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 6788
    iget-object v1, p0, Lcom/google/e/a/fd;->a:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 6789
    if-eqz v1, :cond_1

    .line 6790
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6787
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6794
    :cond_2
    return-void
.end method
