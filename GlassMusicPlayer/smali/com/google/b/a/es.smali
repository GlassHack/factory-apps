.class public final Lcom/google/b/a/es;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile b:[Lcom/google/b/a/es;


# instance fields
.field public a:Lcom/google/b/a/dv;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7895
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 7896
    invoke-direct {p0}, Lcom/google/b/a/es;->b()Lcom/google/b/a/es;

    .line 7897
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/es;
    .locals 1

    .prologue
    .line 7994
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 7995
    sparse-switch v0, :sswitch_data_0

    .line 7999
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8000
    :sswitch_0
    return-object p0

    .line 8005
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/es;->d:I

    .line 8006
    iget v0, p0, Lcom/google/b/a/es;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/es;->c:I

    goto :goto_0

    .line 8010
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/es;->e:I

    .line 8011
    iget v0, p0, Lcom/google/b/a/es;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/es;->c:I

    goto :goto_0

    .line 8015
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/es;->f:I

    .line 8016
    iget v0, p0, Lcom/google/b/a/es;->c:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/b/a/es;->c:I

    goto :goto_0

    .line 8020
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/es;->g:I

    .line 8021
    iget v0, p0, Lcom/google/b/a/es;->c:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/b/a/es;->c:I

    goto :goto_0

    .line 8025
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/es;->h:Ljava/lang/String;

    .line 8026
    iget v0, p0, Lcom/google/b/a/es;->c:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/b/a/es;->c:I

    goto :goto_0

    .line 8030
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/es;->i:Ljava/lang/String;

    .line 8031
    iget v0, p0, Lcom/google/b/a/es;->c:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/b/a/es;->c:I

    goto :goto_0

    .line 8035
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/es;->j:Ljava/lang/String;

    .line 8036
    iget v0, p0, Lcom/google/b/a/es;->c:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/b/a/es;->c:I

    goto :goto_0

    .line 8040
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/es;->k:Ljava/lang/String;

    .line 8041
    iget v0, p0, Lcom/google/b/a/es;->c:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/b/a/es;->c:I

    goto :goto_0

    .line 8045
    :sswitch_9
    iget-object v0, p0, Lcom/google/b/a/es;->a:Lcom/google/b/a/dv;

    if-nez v0, :cond_1

    .line 8046
    new-instance v0, Lcom/google/b/a/dv;

    invoke-direct {v0}, Lcom/google/b/a/dv;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/es;->a:Lcom/google/b/a/dv;

    .line 8048
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/es;->a:Lcom/google/b/a/dv;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 7995
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
    .end sparse-switch
.end method

.method public static a()[Lcom/google/b/a/es;
    .locals 2

    .prologue
    .line 7715
    sget-object v0, Lcom/google/b/a/es;->b:[Lcom/google/b/a/es;

    if-nez v0, :cond_1

    .line 7716
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 7718
    :try_start_0
    sget-object v0, Lcom/google/b/a/es;->b:[Lcom/google/b/a/es;

    if-nez v0, :cond_0

    .line 7719
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/b/a/es;

    sput-object v0, Lcom/google/b/a/es;->b:[Lcom/google/b/a/es;

    .line 7721
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7723
    :cond_1
    sget-object v0, Lcom/google/b/a/es;->b:[Lcom/google/b/a/es;

    return-object v0

    .line 7721
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/b/a/es;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7900
    iput v0, p0, Lcom/google/b/a/es;->c:I

    .line 7901
    iput v0, p0, Lcom/google/b/a/es;->d:I

    .line 7902
    iput v0, p0, Lcom/google/b/a/es;->e:I

    .line 7903
    iput v0, p0, Lcom/google/b/a/es;->f:I

    .line 7904
    iput v0, p0, Lcom/google/b/a/es;->g:I

    .line 7905
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/es;->h:Ljava/lang/String;

    .line 7906
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/es;->i:Ljava/lang/String;

    .line 7907
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/es;->j:Ljava/lang/String;

    .line 7908
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/es;->k:Ljava/lang/String;

    .line 7909
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/b/a/es;->a:Lcom/google/b/a/dv;

    .line 7910
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/es;->cachedSize:I

    .line 7911
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 7948
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 7949
    iget v1, p0, Lcom/google/b/a/es;->c:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 7950
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/b/a/es;->d:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7953
    :cond_0
    iget v1, p0, Lcom/google/b/a/es;->c:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 7954
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/b/a/es;->e:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7957
    :cond_1
    iget v1, p0, Lcom/google/b/a/es;->c:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 7958
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/b/a/es;->f:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7961
    :cond_2
    iget v1, p0, Lcom/google/b/a/es;->c:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 7962
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/b/a/es;->g:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7965
    :cond_3
    iget v1, p0, Lcom/google/b/a/es;->c:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 7966
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/b/a/es;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7969
    :cond_4
    iget v1, p0, Lcom/google/b/a/es;->c:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 7970
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/b/a/es;->i:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7973
    :cond_5
    iget v1, p0, Lcom/google/b/a/es;->c:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 7974
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/b/a/es;->j:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7977
    :cond_6
    iget v1, p0, Lcom/google/b/a/es;->c:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 7978
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/b/a/es;->k:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7981
    :cond_7
    iget-object v1, p0, Lcom/google/b/a/es;->a:Lcom/google/b/a/dv;

    if-eqz v1, :cond_8

    .line 7982
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/b/a/es;->a:Lcom/google/b/a/dv;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7985
    :cond_8
    iput v0, p0, Lcom/google/b/a/es;->cachedSize:I

    .line 7986
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 7698
    invoke-direct {p0, p1}, Lcom/google/b/a/es;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/es;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 7917
    iget v0, p0, Lcom/google/b/a/es;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7918
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/b/a/es;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7920
    :cond_0
    iget v0, p0, Lcom/google/b/a/es;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 7921
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/b/a/es;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7923
    :cond_1
    iget v0, p0, Lcom/google/b/a/es;->c:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 7924
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/b/a/es;->f:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7926
    :cond_2
    iget v0, p0, Lcom/google/b/a/es;->c:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 7927
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/b/a/es;->g:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7929
    :cond_3
    iget v0, p0, Lcom/google/b/a/es;->c:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 7930
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/b/a/es;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7932
    :cond_4
    iget v0, p0, Lcom/google/b/a/es;->c:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 7933
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/b/a/es;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7935
    :cond_5
    iget v0, p0, Lcom/google/b/a/es;->c:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 7936
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/b/a/es;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7938
    :cond_6
    iget v0, p0, Lcom/google/b/a/es;->c:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 7939
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/b/a/es;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7941
    :cond_7
    iget-object v0, p0, Lcom/google/b/a/es;->a:Lcom/google/b/a/dv;

    if-eqz v0, :cond_8

    .line 7942
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/b/a/es;->a:Lcom/google/b/a/dv;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 7944
    :cond_8
    return-void
.end method
