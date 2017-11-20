.class public final Lcom/google/b/a/u;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile b:[Lcom/google/b/a/u;


# instance fields
.field public a:[Lcom/google/b/a/v;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13048
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 13049
    invoke-direct {p0}, Lcom/google/b/a/u;->b()Lcom/google/b/a/u;

    .line 13050
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/u;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 13125
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 13126
    sparse-switch v0, :sswitch_data_0

    .line 13130
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 13131
    :sswitch_0
    return-object p0

    .line 13136
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/u;->d:Ljava/lang/String;

    .line 13137
    iget v0, p0, Lcom/google/b/a/u;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/u;->c:I

    goto :goto_0

    .line 13141
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/u;->e:Ljava/lang/String;

    .line 13142
    iget v0, p0, Lcom/google/b/a/u;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/u;->c:I

    goto :goto_0

    .line 13146
    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 13148
    iget-object v0, p0, Lcom/google/b/a/u;->a:[Lcom/google/b/a/v;

    if-nez v0, :cond_2

    move v0, v1

    .line 13149
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/b/a/v;

    .line 13151
    if-eqz v0, :cond_1

    .line 13152
    iget-object v3, p0, Lcom/google/b/a/u;->a:[Lcom/google/b/a/v;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13154
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 13155
    new-instance v3, Lcom/google/b/a/v;

    invoke-direct {v3}, Lcom/google/b/a/v;-><init>()V

    aput-object v3, v2, v0

    .line 13156
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 13157
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 13154
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 13148
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/u;->a:[Lcom/google/b/a/v;

    array-length v0, v0

    goto :goto_1

    .line 13160
    :cond_3
    new-instance v3, Lcom/google/b/a/v;

    invoke-direct {v3}, Lcom/google/b/a/v;-><init>()V

    aput-object v3, v2, v0

    .line 13161
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 13162
    iput-object v2, p0, Lcom/google/b/a/u;->a:[Lcom/google/b/a/v;

    goto :goto_0

    .line 13166
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/u;->f:Ljava/lang/String;

    .line 13167
    iget v0, p0, Lcom/google/b/a/u;->c:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/b/a/u;->c:I

    goto :goto_0

    .line 13171
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/u;->g:Ljava/lang/String;

    .line 13172
    iget v0, p0, Lcom/google/b/a/u;->c:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/b/a/u;->c:I

    goto :goto_0

    .line 13126
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public static a()[Lcom/google/b/a/u;
    .locals 2

    .prologue
    .line 12944
    sget-object v0, Lcom/google/b/a/u;->b:[Lcom/google/b/a/u;

    if-nez v0, :cond_1

    .line 12945
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 12947
    :try_start_0
    sget-object v0, Lcom/google/b/a/u;->b:[Lcom/google/b/a/u;

    if-nez v0, :cond_0

    .line 12948
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/b/a/u;

    sput-object v0, Lcom/google/b/a/u;->b:[Lcom/google/b/a/u;

    .line 12950
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12952
    :cond_1
    sget-object v0, Lcom/google/b/a/u;->b:[Lcom/google/b/a/u;

    return-object v0

    .line 12950
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/b/a/u;
    .locals 1

    .prologue
    .line 13053
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/b/a/u;->c:I

    .line 13054
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/u;->d:Ljava/lang/String;

    .line 13055
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/u;->e:Ljava/lang/String;

    .line 13056
    invoke-static {}, Lcom/google/b/a/v;->a()[Lcom/google/b/a/v;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/u;->a:[Lcom/google/b/a/v;

    .line 13057
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/u;->f:Ljava/lang/String;

    .line 13058
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/u;->g:Ljava/lang/String;

    .line 13059
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/u;->cachedSize:I

    .line 13060
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 5

    .prologue
    .line 13090
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 13091
    iget v1, p0, Lcom/google/b/a/u;->c:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 13092
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/b/a/u;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13095
    :cond_0
    iget v1, p0, Lcom/google/b/a/u;->c:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 13096
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/b/a/u;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13099
    :cond_1
    iget-object v1, p0, Lcom/google/b/a/u;->a:[Lcom/google/b/a/v;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/b/a/u;->a:[Lcom/google/b/a/v;

    array-length v1, v1

    if-lez v1, :cond_4

    .line 13100
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/b/a/u;->a:[Lcom/google/b/a/v;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 13101
    iget-object v2, p0, Lcom/google/b/a/u;->a:[Lcom/google/b/a/v;

    aget-object v2, v2, v0

    .line 13102
    if-eqz v2, :cond_2

    .line 13103
    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 13100
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 13108
    :cond_4
    iget v1, p0, Lcom/google/b/a/u;->c:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    .line 13109
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/b/a/u;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13112
    :cond_5
    iget v1, p0, Lcom/google/b/a/u;->c:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_6

    .line 13113
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/b/a/u;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13116
    :cond_6
    iput v0, p0, Lcom/google/b/a/u;->cachedSize:I

    .line 13117
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 12647
    invoke-direct {p0, p1}, Lcom/google/b/a/u;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/u;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 13066
    iget v0, p0, Lcom/google/b/a/u;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 13067
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/u;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 13069
    :cond_0
    iget v0, p0, Lcom/google/b/a/u;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 13070
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/b/a/u;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 13072
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/u;->a:[Lcom/google/b/a/v;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/b/a/u;->a:[Lcom/google/b/a/v;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 13073
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/b/a/u;->a:[Lcom/google/b/a/v;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 13074
    iget-object v1, p0, Lcom/google/b/a/u;->a:[Lcom/google/b/a/v;

    aget-object v1, v1, v0

    .line 13075
    if-eqz v1, :cond_2

    .line 13076
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 13073
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13080
    :cond_3
    iget v0, p0, Lcom/google/b/a/u;->c:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 13081
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/b/a/u;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 13083
    :cond_4
    iget v0, p0, Lcom/google/b/a/u;->c:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    .line 13084
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/b/a/u;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 13086
    :cond_5
    return-void
.end method
