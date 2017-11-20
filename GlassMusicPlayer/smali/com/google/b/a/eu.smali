.class public final Lcom/google/b/a/eu;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile b:[Lcom/google/b/a/eu;


# instance fields
.field public a:[Lcom/google/b/a/er;

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6620
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 6621
    invoke-direct {p0}, Lcom/google/b/a/eu;->b()Lcom/google/b/a/eu;

    .line 6622
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/eu;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 6673
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 6674
    sparse-switch v0, :sswitch_data_0

    .line 6678
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6679
    :sswitch_0
    return-object p0

    .line 6684
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/eu;->d:Ljava/lang/String;

    .line 6685
    iget v0, p0, Lcom/google/b/a/eu;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/eu;->c:I

    goto :goto_0

    .line 6689
    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 6691
    iget-object v0, p0, Lcom/google/b/a/eu;->a:[Lcom/google/b/a/er;

    if-nez v0, :cond_2

    move v0, v1

    .line 6692
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/b/a/er;

    .line 6694
    if-eqz v0, :cond_1

    .line 6695
    iget-object v3, p0, Lcom/google/b/a/eu;->a:[Lcom/google/b/a/er;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6697
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 6698
    new-instance v3, Lcom/google/b/a/er;

    invoke-direct {v3}, Lcom/google/b/a/er;-><init>()V

    aput-object v3, v2, v0

    .line 6699
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 6700
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 6697
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 6691
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/eu;->a:[Lcom/google/b/a/er;

    array-length v0, v0

    goto :goto_1

    .line 6703
    :cond_3
    new-instance v3, Lcom/google/b/a/er;

    invoke-direct {v3}, Lcom/google/b/a/er;-><init>()V

    aput-object v3, v2, v0

    .line 6704
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 6705
    iput-object v2, p0, Lcom/google/b/a/eu;->a:[Lcom/google/b/a/er;

    goto :goto_0

    .line 6674
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public static a()[Lcom/google/b/a/eu;
    .locals 2

    .prologue
    .line 6582
    sget-object v0, Lcom/google/b/a/eu;->b:[Lcom/google/b/a/eu;

    if-nez v0, :cond_1

    .line 6583
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 6585
    :try_start_0
    sget-object v0, Lcom/google/b/a/eu;->b:[Lcom/google/b/a/eu;

    if-nez v0, :cond_0

    .line 6586
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/b/a/eu;

    sput-object v0, Lcom/google/b/a/eu;->b:[Lcom/google/b/a/eu;

    .line 6588
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6590
    :cond_1
    sget-object v0, Lcom/google/b/a/eu;->b:[Lcom/google/b/a/eu;

    return-object v0

    .line 6588
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/b/a/eu;
    .locals 1

    .prologue
    .line 6625
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/b/a/eu;->c:I

    .line 6626
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/eu;->d:Ljava/lang/String;

    .line 6627
    invoke-static {}, Lcom/google/b/a/er;->a()[Lcom/google/b/a/er;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/eu;->a:[Lcom/google/b/a/er;

    .line 6628
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/eu;->cachedSize:I

    .line 6629
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 5

    .prologue
    .line 6650
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 6651
    iget v1, p0, Lcom/google/b/a/eu;->c:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 6652
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/b/a/eu;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6655
    :cond_0
    iget-object v1, p0, Lcom/google/b/a/eu;->a:[Lcom/google/b/a/er;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/b/a/eu;->a:[Lcom/google/b/a/er;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 6656
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/b/a/eu;->a:[Lcom/google/b/a/er;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 6657
    iget-object v2, p0, Lcom/google/b/a/eu;->a:[Lcom/google/b/a/er;

    aget-object v2, v2, v0

    .line 6658
    if-eqz v2, :cond_1

    .line 6659
    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 6656
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 6664
    :cond_3
    iput v0, p0, Lcom/google/b/a/eu;->cachedSize:I

    .line 6665
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 6576
    invoke-direct {p0, p1}, Lcom/google/b/a/eu;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/eu;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 6635
    iget v0, p0, Lcom/google/b/a/eu;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 6636
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/eu;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6638
    :cond_0
    iget-object v0, p0, Lcom/google/b/a/eu;->a:[Lcom/google/b/a/er;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/b/a/eu;->a:[Lcom/google/b/a/er;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 6639
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/b/a/eu;->a:[Lcom/google/b/a/er;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 6640
    iget-object v1, p0, Lcom/google/b/a/eu;->a:[Lcom/google/b/a/er;

    aget-object v1, v1, v0

    .line 6641
    if-eqz v1, :cond_1

    .line 6642
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 6639
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6646
    :cond_2
    return-void
.end method
