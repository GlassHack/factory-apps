.class public final Lcom/google/e/a/do;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1881
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1882
    invoke-direct {p0}, Lcom/google/e/a/do;->a()Lcom/google/e/a/do;

    .line 1883
    return-void
.end method

.method private a()Lcom/google/e/a/do;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1886
    iput v0, p0, Lcom/google/e/a/do;->a:I

    .line 1887
    iput-boolean v0, p0, Lcom/google/e/a/do;->b:Z

    .line 1888
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/do;->cachedSize:I

    .line 1889
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/do;
    .locals 1

    .prologue
    .line 1916
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1917
    sparse-switch v0, :sswitch_data_0

    .line 1921
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1922
    :sswitch_0
    return-object p0

    .line 1927
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/e/a/do;->b:Z

    .line 1928
    iget v0, p0, Lcom/google/e/a/do;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/do;->a:I

    goto :goto_0

    .line 1917
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 1902
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1903
    iget v1, p0, Lcom/google/e/a/do;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1904
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/e/a/do;->b:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1907
    :cond_0
    iput v0, p0, Lcom/google/e/a/do;->cachedSize:I

    .line 1908
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 1843
    invoke-direct {p0, p1}, Lcom/google/e/a/do;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/do;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 1895
    iget v0, p0, Lcom/google/e/a/do;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1896
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/e/a/do;->b:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1898
    :cond_0
    return-void
.end method
