.class public final Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "RecognizerOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/RecognizerOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioFeatureLog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;
    }
.end annotation


# static fields
.field public static final FEATURE_ENCODING_TYPE_FILTER_BANK:I = 0x0

.field public static final FEATURE_ENCODING_TYPE_MFCC:I = 0x2

.field public static final FEATURE_ENCODING_TYPE_PLP:I = 0x1

.field private static volatile _emptyArray:[Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;


# instance fields
.field private bitField0_:I

.field private featureType_:I

.field public frameData:[Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;

.field private frameDimension_:I

.field private frameRateMs_:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1355
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1356
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->clear()Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;

    .line 1357
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;
    .locals 2

    .prologue
    .line 1282
    sget-object v0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->_emptyArray:[Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;

    if-nez v0, :cond_1

    .line 1283
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1285
    :try_start_0
    sget-object v0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->_emptyArray:[Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;

    if-nez v0, :cond_0

    .line 1286
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;

    sput-object v0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->_emptyArray:[Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;

    .line 1288
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1290
    :cond_1
    sget-object v0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->_emptyArray:[Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;

    return-object v0

    .line 1288
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1481
    new-instance v0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;

    invoke-direct {v0}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1475
    new-instance v0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;

    invoke-direct {v0}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1360
    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->bitField0_:I

    .line 1361
    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->featureType_:I

    .line 1362
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->frameRateMs_:F

    .line 1363
    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->frameDimension_:I

    .line 1364
    invoke-static {}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;->emptyArray()[Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->frameData:[Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;

    .line 1365
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->cachedSize:I

    .line 1366
    return-object p0
.end method

.method public clearFeatureType()Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;
    .locals 1

    .prologue
    .line 1309
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->featureType_:I

    .line 1310
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->bitField0_:I

    .line 1311
    return-object p0
.end method

.method public clearFrameDimension()Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;
    .locals 1

    .prologue
    .line 1347
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->frameDimension_:I

    .line 1348
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->bitField0_:I

    .line 1349
    return-object p0
.end method

.method public clearFrameRateMs()Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;
    .locals 1

    .prologue
    .line 1328
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->frameRateMs_:F

    .line 1329
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->bitField0_:I

    .line 1330
    return-object p0
.end method

.method public getFeatureType()I
    .locals 1

    .prologue
    .line 1298
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->featureType_:I

    return v0
.end method

.method public getFrameDimension()I
    .locals 1

    .prologue
    .line 1336
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->frameDimension_:I

    return v0
.end method

.method public getFrameRateMs()F
    .locals 1

    .prologue
    .line 1317
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->frameRateMs_:F

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 1393
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 1394
    .local v2, "size":I
    iget v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 1395
    const/4 v3, 0x1

    iget v4, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->featureType_:I

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 1398
    :cond_0
    iget v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 1399
    const/4 v3, 0x2

    iget v4, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->frameRateMs_:F

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v3

    add-int/2addr v2, v3

    .line 1402
    :cond_1
    iget v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    .line 1403
    const/4 v3, 0x3

    iget v4, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->frameDimension_:I

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 1406
    :cond_2
    iget-object v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->frameData:[Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->frameData:[Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;

    array-length v3, v3

    if-lez v3, :cond_4

    .line 1407
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->frameData:[Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 1408
    iget-object v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->frameData:[Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;

    aget-object v0, v3, v1

    .line 1409
    .local v0, "element":Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;
    if-eqz v0, :cond_3

    .line 1410
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1407
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1415
    .end local v0    # "element":Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;
    .end local v1    # "i":I
    :cond_4
    iput v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->cachedSize:I

    .line 1416
    return v2
.end method

.method public hasFeatureType()Z
    .locals 1

    .prologue
    .line 1306
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFrameDimension()Z
    .locals 1

    .prologue
    .line 1344
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFrameRateMs()Z
    .locals 1

    .prologue
    .line 1325
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

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
    .line 1155
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1424
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 1425
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 1429
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1430
    :sswitch_0
    return-object p0

    .line 1435
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->featureType_:I

    .line 1436
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->bitField0_:I

    goto :goto_0

    .line 1440
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v5

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->frameRateMs_:F

    .line 1441
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->bitField0_:I

    goto :goto_0

    .line 1445
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->frameDimension_:I

    .line 1446
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->bitField0_:I

    goto :goto_0

    .line 1450
    :sswitch_4
    const/16 v5, 0x22

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1452
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->frameData:[Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;

    if-nez v5, :cond_2

    move v1, v4

    .line 1453
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;

    .line 1455
    .local v2, "newArray":[Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;
    if-eqz v1, :cond_1

    .line 1456
    iget-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->frameData:[Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1458
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 1459
    new-instance v5, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;

    invoke-direct {v5}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;-><init>()V

    aput-object v5, v2, v1

    .line 1460
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1461
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1458
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1452
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;
    :cond_2
    iget-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->frameData:[Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;

    array-length v1, v5

    goto :goto_1

    .line 1464
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;
    :cond_3
    new-instance v5, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;

    invoke-direct {v5}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;-><init>()V

    aput-object v5, v2, v1

    .line 1465
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1466
    iput-object v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->frameData:[Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;

    goto :goto_0

    .line 1425
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x15 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public setFeatureType(I)Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1301
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->featureType_:I

    .line 1302
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->bitField0_:I

    .line 1303
    return-object p0
.end method

.method public setFrameDimension(I)Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1339
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->frameDimension_:I

    .line 1340
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->bitField0_:I

    .line 1341
    return-object p0
.end method

.method public setFrameRateMs(F)Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1320
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->frameRateMs_:F

    .line 1321
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->bitField0_:I

    .line 1322
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1372
    iget v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 1373
    const/4 v2, 0x1

    iget v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->featureType_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1375
    :cond_0
    iget v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 1376
    const/4 v2, 0x2

    iget v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->frameRateMs_:F

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1378
    :cond_1
    iget v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 1379
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->frameDimension_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1381
    :cond_2
    iget-object v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->frameData:[Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->frameData:[Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;

    array-length v2, v2

    if-lez v2, :cond_4

    .line 1382
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->frameData:[Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 1383
    iget-object v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->frameData:[Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;

    aget-object v0, v2, v1

    .line 1384
    .local v0, "element":Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;
    if-eqz v0, :cond_3

    .line 1385
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1382
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1389
    .end local v0    # "element":Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;
    .end local v1    # "i":I
    :cond_4
    return-void
.end method
