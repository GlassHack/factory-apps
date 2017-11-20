.class public final Lcom/google/b/a/dn;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1764
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1765
    invoke-direct {p0}, Lcom/google/b/a/dn;->b()Lcom/google/b/a/dn;

    .line 1766
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/dn;
    .locals 1

    .prologue
    .line 1807
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1808
    sparse-switch v0, :sswitch_data_0

    .line 1812
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1813
    :sswitch_0
    return-object p0

    .line 1818
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/dn;->b:I

    .line 1819
    iget v0, p0, Lcom/google/b/a/dn;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/dn;->a:I

    goto :goto_0

    .line 1823
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/dn;->c:Ljava/lang/String;

    .line 1824
    iget v0, p0, Lcom/google/b/a/dn;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/dn;->a:I

    goto :goto_0

    .line 1808
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method private b()Lcom/google/b/a/dn;
    .locals 1

    .prologue
    .line 1769
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/b/a/dn;->a:I

    .line 1770
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/b/a/dn;->b:I

    .line 1771
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/dn;->c:Ljava/lang/String;

    .line 1772
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/dn;->cachedSize:I

    .line 1773
    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 1726
    iget v0, p0, Lcom/google/b/a/dn;->b:I

    return v0
.end method

.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 1789
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1790
    iget v1, p0, Lcom/google/b/a/dn;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1791
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/b/a/dn;->b:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1794
    :cond_0
    iget v1, p0, Lcom/google/b/a/dn;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1795
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/b/a/dn;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1798
    :cond_1
    iput v0, p0, Lcom/google/b/a/dn;->cachedSize:I

    .line 1799
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 1697
    invoke-direct {p0, p1}, Lcom/google/b/a/dn;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/dn;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 1779
    iget v0, p0, Lcom/google/b/a/dn;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1780
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/b/a/dn;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1782
    :cond_0
    iget v0, p0, Lcom/google/b/a/dn;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1783
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/b/a/dn;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1785
    :cond_1
    return-void
.end method
