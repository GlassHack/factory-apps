.class public final Lcom/google/b/a/az;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/b/a/b;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13770
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 13771
    invoke-direct {p0}, Lcom/google/b/a/az;->a()Lcom/google/b/a/az;

    .line 13772
    return-void
.end method

.method private a()Lcom/google/b/a/az;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13775
    iput v1, p0, Lcom/google/b/a/az;->b:I

    .line 13776
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/az;->c:Ljava/lang/String;

    .line 13777
    iput v1, p0, Lcom/google/b/a/az;->d:I

    .line 13778
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/az;->e:Ljava/lang/String;

    .line 13779
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/b/a/az;->a:Lcom/google/b/a/b;

    .line 13780
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/az;->cachedSize:I

    .line 13781
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/az;
    .locals 1

    .prologue
    .line 13829
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 13830
    sparse-switch v0, :sswitch_data_0

    .line 13834
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 13835
    :sswitch_0
    return-object p0

    .line 13840
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/az;->c:Ljava/lang/String;

    .line 13841
    iget v0, p0, Lcom/google/b/a/az;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/az;->b:I

    goto :goto_0

    .line 13845
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/az;->d:I

    .line 13846
    iget v0, p0, Lcom/google/b/a/az;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/az;->b:I

    goto :goto_0

    .line 13850
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/az;->e:Ljava/lang/String;

    .line 13851
    iget v0, p0, Lcom/google/b/a/az;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/b/a/az;->b:I

    goto :goto_0

    .line 13855
    :sswitch_4
    iget-object v0, p0, Lcom/google/b/a/az;->a:Lcom/google/b/a/b;

    if-nez v0, :cond_1

    .line 13856
    new-instance v0, Lcom/google/b/a/b;

    invoke-direct {v0}, Lcom/google/b/a/b;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/az;->a:Lcom/google/b/a/b;

    .line 13858
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/az;->a:Lcom/google/b/a/b;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 13830
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 13803
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 13804
    iget v1, p0, Lcom/google/b/a/az;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 13805
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/b/a/az;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13808
    :cond_0
    iget v1, p0, Lcom/google/b/a/az;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 13809
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/b/a/az;->d:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 13812
    :cond_1
    iget v1, p0, Lcom/google/b/a/az;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 13813
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/b/a/az;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13816
    :cond_2
    iget-object v1, p0, Lcom/google/b/a/az;->a:Lcom/google/b/a/b;

    if-eqz v1, :cond_3

    .line 13817
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/b/a/az;->a:Lcom/google/b/a/b;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13820
    :cond_3
    iput v0, p0, Lcom/google/b/a/az;->cachedSize:I

    .line 13821
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 13685
    invoke-direct {p0, p1}, Lcom/google/b/a/az;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/az;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 13787
    iget v0, p0, Lcom/google/b/a/az;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 13788
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/az;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 13790
    :cond_0
    iget v0, p0, Lcom/google/b/a/az;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 13791
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/b/a/az;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 13793
    :cond_1
    iget v0, p0, Lcom/google/b/a/az;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 13794
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/b/a/az;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 13796
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/az;->a:Lcom/google/b/a/b;

    if-eqz v0, :cond_3

    .line 13797
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/b/a/az;->a:Lcom/google/b/a/b;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 13799
    :cond_3
    return-void
.end method
