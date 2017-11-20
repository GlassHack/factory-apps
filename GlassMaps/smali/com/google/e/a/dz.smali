.class public final Lcom/google/e/a/dz;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile a:[Lcom/google/e/a/dz;


# instance fields
.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6937
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 6938
    invoke-direct {p0}, Lcom/google/e/a/dz;->b()Lcom/google/e/a/dz;

    .line 6939
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/dz;
    .locals 1

    .prologue
    .line 6980
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 6981
    sparse-switch v0, :sswitch_data_0

    .line 6985
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6986
    :sswitch_0
    return-object p0

    .line 6991
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/dz;->c:Ljava/lang/String;

    .line 6992
    iget v0, p0, Lcom/google/e/a/dz;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/dz;->b:I

    goto :goto_0

    .line 6996
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/dz;->d:Ljava/lang/String;

    .line 6997
    iget v0, p0, Lcom/google/e/a/dz;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/e/a/dz;->b:I

    goto :goto_0

    .line 6981
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public static a()[Lcom/google/e/a/dz;
    .locals 2

    .prologue
    .line 6880
    sget-object v0, Lcom/google/e/a/dz;->a:[Lcom/google/e/a/dz;

    if-nez v0, :cond_1

    .line 6881
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 6883
    :try_start_0
    sget-object v0, Lcom/google/e/a/dz;->a:[Lcom/google/e/a/dz;

    if-nez v0, :cond_0

    .line 6884
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/e/a/dz;

    sput-object v0, Lcom/google/e/a/dz;->a:[Lcom/google/e/a/dz;

    .line 6886
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6888
    :cond_1
    sget-object v0, Lcom/google/e/a/dz;->a:[Lcom/google/e/a/dz;

    return-object v0

    .line 6886
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/e/a/dz;
    .locals 1

    .prologue
    .line 6942
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/e/a/dz;->b:I

    .line 6943
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/dz;->c:Ljava/lang/String;

    .line 6944
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/dz;->d:Ljava/lang/String;

    .line 6945
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/dz;->cachedSize:I

    .line 6946
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 6962
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 6963
    iget v1, p0, Lcom/google/e/a/dz;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 6964
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/e/a/dz;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6967
    :cond_0
    iget v1, p0, Lcom/google/e/a/dz;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 6968
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/e/a/dz;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6971
    :cond_1
    iput v0, p0, Lcom/google/e/a/dz;->cachedSize:I

    .line 6972
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 6874
    invoke-direct {p0, p1}, Lcom/google/e/a/dz;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/dz;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 6952
    iget v0, p0, Lcom/google/e/a/dz;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 6953
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/e/a/dz;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6955
    :cond_0
    iget v0, p0, Lcom/google/e/a/dz;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 6956
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/e/a/dz;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6958
    :cond_1
    return-void
.end method
