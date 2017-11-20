.class public final Lcom/google/e/a/aq;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:[Lcom/google/e/a/cc;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15669
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 15670
    invoke-direct {p0}, Lcom/google/e/a/aq;->a()Lcom/google/e/a/aq;

    .line 15671
    return-void
.end method

.method private a()Lcom/google/e/a/aq;
    .locals 1

    .prologue
    .line 15674
    invoke-static {}, Lcom/google/e/a/cc;->a()[Lcom/google/e/a/cc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/aq;->a:[Lcom/google/e/a/cc;

    .line 15675
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/aq;->cachedSize:I

    .line 15676
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/aq;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 15713
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 15714
    sparse-switch v0, :sswitch_data_0

    .line 15718
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 15719
    :sswitch_0
    return-object p0

    .line 15724
    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 15726
    iget-object v0, p0, Lcom/google/e/a/aq;->a:[Lcom/google/e/a/cc;

    if-nez v0, :cond_2

    move v0, v1

    .line 15727
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/e/a/cc;

    .line 15729
    if-eqz v0, :cond_1

    .line 15730
    iget-object v3, p0, Lcom/google/e/a/aq;->a:[Lcom/google/e/a/cc;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15732
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 15733
    new-instance v3, Lcom/google/e/a/cc;

    invoke-direct {v3}, Lcom/google/e/a/cc;-><init>()V

    aput-object v3, v2, v0

    .line 15734
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 15735
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 15732
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 15726
    :cond_2
    iget-object v0, p0, Lcom/google/e/a/aq;->a:[Lcom/google/e/a/cc;

    array-length v0, v0

    goto :goto_1

    .line 15738
    :cond_3
    new-instance v3, Lcom/google/e/a/cc;

    invoke-direct {v3}, Lcom/google/e/a/cc;-><init>()V

    aput-object v3, v2, v0

    .line 15739
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 15740
    iput-object v2, p0, Lcom/google/e/a/aq;->a:[Lcom/google/e/a/cc;

    goto :goto_0

    .line 15714
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 4

    .prologue
    .line 15694
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v1

    .line 15695
    iget-object v0, p0, Lcom/google/e/a/aq;->a:[Lcom/google/e/a/cc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/e/a/aq;->a:[Lcom/google/e/a/cc;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 15696
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/e/a/aq;->a:[Lcom/google/e/a/cc;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 15697
    iget-object v2, p0, Lcom/google/e/a/aq;->a:[Lcom/google/e/a/cc;

    aget-object v2, v2, v0

    .line 15698
    if-eqz v2, :cond_0

    .line 15699
    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 15696
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 15704
    :cond_1
    iput v1, p0, Lcom/google/e/a/aq;->cachedSize:I

    .line 15705
    return v1
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 15649
    invoke-direct {p0, p1}, Lcom/google/e/a/aq;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/aq;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 15682
    iget-object v0, p0, Lcom/google/e/a/aq;->a:[Lcom/google/e/a/cc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/e/a/aq;->a:[Lcom/google/e/a/cc;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 15683
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/e/a/aq;->a:[Lcom/google/e/a/cc;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 15684
    iget-object v1, p0, Lcom/google/e/a/aq;->a:[Lcom/google/e/a/cc;

    aget-object v1, v1, v0

    .line 15685
    if-eqz v1, :cond_0

    .line 15686
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 15683
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 15690
    :cond_1
    return-void
.end method
