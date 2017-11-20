.class public final Lcom/google/b/a/ao;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:[Lcom/google/b/a/ap;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9992
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 9993
    invoke-direct {p0}, Lcom/google/b/a/ao;->a()Lcom/google/b/a/ao;

    .line 9994
    return-void
.end method

.method private a()Lcom/google/b/a/ao;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9997
    iput v1, p0, Lcom/google/b/a/ao;->b:I

    .line 9998
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ao;->c:Ljava/lang/String;

    .line 9999
    invoke-static {}, Lcom/google/b/a/ap;->a()[Lcom/google/b/a/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ao;->a:[Lcom/google/b/a/ap;

    .line 10000
    iput v1, p0, Lcom/google/b/a/ao;->d:I

    .line 10001
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/ao;->cachedSize:I

    .line 10002
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/ao;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 10053
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 10054
    sparse-switch v0, :sswitch_data_0

    .line 10058
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10059
    :sswitch_0
    return-object p0

    .line 10064
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ao;->c:Ljava/lang/String;

    .line 10065
    iget v0, p0, Lcom/google/b/a/ao;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/ao;->b:I

    goto :goto_0

    .line 10069
    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 10071
    iget-object v0, p0, Lcom/google/b/a/ao;->a:[Lcom/google/b/a/ap;

    if-nez v0, :cond_2

    move v0, v1

    .line 10072
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/b/a/ap;

    .line 10074
    if-eqz v0, :cond_1

    .line 10075
    iget-object v3, p0, Lcom/google/b/a/ao;->a:[Lcom/google/b/a/ap;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10077
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 10078
    new-instance v3, Lcom/google/b/a/ap;

    invoke-direct {v3}, Lcom/google/b/a/ap;-><init>()V

    aput-object v3, v2, v0

    .line 10079
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10080
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 10077
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 10071
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/ao;->a:[Lcom/google/b/a/ap;

    array-length v0, v0

    goto :goto_1

    .line 10083
    :cond_3
    new-instance v3, Lcom/google/b/a/ap;

    invoke-direct {v3}, Lcom/google/b/a/ap;-><init>()V

    aput-object v3, v2, v0

    .line 10084
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10085
    iput-object v2, p0, Lcom/google/b/a/ao;->a:[Lcom/google/b/a/ap;

    goto :goto_0

    .line 10089
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/ao;->d:I

    .line 10090
    iget v0, p0, Lcom/google/b/a/ao;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/ao;->b:I

    goto :goto_0

    .line 10054
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 5

    .prologue
    .line 10026
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 10027
    iget v1, p0, Lcom/google/b/a/ao;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 10028
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/b/a/ao;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10031
    :cond_0
    iget-object v1, p0, Lcom/google/b/a/ao;->a:[Lcom/google/b/a/ap;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/b/a/ao;->a:[Lcom/google/b/a/ap;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 10032
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/b/a/ao;->a:[Lcom/google/b/a/ap;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 10033
    iget-object v2, p0, Lcom/google/b/a/ao;->a:[Lcom/google/b/a/ap;

    aget-object v2, v2, v0

    .line 10034
    if-eqz v2, :cond_1

    .line 10035
    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 10032
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 10040
    :cond_3
    iget v1, p0, Lcom/google/b/a/ao;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    .line 10041
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/b/a/ao;->d:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10044
    :cond_4
    iput v0, p0, Lcom/google/b/a/ao;->cachedSize:I

    .line 10045
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 9925
    invoke-direct {p0, p1}, Lcom/google/b/a/ao;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/ao;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 10008
    iget v0, p0, Lcom/google/b/a/ao;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 10009
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/ao;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 10011
    :cond_0
    iget-object v0, p0, Lcom/google/b/a/ao;->a:[Lcom/google/b/a/ap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/b/a/ao;->a:[Lcom/google/b/a/ap;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 10012
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/b/a/ao;->a:[Lcom/google/b/a/ap;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 10013
    iget-object v1, p0, Lcom/google/b/a/ao;->a:[Lcom/google/b/a/ap;

    aget-object v1, v1, v0

    .line 10014
    if-eqz v1, :cond_1

    .line 10015
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10012
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10019
    :cond_2
    iget v0, p0, Lcom/google/b/a/ao;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 10020
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/b/a/ao;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10022
    :cond_3
    return-void
.end method
