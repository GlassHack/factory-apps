.class public final Lcom/google/b/a/fa;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:[Lcom/google/b/a/ez;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12048
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 12049
    invoke-direct {p0}, Lcom/google/b/a/fa;->a()Lcom/google/b/a/fa;

    .line 12050
    return-void
.end method

.method private a()Lcom/google/b/a/fa;
    .locals 1

    .prologue
    .line 12053
    invoke-static {}, Lcom/google/b/a/ez;->a()[Lcom/google/b/a/ez;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/fa;->a:[Lcom/google/b/a/ez;

    .line 12054
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/fa;->cachedSize:I

    .line 12055
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/fa;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 12092
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 12093
    sparse-switch v0, :sswitch_data_0

    .line 12097
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12098
    :sswitch_0
    return-object p0

    .line 12103
    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 12105
    iget-object v0, p0, Lcom/google/b/a/fa;->a:[Lcom/google/b/a/ez;

    if-nez v0, :cond_2

    move v0, v1

    .line 12106
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/b/a/ez;

    .line 12108
    if-eqz v0, :cond_1

    .line 12109
    iget-object v3, p0, Lcom/google/b/a/fa;->a:[Lcom/google/b/a/ez;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12111
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 12112
    new-instance v3, Lcom/google/b/a/ez;

    invoke-direct {v3}, Lcom/google/b/a/ez;-><init>()V

    aput-object v3, v2, v0

    .line 12113
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 12114
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 12111
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 12105
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/fa;->a:[Lcom/google/b/a/ez;

    array-length v0, v0

    goto :goto_1

    .line 12117
    :cond_3
    new-instance v3, Lcom/google/b/a/ez;

    invoke-direct {v3}, Lcom/google/b/a/ez;-><init>()V

    aput-object v3, v2, v0

    .line 12118
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 12119
    iput-object v2, p0, Lcom/google/b/a/fa;->a:[Lcom/google/b/a/ez;

    goto :goto_0

    .line 12093
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 4

    .prologue
    .line 12073
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v1

    .line 12074
    iget-object v0, p0, Lcom/google/b/a/fa;->a:[Lcom/google/b/a/ez;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/b/a/fa;->a:[Lcom/google/b/a/ez;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 12075
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/b/a/fa;->a:[Lcom/google/b/a/ez;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 12076
    iget-object v2, p0, Lcom/google/b/a/fa;->a:[Lcom/google/b/a/ez;

    aget-object v2, v2, v0

    .line 12077
    if-eqz v2, :cond_0

    .line 12078
    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 12075
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12083
    :cond_1
    iput v1, p0, Lcom/google/b/a/fa;->cachedSize:I

    .line 12084
    return v1
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 12028
    invoke-direct {p0, p1}, Lcom/google/b/a/fa;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/fa;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 12061
    iget-object v0, p0, Lcom/google/b/a/fa;->a:[Lcom/google/b/a/ez;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/b/a/fa;->a:[Lcom/google/b/a/ez;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 12062
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/b/a/fa;->a:[Lcom/google/b/a/ez;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 12063
    iget-object v1, p0, Lcom/google/b/a/fa;->a:[Lcom/google/b/a/ez;

    aget-object v1, v1, v0

    .line 12064
    if-eqz v1, :cond_0

    .line 12065
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 12062
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12069
    :cond_1
    return-void
.end method
