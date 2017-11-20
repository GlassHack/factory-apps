.class public final Lcom/google/e/a/r;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/e/a/hg;

.field public b:Lcom/google/e/a/m;

.field public c:Lcom/google/e/a/at;

.field public d:Lcom/google/e/a/o;

.field public e:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;

.field public f:Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9029
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 9030
    invoke-direct {p0}, Lcom/google/e/a/r;->a()Lcom/google/e/a/r;

    .line 9031
    return-void
.end method

.method private a()Lcom/google/e/a/r;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 9034
    iput v2, p0, Lcom/google/e/a/r;->g:I

    .line 9035
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/r;->h:Ljava/lang/String;

    .line 9036
    iput-object v1, p0, Lcom/google/e/a/r;->a:Lcom/google/e/a/hg;

    .line 9037
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/r;->i:Ljava/lang/String;

    .line 9038
    iput-object v1, p0, Lcom/google/e/a/r;->b:Lcom/google/e/a/m;

    .line 9039
    iput-object v1, p0, Lcom/google/e/a/r;->c:Lcom/google/e/a/at;

    .line 9040
    iput-object v1, p0, Lcom/google/e/a/r;->d:Lcom/google/e/a/o;

    .line 9041
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/r;->j:Ljava/lang/String;

    .line 9042
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/r;->k:Ljava/lang/String;

    .line 9043
    iput-object v1, p0, Lcom/google/e/a/r;->e:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;

    .line 9044
    iput-object v1, p0, Lcom/google/e/a/r;->f:Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;

    .line 9045
    iput v2, p0, Lcom/google/e/a/r;->l:I

    .line 9046
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/r;->cachedSize:I

    .line 9047
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/r;
    .locals 1

    .prologue
    .line 9144
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 9145
    sparse-switch v0, :sswitch_data_0

    .line 9149
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9150
    :sswitch_0
    return-object p0

    .line 9155
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/r;->h:Ljava/lang/String;

    .line 9156
    iget v0, p0, Lcom/google/e/a/r;->g:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/r;->g:I

    goto :goto_0

    .line 9160
    :sswitch_2
    iget-object v0, p0, Lcom/google/e/a/r;->a:Lcom/google/e/a/hg;

    if-nez v0, :cond_1

    .line 9161
    new-instance v0, Lcom/google/e/a/hg;

    invoke-direct {v0}, Lcom/google/e/a/hg;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/r;->a:Lcom/google/e/a/hg;

    .line 9163
    :cond_1
    iget-object v0, p0, Lcom/google/e/a/r;->a:Lcom/google/e/a/hg;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 9167
    :sswitch_3
    iget-object v0, p0, Lcom/google/e/a/r;->b:Lcom/google/e/a/m;

    if-nez v0, :cond_2

    .line 9168
    new-instance v0, Lcom/google/e/a/m;

    invoke-direct {v0}, Lcom/google/e/a/m;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/r;->b:Lcom/google/e/a/m;

    .line 9170
    :cond_2
    iget-object v0, p0, Lcom/google/e/a/r;->b:Lcom/google/e/a/m;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 9174
    :sswitch_4
    iget-object v0, p0, Lcom/google/e/a/r;->c:Lcom/google/e/a/at;

    if-nez v0, :cond_3

    .line 9175
    new-instance v0, Lcom/google/e/a/at;

    invoke-direct {v0}, Lcom/google/e/a/at;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/r;->c:Lcom/google/e/a/at;

    .line 9177
    :cond_3
    iget-object v0, p0, Lcom/google/e/a/r;->c:Lcom/google/e/a/at;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 9181
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/r;->j:Ljava/lang/String;

    .line 9182
    iget v0, p0, Lcom/google/e/a/r;->g:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/e/a/r;->g:I

    goto :goto_0

    .line 9186
    :sswitch_6
    iget-object v0, p0, Lcom/google/e/a/r;->d:Lcom/google/e/a/o;

    if-nez v0, :cond_4

    .line 9187
    new-instance v0, Lcom/google/e/a/o;

    invoke-direct {v0}, Lcom/google/e/a/o;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/r;->d:Lcom/google/e/a/o;

    .line 9189
    :cond_4
    iget-object v0, p0, Lcom/google/e/a/r;->d:Lcom/google/e/a/o;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 9193
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/r;->k:Ljava/lang/String;

    .line 9194
    iget v0, p0, Lcom/google/e/a/r;->g:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/e/a/r;->g:I

    goto :goto_0

    .line 9198
    :sswitch_8
    iget-object v0, p0, Lcom/google/e/a/r;->e:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;

    if-nez v0, :cond_5

    .line 9199
    new-instance v0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;

    invoke-direct {v0}, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/r;->e:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;

    .line 9201
    :cond_5
    iget-object v0, p0, Lcom/google/e/a/r;->e:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 9205
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/r;->i:Ljava/lang/String;

    .line 9206
    iget v0, p0, Lcom/google/e/a/r;->g:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/e/a/r;->g:I

    goto/16 :goto_0

    .line 9210
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/r;->l:I

    .line 9211
    iget v0, p0, Lcom/google/e/a/r;->g:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/e/a/r;->g:I

    goto/16 :goto_0

    .line 9215
    :sswitch_b
    iget-object v0, p0, Lcom/google/e/a/r;->f:Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;

    if-nez v0, :cond_6

    .line 9216
    new-instance v0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;

    invoke-direct {v0}, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/r;->f:Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;

    .line 9218
    :cond_6
    iget-object v0, p0, Lcom/google/e/a/r;->f:Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 9145
    nop

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
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x50 -> :sswitch_a
        0x5a -> :sswitch_b
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 9090
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 9091
    iget v1, p0, Lcom/google/e/a/r;->g:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 9092
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/e/a/r;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9095
    :cond_0
    iget-object v1, p0, Lcom/google/e/a/r;->a:Lcom/google/e/a/hg;

    if-eqz v1, :cond_1

    .line 9096
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/e/a/r;->a:Lcom/google/e/a/hg;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9099
    :cond_1
    iget-object v1, p0, Lcom/google/e/a/r;->b:Lcom/google/e/a/m;

    if-eqz v1, :cond_2

    .line 9100
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/e/a/r;->b:Lcom/google/e/a/m;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9103
    :cond_2
    iget-object v1, p0, Lcom/google/e/a/r;->c:Lcom/google/e/a/at;

    if-eqz v1, :cond_3

    .line 9104
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/e/a/r;->c:Lcom/google/e/a/at;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9107
    :cond_3
    iget v1, p0, Lcom/google/e/a/r;->g:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    .line 9108
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/e/a/r;->j:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9111
    :cond_4
    iget-object v1, p0, Lcom/google/e/a/r;->d:Lcom/google/e/a/o;

    if-eqz v1, :cond_5

    .line 9112
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/e/a/r;->d:Lcom/google/e/a/o;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9115
    :cond_5
    iget v1, p0, Lcom/google/e/a/r;->g:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_6

    .line 9116
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/e/a/r;->k:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9119
    :cond_6
    iget-object v1, p0, Lcom/google/e/a/r;->e:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;

    if-eqz v1, :cond_7

    .line 9120
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/e/a/r;->e:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9123
    :cond_7
    iget v1, p0, Lcom/google/e/a/r;->g:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_8

    .line 9124
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/e/a/r;->i:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9127
    :cond_8
    iget v1, p0, Lcom/google/e/a/r;->g:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_9

    .line 9128
    const/16 v1, 0xa

    iget v2, p0, Lcom/google/e/a/r;->l:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9131
    :cond_9
    iget-object v1, p0, Lcom/google/e/a/r;->f:Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;

    if-eqz v1, :cond_a

    .line 9132
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/e/a/r;->f:Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9135
    :cond_a
    iput v0, p0, Lcom/google/e/a/r;->cachedSize:I

    .line 9136
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 8879
    invoke-direct {p0, p1}, Lcom/google/e/a/r;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/r;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 9053
    iget v0, p0, Lcom/google/e/a/r;->g:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 9054
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/e/a/r;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9056
    :cond_0
    iget-object v0, p0, Lcom/google/e/a/r;->a:Lcom/google/e/a/hg;

    if-eqz v0, :cond_1

    .line 9057
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/e/a/r;->a:Lcom/google/e/a/hg;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 9059
    :cond_1
    iget-object v0, p0, Lcom/google/e/a/r;->b:Lcom/google/e/a/m;

    if-eqz v0, :cond_2

    .line 9060
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/e/a/r;->b:Lcom/google/e/a/m;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 9062
    :cond_2
    iget-object v0, p0, Lcom/google/e/a/r;->c:Lcom/google/e/a/at;

    if-eqz v0, :cond_3

    .line 9063
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/e/a/r;->c:Lcom/google/e/a/at;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 9065
    :cond_3
    iget v0, p0, Lcom/google/e/a/r;->g:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 9066
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/e/a/r;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9068
    :cond_4
    iget-object v0, p0, Lcom/google/e/a/r;->d:Lcom/google/e/a/o;

    if-eqz v0, :cond_5

    .line 9069
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/e/a/r;->d:Lcom/google/e/a/o;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 9071
    :cond_5
    iget v0, p0, Lcom/google/e/a/r;->g:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_6

    .line 9072
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/e/a/r;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9074
    :cond_6
    iget-object v0, p0, Lcom/google/e/a/r;->e:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;

    if-eqz v0, :cond_7

    .line 9075
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/e/a/r;->e:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 9077
    :cond_7
    iget v0, p0, Lcom/google/e/a/r;->g:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    .line 9078
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/e/a/r;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9080
    :cond_8
    iget v0, p0, Lcom/google/e/a/r;->g:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_9

    .line 9081
    const/16 v0, 0xa

    iget v1, p0, Lcom/google/e/a/r;->l:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9083
    :cond_9
    iget-object v0, p0, Lcom/google/e/a/r;->f:Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;

    if-eqz v0, :cond_a

    .line 9084
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/e/a/r;->f:Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 9086
    :cond_a
    return-void
.end method
