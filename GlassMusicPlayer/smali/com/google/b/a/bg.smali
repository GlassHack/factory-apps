.class public final Lcom/google/b/a/bg;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile a:[Lcom/google/b/a/bg;


# instance fields
.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:I

.field private g:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4979
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 4980
    invoke-direct {p0}, Lcom/google/b/a/bg;->b()Lcom/google/b/a/bg;

    .line 4981
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/bg;
    .locals 2

    .prologue
    .line 5046
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 5047
    sparse-switch v0, :sswitch_data_0

    .line 5051
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5052
    :sswitch_0
    return-object p0

    .line 5057
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/bg;->c:Ljava/lang/String;

    .line 5058
    iget v0, p0, Lcom/google/b/a/bg;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/bg;->b:I

    goto :goto_0

    .line 5062
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/bg;->d:Ljava/lang/String;

    .line 5063
    iget v0, p0, Lcom/google/b/a/bg;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/bg;->b:I

    goto :goto_0

    .line 5067
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/b/a/bg;->e:Z

    .line 5068
    iget v0, p0, Lcom/google/b/a/bg;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/b/a/bg;->b:I

    goto :goto_0

    .line 5072
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/bg;->f:I

    .line 5073
    iget v0, p0, Lcom/google/b/a/bg;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/b/a/bg;->b:I

    goto :goto_0

    .line 5077
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/b/a/bg;->g:D

    .line 5078
    iget v0, p0, Lcom/google/b/a/bg;->b:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/b/a/bg;->b:I

    goto :goto_0

    .line 5047
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x29 -> :sswitch_5
    .end sparse-switch
.end method

.method public static a()[Lcom/google/b/a/bg;
    .locals 2

    .prologue
    .line 4865
    sget-object v0, Lcom/google/b/a/bg;->a:[Lcom/google/b/a/bg;

    if-nez v0, :cond_1

    .line 4866
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 4868
    :try_start_0
    sget-object v0, Lcom/google/b/a/bg;->a:[Lcom/google/b/a/bg;

    if-nez v0, :cond_0

    .line 4869
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/b/a/bg;

    sput-object v0, Lcom/google/b/a/bg;->a:[Lcom/google/b/a/bg;

    .line 4871
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4873
    :cond_1
    sget-object v0, Lcom/google/b/a/bg;->a:[Lcom/google/b/a/bg;

    return-object v0

    .line 4871
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/b/a/bg;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4984
    iput v1, p0, Lcom/google/b/a/bg;->b:I

    .line 4985
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/bg;->c:Ljava/lang/String;

    .line 4986
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/bg;->d:Ljava/lang/String;

    .line 4987
    iput-boolean v1, p0, Lcom/google/b/a/bg;->e:Z

    .line 4988
    iput v1, p0, Lcom/google/b/a/bg;->f:I

    .line 4989
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/b/a/bg;->g:D

    .line 4990
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/bg;->cachedSize:I

    .line 4991
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 4

    .prologue
    .line 5016
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 5017
    iget v1, p0, Lcom/google/b/a/bg;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 5018
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/b/a/bg;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5021
    :cond_0
    iget v1, p0, Lcom/google/b/a/bg;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 5022
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/b/a/bg;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5025
    :cond_1
    iget v1, p0, Lcom/google/b/a/bg;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 5026
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/b/a/bg;->e:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5029
    :cond_2
    iget v1, p0, Lcom/google/b/a/bg;->b:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 5030
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/b/a/bg;->f:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5033
    :cond_3
    iget v1, p0, Lcom/google/b/a/bg;->b:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 5034
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/b/a/bg;->g:D

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 5037
    :cond_4
    iput v0, p0, Lcom/google/b/a/bg;->cachedSize:I

    .line 5038
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 4859
    invoke-direct {p0, p1}, Lcom/google/b/a/bg;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/bg;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 4997
    iget v0, p0, Lcom/google/b/a/bg;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 4998
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/bg;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5000
    :cond_0
    iget v0, p0, Lcom/google/b/a/bg;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 5001
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/b/a/bg;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5003
    :cond_1
    iget v0, p0, Lcom/google/b/a/bg;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 5004
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/b/a/bg;->e:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5006
    :cond_2
    iget v0, p0, Lcom/google/b/a/bg;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 5007
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/b/a/bg;->f:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5009
    :cond_3
    iget v0, p0, Lcom/google/b/a/bg;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 5010
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/b/a/bg;->g:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 5012
    :cond_4
    return-void
.end method
