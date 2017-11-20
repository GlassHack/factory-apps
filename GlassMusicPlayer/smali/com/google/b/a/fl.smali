.class public final Lcom/google/b/a/fl;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:[Lcom/google/b/a/fn;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1257
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1258
    invoke-direct {p0}, Lcom/google/b/a/fl;->a()Lcom/google/b/a/fl;

    .line 1259
    return-void
.end method

.method private a()Lcom/google/b/a/fl;
    .locals 1

    .prologue
    .line 1262
    invoke-static {}, Lcom/google/b/a/fn;->a()[Lcom/google/b/a/fn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/fl;->a:[Lcom/google/b/a/fn;

    .line 1263
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/fl;->cachedSize:I

    .line 1264
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/fl;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1301
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1302
    sparse-switch v0, :sswitch_data_0

    .line 1306
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1307
    :sswitch_0
    return-object p0

    .line 1312
    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1314
    iget-object v0, p0, Lcom/google/b/a/fl;->a:[Lcom/google/b/a/fn;

    if-nez v0, :cond_2

    move v0, v1

    .line 1315
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/b/a/fn;

    .line 1317
    if-eqz v0, :cond_1

    .line 1318
    iget-object v3, p0, Lcom/google/b/a/fl;->a:[Lcom/google/b/a/fn;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1320
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1321
    new-instance v3, Lcom/google/b/a/fn;

    invoke-direct {v3}, Lcom/google/b/a/fn;-><init>()V

    aput-object v3, v2, v0

    .line 1322
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1323
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1320
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1314
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/fl;->a:[Lcom/google/b/a/fn;

    array-length v0, v0

    goto :goto_1

    .line 1326
    :cond_3
    new-instance v3, Lcom/google/b/a/fn;

    invoke-direct {v3}, Lcom/google/b/a/fn;-><init>()V

    aput-object v3, v2, v0

    .line 1327
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1328
    iput-object v2, p0, Lcom/google/b/a/fl;->a:[Lcom/google/b/a/fn;

    goto :goto_0

    .line 1302
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 4

    .prologue
    .line 1282
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v1

    .line 1283
    iget-object v0, p0, Lcom/google/b/a/fl;->a:[Lcom/google/b/a/fn;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/b/a/fl;->a:[Lcom/google/b/a/fn;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 1284
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/b/a/fl;->a:[Lcom/google/b/a/fn;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1285
    iget-object v2, p0, Lcom/google/b/a/fl;->a:[Lcom/google/b/a/fn;

    aget-object v2, v2, v0

    .line 1286
    if-eqz v2, :cond_0

    .line 1287
    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1284
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1292
    :cond_1
    iput v1, p0, Lcom/google/b/a/fl;->cachedSize:I

    .line 1293
    return v1
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/google/b/a/fl;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/fl;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/google/b/a/fl;->a:[Lcom/google/b/a/fn;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/b/a/fl;->a:[Lcom/google/b/a/fn;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 1271
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/b/a/fl;->a:[Lcom/google/b/a/fn;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1272
    iget-object v1, p0, Lcom/google/b/a/fl;->a:[Lcom/google/b/a/fn;

    aget-object v1, v1, v0

    .line 1273
    if-eqz v1, :cond_0

    .line 1274
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1271
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1278
    :cond_1
    return-void
.end method
