.class public final Lcom/google/b/a/dh;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile c:[Lcom/google/b/a/dh;


# instance fields
.field public a:Lcom/google/b/a/dn;

.field public b:Lcom/google/b/a/do;

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 931
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 932
    invoke-direct {p0}, Lcom/google/b/a/dh;->b()Lcom/google/b/a/dh;

    .line 933
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/dh;
    .locals 1

    .prologue
    .line 982
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 983
    sparse-switch v0, :sswitch_data_0

    .line 987
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 988
    :sswitch_0
    return-object p0

    .line 993
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/dh;->e:Ljava/lang/String;

    .line 994
    iget v0, p0, Lcom/google/b/a/dh;->d:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/dh;->d:I

    goto :goto_0

    .line 998
    :sswitch_2
    iget-object v0, p0, Lcom/google/b/a/dh;->a:Lcom/google/b/a/dn;

    if-nez v0, :cond_1

    .line 999
    new-instance v0, Lcom/google/b/a/dn;

    invoke-direct {v0}, Lcom/google/b/a/dn;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/dh;->a:Lcom/google/b/a/dn;

    .line 1001
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/dh;->a:Lcom/google/b/a/dn;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1005
    :sswitch_3
    iget-object v0, p0, Lcom/google/b/a/dh;->b:Lcom/google/b/a/do;

    if-nez v0, :cond_2

    .line 1006
    new-instance v0, Lcom/google/b/a/do;

    invoke-direct {v0}, Lcom/google/b/a/do;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/dh;->b:Lcom/google/b/a/do;

    .line 1008
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/dh;->b:Lcom/google/b/a/do;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 983
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public static a()[Lcom/google/b/a/dh;
    .locals 2

    .prologue
    .line 890
    sget-object v0, Lcom/google/b/a/dh;->c:[Lcom/google/b/a/dh;

    if-nez v0, :cond_1

    .line 891
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 893
    :try_start_0
    sget-object v0, Lcom/google/b/a/dh;->c:[Lcom/google/b/a/dh;

    if-nez v0, :cond_0

    .line 894
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/b/a/dh;

    sput-object v0, Lcom/google/b/a/dh;->c:[Lcom/google/b/a/dh;

    .line 896
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 898
    :cond_1
    sget-object v0, Lcom/google/b/a/dh;->c:[Lcom/google/b/a/dh;

    return-object v0

    .line 896
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/b/a/dh;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 936
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/b/a/dh;->d:I

    .line 937
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/dh;->e:Ljava/lang/String;

    .line 938
    iput-object v1, p0, Lcom/google/b/a/dh;->a:Lcom/google/b/a/dn;

    .line 939
    iput-object v1, p0, Lcom/google/b/a/dh;->b:Lcom/google/b/a/do;

    .line 940
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/dh;->cachedSize:I

    .line 941
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 960
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 961
    iget v1, p0, Lcom/google/b/a/dh;->d:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 962
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/b/a/dh;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 965
    :cond_0
    iget-object v1, p0, Lcom/google/b/a/dh;->a:Lcom/google/b/a/dn;

    if-eqz v1, :cond_1

    .line 966
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/b/a/dh;->a:Lcom/google/b/a/dn;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 969
    :cond_1
    iget-object v1, p0, Lcom/google/b/a/dh;->b:Lcom/google/b/a/do;

    if-eqz v1, :cond_2

    .line 970
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/b/a/dh;->b:Lcom/google/b/a/do;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 973
    :cond_2
    iput v0, p0, Lcom/google/b/a/dh;->cachedSize:I

    .line 974
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 884
    invoke-direct {p0, p1}, Lcom/google/b/a/dh;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/dh;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 947
    iget v0, p0, Lcom/google/b/a/dh;->d:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 948
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/dh;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 950
    :cond_0
    iget-object v0, p0, Lcom/google/b/a/dh;->a:Lcom/google/b/a/dn;

    if-eqz v0, :cond_1

    .line 951
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/b/a/dh;->a:Lcom/google/b/a/dn;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 953
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/dh;->b:Lcom/google/b/a/do;

    if-eqz v0, :cond_2

    .line 954
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/b/a/dh;->b:Lcom/google/b/a/do;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 956
    :cond_2
    return-void
.end method
