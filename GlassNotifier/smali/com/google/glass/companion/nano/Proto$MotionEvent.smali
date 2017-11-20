.class public final Lcom/google/glass/companion/nano/Proto$MotionEvent;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/nano/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MotionEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;,
        Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/glass/companion/nano/Proto$MotionEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/glass/companion/nano/Proto$MotionEvent;


# instance fields
.field private action_:I

.field private bitField0_:I

.field private buttonState_:I

.field private deviceId_:I

.field private downTime_:J

.field private edgeFlags_:I

.field private eventTime_:J

.field private flags_:I

.field private metaState_:I

.field public pointerCoords:[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;

.field private pointerCount_:I

.field public pointerProperties:[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;

.field private source_:I

.field private xPrecision_:F

.field private yPrecision_:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2409
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2410
    invoke-virtual {p0}, Lcom/google/glass/companion/nano/Proto$MotionEvent;->clear()Lcom/google/glass/companion/nano/Proto$MotionEvent;

    .line 2411
    return-void
.end method

.method public static emptyArray()[Lcom/google/glass/companion/nano/Proto$MotionEvent;
    .locals 2

    .prologue
    .line 2160
    sget-object v0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$MotionEvent;

    if-nez v0, :cond_1

    .line 2161
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2163
    :try_start_0
    sget-object v0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$MotionEvent;

    if-nez v0, :cond_0

    .line 2164
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/nano/Proto$MotionEvent;

    sput-object v0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$MotionEvent;

    .line 2166
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2168
    :cond_1
    sget-object v0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$MotionEvent;

    return-object v0

    .line 2166
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$MotionEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2792
    new-instance v0, Lcom/google/glass/companion/nano/Proto$MotionEvent;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$MotionEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/nano/Proto$MotionEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/nano/Proto$MotionEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2786
    new-instance v0, Lcom/google/glass/companion/nano/Proto$MotionEvent;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$MotionEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/nano/Proto$MotionEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/glass/companion/nano/Proto$MotionEvent;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2414
    iput v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    .line 2415
    iput-wide v4, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->downTime_:J

    .line 2416
    iput-wide v4, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->eventTime_:J

    .line 2417
    iput v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->action_:I

    .line 2418
    iput v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->pointerCount_:I

    .line 2419
    invoke-static {}, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->emptyArray()[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;

    .line 2420
    invoke-static {}, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->emptyArray()[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;

    .line 2421
    iput v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->metaState_:I

    .line 2422
    iput v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->buttonState_:I

    .line 2423
    iput v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->xPrecision_:F

    .line 2424
    iput v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->yPrecision_:F

    .line 2425
    iput v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->deviceId_:I

    .line 2426
    iput v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->edgeFlags_:I

    .line 2427
    iput v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->source_:I

    .line 2428
    iput v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->flags_:I

    .line 2429
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 2430
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->cachedSize:I

    .line 2431
    return-object p0
.end method

.method public clearAction()Lcom/google/glass/companion/nano/Proto$MotionEvent;
    .locals 1

    .prologue
    .line 2220
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->action_:I

    .line 2221
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    .line 2222
    return-object p0
.end method

.method public clearButtonState()Lcom/google/glass/companion/nano/Proto$MotionEvent;
    .locals 1

    .prologue
    .line 2283
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->buttonState_:I

    .line 2284
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    .line 2285
    return-object p0
.end method

.method public clearDeviceId()Lcom/google/glass/companion/nano/Proto$MotionEvent;
    .locals 1

    .prologue
    .line 2340
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->deviceId_:I

    .line 2341
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    .line 2342
    return-object p0
.end method

.method public clearDownTime()Lcom/google/glass/companion/nano/Proto$MotionEvent;
    .locals 2

    .prologue
    .line 2182
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->downTime_:J

    .line 2183
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    .line 2184
    return-object p0
.end method

.method public clearEdgeFlags()Lcom/google/glass/companion/nano/Proto$MotionEvent;
    .locals 1

    .prologue
    .line 2359
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->edgeFlags_:I

    .line 2360
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    .line 2361
    return-object p0
.end method

.method public clearEventTime()Lcom/google/glass/companion/nano/Proto$MotionEvent;
    .locals 2

    .prologue
    .line 2201
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->eventTime_:J

    .line 2202
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    .line 2203
    return-object p0
.end method

.method public clearFlags()Lcom/google/glass/companion/nano/Proto$MotionEvent;
    .locals 1

    .prologue
    .line 2397
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->flags_:I

    .line 2398
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    .line 2399
    return-object p0
.end method

.method public clearMetaState()Lcom/google/glass/companion/nano/Proto$MotionEvent;
    .locals 1

    .prologue
    .line 2264
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->metaState_:I

    .line 2265
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    .line 2266
    return-object p0
.end method

.method public clearPointerCount()Lcom/google/glass/companion/nano/Proto$MotionEvent;
    .locals 1

    .prologue
    .line 2239
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->pointerCount_:I

    .line 2240
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    .line 2241
    return-object p0
.end method

.method public clearSource()Lcom/google/glass/companion/nano/Proto$MotionEvent;
    .locals 1

    .prologue
    .line 2378
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->source_:I

    .line 2379
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    .line 2380
    return-object p0
.end method

.method public clearXPrecision()Lcom/google/glass/companion/nano/Proto$MotionEvent;
    .locals 1

    .prologue
    .line 2302
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->xPrecision_:F

    .line 2303
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    .line 2304
    return-object p0
.end method

.method public clearYPrecision()Lcom/google/glass/companion/nano/Proto$MotionEvent;
    .locals 1

    .prologue
    .line 2321
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->yPrecision_:F

    .line 2322
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    .line 2323
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .prologue
    .line 2595
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v2

    .line 2596
    .local v2, "size":I
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 2597
    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->downTime_:J

    .line 2598
    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 2600
    :cond_0
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 2601
    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->eventTime_:J

    .line 2602
    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 2604
    :cond_1
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    .line 2605
    const/4 v3, 0x3

    iget v4, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->action_:I

    .line 2606
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 2608
    :cond_2
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    .line 2609
    const/4 v3, 0x4

    iget v4, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->pointerCount_:I

    .line 2610
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 2612
    :cond_3
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;

    array-length v3, v3

    if-lez v3, :cond_5

    .line 2613
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;

    array-length v3, v3

    if-ge v1, v3, :cond_5

    .line 2614
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;

    aget-object v0, v3, v1

    .line 2615
    .local v0, "element":Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;
    if-eqz v0, :cond_4

    .line 2616
    const/4 v3, 0x5

    .line 2617
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2613
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2621
    .end local v0    # "element":Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;
    .end local v1    # "i":I
    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;

    array-length v3, v3

    if-lez v3, :cond_7

    .line 2622
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;

    array-length v3, v3

    if-ge v1, v3, :cond_7

    .line 2623
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;

    aget-object v0, v3, v1

    .line 2624
    .local v0, "element":Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;
    if-eqz v0, :cond_6

    .line 2625
    const/4 v3, 0x6

    .line 2626
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2622
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2630
    .end local v0    # "element":Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;
    .end local v1    # "i":I
    :cond_7
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_8

    .line 2631
    const/4 v3, 0x7

    iget v4, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->metaState_:I

    .line 2632
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 2634
    :cond_8
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_9

    .line 2635
    const/16 v3, 0x8

    iget v4, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->buttonState_:I

    .line 2636
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 2638
    :cond_9
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_a

    .line 2639
    const/16 v3, 0x9

    iget v4, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->xPrecision_:F

    .line 2640
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v3

    add-int/2addr v2, v3

    .line 2642
    :cond_a
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_b

    .line 2643
    const/16 v3, 0xa

    iget v4, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->yPrecision_:F

    .line 2644
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v3

    add-int/2addr v2, v3

    .line 2646
    :cond_b
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_c

    .line 2647
    const/16 v3, 0xb

    iget v4, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->deviceId_:I

    .line 2648
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 2650
    :cond_c
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_d

    .line 2651
    const/16 v3, 0xc

    iget v4, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->edgeFlags_:I

    .line 2652
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 2654
    :cond_d
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_e

    .line 2655
    const/16 v3, 0xd

    iget v4, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->source_:I

    .line 2656
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 2658
    :cond_e
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_f

    .line 2659
    const/16 v3, 0xe

    iget v4, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->flags_:I

    .line 2660
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 2662
    :cond_f
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2436
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 2504
    :cond_0
    :goto_0
    return v1

    .line 2439
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/nano/Proto$MotionEvent;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 2442
    check-cast v0, Lcom/google/glass/companion/nano/Proto$MotionEvent;

    .line 2443
    .local v0, "other":Lcom/google/glass/companion/nano/Proto$MotionEvent;
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->downTime_:J

    iget-wide v6, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->downTime_:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 2447
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->eventTime_:J

    iget-wide v6, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->eventTime_:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 2451
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->action_:I

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->action_:I

    if-ne v3, v4, :cond_0

    .line 2455
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->pointerCount_:I

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->pointerCount_:I

    if-ne v3, v4, :cond_0

    .line 2459
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/InternalNano;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2463
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/InternalNano;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2467
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->metaState_:I

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->metaState_:I

    if-ne v3, v4, :cond_0

    .line 2471
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->buttonState_:I

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->buttonState_:I

    if-ne v3, v4, :cond_0

    .line 2475
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->xPrecision_:F

    .line 2476
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->xPrecision_:F

    .line 2477
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 2480
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->yPrecision_:F

    .line 2481
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->yPrecision_:F

    .line 2482
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 2485
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v4, v4, 0x100

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->deviceId_:I

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->deviceId_:I

    if-ne v3, v4, :cond_0

    .line 2489
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v4, v4, 0x200

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->edgeFlags_:I

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->edgeFlags_:I

    if-ne v3, v4, :cond_0

    .line 2493
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v3, v3, 0x400

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v4, v4, 0x400

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->source_:I

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->source_:I

    if-ne v3, v4, :cond_0

    .line 2497
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v3, v3, 0x800

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v4, v4, 0x800

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->flags_:I

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->flags_:I

    if-ne v3, v4, :cond_0

    .line 2501
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2502
    :cond_2
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto/16 :goto_0

    .line 2504
    :cond_4
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public getAction()I
    .locals 1

    .prologue
    .line 2214
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->action_:I

    return v0
.end method

.method public getButtonState()I
    .locals 1

    .prologue
    .line 2277
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->buttonState_:I

    return v0
.end method

.method public getDeviceId()I
    .locals 1

    .prologue
    .line 2334
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->deviceId_:I

    return v0
.end method

.method public getDownTime()J
    .locals 2

    .prologue
    .line 2176
    iget-wide v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->downTime_:J

    return-wide v0
.end method

.method public getEdgeFlags()I
    .locals 1

    .prologue
    .line 2353
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->edgeFlags_:I

    return v0
.end method

.method public getEventTime()J
    .locals 2

    .prologue
    .line 2195
    iget-wide v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->eventTime_:J

    return-wide v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 2391
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->flags_:I

    return v0
.end method

.method public getMetaState()I
    .locals 1

    .prologue
    .line 2258
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->metaState_:I

    return v0
.end method

.method public getPointerCount()I
    .locals 1

    .prologue
    .line 2233
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->pointerCount_:I

    return v0
.end method

.method public getSource()I
    .locals 1

    .prologue
    .line 2372
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->source_:I

    return v0
.end method

.method public getXPrecision()F
    .locals 1

    .prologue
    .line 2296
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->xPrecision_:F

    return v0
.end method

.method public getYPrecision()F
    .locals 1

    .prologue
    .line 2315
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->yPrecision_:F

    return v0
.end method

.method public hasAction()Z
    .locals 1

    .prologue
    .line 2217
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasButtonState()Z
    .locals 1

    .prologue
    .line 2280
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDeviceId()Z
    .locals 1

    .prologue
    .line 2337
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDownTime()Z
    .locals 1

    .prologue
    .line 2179
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEdgeFlags()Z
    .locals 1

    .prologue
    .line 2356
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEventTime()Z
    .locals 1

    .prologue
    .line 2198
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFlags()Z
    .locals 1

    .prologue
    .line 2394
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMetaState()Z
    .locals 1

    .prologue
    .line 2261
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPointerCount()Z
    .locals 1

    .prologue
    .line 2236
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSource()Z
    .locals 1

    .prologue
    .line 2375
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasXPrecision()Z
    .locals 1

    .prologue
    .line 2299
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasYPrecision()Z
    .locals 1

    .prologue
    .line 2318
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 2509
    const/16 v0, 0x11

    .line 2510
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 2511
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->downTime_:J

    iget-wide v4, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->downTime_:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 2512
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->eventTime_:J

    iget-wide v4, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->eventTime_:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 2513
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->action_:I

    add-int v0, v1, v2

    .line 2514
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->pointerCount_:I

    add-int v0, v1, v2

    .line 2515
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;

    .line 2516
    invoke-static {v2}, Lcom/google/protobuf/nano/InternalNano;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 2517
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;

    .line 2518
    invoke-static {v2}, Lcom/google/protobuf/nano/InternalNano;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 2519
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->metaState_:I

    add-int v0, v1, v2

    .line 2520
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->buttonState_:I

    add-int v0, v1, v2

    .line 2521
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->xPrecision_:F

    .line 2522
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 2523
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->yPrecision_:F

    .line 2524
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 2525
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->deviceId_:I

    add-int v0, v1, v2

    .line 2526
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->edgeFlags_:I

    add-int v0, v1, v2

    .line 2527
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->source_:I

    add-int v0, v1, v2

    .line 2528
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->flags_:I

    add-int v0, v1, v2

    .line 2529
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 2530
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 2531
    :goto_0
    add-int v0, v2, v1

    .line 2532
    return v0

    .line 2531
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$MotionEvent;
    .locals 8
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2670
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 2671
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 2675
    invoke-super {p0, p1, v3}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2676
    :sswitch_0
    return-object p0

    .line 2681
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->downTime_:J

    .line 2682
    iget v5, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    goto :goto_0

    .line 2686
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->eventTime_:J

    .line 2687
    iget v5, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    goto :goto_0

    .line 2691
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->action_:I

    .line 2692
    iget v5, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    goto :goto_0

    .line 2696
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->pointerCount_:I

    .line 2697
    iget v5, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    goto :goto_0

    .line 2701
    :sswitch_5
    const/16 v5, 0x2a

    .line 2702
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2703
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;

    if-nez v5, :cond_2

    move v1, v4

    .line 2704
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;

    .line 2706
    .local v2, "newArray":[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;
    if-eqz v1, :cond_1

    .line 2707
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2709
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 2710
    new-instance v5, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;

    invoke-direct {v5}, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;-><init>()V

    aput-object v5, v2, v1

    .line 2711
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 2712
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2709
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2703
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;
    :cond_2
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;

    array-length v1, v5

    goto :goto_1

    .line 2715
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;
    :cond_3
    new-instance v5, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;

    invoke-direct {v5}, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;-><init>()V

    aput-object v5, v2, v1

    .line 2716
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 2717
    iput-object v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;

    goto/16 :goto_0

    .line 2721
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;
    :sswitch_6
    const/16 v5, 0x32

    .line 2722
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2723
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;

    if-nez v5, :cond_5

    move v1, v4

    .line 2724
    .restart local v1    # "i":I
    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;

    .line 2726
    .local v2, "newArray":[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;
    if-eqz v1, :cond_4

    .line 2727
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2729
    :cond_4
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_6

    .line 2730
    new-instance v5, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;

    invoke-direct {v5}, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;-><init>()V

    aput-object v5, v2, v1

    .line 2731
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 2732
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2729
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2723
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;
    :cond_5
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;

    array-length v1, v5

    goto :goto_3

    .line 2735
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;
    :cond_6
    new-instance v5, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;

    invoke-direct {v5}, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;-><init>()V

    aput-object v5, v2, v1

    .line 2736
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 2737
    iput-object v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;

    goto/16 :goto_0

    .line 2741
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->metaState_:I

    .line 2742
    iget v5, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    goto/16 :goto_0

    .line 2746
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->buttonState_:I

    .line 2747
    iget v5, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    goto/16 :goto_0

    .line 2751
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v5

    iput v5, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->xPrecision_:F

    .line 2752
    iget v5, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v5, v5, 0x40

    iput v5, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    goto/16 :goto_0

    .line 2756
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v5

    iput v5, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->yPrecision_:F

    .line 2757
    iget v5, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    or-int/lit16 v5, v5, 0x80

    iput v5, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    goto/16 :goto_0

    .line 2761
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->deviceId_:I

    .line 2762
    iget v5, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    or-int/lit16 v5, v5, 0x100

    iput v5, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    goto/16 :goto_0

    .line 2766
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->edgeFlags_:I

    .line 2767
    iget v5, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    or-int/lit16 v5, v5, 0x200

    iput v5, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    goto/16 :goto_0

    .line 2771
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->source_:I

    .line 2772
    iget v5, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    goto/16 :goto_0

    .line 2776
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->flags_:I

    .line 2777
    iget v5, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    or-int/lit16 v5, v5, 0x800

    iput v5, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    goto/16 :goto_0

    .line 2671
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x4d -> :sswitch_9
        0x55 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
        0x70 -> :sswitch_e
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1529
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/nano/Proto$MotionEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public setAction(I)Lcom/google/glass/companion/nano/Proto$MotionEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2225
    iput p1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->action_:I

    .line 2226
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    .line 2227
    return-object p0
.end method

.method public setButtonState(I)Lcom/google/glass/companion/nano/Proto$MotionEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2288
    iput p1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->buttonState_:I

    .line 2289
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    .line 2290
    return-object p0
.end method

.method public setDeviceId(I)Lcom/google/glass/companion/nano/Proto$MotionEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2345
    iput p1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->deviceId_:I

    .line 2346
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    .line 2347
    return-object p0
.end method

.method public setDownTime(J)Lcom/google/glass/companion/nano/Proto$MotionEvent;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 2187
    iput-wide p1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->downTime_:J

    .line 2188
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    .line 2189
    return-object p0
.end method

.method public setEdgeFlags(I)Lcom/google/glass/companion/nano/Proto$MotionEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2364
    iput p1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->edgeFlags_:I

    .line 2365
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    .line 2366
    return-object p0
.end method

.method public setEventTime(J)Lcom/google/glass/companion/nano/Proto$MotionEvent;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 2206
    iput-wide p1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->eventTime_:J

    .line 2207
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    .line 2208
    return-object p0
.end method

.method public setFlags(I)Lcom/google/glass/companion/nano/Proto$MotionEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2402
    iput p1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->flags_:I

    .line 2403
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    .line 2404
    return-object p0
.end method

.method public setMetaState(I)Lcom/google/glass/companion/nano/Proto$MotionEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2269
    iput p1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->metaState_:I

    .line 2270
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    .line 2271
    return-object p0
.end method

.method public setPointerCount(I)Lcom/google/glass/companion/nano/Proto$MotionEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2244
    iput p1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->pointerCount_:I

    .line 2245
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    .line 2246
    return-object p0
.end method

.method public setSource(I)Lcom/google/glass/companion/nano/Proto$MotionEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2383
    iput p1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->source_:I

    .line 2384
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    .line 2385
    return-object p0
.end method

.method public setXPrecision(F)Lcom/google/glass/companion/nano/Proto$MotionEvent;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 2307
    iput p1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->xPrecision_:F

    .line 2308
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    .line 2309
    return-object p0
.end method

.method public setYPrecision(F)Lcom/google/glass/companion/nano/Proto$MotionEvent;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 2326
    iput p1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->yPrecision_:F

    .line 2327
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    .line 2328
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2538
    iget v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 2539
    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->downTime_:J

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 2541
    :cond_0
    iget v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 2542
    const/4 v2, 0x2

    iget-wide v4, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->eventTime_:J

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 2544
    :cond_1
    iget v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 2545
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->action_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2547
    :cond_2
    iget v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    .line 2548
    const/4 v2, 0x4

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->pointerCount_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2550
    :cond_3
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;

    array-length v2, v2

    if-lez v2, :cond_5

    .line 2551
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 2552
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;

    aget-object v0, v2, v1

    .line 2553
    .local v0, "element":Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;
    if-eqz v0, :cond_4

    .line 2554
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2551
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2558
    .end local v0    # "element":Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;
    .end local v1    # "i":I
    :cond_5
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;

    array-length v2, v2

    if-lez v2, :cond_7

    .line 2559
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    .line 2560
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;

    aget-object v0, v2, v1

    .line 2561
    .local v0, "element":Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;
    if-eqz v0, :cond_6

    .line 2562
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2559
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2566
    .end local v0    # "element":Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;
    .end local v1    # "i":I
    :cond_7
    iget v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_8

    .line 2567
    const/4 v2, 0x7

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->metaState_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2569
    :cond_8
    iget v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_9

    .line 2570
    const/16 v2, 0x8

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->buttonState_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2572
    :cond_9
    iget v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_a

    .line 2573
    const/16 v2, 0x9

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->xPrecision_:F

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2575
    :cond_a
    iget v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_b

    .line 2576
    const/16 v2, 0xa

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->yPrecision_:F

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2578
    :cond_b
    iget v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_c

    .line 2579
    const/16 v2, 0xb

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->deviceId_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2581
    :cond_c
    iget v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_d

    .line 2582
    const/16 v2, 0xc

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->edgeFlags_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2584
    :cond_d
    iget v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_e

    .line 2585
    const/16 v2, 0xd

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->source_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2587
    :cond_e
    iget v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_f

    .line 2588
    const/16 v2, 0xe

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent;->flags_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2590
    :cond_f
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2591
    return-void
.end method
