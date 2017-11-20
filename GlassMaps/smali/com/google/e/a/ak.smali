.class public final Lcom/google/e/a/ak;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:[Lcom/google/e/a/u;

.field public b:[Lcom/google/e/a/aw;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:[B

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14918
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 14919
    invoke-direct {p0}, Lcom/google/e/a/ak;->a()Lcom/google/e/a/ak;

    .line 14920
    return-void
.end method

.method private a()Lcom/google/e/a/ak;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14923
    iput v1, p0, Lcom/google/e/a/ak;->c:I

    .line 14924
    invoke-static {}, Lcom/google/e/a/u;->a()[Lcom/google/e/a/u;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/ak;->a:[Lcom/google/e/a/u;

    .line 14925
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/ak;->d:Ljava/lang/String;

    .line 14926
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/ak;->e:Ljava/lang/String;

    .line 14927
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/ak;->f:Ljava/lang/String;

    .line 14928
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/e/a/ak;->g:[B

    .line 14929
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/ak;->h:Ljava/lang/String;

    .line 14930
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/ak;->i:Ljava/lang/String;

    .line 14931
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/e/a/ak;->j:I

    .line 14932
    iput-boolean v1, p0, Lcom/google/e/a/ak;->k:Z

    .line 14933
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/ak;->l:Ljava/lang/String;

    .line 14934
    invoke-static {}, Lcom/google/e/a/aw;->a()[Lcom/google/e/a/aw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/ak;->b:[Lcom/google/e/a/aw;

    .line 14935
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/ak;->m:Ljava/lang/String;

    .line 14936
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/ak;->n:Ljava/lang/String;

    .line 14937
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/ak;->o:Ljava/lang/String;

    .line 14938
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/ak;->p:Ljava/lang/String;

    .line 14939
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/ak;->cachedSize:I

    .line 14940
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/ak;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 15085
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 15086
    sparse-switch v0, :sswitch_data_0

    .line 15090
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 15091
    :sswitch_0
    return-object p0

    .line 15096
    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 15098
    iget-object v0, p0, Lcom/google/e/a/ak;->a:[Lcom/google/e/a/u;

    if-nez v0, :cond_2

    move v0, v1

    .line 15099
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/e/a/u;

    .line 15101
    if-eqz v0, :cond_1

    .line 15102
    iget-object v3, p0, Lcom/google/e/a/ak;->a:[Lcom/google/e/a/u;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15104
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 15105
    new-instance v3, Lcom/google/e/a/u;

    invoke-direct {v3}, Lcom/google/e/a/u;-><init>()V

    aput-object v3, v2, v0

    .line 15106
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 15107
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 15104
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 15098
    :cond_2
    iget-object v0, p0, Lcom/google/e/a/ak;->a:[Lcom/google/e/a/u;

    array-length v0, v0

    goto :goto_1

    .line 15110
    :cond_3
    new-instance v3, Lcom/google/e/a/u;

    invoke-direct {v3}, Lcom/google/e/a/u;-><init>()V

    aput-object v3, v2, v0

    .line 15111
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 15112
    iput-object v2, p0, Lcom/google/e/a/ak;->a:[Lcom/google/e/a/u;

    goto :goto_0

    .line 15116
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/ak;->d:Ljava/lang/String;

    .line 15117
    iget v0, p0, Lcom/google/e/a/ak;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/ak;->c:I

    goto :goto_0

    .line 15121
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/ak;->g:[B

    .line 15122
    iget v0, p0, Lcom/google/e/a/ak;->c:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/e/a/ak;->c:I

    goto :goto_0

    .line 15126
    :sswitch_4
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 15128
    iget-object v0, p0, Lcom/google/e/a/ak;->b:[Lcom/google/e/a/aw;

    if-nez v0, :cond_5

    move v0, v1

    .line 15129
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/e/a/aw;

    .line 15131
    if-eqz v0, :cond_4

    .line 15132
    iget-object v3, p0, Lcom/google/e/a/ak;->b:[Lcom/google/e/a/aw;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15134
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 15135
    new-instance v3, Lcom/google/e/a/aw;

    invoke-direct {v3}, Lcom/google/e/a/aw;-><init>()V

    aput-object v3, v2, v0

    .line 15136
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 15137
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 15134
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 15128
    :cond_5
    iget-object v0, p0, Lcom/google/e/a/ak;->b:[Lcom/google/e/a/aw;

    array-length v0, v0

    goto :goto_3

    .line 15140
    :cond_6
    new-instance v3, Lcom/google/e/a/aw;

    invoke-direct {v3}, Lcom/google/e/a/aw;-><init>()V

    aput-object v3, v2, v0

    .line 15141
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 15142
    iput-object v2, p0, Lcom/google/e/a/ak;->b:[Lcom/google/e/a/aw;

    goto/16 :goto_0

    .line 15146
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/ak;->h:Ljava/lang/String;

    .line 15147
    iget v0, p0, Lcom/google/e/a/ak;->c:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/e/a/ak;->c:I

    goto/16 :goto_0

    .line 15151
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/ak;->e:Ljava/lang/String;

    .line 15152
    iget v0, p0, Lcom/google/e/a/ak;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/e/a/ak;->c:I

    goto/16 :goto_0

    .line 15156
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/ak;->f:Ljava/lang/String;

    .line 15157
    iget v0, p0, Lcom/google/e/a/ak;->c:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/e/a/ak;->c:I

    goto/16 :goto_0

    .line 15161
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/ak;->j:I

    .line 15162
    iget v0, p0, Lcom/google/e/a/ak;->c:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/e/a/ak;->c:I

    goto/16 :goto_0

    .line 15166
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/e/a/ak;->k:Z

    .line 15167
    iget v0, p0, Lcom/google/e/a/ak;->c:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/e/a/ak;->c:I

    goto/16 :goto_0

    .line 15171
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/ak;->i:Ljava/lang/String;

    .line 15172
    iget v0, p0, Lcom/google/e/a/ak;->c:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/e/a/ak;->c:I

    goto/16 :goto_0

    .line 15176
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/ak;->l:Ljava/lang/String;

    .line 15177
    iget v0, p0, Lcom/google/e/a/ak;->c:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/e/a/ak;->c:I

    goto/16 :goto_0

    .line 15181
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/ak;->m:Ljava/lang/String;

    .line 15182
    iget v0, p0, Lcom/google/e/a/ak;->c:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/e/a/ak;->c:I

    goto/16 :goto_0

    .line 15186
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/ak;->n:Ljava/lang/String;

    .line 15187
    iget v0, p0, Lcom/google/e/a/ak;->c:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/e/a/ak;->c:I

    goto/16 :goto_0

    .line 15191
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/ak;->o:Ljava/lang/String;

    .line 15192
    iget v0, p0, Lcom/google/e/a/ak;->c:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/e/a/ak;->c:I

    goto/16 :goto_0

    .line 15196
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/ak;->p:Ljava/lang/String;

    .line 15197
    iget v0, p0, Lcom/google/e/a/ak;->c:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/e/a/ak;->c:I

    goto/16 :goto_0

    .line 15086
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
        0x7a -> :sswitch_f
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 15005
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 15006
    iget-object v2, p0, Lcom/google/e/a/ak;->a:[Lcom/google/e/a/u;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/e/a/ak;->a:[Lcom/google/e/a/u;

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v0

    move v0, v1

    .line 15007
    :goto_0
    iget-object v3, p0, Lcom/google/e/a/ak;->a:[Lcom/google/e/a/u;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 15008
    iget-object v3, p0, Lcom/google/e/a/ak;->a:[Lcom/google/e/a/u;

    aget-object v3, v3, v0

    .line 15009
    if-eqz v3, :cond_0

    .line 15010
    const/4 v4, 0x1

    invoke-static {v4, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 15007
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 15015
    :cond_2
    iget v2, p0, Lcom/google/e/a/ak;->c:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 15016
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/e/a/ak;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 15019
    :cond_3
    iget v2, p0, Lcom/google/e/a/ak;->c:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_4

    .line 15020
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/e/a/ak;->g:[B

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v2

    add-int/2addr v0, v2

    .line 15023
    :cond_4
    iget-object v2, p0, Lcom/google/e/a/ak;->b:[Lcom/google/e/a/aw;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/e/a/ak;->b:[Lcom/google/e/a/aw;

    array-length v2, v2

    if-lez v2, :cond_6

    .line 15024
    :goto_1
    iget-object v2, p0, Lcom/google/e/a/ak;->b:[Lcom/google/e/a/aw;

    array-length v2, v2

    if-ge v1, v2, :cond_6

    .line 15025
    iget-object v2, p0, Lcom/google/e/a/ak;->b:[Lcom/google/e/a/aw;

    aget-object v2, v2, v1

    .line 15026
    if-eqz v2, :cond_5

    .line 15027
    const/4 v3, 0x4

    invoke-static {v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 15024
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 15032
    :cond_6
    iget v1, p0, Lcom/google/e/a/ak;->c:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_7

    .line 15033
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/e/a/ak;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15036
    :cond_7
    iget v1, p0, Lcom/google/e/a/ak;->c:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_8

    .line 15037
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/e/a/ak;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15040
    :cond_8
    iget v1, p0, Lcom/google/e/a/ak;->c:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_9

    .line 15041
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/e/a/ak;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15044
    :cond_9
    iget v1, p0, Lcom/google/e/a/ak;->c:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_a

    .line 15045
    const/16 v1, 0x8

    iget v2, p0, Lcom/google/e/a/ak;->j:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 15048
    :cond_a
    iget v1, p0, Lcom/google/e/a/ak;->c:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_b

    .line 15049
    const/16 v1, 0x9

    iget-boolean v2, p0, Lcom/google/e/a/ak;->k:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 15052
    :cond_b
    iget v1, p0, Lcom/google/e/a/ak;->c:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_c

    .line 15053
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/e/a/ak;->i:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15056
    :cond_c
    iget v1, p0, Lcom/google/e/a/ak;->c:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_d

    .line 15057
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/e/a/ak;->l:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15060
    :cond_d
    iget v1, p0, Lcom/google/e/a/ak;->c:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_e

    .line 15061
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/e/a/ak;->m:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15064
    :cond_e
    iget v1, p0, Lcom/google/e/a/ak;->c:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_f

    .line 15065
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/e/a/ak;->n:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15068
    :cond_f
    iget v1, p0, Lcom/google/e/a/ak;->c:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_10

    .line 15069
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/e/a/ak;->o:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15072
    :cond_10
    iget v1, p0, Lcom/google/e/a/ak;->c:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_11

    .line 15073
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/e/a/ak;->p:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15076
    :cond_11
    iput v0, p0, Lcom/google/e/a/ak;->cachedSize:I

    .line 15077
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 14602
    invoke-direct {p0, p1}, Lcom/google/e/a/ak;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 14946
    iget-object v0, p0, Lcom/google/e/a/ak;->a:[Lcom/google/e/a/u;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/e/a/ak;->a:[Lcom/google/e/a/u;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 14947
    :goto_0
    iget-object v2, p0, Lcom/google/e/a/ak;->a:[Lcom/google/e/a/u;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 14948
    iget-object v2, p0, Lcom/google/e/a/ak;->a:[Lcom/google/e/a/u;

    aget-object v2, v2, v0

    .line 14949
    if-eqz v2, :cond_0

    .line 14950
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 14947
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14954
    :cond_1
    iget v0, p0, Lcom/google/e/a/ak;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 14955
    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/e/a/ak;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 14957
    :cond_2
    iget v0, p0, Lcom/google/e/a/ak;->c:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 14958
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/e/a/ak;->g:[B

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 14960
    :cond_3
    iget-object v0, p0, Lcom/google/e/a/ak;->b:[Lcom/google/e/a/aw;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/e/a/ak;->b:[Lcom/google/e/a/aw;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 14961
    :goto_1
    iget-object v0, p0, Lcom/google/e/a/ak;->b:[Lcom/google/e/a/aw;

    array-length v0, v0

    if-ge v1, v0, :cond_5

    .line 14962
    iget-object v0, p0, Lcom/google/e/a/ak;->b:[Lcom/google/e/a/aw;

    aget-object v0, v0, v1

    .line 14963
    if-eqz v0, :cond_4

    .line 14964
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 14961
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 14968
    :cond_5
    iget v0, p0, Lcom/google/e/a/ak;->c:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_6

    .line 14969
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/e/a/ak;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 14971
    :cond_6
    iget v0, p0, Lcom/google/e/a/ak;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    .line 14972
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/e/a/ak;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 14974
    :cond_7
    iget v0, p0, Lcom/google/e/a/ak;->c:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    .line 14975
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/e/a/ak;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 14977
    :cond_8
    iget v0, p0, Lcom/google/e/a/ak;->c:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_9

    .line 14978
    const/16 v0, 0x8

    iget v1, p0, Lcom/google/e/a/ak;->j:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 14980
    :cond_9
    iget v0, p0, Lcom/google/e/a/ak;->c:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_a

    .line 14981
    const/16 v0, 0x9

    iget-boolean v1, p0, Lcom/google/e/a/ak;->k:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 14983
    :cond_a
    iget v0, p0, Lcom/google/e/a/ak;->c:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_b

    .line 14984
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/e/a/ak;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 14986
    :cond_b
    iget v0, p0, Lcom/google/e/a/ak;->c:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_c

    .line 14987
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/e/a/ak;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 14989
    :cond_c
    iget v0, p0, Lcom/google/e/a/ak;->c:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_d

    .line 14990
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/e/a/ak;->m:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 14992
    :cond_d
    iget v0, p0, Lcom/google/e/a/ak;->c:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_e

    .line 14993
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/e/a/ak;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 14995
    :cond_e
    iget v0, p0, Lcom/google/e/a/ak;->c:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_f

    .line 14996
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/e/a/ak;->o:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 14998
    :cond_f
    iget v0, p0, Lcom/google/e/a/ak;->c:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_10

    .line 14999
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/google/e/a/ak;->p:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 15001
    :cond_10
    return-void
.end method
