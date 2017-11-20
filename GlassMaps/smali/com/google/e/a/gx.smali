.class public final Lcom/google/e/a/gx;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 852
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 853
    invoke-direct {p0}, Lcom/google/e/a/gx;->a()Lcom/google/e/a/gx;

    .line 854
    return-void
.end method

.method private a()Lcom/google/e/a/gx;
    .locals 1

    .prologue
    .line 857
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/e/a/gx;->a:I

    .line 858
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/gx;->b:Ljava/lang/String;

    .line 859
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/gx;->cachedSize:I

    .line 860
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/gx;
    .locals 1

    .prologue
    .line 887
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 888
    sparse-switch v0, :sswitch_data_0

    .line 892
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 893
    :sswitch_0
    return-object p0

    .line 898
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/gx;->b:Ljava/lang/String;

    .line 899
    iget v0, p0, Lcom/google/e/a/gx;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/gx;->a:I

    goto :goto_0

    .line 888
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 873
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 874
    iget v1, p0, Lcom/google/e/a/gx;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 875
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/e/a/gx;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 878
    :cond_0
    iput v0, p0, Lcom/google/e/a/gx;->cachedSize:I

    .line 879
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 811
    invoke-direct {p0, p1}, Lcom/google/e/a/gx;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/gx;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 866
    iget v0, p0, Lcom/google/e/a/gx;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 867
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/e/a/gx;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 869
    :cond_0
    return-void
.end method
