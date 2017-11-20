.class public final Lcom/google/b/a/p;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:[B

.field private e:Z

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1060
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1061
    invoke-direct {p0}, Lcom/google/b/a/p;->c()Lcom/google/b/a/p;

    .line 1062
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/p;
    .locals 1

    .prologue
    .line 1127
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1128
    sparse-switch v0, :sswitch_data_0

    .line 1132
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1133
    :sswitch_0
    return-object p0

    .line 1138
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/p;->b:I

    .line 1139
    iget v0, p0, Lcom/google/b/a/p;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/p;->a:I

    goto :goto_0

    .line 1143
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/p;->c:I

    .line 1144
    iget v0, p0, Lcom/google/b/a/p;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/p;->a:I

    goto :goto_0

    .line 1148
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/p;->d:[B

    .line 1149
    iget v0, p0, Lcom/google/b/a/p;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/b/a/p;->a:I

    goto :goto_0

    .line 1153
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/b/a/p;->e:Z

    .line 1154
    iget v0, p0, Lcom/google/b/a/p;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/b/a/p;->a:I

    goto :goto_0

    .line 1158
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/p;->f:I

    .line 1159
    iget v0, p0, Lcom/google/b/a/p;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/b/a/p;->a:I

    goto :goto_0

    .line 1128
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method private c()Lcom/google/b/a/p;
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1065
    iput v0, p0, Lcom/google/b/a/p;->a:I

    .line 1066
    iput v0, p0, Lcom/google/b/a/p;->b:I

    .line 1067
    iput v0, p0, Lcom/google/b/a/p;->c:I

    .line 1068
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/b/a/p;->d:[B

    .line 1069
    iput-boolean v1, p0, Lcom/google/b/a/p;->e:Z

    .line 1070
    iput v1, p0, Lcom/google/b/a/p;->f:I

    .line 1071
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/p;->cachedSize:I

    .line 1072
    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 965
    iget v0, p0, Lcom/google/b/a/p;->b:I

    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 973
    iget v0, p0, Lcom/google/b/a/p;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 1097
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1098
    iget v1, p0, Lcom/google/b/a/p;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1099
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/b/a/p;->b:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1102
    :cond_0
    iget v1, p0, Lcom/google/b/a/p;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1103
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/b/a/p;->c:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1106
    :cond_1
    iget v1, p0, Lcom/google/b/a/p;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 1107
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/b/a/p;->d:[B

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 1110
    :cond_2
    iget v1, p0, Lcom/google/b/a/p;->a:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 1111
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/b/a/p;->e:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1114
    :cond_3
    iget v1, p0, Lcom/google/b/a/p;->a:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 1115
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/b/a/p;->f:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1118
    :cond_4
    iput v0, p0, Lcom/google/b/a/p;->cachedSize:I

    .line 1119
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 939
    invoke-direct {p0, p1}, Lcom/google/b/a/p;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/p;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 1078
    iget v0, p0, Lcom/google/b/a/p;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1079
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/b/a/p;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1081
    :cond_0
    iget v0, p0, Lcom/google/b/a/p;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1082
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/b/a/p;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1084
    :cond_1
    iget v0, p0, Lcom/google/b/a/p;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 1085
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/b/a/p;->d:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 1087
    :cond_2
    iget v0, p0, Lcom/google/b/a/p;->a:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 1088
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/b/a/p;->e:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1090
    :cond_3
    iget v0, p0, Lcom/google/b/a/p;->a:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 1091
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/b/a/p;->f:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1093
    :cond_4
    return-void
.end method
