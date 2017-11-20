.class public final Lcom/google/b/a/s;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/b/a/cu;

.field public b:[Lcom/google/b/a/co;

.field private c:I

.field private d:Z

.field private e:Z

.field private f:I

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12010
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 12011
    invoke-direct {p0}, Lcom/google/b/a/s;->a()Lcom/google/b/a/s;

    .line 12012
    return-void
.end method

.method private a()Lcom/google/b/a/s;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12015
    iput v1, p0, Lcom/google/b/a/s;->c:I

    .line 12016
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/b/a/s;->a:Lcom/google/b/a/cu;

    .line 12017
    invoke-static {}, Lcom/google/b/a/co;->a()[Lcom/google/b/a/co;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/s;->b:[Lcom/google/b/a/co;

    .line 12018
    iput-boolean v1, p0, Lcom/google/b/a/s;->d:Z

    .line 12019
    iput-boolean v1, p0, Lcom/google/b/a/s;->e:Z

    .line 12020
    iput v1, p0, Lcom/google/b/a/s;->f:I

    .line 12021
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/s;->g:Ljava/lang/String;

    .line 12022
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/s;->cachedSize:I

    .line 12023
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/s;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 12095
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 12096
    sparse-switch v0, :sswitch_data_0

    .line 12100
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12101
    :sswitch_0
    return-object p0

    .line 12106
    :sswitch_1
    iget-object v0, p0, Lcom/google/b/a/s;->a:Lcom/google/b/a/cu;

    if-nez v0, :cond_1

    .line 12107
    new-instance v0, Lcom/google/b/a/cu;

    invoke-direct {v0}, Lcom/google/b/a/cu;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/s;->a:Lcom/google/b/a/cu;

    .line 12109
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/s;->a:Lcom/google/b/a/cu;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 12113
    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 12115
    iget-object v0, p0, Lcom/google/b/a/s;->b:[Lcom/google/b/a/co;

    if-nez v0, :cond_3

    move v0, v1

    .line 12116
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/b/a/co;

    .line 12118
    if-eqz v0, :cond_2

    .line 12119
    iget-object v3, p0, Lcom/google/b/a/s;->b:[Lcom/google/b/a/co;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12121
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 12122
    new-instance v3, Lcom/google/b/a/co;

    invoke-direct {v3}, Lcom/google/b/a/co;-><init>()V

    aput-object v3, v2, v0

    .line 12123
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 12124
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 12121
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 12115
    :cond_3
    iget-object v0, p0, Lcom/google/b/a/s;->b:[Lcom/google/b/a/co;

    array-length v0, v0

    goto :goto_1

    .line 12127
    :cond_4
    new-instance v3, Lcom/google/b/a/co;

    invoke-direct {v3}, Lcom/google/b/a/co;-><init>()V

    aput-object v3, v2, v0

    .line 12128
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 12129
    iput-object v2, p0, Lcom/google/b/a/s;->b:[Lcom/google/b/a/co;

    goto :goto_0

    .line 12133
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/b/a/s;->d:Z

    .line 12134
    iget v0, p0, Lcom/google/b/a/s;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/s;->c:I

    goto :goto_0

    .line 12138
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/b/a/s;->e:Z

    .line 12139
    iget v0, p0, Lcom/google/b/a/s;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/s;->c:I

    goto :goto_0

    .line 12143
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/s;->f:I

    .line 12144
    iget v0, p0, Lcom/google/b/a/s;->c:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/b/a/s;->c:I

    goto/16 :goto_0

    .line 12148
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/s;->g:Ljava/lang/String;

    .line 12149
    iget v0, p0, Lcom/google/b/a/s;->c:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/b/a/s;->c:I

    goto/16 :goto_0

    .line 12096
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 5

    .prologue
    .line 12056
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 12057
    iget-object v1, p0, Lcom/google/b/a/s;->a:Lcom/google/b/a/cu;

    if-eqz v1, :cond_0

    .line 12058
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/b/a/s;->a:Lcom/google/b/a/cu;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12061
    :cond_0
    iget-object v1, p0, Lcom/google/b/a/s;->b:[Lcom/google/b/a/co;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/b/a/s;->b:[Lcom/google/b/a/co;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 12062
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/b/a/s;->b:[Lcom/google/b/a/co;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 12063
    iget-object v2, p0, Lcom/google/b/a/s;->b:[Lcom/google/b/a/co;

    aget-object v2, v2, v0

    .line 12064
    if-eqz v2, :cond_1

    .line 12065
    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 12062
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 12070
    :cond_3
    iget v1, p0, Lcom/google/b/a/s;->c:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    .line 12071
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/b/a/s;->d:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12074
    :cond_4
    iget v1, p0, Lcom/google/b/a/s;->c:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_5

    .line 12075
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/b/a/s;->e:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12078
    :cond_5
    iget v1, p0, Lcom/google/b/a/s;->c:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_6

    .line 12079
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/b/a/s;->f:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12082
    :cond_6
    iget v1, p0, Lcom/google/b/a/s;->c:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_7

    .line 12083
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/b/a/s;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12086
    :cond_7
    iput v0, p0, Lcom/google/b/a/s;->cachedSize:I

    .line 12087
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 11906
    invoke-direct {p0, p1}, Lcom/google/b/a/s;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/s;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 12029
    iget-object v0, p0, Lcom/google/b/a/s;->a:Lcom/google/b/a/cu;

    if-eqz v0, :cond_0

    .line 12030
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/s;->a:Lcom/google/b/a/cu;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 12032
    :cond_0
    iget-object v0, p0, Lcom/google/b/a/s;->b:[Lcom/google/b/a/co;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/b/a/s;->b:[Lcom/google/b/a/co;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 12033
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/b/a/s;->b:[Lcom/google/b/a/co;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 12034
    iget-object v1, p0, Lcom/google/b/a/s;->b:[Lcom/google/b/a/co;

    aget-object v1, v1, v0

    .line 12035
    if-eqz v1, :cond_1

    .line 12036
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 12033
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12040
    :cond_2
    iget v0, p0, Lcom/google/b/a/s;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 12041
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/b/a/s;->d:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 12043
    :cond_3
    iget v0, p0, Lcom/google/b/a/s;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    .line 12044
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/b/a/s;->e:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 12046
    :cond_4
    iget v0, p0, Lcom/google/b/a/s;->c:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    .line 12047
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/b/a/s;->f:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 12049
    :cond_5
    iget v0, p0, Lcom/google/b/a/s;->c:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_6

    .line 12050
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/b/a/s;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 12052
    :cond_6
    return-void
.end method
