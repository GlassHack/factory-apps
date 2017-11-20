.class public final Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "FlightProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/FlightProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FlightStatusEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;,
        Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;,
        Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;,
        Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;


# instance fields
.field public flight:[Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1257
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1258
    invoke-virtual {p0}, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;->clear()Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;

    .line 1259
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;
    .locals 2

    .prologue
    .line 1243
    sget-object v0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;->_emptyArray:[Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;

    if-nez v0, :cond_1

    .line 1244
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1246
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;->_emptyArray:[Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;

    if-nez v0, :cond_0

    .line 1247
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;

    sput-object v0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;->_emptyArray:[Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;

    .line 1249
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1251
    :cond_1
    sget-object v0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;->_emptyArray:[Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;

    return-object v0

    .line 1249
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1343
    new-instance v0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;

    invoke-direct {v0}, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1337
    new-instance v0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;

    invoke-direct {v0}, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;
    .locals 1

    .prologue
    .line 1262
    invoke-static {}, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->emptyArray()[Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;->flight:[Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;

    .line 1263
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;->cachedSize:I

    .line 1264
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 1282
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 1283
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;->flight:[Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;->flight:[Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 1284
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;->flight:[Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 1285
    iget-object v3, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;->flight:[Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;

    aget-object v0, v3, v1

    .line 1286
    .local v0, "element":Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;
    if-eqz v0, :cond_0

    .line 1287
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1284
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1292
    .end local v0    # "element":Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;
    .end local v1    # "i":I
    :cond_1
    iput v2, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;->cachedSize:I

    .line 1293
    return v2
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
    .line 8
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1301
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 1302
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 1306
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1307
    :sswitch_0
    return-object p0

    .line 1312
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1314
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;->flight:[Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;

    if-nez v5, :cond_2

    move v1, v4

    .line 1315
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;

    .line 1317
    .local v2, "newArray":[Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;
    if-eqz v1, :cond_1

    .line 1318
    iget-object v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;->flight:[Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1320
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 1321
    new-instance v5, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;

    invoke-direct {v5}, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;-><init>()V

    aput-object v5, v2, v1

    .line 1322
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1323
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1320
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1314
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;->flight:[Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;

    array-length v1, v5

    goto :goto_1

    .line 1326
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;
    :cond_3
    new-instance v5, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;

    invoke-direct {v5}, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;-><init>()V

    aput-object v5, v2, v1

    .line 1327
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1328
    iput-object v2, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;->flight:[Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;

    goto :goto_0

    .line 1302
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
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
    .line 1270
    iget-object v2, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;->flight:[Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;->flight:[Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 1271
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;->flight:[Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1272
    iget-object v2, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;->flight:[Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;

    aget-object v0, v2, v1

    .line 1273
    .local v0, "element":Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;
    if-eqz v0, :cond_0

    .line 1274
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1271
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1278
    .end local v0    # "element":Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
