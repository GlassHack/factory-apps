.class public final Lcom/google/b/a/fb;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/b/a/fe;

.field public b:Lcom/google/b/a/ff;

.field public c:Lcom/google/b/a/dt;

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10962
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 10963
    invoke-direct {p0}, Lcom/google/b/a/fb;->a()Lcom/google/b/a/fb;

    .line 10964
    return-void
.end method

.method private a()Lcom/google/b/a/fb;
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 10967
    iput v0, p0, Lcom/google/b/a/fb;->d:I

    .line 10968
    iput v0, p0, Lcom/google/b/a/fb;->e:I

    .line 10969
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/fb;->f:Ljava/lang/String;

    .line 10970
    iput-object v1, p0, Lcom/google/b/a/fb;->a:Lcom/google/b/a/fe;

    .line 10971
    iput-object v1, p0, Lcom/google/b/a/fb;->b:Lcom/google/b/a/ff;

    .line 10972
    iput-object v1, p0, Lcom/google/b/a/fb;->c:Lcom/google/b/a/dt;

    .line 10973
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/fb;->cachedSize:I

    .line 10974
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/fb;
    .locals 1

    .prologue
    .line 11029
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 11030
    sparse-switch v0, :sswitch_data_0

    .line 11034
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11035
    :sswitch_0
    return-object p0

    .line 11040
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/fb;->e:I

    .line 11041
    iget v0, p0, Lcom/google/b/a/fb;->d:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/fb;->d:I

    goto :goto_0

    .line 11045
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/fb;->f:Ljava/lang/String;

    .line 11046
    iget v0, p0, Lcom/google/b/a/fb;->d:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/fb;->d:I

    goto :goto_0

    .line 11050
    :sswitch_3
    iget-object v0, p0, Lcom/google/b/a/fb;->a:Lcom/google/b/a/fe;

    if-nez v0, :cond_1

    .line 11051
    new-instance v0, Lcom/google/b/a/fe;

    invoke-direct {v0}, Lcom/google/b/a/fe;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/fb;->a:Lcom/google/b/a/fe;

    .line 11053
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/fb;->a:Lcom/google/b/a/fe;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 11057
    :sswitch_4
    iget-object v0, p0, Lcom/google/b/a/fb;->b:Lcom/google/b/a/ff;

    if-nez v0, :cond_2

    .line 11058
    new-instance v0, Lcom/google/b/a/ff;

    invoke-direct {v0}, Lcom/google/b/a/ff;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/fb;->b:Lcom/google/b/a/ff;

    .line 11060
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/fb;->b:Lcom/google/b/a/ff;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 11064
    :sswitch_5
    iget-object v0, p0, Lcom/google/b/a/fb;->c:Lcom/google/b/a/dt;

    if-nez v0, :cond_3

    .line 11065
    new-instance v0, Lcom/google/b/a/dt;

    invoke-direct {v0}, Lcom/google/b/a/dt;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/fb;->c:Lcom/google/b/a/dt;

    .line 11067
    :cond_3
    iget-object v0, p0, Lcom/google/b/a/fb;->c:Lcom/google/b/a/dt;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 11030
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 10999
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 11000
    iget v1, p0, Lcom/google/b/a/fb;->d:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 11001
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/b/a/fb;->e:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11004
    :cond_0
    iget v1, p0, Lcom/google/b/a/fb;->d:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 11005
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/b/a/fb;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11008
    :cond_1
    iget-object v1, p0, Lcom/google/b/a/fb;->a:Lcom/google/b/a/fe;

    if-eqz v1, :cond_2

    .line 11009
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/b/a/fb;->a:Lcom/google/b/a/fe;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11012
    :cond_2
    iget-object v1, p0, Lcom/google/b/a/fb;->b:Lcom/google/b/a/ff;

    if-eqz v1, :cond_3

    .line 11013
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/b/a/fb;->b:Lcom/google/b/a/ff;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11016
    :cond_3
    iget-object v1, p0, Lcom/google/b/a/fb;->c:Lcom/google/b/a/dt;

    if-eqz v1, :cond_4

    .line 11017
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/b/a/fb;->c:Lcom/google/b/a/dt;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11020
    :cond_4
    iput v0, p0, Lcom/google/b/a/fb;->cachedSize:I

    .line 11021
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 10880
    invoke-direct {p0, p1}, Lcom/google/b/a/fb;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/fb;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 10980
    iget v0, p0, Lcom/google/b/a/fb;->d:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 10981
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/b/a/fb;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10983
    :cond_0
    iget v0, p0, Lcom/google/b/a/fb;->d:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 10984
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/b/a/fb;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 10986
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/fb;->a:Lcom/google/b/a/fe;

    if-eqz v0, :cond_2

    .line 10987
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/b/a/fb;->a:Lcom/google/b/a/fe;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10989
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/fb;->b:Lcom/google/b/a/ff;

    if-eqz v0, :cond_3

    .line 10990
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/b/a/fb;->b:Lcom/google/b/a/ff;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10992
    :cond_3
    iget-object v0, p0, Lcom/google/b/a/fb;->c:Lcom/google/b/a/dt;

    if-eqz v0, :cond_4

    .line 10993
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/b/a/fb;->c:Lcom/google/b/a/dt;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10995
    :cond_4
    return-void
.end method
