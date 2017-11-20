.class public final Lcom/google/b/a/ap;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile a:[Lcom/google/b/a/ap;


# instance fields
.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9846
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 9847
    invoke-direct {p0}, Lcom/google/b/a/ap;->b()Lcom/google/b/a/ap;

    .line 9848
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/ap;
    .locals 1

    .prologue
    .line 9889
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 9890
    sparse-switch v0, :sswitch_data_0

    .line 9894
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9895
    :sswitch_0
    return-object p0

    .line 9900
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ap;->c:Ljava/lang/String;

    .line 9901
    iget v0, p0, Lcom/google/b/a/ap;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/ap;->b:I

    goto :goto_0

    .line 9905
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ap;->d:Ljava/lang/String;

    .line 9906
    iget v0, p0, Lcom/google/b/a/ap;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/ap;->b:I

    goto :goto_0

    .line 9890
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public static a()[Lcom/google/b/a/ap;
    .locals 2

    .prologue
    .line 9789
    sget-object v0, Lcom/google/b/a/ap;->a:[Lcom/google/b/a/ap;

    if-nez v0, :cond_1

    .line 9790
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 9792
    :try_start_0
    sget-object v0, Lcom/google/b/a/ap;->a:[Lcom/google/b/a/ap;

    if-nez v0, :cond_0

    .line 9793
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/b/a/ap;

    sput-object v0, Lcom/google/b/a/ap;->a:[Lcom/google/b/a/ap;

    .line 9795
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9797
    :cond_1
    sget-object v0, Lcom/google/b/a/ap;->a:[Lcom/google/b/a/ap;

    return-object v0

    .line 9795
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/b/a/ap;
    .locals 1

    .prologue
    .line 9851
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/b/a/ap;->b:I

    .line 9852
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ap;->c:Ljava/lang/String;

    .line 9853
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ap;->d:Ljava/lang/String;

    .line 9854
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/ap;->cachedSize:I

    .line 9855
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 9871
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 9872
    iget v1, p0, Lcom/google/b/a/ap;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 9873
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/b/a/ap;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9876
    :cond_0
    iget v1, p0, Lcom/google/b/a/ap;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 9877
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/b/a/ap;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9880
    :cond_1
    iput v0, p0, Lcom/google/b/a/ap;->cachedSize:I

    .line 9881
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 9783
    invoke-direct {p0, p1}, Lcom/google/b/a/ap;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/ap;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 9861
    iget v0, p0, Lcom/google/b/a/ap;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 9862
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/ap;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9864
    :cond_0
    iget v0, p0, Lcom/google/b/a/ap;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 9865
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/b/a/ap;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9867
    :cond_1
    return-void
.end method
