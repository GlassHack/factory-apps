.class public final Lcom/google/e/a/bx;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:[Lcom/google/e/a/n;

.field public b:Lcom/google/e/a/dm;

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11005
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 11006
    invoke-direct {p0}, Lcom/google/e/a/bx;->a()Lcom/google/e/a/bx;

    .line 11007
    return-void
.end method

.method private a()Lcom/google/e/a/bx;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11010
    iput v1, p0, Lcom/google/e/a/bx;->c:I

    .line 11011
    invoke-static {}, Lcom/google/e/a/n;->a()[Lcom/google/e/a/n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/bx;->a:[Lcom/google/e/a/n;

    .line 11012
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/e/a/bx;->b:Lcom/google/e/a/dm;

    .line 11013
    iput-boolean v1, p0, Lcom/google/e/a/bx;->d:Z

    .line 11014
    iput-boolean v1, p0, Lcom/google/e/a/bx;->e:Z

    .line 11015
    iput-boolean v1, p0, Lcom/google/e/a/bx;->f:Z

    .line 11016
    iput-boolean v1, p0, Lcom/google/e/a/bx;->g:Z

    .line 11017
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/bx;->cachedSize:I

    .line 11018
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/bx;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 11090
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 11091
    sparse-switch v0, :sswitch_data_0

    .line 11095
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11096
    :sswitch_0
    return-object p0

    .line 11101
    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 11103
    iget-object v0, p0, Lcom/google/e/a/bx;->a:[Lcom/google/e/a/n;

    if-nez v0, :cond_2

    move v0, v1

    .line 11104
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/e/a/n;

    .line 11106
    if-eqz v0, :cond_1

    .line 11107
    iget-object v3, p0, Lcom/google/e/a/bx;->a:[Lcom/google/e/a/n;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11109
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 11110
    new-instance v3, Lcom/google/e/a/n;

    invoke-direct {v3}, Lcom/google/e/a/n;-><init>()V

    aput-object v3, v2, v0

    .line 11111
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 11112
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 11109
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 11103
    :cond_2
    iget-object v0, p0, Lcom/google/e/a/bx;->a:[Lcom/google/e/a/n;

    array-length v0, v0

    goto :goto_1

    .line 11115
    :cond_3
    new-instance v3, Lcom/google/e/a/n;

    invoke-direct {v3}, Lcom/google/e/a/n;-><init>()V

    aput-object v3, v2, v0

    .line 11116
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 11117
    iput-object v2, p0, Lcom/google/e/a/bx;->a:[Lcom/google/e/a/n;

    goto :goto_0

    .line 11121
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/e/a/bx;->d:Z

    .line 11122
    iget v0, p0, Lcom/google/e/a/bx;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/bx;->c:I

    goto :goto_0

    .line 11126
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/e/a/bx;->e:Z

    .line 11127
    iget v0, p0, Lcom/google/e/a/bx;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/e/a/bx;->c:I

    goto :goto_0

    .line 11131
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/e/a/bx;->f:Z

    .line 11132
    iget v0, p0, Lcom/google/e/a/bx;->c:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/e/a/bx;->c:I

    goto :goto_0

    .line 11136
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/e/a/bx;->g:Z

    .line 11137
    iget v0, p0, Lcom/google/e/a/bx;->c:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/e/a/bx;->c:I

    goto :goto_0

    .line 11141
    :sswitch_6
    iget-object v0, p0, Lcom/google/e/a/bx;->b:Lcom/google/e/a/dm;

    if-nez v0, :cond_4

    .line 11142
    new-instance v0, Lcom/google/e/a/dm;

    invoke-direct {v0}, Lcom/google/e/a/dm;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/bx;->b:Lcom/google/e/a/dm;

    .line 11144
    :cond_4
    iget-object v0, p0, Lcom/google/e/a/bx;->b:Lcom/google/e/a/dm;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 11091
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 4

    .prologue
    .line 11051
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v1

    .line 11052
    iget-object v0, p0, Lcom/google/e/a/bx;->a:[Lcom/google/e/a/n;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/e/a/bx;->a:[Lcom/google/e/a/n;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 11053
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/e/a/bx;->a:[Lcom/google/e/a/n;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 11054
    iget-object v2, p0, Lcom/google/e/a/bx;->a:[Lcom/google/e/a/n;

    aget-object v2, v2, v0

    .line 11055
    if-eqz v2, :cond_0

    .line 11056
    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 11053
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11061
    :cond_1
    iget v0, p0, Lcom/google/e/a/bx;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 11062
    const/4 v0, 0x2

    iget-boolean v2, p0, Lcom/google/e/a/bx;->d:Z

    invoke-static {v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v0

    add-int/2addr v1, v0

    .line 11065
    :cond_2
    iget v0, p0, Lcom/google/e/a/bx;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 11066
    const/4 v0, 0x3

    iget-boolean v2, p0, Lcom/google/e/a/bx;->e:Z

    invoke-static {v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v0

    add-int/2addr v1, v0

    .line 11069
    :cond_3
    iget v0, p0, Lcom/google/e/a/bx;->c:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 11070
    const/4 v0, 0x4

    iget-boolean v2, p0, Lcom/google/e/a/bx;->f:Z

    invoke-static {v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v0

    add-int/2addr v1, v0

    .line 11073
    :cond_4
    iget v0, p0, Lcom/google/e/a/bx;->c:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    .line 11074
    const/4 v0, 0x5

    iget-boolean v2, p0, Lcom/google/e/a/bx;->g:Z

    invoke-static {v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v0

    add-int/2addr v1, v0

    .line 11077
    :cond_5
    iget-object v0, p0, Lcom/google/e/a/bx;->b:Lcom/google/e/a/dm;

    if-eqz v0, :cond_6

    .line 11078
    const/4 v0, 0x6

    iget-object v2, p0, Lcom/google/e/a/bx;->b:Lcom/google/e/a/dm;

    invoke-static {v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v0

    add-int/2addr v1, v0

    .line 11081
    :cond_6
    iput v1, p0, Lcom/google/e/a/bx;->cachedSize:I

    .line 11082
    return v1
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 10904
    invoke-direct {p0, p1}, Lcom/google/e/a/bx;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/bx;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 11024
    iget-object v0, p0, Lcom/google/e/a/bx;->a:[Lcom/google/e/a/n;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/e/a/bx;->a:[Lcom/google/e/a/n;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 11025
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/e/a/bx;->a:[Lcom/google/e/a/n;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 11026
    iget-object v1, p0, Lcom/google/e/a/bx;->a:[Lcom/google/e/a/n;

    aget-object v1, v1, v0

    .line 11027
    if-eqz v1, :cond_0

    .line 11028
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 11025
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11032
    :cond_1
    iget v0, p0, Lcom/google/e/a/bx;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 11033
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/e/a/bx;->d:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 11035
    :cond_2
    iget v0, p0, Lcom/google/e/a/bx;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 11036
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/e/a/bx;->e:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 11038
    :cond_3
    iget v0, p0, Lcom/google/e/a/bx;->c:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 11039
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/e/a/bx;->f:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 11041
    :cond_4
    iget v0, p0, Lcom/google/e/a/bx;->c:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    .line 11042
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/e/a/bx;->g:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 11044
    :cond_5
    iget-object v0, p0, Lcom/google/e/a/bx;->b:Lcom/google/e/a/dm;

    if-eqz v0, :cond_6

    .line 11045
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/e/a/bx;->b:Lcom/google/e/a/dm;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 11047
    :cond_6
    return-void
.end method
