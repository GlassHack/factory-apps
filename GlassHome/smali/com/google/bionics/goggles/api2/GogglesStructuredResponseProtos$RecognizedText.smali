.class public final Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "GogglesStructuredResponseProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognizedText"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText;


# instance fields
.field public words:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1344
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1345
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText;->clear()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText;

    .line 1346
    return-void
.end method

.method public static emptyArray()[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText;
    .locals 2

    .prologue
    .line 1330
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText;

    if-nez v0, :cond_1

    .line 1331
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1333
    :try_start_0
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText;

    if-nez v0, :cond_0

    .line 1334
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText;

    sput-object v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText;

    .line 1336
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1338
    :cond_1
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText;

    return-object v0

    .line 1336
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1430
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1424
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText;
    .locals 1

    .prologue
    .line 1349
    invoke-static {}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;->emptyArray()[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText;->words:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;

    .line 1350
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText;->cachedSize:I

    .line 1351
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 1369
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 1370
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText;->words:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText;->words:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 1371
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText;->words:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 1372
    iget-object v3, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText;->words:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;

    aget-object v0, v3, v1

    .line 1373
    .local v0, "element":Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;
    if-eqz v0, :cond_0

    .line 1374
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1371
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1379
    .end local v0    # "element":Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;
    .end local v1    # "i":I
    :cond_1
    iput v2, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText;->cachedSize:I

    .line 1380
    return v2
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1388
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 1389
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 1393
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1394
    :sswitch_0
    return-object p0

    .line 1399
    :sswitch_1
    const/16 v5, 0x12

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1401
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText;->words:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;

    if-nez v5, :cond_2

    move v1, v4

    .line 1402
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;

    .line 1404
    .local v2, "newArray":[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;
    if-eqz v1, :cond_1

    .line 1405
    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText;->words:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1407
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 1408
    new-instance v5, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;

    invoke-direct {v5}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;-><init>()V

    aput-object v5, v2, v1

    .line 1409
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1410
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1407
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1401
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;
    :cond_2
    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText;->words:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;

    array-length v1, v5

    goto :goto_1

    .line 1413
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;
    :cond_3
    new-instance v5, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;

    invoke-direct {v5}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;-><init>()V

    aput-object v5, v2, v1

    .line 1414
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1415
    iput-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText;->words:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;

    goto :goto_0

    .line 1389
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
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
    .line 1158
    invoke-virtual {p0, p1}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText;

    move-result-object v0

    return-object v0
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
    .line 1357
    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText;->words:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText;->words:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 1358
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText;->words:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1359
    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText;->words:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;

    aget-object v0, v2, v1

    .line 1360
    .local v0, "element":Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;
    if-eqz v0, :cond_0

    .line 1361
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1358
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1365
    .end local v0    # "element":Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
