.class public final Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ModularActionProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ModularActionProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DateTimeArgument"
.end annotation


# static fields
.field public static final PRIMARY_FIELD_ABSOLUTE:I = 0x0

.field public static final PRIMARY_FIELD_RELATIVE:I = 0x1

.field private static volatile _emptyArray:[Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;


# instance fields
.field private absoluteTimeMs_:J

.field private bitField0_:I

.field private dateLabel_:Ljava/lang/String;

.field public layoutInformation:Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;

.field private primaryField_:I

.field private relativeTimeSeconds_:I

.field private timeLabel_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1294
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1295
    invoke-virtual {p0}, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->clear()Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;

    .line 1296
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;
    .locals 2

    .prologue
    .line 1177
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;

    if-nez v0, :cond_1

    .line 1178
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1180
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;

    if-nez v0, :cond_0

    .line 1181
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;

    sput-object v0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;

    .line 1183
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1185
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;

    return-object v0

    .line 1183
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1423
    new-instance v0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;

    invoke-direct {v0}, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1417
    new-instance v0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;

    invoke-direct {v0}, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1299
    iput v2, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->bitField0_:I

    .line 1300
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->absoluteTimeMs_:J

    .line 1301
    iput v2, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->relativeTimeSeconds_:I

    .line 1302
    iput v2, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->primaryField_:I

    .line 1303
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->dateLabel_:Ljava/lang/String;

    .line 1304
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->timeLabel_:Ljava/lang/String;

    .line 1305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->layoutInformation:Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;

    .line 1306
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->cachedSize:I

    .line 1307
    return-object p0
.end method

.method public clearAbsoluteTimeMs()Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;
    .locals 2

    .prologue
    .line 1204
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->absoluteTimeMs_:J

    .line 1205
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->bitField0_:I

    .line 1206
    return-object p0
.end method

.method public clearDateLabel()Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;
    .locals 1

    .prologue
    .line 1264
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->dateLabel_:Ljava/lang/String;

    .line 1265
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->bitField0_:I

    .line 1266
    return-object p0
.end method

.method public clearPrimaryField()Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;
    .locals 1

    .prologue
    .line 1242
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->primaryField_:I

    .line 1243
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->bitField0_:I

    .line 1244
    return-object p0
.end method

.method public clearRelativeTimeSeconds()Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;
    .locals 1

    .prologue
    .line 1223
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->relativeTimeSeconds_:I

    .line 1224
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->bitField0_:I

    .line 1225
    return-object p0
.end method

.method public clearTimeLabel()Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;
    .locals 1

    .prologue
    .line 1286
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->timeLabel_:Ljava/lang/String;

    .line 1287
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->bitField0_:I

    .line 1288
    return-object p0
.end method

.method public getAbsoluteTimeMs()J
    .locals 2

    .prologue
    .line 1193
    iget-wide v0, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->absoluteTimeMs_:J

    return-wide v0
.end method

.method public getDateLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->dateLabel_:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimaryField()I
    .locals 1

    .prologue
    .line 1231
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->primaryField_:I

    return v0
.end method

.method public getRelativeTimeSeconds()I
    .locals 1

    .prologue
    .line 1212
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->relativeTimeSeconds_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 1335
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1336
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1337
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->absoluteTimeMs_:J

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1340
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1341
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->relativeTimeSeconds_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1344
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 1345
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->primaryField_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1348
    :cond_2
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 1349
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->dateLabel_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1352
    :cond_3
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 1353
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->timeLabel_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1356
    :cond_4
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->layoutInformation:Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;

    if-eqz v1, :cond_5

    .line 1357
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->layoutInformation:Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1360
    :cond_5
    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->cachedSize:I

    .line 1361
    return v0
.end method

.method public getTimeLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->timeLabel_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAbsoluteTimeMs()Z
    .locals 1

    .prologue
    .line 1201
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDateLabel()Z
    .locals 1

    .prologue
    .line 1261
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrimaryField()Z
    .locals 1

    .prologue
    .line 1239
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRelativeTimeSeconds()Z
    .locals 1

    .prologue
    .line 1220
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimeLabel()Z
    .locals 1

    .prologue
    .line 1283
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "x0"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1167
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;
    .locals 3
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1369
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1370
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1374
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1375
    :sswitch_0
    return-object p0

    .line 1380
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->absoluteTimeMs_:J

    .line 1381
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->bitField0_:I

    goto :goto_0

    .line 1385
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->relativeTimeSeconds_:I

    .line 1386
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->bitField0_:I

    goto :goto_0

    .line 1390
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->primaryField_:I

    .line 1391
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->bitField0_:I

    goto :goto_0

    .line 1395
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->dateLabel_:Ljava/lang/String;

    .line 1396
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->bitField0_:I

    goto :goto_0

    .line 1400
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->timeLabel_:Ljava/lang/String;

    .line 1401
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->bitField0_:I

    goto :goto_0

    .line 1405
    :sswitch_6
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->layoutInformation:Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;

    if-nez v1, :cond_1

    .line 1406
    new-instance v1, Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;

    invoke-direct {v1}, Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->layoutInformation:Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;

    .line 1408
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->layoutInformation:Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1370
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10 -> :sswitch_1
        0x18 -> :sswitch_2
        0x20 -> :sswitch_3
        0x2a -> :sswitch_4
        0x32 -> :sswitch_5
        0x3a -> :sswitch_6
    .end sparse-switch
.end method

.method public setAbsoluteTimeMs(J)Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1196
    iput-wide p1, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->absoluteTimeMs_:J

    .line 1197
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->bitField0_:I

    .line 1198
    return-object p0
.end method

.method public setDateLabel(Ljava/lang/String;)Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1253
    if-nez p1, :cond_0

    .line 1254
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1256
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->dateLabel_:Ljava/lang/String;

    .line 1257
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->bitField0_:I

    .line 1258
    return-object p0
.end method

.method public setPrimaryField(I)Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1234
    iput p1, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->primaryField_:I

    .line 1235
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->bitField0_:I

    .line 1236
    return-object p0
.end method

.method public setRelativeTimeSeconds(I)Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1215
    iput p1, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->relativeTimeSeconds_:I

    .line 1216
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->bitField0_:I

    .line 1217
    return-object p0
.end method

.method public setTimeLabel(Ljava/lang/String;)Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1275
    if-nez p1, :cond_0

    .line 1276
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1278
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->timeLabel_:Ljava/lang/String;

    .line 1279
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->bitField0_:I

    .line 1280
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1313
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1314
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->absoluteTimeMs_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1316
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1317
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->relativeTimeSeconds_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1319
    :cond_1
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 1320
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->primaryField_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1322
    :cond_2
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 1323
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->dateLabel_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1325
    :cond_3
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 1326
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->timeLabel_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1328
    :cond_4
    iget-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->layoutInformation:Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;

    if-eqz v0, :cond_5

    .line 1329
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;->layoutInformation:Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1331
    :cond_5
    return-void
.end method
