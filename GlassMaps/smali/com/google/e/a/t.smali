.class public final Lcom/google/e/a/t;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11733
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 11734
    invoke-direct {p0}, Lcom/google/e/a/t;->a()Lcom/google/e/a/t;

    .line 11735
    return-void
.end method

.method private a()Lcom/google/e/a/t;
    .locals 1

    .prologue
    .line 11738
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/e/a/t;->a:I

    .line 11739
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/t;->b:Ljava/lang/String;

    .line 11740
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/t;->cachedSize:I

    .line 11741
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/t;
    .locals 1

    .prologue
    .line 11768
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 11769
    sparse-switch v0, :sswitch_data_0

    .line 11773
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11774
    :sswitch_0
    return-object p0

    .line 11779
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/t;->b:Ljava/lang/String;

    .line 11780
    iget v0, p0, Lcom/google/e/a/t;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/t;->a:I

    goto :goto_0

    .line 11769
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
    .line 11754
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 11755
    iget v1, p0, Lcom/google/e/a/t;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 11756
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/e/a/t;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11759
    :cond_0
    iput v0, p0, Lcom/google/e/a/t;->cachedSize:I

    .line 11760
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 11692
    invoke-direct {p0, p1}, Lcom/google/e/a/t;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/t;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 11747
    iget v0, p0, Lcom/google/e/a/t;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 11748
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/e/a/t;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 11750
    :cond_0
    return-void
.end method
