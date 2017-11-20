.class public final Lcom/google/common/logging/Cw$CwUxLog;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Cw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/Cw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CwUxLog"
.end annotation


# static fields
.field public static final OK_GOOGLE_SPOKEN:I = 0x1

.field public static final OK_GOOGLE_TOUCH:I = 0x2

.field public static final UNKNOWN:I

.field private static volatile _emptyArray:[Lcom/google/common/logging/Cw$CwUxLog;


# instance fields
.field public activeModeSessionLengthMs:J

.field public okGoogle:I

.field public touched:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1297
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 1298
    invoke-virtual {p0}, Lcom/google/common/logging/Cw$CwUxLog;->clear()Lcom/google/common/logging/Cw$CwUxLog;

    .line 1299
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/Cw$CwUxLog;
    .locals 2

    .prologue
    .line 1277
    sget-object v0, Lcom/google/common/logging/Cw$CwUxLog;->_emptyArray:[Lcom/google/common/logging/Cw$CwUxLog;

    if-nez v0, :cond_1

    .line 1278
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1280
    :try_start_0
    sget-object v0, Lcom/google/common/logging/Cw$CwUxLog;->_emptyArray:[Lcom/google/common/logging/Cw$CwUxLog;

    if-nez v0, :cond_0

    .line 1281
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/Cw$CwUxLog;

    sput-object v0, Lcom/google/common/logging/Cw$CwUxLog;->_emptyArray:[Lcom/google/common/logging/Cw$CwUxLog;

    .line 1283
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1285
    :cond_1
    sget-object v0, Lcom/google/common/logging/Cw$CwUxLog;->_emptyArray:[Lcom/google/common/logging/Cw$CwUxLog;

    return-object v0

    .line 1283
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/Cw$CwUxLog;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1388
    new-instance v0, Lcom/google/common/logging/Cw$CwUxLog;

    invoke-direct {v0}, Lcom/google/common/logging/Cw$CwUxLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/Cw$CwUxLog;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/Cw$CwUxLog;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/Cw$CwUxLog;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1382
    new-instance v0, Lcom/google/common/logging/Cw$CwUxLog;

    invoke-direct {v0}, Lcom/google/common/logging/Cw$CwUxLog;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/Cw$CwUxLog;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/Cw$CwUxLog;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1302
    iput v2, p0, Lcom/google/common/logging/Cw$CwUxLog;->okGoogle:I

    .line 1303
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/logging/Cw$CwUxLog;->activeModeSessionLengthMs:J

    .line 1304
    iput-boolean v2, p0, Lcom/google/common/logging/Cw$CwUxLog;->touched:Z

    .line 1305
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/Cw$CwUxLog;->cachedSize:I

    .line 1306
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    .prologue
    .line 1326
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 1327
    .local v0, "size":I
    iget v1, p0, Lcom/google/common/logging/Cw$CwUxLog;->okGoogle:I

    if-eqz v1, :cond_0

    .line 1328
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/logging/Cw$CwUxLog;->okGoogle:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1331
    :cond_0
    iget-wide v1, p0, Lcom/google/common/logging/Cw$CwUxLog;->activeModeSessionLengthMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 1332
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/common/logging/Cw$CwUxLog;->activeModeSessionLengthMs:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1335
    :cond_1
    iget-boolean v1, p0, Lcom/google/common/logging/Cw$CwUxLog;->touched:Z

    if-eqz v1, :cond_2

    .line 1336
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/common/logging/Cw$CwUxLog;->touched:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1339
    :cond_2
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/Cw$CwUxLog;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1347
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1348
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1352
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1353
    :sswitch_0
    return-object p0

    .line 1358
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 1359
    .local v1, "value":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1363
    :pswitch_0
    iput v1, p0, Lcom/google/common/logging/Cw$CwUxLog;->okGoogle:I

    goto :goto_0

    .line 1369
    .end local v1    # "value":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/common/logging/Cw$CwUxLog;->activeModeSessionLengthMs:J

    goto :goto_0

    .line 1373
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/common/logging/Cw$CwUxLog;->touched:Z

    goto :goto_0

    .line 1348
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch

    .line 1359
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1266
    invoke-virtual {p0, p1}, Lcom/google/common/logging/Cw$CwUxLog;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/Cw$CwUxLog;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1312
    iget v0, p0, Lcom/google/common/logging/Cw$CwUxLog;->okGoogle:I

    if-eqz v0, :cond_0

    .line 1313
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/common/logging/Cw$CwUxLog;->okGoogle:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1315
    :cond_0
    iget-wide v0, p0, Lcom/google/common/logging/Cw$CwUxLog;->activeModeSessionLengthMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1316
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/common/logging/Cw$CwUxLog;->activeModeSessionLengthMs:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1318
    :cond_1
    iget-boolean v0, p0, Lcom/google/common/logging/Cw$CwUxLog;->touched:Z

    if-eqz v0, :cond_2

    .line 1319
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/common/logging/Cw$CwUxLog;->touched:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1321
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1322
    return-void
.end method
