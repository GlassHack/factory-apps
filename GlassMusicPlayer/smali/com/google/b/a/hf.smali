.class public final Lcom/google/b/a/hf;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile a:[Lcom/google/b/a/hf;


# instance fields
.field private b:I

.field private c:Ljava/lang/String;

.field private d:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 223
    invoke-direct {p0}, Lcom/google/b/a/hf;->b()Lcom/google/b/a/hf;

    .line 224
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/hf;
    .locals 1

    .prologue
    .line 265
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 266
    sparse-switch v0, :sswitch_data_0

    .line 270
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    :sswitch_0
    return-object p0

    .line 276
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/hf;->c:Ljava/lang/String;

    .line 277
    iget v0, p0, Lcom/google/b/a/hf;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/hf;->b:I

    goto :goto_0

    .line 281
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/b/a/hf;->d:F

    .line 282
    iget v0, p0, Lcom/google/b/a/hf;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/hf;->b:I

    goto :goto_0

    .line 266
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x15 -> :sswitch_2
    .end sparse-switch
.end method

.method public static a()[Lcom/google/b/a/hf;
    .locals 2

    .prologue
    .line 168
    sget-object v0, Lcom/google/b/a/hf;->a:[Lcom/google/b/a/hf;

    if-nez v0, :cond_1

    .line 169
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 171
    :try_start_0
    sget-object v0, Lcom/google/b/a/hf;->a:[Lcom/google/b/a/hf;

    if-nez v0, :cond_0

    .line 172
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/b/a/hf;

    sput-object v0, Lcom/google/b/a/hf;->a:[Lcom/google/b/a/hf;

    .line 174
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :cond_1
    sget-object v0, Lcom/google/b/a/hf;->a:[Lcom/google/b/a/hf;

    return-object v0

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/b/a/hf;
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/b/a/hf;->b:I

    .line 228
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/hf;->c:Ljava/lang/String;

    .line 229
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/b/a/hf;->d:F

    .line 230
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/hf;->cachedSize:I

    .line 231
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 247
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 248
    iget v1, p0, Lcom/google/b/a/hf;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 249
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/b/a/hf;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 252
    :cond_0
    iget v1, p0, Lcom/google/b/a/hf;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 253
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/b/a/hf;->d:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 256
    :cond_1
    iput v0, p0, Lcom/google/b/a/hf;->cachedSize:I

    .line 257
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/google/b/a/hf;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/hf;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 237
    iget v0, p0, Lcom/google/b/a/hf;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 238
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/hf;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 240
    :cond_0
    iget v0, p0, Lcom/google/b/a/hf;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 241
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/b/a/hf;->d:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 243
    :cond_1
    return-void
.end method
