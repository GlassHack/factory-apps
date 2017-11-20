.class public final Lcom/google/a/a/a/l;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile c:[Lcom/google/a/a/a/l;


# instance fields
.field public a:Lcom/google/a/a/a/b;

.field public b:[Lcom/google/a/a/a/b;

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1208
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1209
    invoke-direct {p0}, Lcom/google/a/a/a/l;->b()Lcom/google/a/a/a/l;

    .line 1210
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/a/a/a/l;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1269
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1270
    sparse-switch v0, :sswitch_data_0

    .line 1274
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1275
    :sswitch_0
    return-object p0

    .line 1280
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/l;->e:Ljava/lang/String;

    .line 1281
    iget v0, p0, Lcom/google/a/a/a/l;->d:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/a/a/l;->d:I

    goto :goto_0

    .line 1285
    :sswitch_2
    iget-object v0, p0, Lcom/google/a/a/a/l;->a:Lcom/google/a/a/a/b;

    if-nez v0, :cond_1

    .line 1286
    new-instance v0, Lcom/google/a/a/a/b;

    invoke-direct {v0}, Lcom/google/a/a/a/b;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/l;->a:Lcom/google/a/a/a/b;

    .line 1288
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/l;->a:Lcom/google/a/a/a/b;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1292
    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1294
    iget-object v0, p0, Lcom/google/a/a/a/l;->b:[Lcom/google/a/a/a/b;

    if-nez v0, :cond_3

    move v0, v1

    .line 1295
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/a/a/a/b;

    .line 1297
    if-eqz v0, :cond_2

    .line 1298
    iget-object v3, p0, Lcom/google/a/a/a/l;->b:[Lcom/google/a/a/a/b;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1300
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 1301
    new-instance v3, Lcom/google/a/a/a/b;

    invoke-direct {v3}, Lcom/google/a/a/a/b;-><init>()V

    aput-object v3, v2, v0

    .line 1302
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1303
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1300
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1294
    :cond_3
    iget-object v0, p0, Lcom/google/a/a/a/l;->b:[Lcom/google/a/a/a/b;

    array-length v0, v0

    goto :goto_1

    .line 1306
    :cond_4
    new-instance v3, Lcom/google/a/a/a/b;

    invoke-direct {v3}, Lcom/google/a/a/a/b;-><init>()V

    aput-object v3, v2, v0

    .line 1307
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1308
    iput-object v2, p0, Lcom/google/a/a/a/l;->b:[Lcom/google/a/a/a/b;

    goto :goto_0

    .line 1270
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public static a()[Lcom/google/a/a/a/l;
    .locals 2

    .prologue
    .line 1167
    sget-object v0, Lcom/google/a/a/a/l;->c:[Lcom/google/a/a/a/l;

    if-nez v0, :cond_1

    .line 1168
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1170
    :try_start_0
    sget-object v0, Lcom/google/a/a/a/l;->c:[Lcom/google/a/a/a/l;

    if-nez v0, :cond_0

    .line 1171
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/a/a/a/l;

    sput-object v0, Lcom/google/a/a/a/l;->c:[Lcom/google/a/a/a/l;

    .line 1173
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1175
    :cond_1
    sget-object v0, Lcom/google/a/a/a/l;->c:[Lcom/google/a/a/a/l;

    return-object v0

    .line 1173
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/a/a/a/l;
    .locals 1

    .prologue
    .line 1213
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/a/a/a/l;->d:I

    .line 1214
    const-string v0, ""

    iput-object v0, p0, Lcom/google/a/a/a/l;->e:Ljava/lang/String;

    .line 1215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/a/a/a/l;->a:Lcom/google/a/a/a/b;

    .line 1216
    invoke-static {}, Lcom/google/a/a/a/b;->a()[Lcom/google/a/a/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/l;->b:[Lcom/google/a/a/a/b;

    .line 1217
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/l;->cachedSize:I

    .line 1218
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 5

    .prologue
    .line 1242
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1243
    iget v1, p0, Lcom/google/a/a/a/l;->d:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1244
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/l;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1247
    :cond_0
    iget-object v1, p0, Lcom/google/a/a/a/l;->a:Lcom/google/a/a/a/b;

    if-eqz v1, :cond_1

    .line 1248
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/a/a/a/l;->a:Lcom/google/a/a/a/b;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1251
    :cond_1
    iget-object v1, p0, Lcom/google/a/a/a/l;->b:[Lcom/google/a/a/a/b;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/a/a/a/l;->b:[Lcom/google/a/a/a/b;

    array-length v1, v1

    if-lez v1, :cond_4

    .line 1252
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/a/a/a/l;->b:[Lcom/google/a/a/a/b;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 1253
    iget-object v2, p0, Lcom/google/a/a/a/l;->b:[Lcom/google/a/a/a/b;

    aget-object v2, v2, v0

    .line 1254
    if-eqz v2, :cond_2

    .line 1255
    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1252
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1260
    :cond_4
    iput v0, p0, Lcom/google/a/a/a/l;->cachedSize:I

    .line 1261
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 1161
    invoke-direct {p0, p1}, Lcom/google/a/a/a/l;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/a/a/a/l;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 1224
    iget v0, p0, Lcom/google/a/a/a/l;->d:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1225
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/l;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1227
    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/l;->a:Lcom/google/a/a/a/b;

    if-eqz v0, :cond_1

    .line 1228
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/a/a/a/l;->a:Lcom/google/a/a/a/b;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1230
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/l;->b:[Lcom/google/a/a/a/b;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/a/a/a/l;->b:[Lcom/google/a/a/a/b;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 1231
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/a/a/a/l;->b:[Lcom/google/a/a/a/b;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 1232
    iget-object v1, p0, Lcom/google/a/a/a/l;->b:[Lcom/google/a/a/a/b;

    aget-object v1, v1, v0

    .line 1233
    if-eqz v1, :cond_2

    .line 1234
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1231
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1238
    :cond_3
    return-void
.end method
