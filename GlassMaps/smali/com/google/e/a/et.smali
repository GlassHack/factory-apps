.class public final Lcom/google/e/a/et;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10011
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 10012
    invoke-direct {p0}, Lcom/google/e/a/et;->a()Lcom/google/e/a/et;

    .line 10013
    return-void
.end method

.method private a()Lcom/google/e/a/et;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10016
    iput v1, p0, Lcom/google/e/a/et;->a:I

    .line 10017
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/et;->b:Ljava/lang/String;

    .line 10018
    iput v1, p0, Lcom/google/e/a/et;->c:I

    .line 10019
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/et;->d:Ljava/lang/String;

    .line 10020
    iput v1, p0, Lcom/google/e/a/et;->e:I

    .line 10021
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/et;->cachedSize:I

    .line 10022
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/et;
    .locals 1

    .prologue
    .line 10070
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 10071
    sparse-switch v0, :sswitch_data_0

    .line 10075
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10076
    :sswitch_0
    return-object p0

    .line 10081
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/et;->b:Ljava/lang/String;

    .line 10082
    iget v0, p0, Lcom/google/e/a/et;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/et;->a:I

    goto :goto_0

    .line 10086
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/et;->c:I

    .line 10087
    iget v0, p0, Lcom/google/e/a/et;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/e/a/et;->a:I

    goto :goto_0

    .line 10091
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/et;->d:Ljava/lang/String;

    .line 10092
    iget v0, p0, Lcom/google/e/a/et;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/e/a/et;->a:I

    goto :goto_0

    .line 10096
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/et;->e:I

    .line 10097
    iget v0, p0, Lcom/google/e/a/et;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/e/a/et;->a:I

    goto :goto_0

    .line 10071
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 10044
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 10045
    iget v1, p0, Lcom/google/e/a/et;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 10046
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/e/a/et;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10049
    :cond_0
    iget v1, p0, Lcom/google/e/a/et;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 10050
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/e/a/et;->c:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10053
    :cond_1
    iget v1, p0, Lcom/google/e/a/et;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 10054
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/e/a/et;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10057
    :cond_2
    iget v1, p0, Lcom/google/e/a/et;->a:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 10058
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/e/a/et;->e:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10061
    :cond_3
    iput v0, p0, Lcom/google/e/a/et;->cachedSize:I

    .line 10062
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 9910
    invoke-direct {p0, p1}, Lcom/google/e/a/et;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/et;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 10028
    iget v0, p0, Lcom/google/e/a/et;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 10029
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/e/a/et;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 10031
    :cond_0
    iget v0, p0, Lcom/google/e/a/et;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 10032
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/e/a/et;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10034
    :cond_1
    iget v0, p0, Lcom/google/e/a/et;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 10035
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/e/a/et;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 10037
    :cond_2
    iget v0, p0, Lcom/google/e/a/et;->a:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 10038
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/e/a/et;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10040
    :cond_3
    return-void
.end method
