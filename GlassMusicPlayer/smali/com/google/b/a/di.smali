.class public final Lcom/google/b/a/di;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile a:[Lcom/google/b/a/di;


# instance fields
.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1213
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1214
    invoke-direct {p0}, Lcom/google/b/a/di;->b()Lcom/google/b/a/di;

    .line 1215
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/di;
    .locals 1

    .prologue
    .line 1256
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1257
    sparse-switch v0, :sswitch_data_0

    .line 1261
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1262
    :sswitch_0
    return-object p0

    .line 1267
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/di;->c:Ljava/lang/String;

    .line 1268
    iget v0, p0, Lcom/google/b/a/di;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/di;->b:I

    goto :goto_0

    .line 1272
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/di;->d:Ljava/lang/String;

    .line 1273
    iget v0, p0, Lcom/google/b/a/di;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/di;->b:I

    goto :goto_0

    .line 1257
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public static a()[Lcom/google/b/a/di;
    .locals 2

    .prologue
    .line 1156
    sget-object v0, Lcom/google/b/a/di;->a:[Lcom/google/b/a/di;

    if-nez v0, :cond_1

    .line 1157
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1159
    :try_start_0
    sget-object v0, Lcom/google/b/a/di;->a:[Lcom/google/b/a/di;

    if-nez v0, :cond_0

    .line 1160
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/b/a/di;

    sput-object v0, Lcom/google/b/a/di;->a:[Lcom/google/b/a/di;

    .line 1162
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1164
    :cond_1
    sget-object v0, Lcom/google/b/a/di;->a:[Lcom/google/b/a/di;

    return-object v0

    .line 1162
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/b/a/di;
    .locals 1

    .prologue
    .line 1218
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/b/a/di;->b:I

    .line 1219
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/di;->c:Ljava/lang/String;

    .line 1220
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/di;->d:Ljava/lang/String;

    .line 1221
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/di;->cachedSize:I

    .line 1222
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 1238
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1239
    iget v1, p0, Lcom/google/b/a/di;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1240
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/b/a/di;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1243
    :cond_0
    iget v1, p0, Lcom/google/b/a/di;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1244
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/b/a/di;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1247
    :cond_1
    iput v0, p0, Lcom/google/b/a/di;->cachedSize:I

    .line 1248
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 1150
    invoke-direct {p0, p1}, Lcom/google/b/a/di;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/di;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 1228
    iget v0, p0, Lcom/google/b/a/di;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1229
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/di;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1231
    :cond_0
    iget v0, p0, Lcom/google/b/a/di;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1232
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/b/a/di;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1234
    :cond_1
    return-void
.end method
