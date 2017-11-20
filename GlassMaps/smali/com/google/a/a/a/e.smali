.class public final Lcom/google/a/a/a/e;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile a:[Lcom/google/a/a/a/e;


# instance fields
.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 98
    invoke-direct {p0}, Lcom/google/a/a/a/e;->b()Lcom/google/a/a/a/e;

    .line 99
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/a/a/a/e;
    .locals 1

    .prologue
    .line 148
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 149
    sparse-switch v0, :sswitch_data_0

    .line 153
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    :sswitch_0
    return-object p0

    .line 159
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/e;->c:Ljava/lang/String;

    .line 160
    iget v0, p0, Lcom/google/a/a/a/e;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/a/a/e;->b:I

    goto :goto_0

    .line 164
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/e;->d:Ljava/lang/String;

    .line 165
    iget v0, p0, Lcom/google/a/a/a/e;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/a/a/a/e;->b:I

    goto :goto_0

    .line 169
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/a/a/a/e;->e:I

    .line 170
    iget v0, p0, Lcom/google/a/a/a/e;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/a/a/a/e;->b:I

    goto :goto_0

    .line 149
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public static a()[Lcom/google/a/a/a/e;
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/google/a/a/a/e;->a:[Lcom/google/a/a/a/e;

    if-nez v0, :cond_1

    .line 22
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Lcom/google/a/a/a/e;->a:[Lcom/google/a/a/a/e;

    if-nez v0, :cond_0

    .line 25
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/a/a/a/e;

    sput-object v0, Lcom/google/a/a/a/e;->a:[Lcom/google/a/a/a/e;

    .line 27
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_1
    sget-object v0, Lcom/google/a/a/a/e;->a:[Lcom/google/a/a/a/e;

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/a/a/a/e;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 102
    iput v1, p0, Lcom/google/a/a/a/e;->b:I

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lcom/google/a/a/a/e;->c:Ljava/lang/String;

    .line 104
    const-string v0, ""

    iput-object v0, p0, Lcom/google/a/a/a/e;->d:Ljava/lang/String;

    .line 105
    iput v1, p0, Lcom/google/a/a/a/e;->e:I

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/e;->cachedSize:I

    .line 107
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 126
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 127
    iget v1, p0, Lcom/google/a/a/a/e;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 128
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/e;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 131
    :cond_0
    iget v1, p0, Lcom/google/a/a/a/e;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 132
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/a/a/a/e;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 135
    :cond_1
    iget v1, p0, Lcom/google/a/a/a/e;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 136
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/a/a/a/e;->e:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 139
    :cond_2
    iput v0, p0, Lcom/google/a/a/a/e;->cachedSize:I

    .line 140
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/google/a/a/a/e;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/a/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 113
    iget v0, p0, Lcom/google/a/a/a/e;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 114
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/e;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 116
    :cond_0
    iget v0, p0, Lcom/google/a/a/a/e;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 117
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/a/a/a/e;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 119
    :cond_1
    iget v0, p0, Lcom/google/a/a/a/e;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 120
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/a/a/a/e;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 122
    :cond_2
    return-void
.end method
