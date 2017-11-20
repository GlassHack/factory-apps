.class public final Lcom/google/b/a/el;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:[Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4035
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 4036
    invoke-direct {p0}, Lcom/google/b/a/el;->a()Lcom/google/b/a/el;

    .line 4037
    return-void
.end method

.method private a()Lcom/google/b/a/el;
    .locals 1

    .prologue
    .line 4040
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/b/a/el;->b:I

    .line 4041
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/el;->c:Ljava/lang/String;

    .line 4042
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/b/a/el;->a:[Ljava/lang/String;

    .line 4043
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/el;->cachedSize:I

    .line 4044
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/el;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 4093
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 4094
    sparse-switch v0, :sswitch_data_0

    .line 4098
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4099
    :sswitch_0
    return-object p0

    .line 4104
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/el;->c:Ljava/lang/String;

    .line 4105
    iget v0, p0, Lcom/google/b/a/el;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/el;->b:I

    goto :goto_0

    .line 4109
    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 4111
    iget-object v0, p0, Lcom/google/b/a/el;->a:[Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    .line 4112
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 4113
    if-eqz v0, :cond_1

    .line 4114
    iget-object v3, p0, Lcom/google/b/a/el;->a:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4116
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 4117
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 4118
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4116
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4111
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/el;->a:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 4121
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 4122
    iput-object v2, p0, Lcom/google/b/a/el;->a:[Ljava/lang/String;

    goto :goto_0

    .line 4094
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 4065
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 4066
    iget v2, p0, Lcom/google/b/a/el;->b:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 4067
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/b/a/el;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4070
    :cond_0
    iget-object v2, p0, Lcom/google/b/a/el;->a:[Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/b/a/el;->a:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v1

    move v3, v1

    .line 4073
    :goto_0
    iget-object v4, p0, Lcom/google/b/a/el;->a:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 4074
    iget-object v4, p0, Lcom/google/b/a/el;->a:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 4075
    if-eqz v4, :cond_1

    .line 4076
    add-int/lit8 v3, v3, 0x1

    .line 4077
    invoke-static {v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 4073
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4081
    :cond_2
    add-int/2addr v0, v2

    .line 4082
    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    .line 4084
    :cond_3
    iput v0, p0, Lcom/google/b/a/el;->cachedSize:I

    .line 4085
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 3991
    invoke-direct {p0, p1}, Lcom/google/b/a/el;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/el;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 4050
    iget v0, p0, Lcom/google/b/a/el;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 4051
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/el;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4053
    :cond_0
    iget-object v0, p0, Lcom/google/b/a/el;->a:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/b/a/el;->a:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 4054
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/b/a/el;->a:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 4055
    iget-object v1, p0, Lcom/google/b/a/el;->a:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 4056
    if-eqz v1, :cond_1

    .line 4057
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4054
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4061
    :cond_2
    return-void
.end method
