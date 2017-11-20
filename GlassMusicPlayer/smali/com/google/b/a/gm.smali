.class public final Lcom/google/b/a/gm;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:[Lcom/google/b/a/gl;

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 851
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 852
    invoke-direct {p0}, Lcom/google/b/a/gm;->a()Lcom/google/b/a/gm;

    .line 853
    return-void
.end method

.method private a()Lcom/google/b/a/gm;
    .locals 1

    .prologue
    .line 856
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/b/a/gm;->b:I

    .line 857
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/gm;->c:Ljava/lang/String;

    .line 858
    invoke-static {}, Lcom/google/b/a/gl;->a()[Lcom/google/b/a/gl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/gm;->a:[Lcom/google/b/a/gl;

    .line 859
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/gm;->cachedSize:I

    .line 860
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/gm;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 904
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 905
    sparse-switch v0, :sswitch_data_0

    .line 909
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 910
    :sswitch_0
    return-object p0

    .line 915
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/gm;->c:Ljava/lang/String;

    .line 916
    iget v0, p0, Lcom/google/b/a/gm;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/gm;->b:I

    goto :goto_0

    .line 920
    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 922
    iget-object v0, p0, Lcom/google/b/a/gm;->a:[Lcom/google/b/a/gl;

    if-nez v0, :cond_2

    move v0, v1

    .line 923
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/b/a/gl;

    .line 925
    if-eqz v0, :cond_1

    .line 926
    iget-object v3, p0, Lcom/google/b/a/gm;->a:[Lcom/google/b/a/gl;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 928
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 929
    new-instance v3, Lcom/google/b/a/gl;

    invoke-direct {v3}, Lcom/google/b/a/gl;-><init>()V

    aput-object v3, v2, v0

    .line 930
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 931
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 928
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 922
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/gm;->a:[Lcom/google/b/a/gl;

    array-length v0, v0

    goto :goto_1

    .line 934
    :cond_3
    new-instance v3, Lcom/google/b/a/gl;

    invoke-direct {v3}, Lcom/google/b/a/gl;-><init>()V

    aput-object v3, v2, v0

    .line 935
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 936
    iput-object v2, p0, Lcom/google/b/a/gm;->a:[Lcom/google/b/a/gl;

    goto :goto_0

    .line 905
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
    .line 881
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 882
    iget v1, p0, Lcom/google/b/a/gm;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 883
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/b/a/gm;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 886
    :cond_0
    iget-object v1, p0, Lcom/google/b/a/gm;->a:[Lcom/google/b/a/gl;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/b/a/gm;->a:[Lcom/google/b/a/gl;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 887
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/b/a/gm;->a:[Lcom/google/b/a/gl;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 888
    iget-object v2, p0, Lcom/google/b/a/gm;->a:[Lcom/google/b/a/gl;

    aget-object v2, v2, v0

    .line 889
    if-eqz v2, :cond_1

    .line 890
    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 887
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 895
    :cond_3
    iput v0, p0, Lcom/google/b/a/gm;->cachedSize:I

    .line 896
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 807
    invoke-direct {p0, p1}, Lcom/google/b/a/gm;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/gm;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 866
    iget v0, p0, Lcom/google/b/a/gm;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 867
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/gm;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 869
    :cond_0
    iget-object v0, p0, Lcom/google/b/a/gm;->a:[Lcom/google/b/a/gl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/b/a/gm;->a:[Lcom/google/b/a/gl;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 870
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/b/a/gm;->a:[Lcom/google/b/a/gl;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 871
    iget-object v1, p0, Lcom/google/b/a/gm;->a:[Lcom/google/b/a/gl;

    aget-object v1, v1, v0

    .line 872
    if-eqz v1, :cond_1

    .line 873
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 870
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 877
    :cond_2
    return-void
.end method
