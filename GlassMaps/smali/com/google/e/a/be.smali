.class public final Lcom/google/e/a/be;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/e/a/ar;

.field public b:Lcom/google/e/a/ar;

.field public c:Lcom/google/e/a/ed;

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3106
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 3107
    invoke-direct {p0}, Lcom/google/e/a/be;->a()Lcom/google/e/a/be;

    .line 3108
    return-void
.end method

.method private a()Lcom/google/e/a/be;
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3111
    iput v0, p0, Lcom/google/e/a/be;->d:I

    .line 3112
    iput-object v1, p0, Lcom/google/e/a/be;->a:Lcom/google/e/a/ar;

    .line 3113
    iput-object v1, p0, Lcom/google/e/a/be;->b:Lcom/google/e/a/ar;

    .line 3114
    iput v0, p0, Lcom/google/e/a/be;->e:I

    .line 3115
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/be;->f:Ljava/lang/String;

    .line 3116
    iput-object v1, p0, Lcom/google/e/a/be;->c:Lcom/google/e/a/ed;

    .line 3117
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/be;->cachedSize:I

    .line 3118
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/be;
    .locals 1

    .prologue
    .line 3173
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3174
    sparse-switch v0, :sswitch_data_0

    .line 3178
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3179
    :sswitch_0
    return-object p0

    .line 3184
    :sswitch_1
    iget-object v0, p0, Lcom/google/e/a/be;->a:Lcom/google/e/a/ar;

    if-nez v0, :cond_1

    .line 3185
    new-instance v0, Lcom/google/e/a/ar;

    invoke-direct {v0}, Lcom/google/e/a/ar;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/be;->a:Lcom/google/e/a/ar;

    .line 3187
    :cond_1
    iget-object v0, p0, Lcom/google/e/a/be;->a:Lcom/google/e/a/ar;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 3191
    :sswitch_2
    iget-object v0, p0, Lcom/google/e/a/be;->b:Lcom/google/e/a/ar;

    if-nez v0, :cond_2

    .line 3192
    new-instance v0, Lcom/google/e/a/ar;

    invoke-direct {v0}, Lcom/google/e/a/ar;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/be;->b:Lcom/google/e/a/ar;

    .line 3194
    :cond_2
    iget-object v0, p0, Lcom/google/e/a/be;->b:Lcom/google/e/a/ar;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 3198
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/be;->e:I

    .line 3199
    iget v0, p0, Lcom/google/e/a/be;->d:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/be;->d:I

    goto :goto_0

    .line 3203
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/be;->f:Ljava/lang/String;

    .line 3204
    iget v0, p0, Lcom/google/e/a/be;->d:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/e/a/be;->d:I

    goto :goto_0

    .line 3208
    :sswitch_5
    iget-object v0, p0, Lcom/google/e/a/be;->c:Lcom/google/e/a/ed;

    if-nez v0, :cond_3

    .line 3209
    new-instance v0, Lcom/google/e/a/ed;

    invoke-direct {v0}, Lcom/google/e/a/ed;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/be;->c:Lcom/google/e/a/ed;

    .line 3211
    :cond_3
    iget-object v0, p0, Lcom/google/e/a/be;->c:Lcom/google/e/a/ed;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 3174
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 3143
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 3144
    iget-object v1, p0, Lcom/google/e/a/be;->a:Lcom/google/e/a/ar;

    if-eqz v1, :cond_0

    .line 3145
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/e/a/be;->a:Lcom/google/e/a/ar;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3148
    :cond_0
    iget-object v1, p0, Lcom/google/e/a/be;->b:Lcom/google/e/a/ar;

    if-eqz v1, :cond_1

    .line 3149
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/e/a/be;->b:Lcom/google/e/a/ar;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3152
    :cond_1
    iget v1, p0, Lcom/google/e/a/be;->d:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 3153
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/e/a/be;->e:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3156
    :cond_2
    iget v1, p0, Lcom/google/e/a/be;->d:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 3157
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/e/a/be;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3160
    :cond_3
    iget-object v1, p0, Lcom/google/e/a/be;->c:Lcom/google/e/a/ed;

    if-eqz v1, :cond_4

    .line 3161
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/e/a/be;->c:Lcom/google/e/a/ed;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3164
    :cond_4
    iput v0, p0, Lcom/google/e/a/be;->cachedSize:I

    .line 3165
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 3037
    invoke-direct {p0, p1}, Lcom/google/e/a/be;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/be;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 3124
    iget-object v0, p0, Lcom/google/e/a/be;->a:Lcom/google/e/a/ar;

    if-eqz v0, :cond_0

    .line 3125
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/e/a/be;->a:Lcom/google/e/a/ar;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3127
    :cond_0
    iget-object v0, p0, Lcom/google/e/a/be;->b:Lcom/google/e/a/ar;

    if-eqz v0, :cond_1

    .line 3128
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/e/a/be;->b:Lcom/google/e/a/ar;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3130
    :cond_1
    iget v0, p0, Lcom/google/e/a/be;->d:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 3131
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/e/a/be;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3133
    :cond_2
    iget v0, p0, Lcom/google/e/a/be;->d:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 3134
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/e/a/be;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3136
    :cond_3
    iget-object v0, p0, Lcom/google/e/a/be;->c:Lcom/google/e/a/ed;

    if-eqz v0, :cond_4

    .line 3137
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/e/a/be;->c:Lcom/google/e/a/ed;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3139
    :cond_4
    return-void
.end method
