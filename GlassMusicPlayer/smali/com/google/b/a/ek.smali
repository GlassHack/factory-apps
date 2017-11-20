.class public final Lcom/google/b/a/ek;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:[Lcom/google/b/a/fj;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 940
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 941
    invoke-direct {p0}, Lcom/google/b/a/ek;->a()Lcom/google/b/a/ek;

    .line 942
    return-void
.end method

.method private a()Lcom/google/b/a/ek;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 945
    iput v1, p0, Lcom/google/b/a/ek;->b:I

    .line 946
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ek;->c:Ljava/lang/String;

    .line 947
    iput v1, p0, Lcom/google/b/a/ek;->d:I

    .line 948
    invoke-static {}, Lcom/google/b/a/fj;->a()[Lcom/google/b/a/fj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ek;->a:[Lcom/google/b/a/fj;

    .line 949
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/ek;->cachedSize:I

    .line 950
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/ek;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1001
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1002
    sparse-switch v0, :sswitch_data_0

    .line 1006
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1007
    :sswitch_0
    return-object p0

    .line 1012
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ek;->c:Ljava/lang/String;

    .line 1013
    iget v0, p0, Lcom/google/b/a/ek;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/ek;->b:I

    goto :goto_0

    .line 1017
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/ek;->d:I

    .line 1018
    iget v0, p0, Lcom/google/b/a/ek;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/ek;->b:I

    goto :goto_0

    .line 1022
    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1024
    iget-object v0, p0, Lcom/google/b/a/ek;->a:[Lcom/google/b/a/fj;

    if-nez v0, :cond_2

    move v0, v1

    .line 1025
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/b/a/fj;

    .line 1027
    if-eqz v0, :cond_1

    .line 1028
    iget-object v3, p0, Lcom/google/b/a/ek;->a:[Lcom/google/b/a/fj;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1030
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1031
    new-instance v3, Lcom/google/b/a/fj;

    invoke-direct {v3}, Lcom/google/b/a/fj;-><init>()V

    aput-object v3, v2, v0

    .line 1032
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1033
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1030
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1024
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/ek;->a:[Lcom/google/b/a/fj;

    array-length v0, v0

    goto :goto_1

    .line 1036
    :cond_3
    new-instance v3, Lcom/google/b/a/fj;

    invoke-direct {v3}, Lcom/google/b/a/fj;-><init>()V

    aput-object v3, v2, v0

    .line 1037
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1038
    iput-object v2, p0, Lcom/google/b/a/ek;->a:[Lcom/google/b/a/fj;

    goto :goto_0

    .line 1002
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 5

    .prologue
    .line 974
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 975
    iget v1, p0, Lcom/google/b/a/ek;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 976
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/b/a/ek;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 979
    :cond_0
    iget v1, p0, Lcom/google/b/a/ek;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 980
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/b/a/ek;->d:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 983
    :cond_1
    iget-object v1, p0, Lcom/google/b/a/ek;->a:[Lcom/google/b/a/fj;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/b/a/ek;->a:[Lcom/google/b/a/fj;

    array-length v1, v1

    if-lez v1, :cond_4

    .line 984
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/b/a/ek;->a:[Lcom/google/b/a/fj;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 985
    iget-object v2, p0, Lcom/google/b/a/ek;->a:[Lcom/google/b/a/fj;

    aget-object v2, v2, v0

    .line 986
    if-eqz v2, :cond_2

    .line 987
    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 984
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 992
    :cond_4
    iput v0, p0, Lcom/google/b/a/ek;->cachedSize:I

    .line 993
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 877
    invoke-direct {p0, p1}, Lcom/google/b/a/ek;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/ek;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 956
    iget v0, p0, Lcom/google/b/a/ek;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 957
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/ek;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 959
    :cond_0
    iget v0, p0, Lcom/google/b/a/ek;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 960
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/b/a/ek;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 962
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/ek;->a:[Lcom/google/b/a/fj;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/b/a/ek;->a:[Lcom/google/b/a/fj;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 963
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/b/a/ek;->a:[Lcom/google/b/a/fj;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 964
    iget-object v1, p0, Lcom/google/b/a/ek;->a:[Lcom/google/b/a/fj;

    aget-object v1, v1, v0

    .line 965
    if-eqz v1, :cond_2

    .line 966
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 963
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 970
    :cond_3
    return-void
.end method
