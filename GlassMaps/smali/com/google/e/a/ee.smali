.class public final Lcom/google/e/a/ee;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile a:[Lcom/google/e/a/ee;


# instance fields
.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11149
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 11150
    invoke-direct {p0}, Lcom/google/e/a/ee;->b()Lcom/google/e/a/ee;

    .line 11151
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/ee;
    .locals 1

    .prologue
    .line 11192
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 11193
    sparse-switch v0, :sswitch_data_0

    .line 11197
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11198
    :sswitch_0
    return-object p0

    .line 11203
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/ee;->c:Ljava/lang/String;

    .line 11204
    iget v0, p0, Lcom/google/e/a/ee;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/ee;->b:I

    goto :goto_0

    .line 11208
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/ee;->d:Ljava/lang/String;

    .line 11209
    iget v0, p0, Lcom/google/e/a/ee;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/e/a/ee;->b:I

    goto :goto_0

    .line 11193
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public static a()[Lcom/google/e/a/ee;
    .locals 2

    .prologue
    .line 11092
    sget-object v0, Lcom/google/e/a/ee;->a:[Lcom/google/e/a/ee;

    if-nez v0, :cond_1

    .line 11093
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 11095
    :try_start_0
    sget-object v0, Lcom/google/e/a/ee;->a:[Lcom/google/e/a/ee;

    if-nez v0, :cond_0

    .line 11096
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/e/a/ee;

    sput-object v0, Lcom/google/e/a/ee;->a:[Lcom/google/e/a/ee;

    .line 11098
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11100
    :cond_1
    sget-object v0, Lcom/google/e/a/ee;->a:[Lcom/google/e/a/ee;

    return-object v0

    .line 11098
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/e/a/ee;
    .locals 1

    .prologue
    .line 11154
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/e/a/ee;->b:I

    .line 11155
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/ee;->c:Ljava/lang/String;

    .line 11156
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/ee;->d:Ljava/lang/String;

    .line 11157
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/ee;->cachedSize:I

    .line 11158
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 11174
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 11175
    iget v1, p0, Lcom/google/e/a/ee;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 11176
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/e/a/ee;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11179
    :cond_0
    iget v1, p0, Lcom/google/e/a/ee;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 11180
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/e/a/ee;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11183
    :cond_1
    iput v0, p0, Lcom/google/e/a/ee;->cachedSize:I

    .line 11184
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 11086
    invoke-direct {p0, p1}, Lcom/google/e/a/ee;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/ee;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 11164
    iget v0, p0, Lcom/google/e/a/ee;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 11165
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/e/a/ee;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 11167
    :cond_0
    iget v0, p0, Lcom/google/e/a/ee;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 11168
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/e/a/ee;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 11170
    :cond_1
    return-void
.end method
