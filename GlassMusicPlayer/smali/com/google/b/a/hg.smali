.class public final Lcom/google/b/a/hg;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile b:[Lcom/google/b/a/hg;


# instance fields
.field public a:Lcom/google/b/a/he;

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 69
    invoke-direct {p0}, Lcom/google/b/a/hg;->b()Lcom/google/b/a/hg;

    .line 70
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/hg;
    .locals 1

    .prologue
    .line 119
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 120
    sparse-switch v0, :sswitch_data_0

    .line 124
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    :sswitch_0
    return-object p0

    .line 130
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/hg;->d:I

    .line 131
    iget v0, p0, Lcom/google/b/a/hg;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/hg;->c:I

    goto :goto_0

    .line 135
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/hg;->e:I

    .line 136
    iget v0, p0, Lcom/google/b/a/hg;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/hg;->c:I

    goto :goto_0

    .line 140
    :sswitch_3
    iget-object v0, p0, Lcom/google/b/a/hg;->a:Lcom/google/b/a/he;

    if-nez v0, :cond_1

    .line 141
    new-instance v0, Lcom/google/b/a/he;

    invoke-direct {v0}, Lcom/google/b/a/he;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/hg;->a:Lcom/google/b/a/he;

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/hg;->a:Lcom/google/b/a/he;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 120
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0xcd9141a -> :sswitch_3
    .end sparse-switch
.end method

.method public static a()[Lcom/google/b/a/hg;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/google/b/a/hg;->b:[Lcom/google/b/a/hg;

    if-nez v0, :cond_1

    .line 15
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lcom/google/b/a/hg;->b:[Lcom/google/b/a/hg;

    if-nez v0, :cond_0

    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/b/a/hg;

    sput-object v0, Lcom/google/b/a/hg;->b:[Lcom/google/b/a/hg;

    .line 20
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_1
    sget-object v0, Lcom/google/b/a/hg;->b:[Lcom/google/b/a/hg;

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/b/a/hg;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    iput v0, p0, Lcom/google/b/a/hg;->c:I

    .line 74
    iput v0, p0, Lcom/google/b/a/hg;->d:I

    .line 75
    iput v0, p0, Lcom/google/b/a/hg;->e:I

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/b/a/hg;->a:Lcom/google/b/a/he;

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/hg;->cachedSize:I

    .line 78
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 97
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 98
    iget v1, p0, Lcom/google/b/a/hg;->c:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 99
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/b/a/hg;->d:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 102
    :cond_0
    iget v1, p0, Lcom/google/b/a/hg;->c:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 103
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/b/a/hg;->e:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/google/b/a/hg;->a:Lcom/google/b/a/he;

    if-eqz v1, :cond_2

    .line 107
    const v1, 0x19b2283

    iget-object v2, p0, Lcom/google/b/a/hg;->a:Lcom/google/b/a/he;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 110
    :cond_2
    iput v0, p0, Lcom/google/b/a/hg;->cachedSize:I

    .line 111
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/google/b/a/hg;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/hg;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 84
    iget v0, p0, Lcom/google/b/a/hg;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/b/a/hg;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 87
    :cond_0
    iget v0, p0, Lcom/google/b/a/hg;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 88
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/b/a/hg;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/hg;->a:Lcom/google/b/a/he;

    if-eqz v0, :cond_2

    .line 91
    const v0, 0x19b2283

    iget-object v1, p0, Lcom/google/b/a/hg;->a:Lcom/google/b/a/he;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 93
    :cond_2
    return-void
.end method
