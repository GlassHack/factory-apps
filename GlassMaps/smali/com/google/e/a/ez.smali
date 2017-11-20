.class public final Lcom/google/e/a/ez;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile a:[Lcom/google/e/a/ez;


# instance fields
.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11923
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 11924
    invoke-direct {p0}, Lcom/google/e/a/ez;->b()Lcom/google/e/a/ez;

    .line 11925
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/ez;
    .locals 1

    .prologue
    .line 11982
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 11983
    sparse-switch v0, :sswitch_data_0

    .line 11987
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11988
    :sswitch_0
    return-object p0

    .line 11993
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/ez;->c:Ljava/lang/String;

    .line 11994
    iget v0, p0, Lcom/google/e/a/ez;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/ez;->b:I

    goto :goto_0

    .line 11998
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/ez;->d:Ljava/lang/String;

    .line 11999
    iget v0, p0, Lcom/google/e/a/ez;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/e/a/ez;->b:I

    goto :goto_0

    .line 12003
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/ez;->e:Ljava/lang/String;

    .line 12004
    iget v0, p0, Lcom/google/e/a/ez;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/e/a/ez;->b:I

    goto :goto_0

    .line 12008
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/ez;->f:Ljava/lang/String;

    .line 12009
    iget v0, p0, Lcom/google/e/a/ez;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/e/a/ez;->b:I

    goto :goto_0

    .line 11983
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public static a()[Lcom/google/e/a/ez;
    .locals 2

    .prologue
    .line 11822
    sget-object v0, Lcom/google/e/a/ez;->a:[Lcom/google/e/a/ez;

    if-nez v0, :cond_1

    .line 11823
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 11825
    :try_start_0
    sget-object v0, Lcom/google/e/a/ez;->a:[Lcom/google/e/a/ez;

    if-nez v0, :cond_0

    .line 11826
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/e/a/ez;

    sput-object v0, Lcom/google/e/a/ez;->a:[Lcom/google/e/a/ez;

    .line 11828
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11830
    :cond_1
    sget-object v0, Lcom/google/e/a/ez;->a:[Lcom/google/e/a/ez;

    return-object v0

    .line 11828
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/e/a/ez;
    .locals 1

    .prologue
    .line 11928
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/e/a/ez;->b:I

    .line 11929
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/ez;->c:Ljava/lang/String;

    .line 11930
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/ez;->d:Ljava/lang/String;

    .line 11931
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/ez;->e:Ljava/lang/String;

    .line 11932
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/ez;->f:Ljava/lang/String;

    .line 11933
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/ez;->cachedSize:I

    .line 11934
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 11956
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 11957
    iget v1, p0, Lcom/google/e/a/ez;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 11958
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/e/a/ez;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11961
    :cond_0
    iget v1, p0, Lcom/google/e/a/ez;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 11962
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/e/a/ez;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11965
    :cond_1
    iget v1, p0, Lcom/google/e/a/ez;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 11966
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/e/a/ez;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11969
    :cond_2
    iget v1, p0, Lcom/google/e/a/ez;->b:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 11970
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/e/a/ez;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11973
    :cond_3
    iput v0, p0, Lcom/google/e/a/ez;->cachedSize:I

    .line 11974
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 11816
    invoke-direct {p0, p1}, Lcom/google/e/a/ez;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/ez;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 11940
    iget v0, p0, Lcom/google/e/a/ez;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 11941
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/e/a/ez;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 11943
    :cond_0
    iget v0, p0, Lcom/google/e/a/ez;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 11944
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/e/a/ez;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 11946
    :cond_1
    iget v0, p0, Lcom/google/e/a/ez;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 11947
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/e/a/ez;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 11949
    :cond_2
    iget v0, p0, Lcom/google/e/a/ez;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 11950
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/e/a/ez;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 11952
    :cond_3
    return-void
.end method
