.class public final Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "RecurrenceProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/caribou/tasks/RecurrenceProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecurrenceId"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;


# instance fields
.field private bitField0_:I

.field private id_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1303
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1304
    invoke-virtual {p0}, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;->clear()Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;

    .line 1305
    return-void
.end method

.method public static emptyArray()[Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;
    .locals 2

    .prologue
    .line 1268
    sget-object v0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;->_emptyArray:[Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;

    if-nez v0, :cond_1

    .line 1269
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1271
    :try_start_0
    sget-object v0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;->_emptyArray:[Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;

    if-nez v0, :cond_0

    .line 1272
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;

    sput-object v0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;->_emptyArray:[Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;

    .line 1274
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1276
    :cond_1
    sget-object v0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;->_emptyArray:[Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;

    return-object v0

    .line 1274
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1365
    new-instance v0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;

    invoke-direct {v0}, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1359
    new-instance v0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;

    invoke-direct {v0}, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;
    .locals 1

    .prologue
    .line 1308
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;->bitField0_:I

    .line 1309
    const-string v0, ""

    iput-object v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;->id_:Ljava/lang/String;

    .line 1310
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;->cachedSize:I

    .line 1311
    return-object p0
.end method

.method public clearId()Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;
    .locals 1

    .prologue
    .line 1298
    const-string v0, ""

    iput-object v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;->id_:Ljava/lang/String;

    .line 1299
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;->bitField0_:I

    .line 1300
    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1324
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1325
    .local v0, "size":I
    iget v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1326
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;->id_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1329
    :cond_0
    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;->cachedSize:I

    .line 1330
    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 1295
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1338
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1339
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1343
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1344
    :sswitch_0
    return-object p0

    .line 1349
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;->id_:Ljava/lang/String;

    .line 1350
    iget v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;->bitField0_:I

    goto :goto_0

    .line 1339
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
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
    .line 1262
    invoke-virtual {p0, p1}, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;

    move-result-object v0

    return-object v0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1287
    if-nez p1, :cond_0

    .line 1288
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1290
    :cond_0
    iput-object p1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;->id_:Ljava/lang/String;

    .line 1291
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;->bitField0_:I

    .line 1292
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1317
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1318
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;->id_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1320
    :cond_0
    return-void
.end method
