.class public final Lcom/google/b/a/cp;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:[Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1902
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1903
    invoke-direct {p0}, Lcom/google/b/a/cp;->a()Lcom/google/b/a/cp;

    .line 1904
    return-void
.end method

.method private a()Lcom/google/b/a/cp;
    .locals 1

    .prologue
    .line 1907
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/b/a/cp;->b:I

    .line 1908
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/cp;->c:Ljava/lang/String;

    .line 1909
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/b/a/cp;->a:[Ljava/lang/String;

    .line 1910
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/cp;->cachedSize:I

    .line 1911
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/cp;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1960
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1961
    sparse-switch v0, :sswitch_data_0

    .line 1965
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1966
    :sswitch_0
    return-object p0

    .line 1971
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/cp;->c:Ljava/lang/String;

    .line 1972
    iget v0, p0, Lcom/google/b/a/cp;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/cp;->b:I

    goto :goto_0

    .line 1976
    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1978
    iget-object v0, p0, Lcom/google/b/a/cp;->a:[Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    .line 1979
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 1980
    if-eqz v0, :cond_1

    .line 1981
    iget-object v3, p0, Lcom/google/b/a/cp;->a:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1983
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1984
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1985
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1983
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1978
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/cp;->a:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 1988
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1989
    iput-object v2, p0, Lcom/google/b/a/cp;->a:[Ljava/lang/String;

    goto :goto_0

    .line 1961
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1932
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1933
    iget v2, p0, Lcom/google/b/a/cp;->b:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 1934
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/b/a/cp;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1937
    :cond_0
    iget-object v2, p0, Lcom/google/b/a/cp;->a:[Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/b/a/cp;->a:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v1

    move v3, v1

    .line 1940
    :goto_0
    iget-object v4, p0, Lcom/google/b/a/cp;->a:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 1941
    iget-object v4, p0, Lcom/google/b/a/cp;->a:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 1942
    if-eqz v4, :cond_1

    .line 1943
    add-int/lit8 v3, v3, 0x1

    .line 1944
    invoke-static {v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1940
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1948
    :cond_2
    add-int/2addr v0, v2

    .line 1949
    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    .line 1951
    :cond_3
    iput v0, p0, Lcom/google/b/a/cp;->cachedSize:I

    .line 1952
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 1858
    invoke-direct {p0, p1}, Lcom/google/b/a/cp;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/cp;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 1917
    iget v0, p0, Lcom/google/b/a/cp;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1918
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/cp;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1920
    :cond_0
    iget-object v0, p0, Lcom/google/b/a/cp;->a:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/b/a/cp;->a:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 1921
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/b/a/cp;->a:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1922
    iget-object v1, p0, Lcom/google/b/a/cp;->a:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 1923
    if-eqz v1, :cond_1

    .line 1924
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1921
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1928
    :cond_2
    return-void
.end method
