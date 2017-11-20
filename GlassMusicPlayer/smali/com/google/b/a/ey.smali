.class public final Lcom/google/b/a/ey;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile a:[Lcom/google/b/a/ey;


# instance fields
.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3899
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 3900
    invoke-direct {p0}, Lcom/google/b/a/ey;->b()Lcom/google/b/a/ey;

    .line 3901
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/ey;
    .locals 1

    .prologue
    .line 3950
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3951
    sparse-switch v0, :sswitch_data_0

    .line 3955
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3956
    :sswitch_0
    return-object p0

    .line 3961
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ey;->c:Ljava/lang/String;

    .line 3962
    iget v0, p0, Lcom/google/b/a/ey;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/ey;->b:I

    goto :goto_0

    .line 3966
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ey;->d:Ljava/lang/String;

    .line 3967
    iget v0, p0, Lcom/google/b/a/ey;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/ey;->b:I

    goto :goto_0

    .line 3971
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/ey;->e:I

    .line 3972
    iget v0, p0, Lcom/google/b/a/ey;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/b/a/ey;->b:I

    goto :goto_0

    .line 3951
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public static a()[Lcom/google/b/a/ey;
    .locals 2

    .prologue
    .line 3823
    sget-object v0, Lcom/google/b/a/ey;->a:[Lcom/google/b/a/ey;

    if-nez v0, :cond_1

    .line 3824
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3826
    :try_start_0
    sget-object v0, Lcom/google/b/a/ey;->a:[Lcom/google/b/a/ey;

    if-nez v0, :cond_0

    .line 3827
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/b/a/ey;

    sput-object v0, Lcom/google/b/a/ey;->a:[Lcom/google/b/a/ey;

    .line 3829
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3831
    :cond_1
    sget-object v0, Lcom/google/b/a/ey;->a:[Lcom/google/b/a/ey;

    return-object v0

    .line 3829
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/b/a/ey;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3904
    iput v1, p0, Lcom/google/b/a/ey;->b:I

    .line 3905
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ey;->c:Ljava/lang/String;

    .line 3906
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ey;->d:Ljava/lang/String;

    .line 3907
    iput v1, p0, Lcom/google/b/a/ey;->e:I

    .line 3908
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/ey;->cachedSize:I

    .line 3909
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 3928
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 3929
    iget v1, p0, Lcom/google/b/a/ey;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 3930
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/b/a/ey;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3933
    :cond_0
    iget v1, p0, Lcom/google/b/a/ey;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 3934
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/b/a/ey;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3937
    :cond_1
    iget v1, p0, Lcom/google/b/a/ey;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 3938
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/b/a/ey;->e:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3941
    :cond_2
    iput v0, p0, Lcom/google/b/a/ey;->cachedSize:I

    .line 3942
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 3817
    invoke-direct {p0, p1}, Lcom/google/b/a/ey;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/ey;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 3915
    iget v0, p0, Lcom/google/b/a/ey;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3916
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/ey;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3918
    :cond_0
    iget v0, p0, Lcom/google/b/a/ey;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 3919
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/b/a/ey;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3921
    :cond_1
    iget v0, p0, Lcom/google/b/a/ey;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 3922
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/b/a/ey;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3924
    :cond_2
    return-void
.end method
