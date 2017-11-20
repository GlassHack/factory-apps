.class public final Lcom/google/e/a/ge;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/e/a/dm;

.field public b:Lcom/google/e/a/ft;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 725
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 726
    invoke-direct {p0}, Lcom/google/e/a/ge;->a()Lcom/google/e/a/ge;

    .line 727
    return-void
.end method

.method private a()Lcom/google/e/a/ge;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 730
    iput-object v0, p0, Lcom/google/e/a/ge;->a:Lcom/google/e/a/dm;

    .line 731
    iput-object v0, p0, Lcom/google/e/a/ge;->b:Lcom/google/e/a/ft;

    .line 732
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/ge;->cachedSize:I

    .line 733
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/ge;
    .locals 1

    .prologue
    .line 767
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 768
    sparse-switch v0, :sswitch_data_0

    .line 772
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 773
    :sswitch_0
    return-object p0

    .line 778
    :sswitch_1
    iget-object v0, p0, Lcom/google/e/a/ge;->a:Lcom/google/e/a/dm;

    if-nez v0, :cond_1

    .line 779
    new-instance v0, Lcom/google/e/a/dm;

    invoke-direct {v0}, Lcom/google/e/a/dm;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/ge;->a:Lcom/google/e/a/dm;

    .line 781
    :cond_1
    iget-object v0, p0, Lcom/google/e/a/ge;->a:Lcom/google/e/a/dm;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 785
    :sswitch_2
    iget-object v0, p0, Lcom/google/e/a/ge;->b:Lcom/google/e/a/ft;

    if-nez v0, :cond_2

    .line 786
    new-instance v0, Lcom/google/e/a/ft;

    invoke-direct {v0}, Lcom/google/e/a/ft;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/ge;->b:Lcom/google/e/a/ft;

    .line 788
    :cond_2
    iget-object v0, p0, Lcom/google/e/a/ge;->b:Lcom/google/e/a/ft;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 768
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 749
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 750
    iget-object v1, p0, Lcom/google/e/a/ge;->a:Lcom/google/e/a/dm;

    if-eqz v1, :cond_0

    .line 751
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/e/a/ge;->a:Lcom/google/e/a/dm;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 754
    :cond_0
    iget-object v1, p0, Lcom/google/e/a/ge;->b:Lcom/google/e/a/ft;

    if-eqz v1, :cond_1

    .line 755
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/e/a/ge;->b:Lcom/google/e/a/ft;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 758
    :cond_1
    iput v0, p0, Lcom/google/e/a/ge;->cachedSize:I

    .line 759
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 702
    invoke-direct {p0, p1}, Lcom/google/e/a/ge;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/ge;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 739
    iget-object v0, p0, Lcom/google/e/a/ge;->a:Lcom/google/e/a/dm;

    if-eqz v0, :cond_0

    .line 740
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/e/a/ge;->a:Lcom/google/e/a/dm;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/google/e/a/ge;->b:Lcom/google/e/a/ft;

    if-eqz v0, :cond_1

    .line 743
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/e/a/ge;->b:Lcom/google/e/a/ft;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 745
    :cond_1
    return-void
.end method
