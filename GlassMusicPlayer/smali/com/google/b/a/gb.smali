.class public final Lcom/google/b/a/gb;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile c:[Lcom/google/b/a/gb;


# instance fields
.field public a:Lcom/google/b/a/gi;

.field public b:Lcom/google/b/a/gf;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3961
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 3962
    invoke-direct {p0}, Lcom/google/b/a/gb;->c()Lcom/google/b/a/gb;

    .line 3963
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/gb;
    .locals 1

    .prologue
    .line 4012
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 4013
    sparse-switch v0, :sswitch_data_0

    .line 4017
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4018
    :sswitch_0
    return-object p0

    .line 4023
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/gb;->e:I

    .line 4024
    iget v0, p0, Lcom/google/b/a/gb;->d:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/gb;->d:I

    goto :goto_0

    .line 4028
    :sswitch_2
    iget-object v0, p0, Lcom/google/b/a/gb;->a:Lcom/google/b/a/gi;

    if-nez v0, :cond_1

    .line 4029
    new-instance v0, Lcom/google/b/a/gi;

    invoke-direct {v0}, Lcom/google/b/a/gi;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/gb;->a:Lcom/google/b/a/gi;

    .line 4031
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/gb;->a:Lcom/google/b/a/gi;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 4035
    :sswitch_3
    iget-object v0, p0, Lcom/google/b/a/gb;->b:Lcom/google/b/a/gf;

    if-nez v0, :cond_2

    .line 4036
    new-instance v0, Lcom/google/b/a/gf;

    invoke-direct {v0}, Lcom/google/b/a/gf;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/gb;->b:Lcom/google/b/a/gf;

    .line 4038
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/gb;->b:Lcom/google/b/a/gf;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 4013
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x1f42 -> :sswitch_2
        0x1f4a -> :sswitch_3
    .end sparse-switch
.end method

.method public static a()[Lcom/google/b/a/gb;
    .locals 2

    .prologue
    .line 3923
    sget-object v0, Lcom/google/b/a/gb;->c:[Lcom/google/b/a/gb;

    if-nez v0, :cond_1

    .line 3924
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3926
    :try_start_0
    sget-object v0, Lcom/google/b/a/gb;->c:[Lcom/google/b/a/gb;

    if-nez v0, :cond_0

    .line 3927
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/b/a/gb;

    sput-object v0, Lcom/google/b/a/gb;->c:[Lcom/google/b/a/gb;

    .line 3929
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3931
    :cond_1
    sget-object v0, Lcom/google/b/a/gb;->c:[Lcom/google/b/a/gb;

    return-object v0

    .line 3929
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private c()Lcom/google/b/a/gb;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 3966
    iput v0, p0, Lcom/google/b/a/gb;->d:I

    .line 3967
    iput v0, p0, Lcom/google/b/a/gb;->e:I

    .line 3968
    iput-object v1, p0, Lcom/google/b/a/gb;->a:Lcom/google/b/a/gi;

    .line 3969
    iput-object v1, p0, Lcom/google/b/a/gb;->b:Lcom/google/b/a/gf;

    .line 3970
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/gb;->cachedSize:I

    .line 3971
    return-object p0
.end method


# virtual methods
.method public final b()I
    .locals 1

    .prologue
    .line 3939
    iget v0, p0, Lcom/google/b/a/gb;->e:I

    return v0
.end method

.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 3990
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 3991
    iget v1, p0, Lcom/google/b/a/gb;->d:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 3992
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/b/a/gb;->e:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3995
    :cond_0
    iget-object v1, p0, Lcom/google/b/a/gb;->a:Lcom/google/b/a/gi;

    if-eqz v1, :cond_1

    .line 3996
    const/16 v1, 0x3e8

    iget-object v2, p0, Lcom/google/b/a/gb;->a:Lcom/google/b/a/gi;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3999
    :cond_1
    iget-object v1, p0, Lcom/google/b/a/gb;->b:Lcom/google/b/a/gf;

    if-eqz v1, :cond_2

    .line 4000
    const/16 v1, 0x3e9

    iget-object v2, p0, Lcom/google/b/a/gb;->b:Lcom/google/b/a/gf;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4003
    :cond_2
    iput v0, p0, Lcom/google/b/a/gb;->cachedSize:I

    .line 4004
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 3917
    invoke-direct {p0, p1}, Lcom/google/b/a/gb;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/gb;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 3977
    iget v0, p0, Lcom/google/b/a/gb;->d:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3978
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/b/a/gb;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3980
    :cond_0
    iget-object v0, p0, Lcom/google/b/a/gb;->a:Lcom/google/b/a/gi;

    if-eqz v0, :cond_1

    .line 3981
    const/16 v0, 0x3e8

    iget-object v1, p0, Lcom/google/b/a/gb;->a:Lcom/google/b/a/gi;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3983
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/gb;->b:Lcom/google/b/a/gf;

    if-eqz v0, :cond_2

    .line 3984
    const/16 v0, 0x3e9

    iget-object v1, p0, Lcom/google/b/a/gb;->b:Lcom/google/b/a/gf;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3986
    :cond_2
    return-void
.end method
