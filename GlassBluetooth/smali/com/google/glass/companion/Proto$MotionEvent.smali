.class public final Lcom/google/glass/companion/Proto$MotionEvent;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MotionEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;,
        Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$MotionEvent;


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

.field public pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

.field private pointerCount_:I

.field public pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

.field private source_:I

.field private xPrecision_:F

.field private yPrecision_:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1661
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$MotionEvent;

    sput-object v0, Lcom/google/glass/companion/Proto$MotionEvent;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$MotionEvent;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1662
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2176
    iput-wide v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->downTime_:J

    .line 2195
    iput-wide v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->eventTime_:J

    .line 2214
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->action_:I

    .line 2233
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCount_:I

    .line 2252
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    .line 2255
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    .line 2258
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->metaState_:I

    .line 2277
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->buttonState_:I

    .line 2296
    iput v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->xPrecision_:F

    .line 2315
    iput v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->yPrecision_:F

    .line 2334
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->deviceId_:I

    .line 2353
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->edgeFlags_:I

    .line 2372
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->source_:I

    .line 2391
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->flags_:I

    .line 1662
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2717
    new-instance v0, Lcom/google/glass/companion/Proto$MotionEvent;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$MotionEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$MotionEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2711
    new-instance v0, Lcom/google/glass/companion/Proto$MotionEvent;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$MotionEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent;

    return-object v0
.end method


# virtual methods
.method public clearAction()Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1

    .prologue
    .line 2227
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->action_:I

    .line 2228
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 2229
    return-object p0
.end method

.method public clearButtonState()Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1

    .prologue
    .line 2290
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->buttonState_:I

    .line 2291
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 2292
    return-object p0
.end method

.method public clearDeviceId()Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1

    .prologue
    .line 2347
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->deviceId_:I

    .line 2348
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 2349
    return-object p0
.end method

.method public clearDownTime()Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 2

    .prologue
    .line 2189
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->downTime_:J

    .line 2190
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 2191
    return-object p0
.end method

.method public clearEdgeFlags()Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1

    .prologue
    .line 2366
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->edgeFlags_:I

    .line 2367
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 2368
    return-object p0
.end method

.method public clearEventTime()Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 2

    .prologue
    .line 2208
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->eventTime_:J

    .line 2209
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 2210
    return-object p0
.end method

.method public clearFlags()Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1

    .prologue
    .line 2404
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->flags_:I

    .line 2405
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 2406
    return-object p0
.end method

.method public clearMetaState()Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1

    .prologue
    .line 2271
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->metaState_:I

    .line 2272
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 2273
    return-object p0
.end method

.method public clearPointerCount()Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1

    .prologue
    .line 2246
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCount_:I

    .line 2247
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 2248
    return-object p0
.end method

.method public clearSource()Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1

    .prologue
    .line 2385
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->source_:I

    .line 2386
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 2387
    return-object p0
.end method

.method public clearXPrecision()Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1

    .prologue
    .line 2309
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->xPrecision_:F

    .line 2310
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 2311
    return-object p0
.end method

.method public clearYPrecision()Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1

    .prologue
    .line 2328
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->yPrecision_:F

    .line 2329
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 2330
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2411
    if-ne p1, p0, :cond_1

    .line 2428
    :cond_0
    :goto_0
    return v1

    .line 2412
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$MotionEvent;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 2413
    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent;

    .line 2414
    .local v0, "other":Lcom/google/glass/companion/Proto$MotionEvent;
    iget-wide v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->downTime_:J

    iget-wide v5, v0, Lcom/google/glass/companion/Proto$MotionEvent;->downTime_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->eventTime_:J

    iget-wide v5, v0, Lcom/google/glass/companion/Proto$MotionEvent;->eventTime_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->action_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$MotionEvent;->action_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCount_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCount_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    .line 2418
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    .line 2419
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->metaState_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$MotionEvent;->metaState_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->buttonState_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$MotionEvent;->buttonState_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->xPrecision_:F

    iget v4, v0, Lcom/google/glass/companion/Proto$MotionEvent;->xPrecision_:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->yPrecision_:F

    iget v4, v0, Lcom/google/glass/companion/Proto$MotionEvent;->yPrecision_:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->deviceId_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$MotionEvent;->deviceId_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->edgeFlags_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$MotionEvent;->edgeFlags_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->source_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$MotionEvent;->source_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->flags_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$MotionEvent;->flags_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$MotionEvent;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 2428
    goto :goto_0

    .line 2419
    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$MotionEvent;->unknownFieldData:Ljava/util/List;

    .line 2428
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_0
.end method

.method public getAction()I
    .locals 1

    .prologue
    .line 2216
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->action_:I

    return v0
.end method

.method public getButtonState()I
    .locals 1

    .prologue
    .line 2279
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->buttonState_:I

    return v0
.end method

.method public getDeviceId()I
    .locals 1

    .prologue
    .line 2336
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->deviceId_:I

    return v0
.end method

.method public getDownTime()J
    .locals 2

    .prologue
    .line 2178
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->downTime_:J

    return-wide v0
.end method

.method public getEdgeFlags()I
    .locals 1

    .prologue
    .line 2355
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->edgeFlags_:I

    return v0
.end method

.method public getEventTime()J
    .locals 2

    .prologue
    .line 2197
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->eventTime_:J

    return-wide v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 2393
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->flags_:I

    return v0
.end method

.method public getMetaState()I
    .locals 1

    .prologue
    .line 2260
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->metaState_:I

    return v0
.end method

.method public getPointerCount()I
    .locals 1

    .prologue
    .line 2235
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCount_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 2519
    const/4 v1, 0x0

    .line 2520
    .local v1, "size":I
    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 2521
    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->downTime_:J

    .line 2522
    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 2524
    :cond_0
    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 2525
    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->eventTime_:J

    .line 2526
    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 2528
    :cond_1
    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    .line 2529
    const/4 v3, 0x3

    iget v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->action_:I

    .line 2530
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 2532
    :cond_2
    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    .line 2533
    const/4 v3, 0x4

    iget v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCount_:I

    .line 2534
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 2536
    :cond_3
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    if-eqz v3, :cond_5

    .line 2537
    iget-object v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_5

    aget-object v0, v4, v3

    .line 2538
    .local v0, "element":Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    if-eqz v0, :cond_4

    .line 2539
    const/4 v6, 0x5

    .line 2540
    invoke-static {v6, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v1, v6

    .line 2537
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2544
    .end local v0    # "element":Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    if-eqz v3, :cond_7

    .line 2545
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_7

    aget-object v0, v3, v2

    .line 2546
    .local v0, "element":Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    if-eqz v0, :cond_6

    .line 2547
    const/4 v5, 0x6

    .line 2548
    invoke-static {v5, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v1, v5

    .line 2545
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2552
    .end local v0    # "element":Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    :cond_7
    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_8

    .line 2553
    const/4 v2, 0x7

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->metaState_:I

    .line 2554
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 2556
    :cond_8
    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_9

    .line 2557
    const/16 v2, 0x8

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->buttonState_:I

    .line 2558
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 2560
    :cond_9
    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_a

    .line 2561
    const/16 v2, 0x9

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->xPrecision_:F

    .line 2562
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v1, v2

    .line 2564
    :cond_a
    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_b

    .line 2565
    const/16 v2, 0xa

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->yPrecision_:F

    .line 2566
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v1, v2

    .line 2568
    :cond_b
    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_c

    .line 2569
    const/16 v2, 0xb

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->deviceId_:I

    .line 2570
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 2572
    :cond_c
    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_d

    .line 2573
    const/16 v2, 0xc

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->edgeFlags_:I

    .line 2574
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 2576
    :cond_d
    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_e

    .line 2577
    const/16 v2, 0xd

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->source_:I

    .line 2578
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 2580
    :cond_e
    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_f

    .line 2581
    const/16 v2, 0xe

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->flags_:I

    .line 2582
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 2584
    :cond_f
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->unknownFieldData:Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v2

    add-int/2addr v1, v2

    .line 2585
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->cachedSize:I

    .line 2586
    return v1
.end method

.method public getSource()I
    .locals 1

    .prologue
    .line 2374
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->source_:I

    return v0
.end method

.method public getXPrecision()F
    .locals 1

    .prologue
    .line 2298
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->xPrecision_:F

    return v0
.end method

.method public getYPrecision()F
    .locals 1

    .prologue
    .line 2317
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->yPrecision_:F

    return v0
.end method

.method public hasAction()Z
    .locals 1

    .prologue
    .line 2224
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

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
    .line 2287
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

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
    .line 2344
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

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
    .line 2186
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

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
    .line 2363
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

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
    .line 2205
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

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
    .line 2401
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

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
    .line 2268
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

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
    .line 2243
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

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
    .line 2382
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

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
    .line 2306
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

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
    .line 2325
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

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
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/4 v3, 0x0

    .line 2432
    const/16 v1, 0x11

    .line 2433
    .local v1, "result":I
    iget-wide v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->downTime_:J

    iget-wide v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->downTime_:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v2, v4

    add-int/lit16 v1, v2, 0x20f

    .line 2434
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->eventTime_:J

    iget-wide v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->eventTime_:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 2435
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->action_:I

    add-int v1, v2, v4

    .line 2436
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCount_:I

    add-int v1, v2, v4

    .line 2437
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    if-nez v2, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    .line 2443
    :cond_0
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    if-nez v2, :cond_4

    mul-int/lit8 v1, v1, 0x1f

    .line 2449
    :cond_1
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->metaState_:I

    add-int v1, v2, v4

    .line 2450
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->buttonState_:I

    add-int v1, v2, v4

    .line 2451
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->xPrecision_:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    add-int v1, v2, v4

    .line 2452
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->yPrecision_:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    add-int v1, v2, v4

    .line 2453
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->deviceId_:I

    add-int v1, v2, v4

    .line 2454
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->edgeFlags_:I

    add-int v1, v2, v4

    .line 2455
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->source_:I

    add-int v1, v2, v4

    .line 2456
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->flags_:I

    add-int v1, v2, v4

    .line 2457
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->unknownFieldData:Ljava/util/List;

    if-nez v4, :cond_6

    :goto_0
    add-int v1, v2, v3

    .line 2458
    return v1

    .line 2439
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 2440
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    aget-object v2, v2, v0

    if-nez v2, :cond_3

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 2439
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2440
    :cond_3
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->hashCode()I

    move-result v2

    goto :goto_2

    .line 2445
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 2446
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    aget-object v2, v2, v0

    if-nez v2, :cond_5

    move v2, v3

    :goto_4
    add-int v1, v4, v2

    .line 2445
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2446
    :cond_5
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->hashCode()I

    move-result v2

    goto :goto_4

    .line 2457
    .end local v0    # "i":I
    :cond_6
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 7
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2594
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 2595
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 2599
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->unknownFieldData:Ljava/util/List;

    if-nez v5, :cond_1

    .line 2600
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->unknownFieldData:Ljava/util/List;

    .line 2603
    :cond_1
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->unknownFieldData:Ljava/util/List;

    invoke-static {v5, p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2605
    :sswitch_0
    return-object p0

    .line 2610
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->downTime_:J

    .line 2611
    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    goto :goto_0

    .line 2615
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->eventTime_:J

    .line 2616
    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    goto :goto_0

    .line 2620
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->action_:I

    .line 2621
    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    goto :goto_0

    .line 2625
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCount_:I

    .line 2626
    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    goto :goto_0

    .line 2630
    :sswitch_5
    const/16 v5, 0x2a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2631
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    if-nez v5, :cond_3

    move v1, v4

    .line 2632
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    .line 2633
    .local v2, "newArray":[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    if-eqz v5, :cond_2

    .line 2634
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2636
    :cond_2
    iput-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    .line 2637
    :goto_2
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_4

    .line 2638
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    new-instance v6, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    invoke-direct {v6}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;-><init>()V

    aput-object v6, v5, v1

    .line 2639
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 2640
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2637
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2631
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    :cond_3
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    array-length v1, v5

    goto :goto_1

    .line 2643
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    :cond_4
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    new-instance v6, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    invoke-direct {v6}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;-><init>()V

    aput-object v6, v5, v1

    .line 2644
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2648
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    :sswitch_6
    const/16 v5, 0x32

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2649
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    if-nez v5, :cond_6

    move v1, v4

    .line 2650
    .restart local v1    # "i":I
    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    .line 2651
    .local v2, "newArray":[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    if-eqz v5, :cond_5

    .line 2652
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2654
    :cond_5
    iput-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    .line 2655
    :goto_4
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_7

    .line 2656
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    new-instance v6, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    invoke-direct {v6}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;-><init>()V

    aput-object v6, v5, v1

    .line 2657
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 2658
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2655
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2649
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    :cond_6
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    array-length v1, v5

    goto :goto_3

    .line 2661
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    :cond_7
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    new-instance v6, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    invoke-direct {v6}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;-><init>()V

    aput-object v6, v5, v1

    .line 2662
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2666
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->metaState_:I

    .line 2667
    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    goto/16 :goto_0

    .line 2671
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->buttonState_:I

    .line 2672
    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    goto/16 :goto_0

    .line 2676
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v5

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->xPrecision_:F

    .line 2677
    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v5, v5, 0x40

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    goto/16 :goto_0

    .line 2681
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v5

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->yPrecision_:F

    .line 2682
    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit16 v5, v5, 0x80

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    goto/16 :goto_0

    .line 2686
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->deviceId_:I

    .line 2687
    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit16 v5, v5, 0x100

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    goto/16 :goto_0

    .line 2691
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->edgeFlags_:I

    .line 2692
    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit16 v5, v5, 0x200

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    goto/16 :goto_0

    .line 2696
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->source_:I

    .line 2697
    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    goto/16 :goto_0

    .line 2701
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->flags_:I

    .line 2702
    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit16 v5, v5, 0x800

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    goto/16 :goto_0

    .line 2595
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
    .line 1658
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$MotionEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public setAction(I)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2219
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->action_:I

    .line 2220
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 2221
    return-object p0
.end method

.method public setButtonState(I)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2282
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->buttonState_:I

    .line 2283
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 2284
    return-object p0
.end method

.method public setDeviceId(I)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2339
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->deviceId_:I

    .line 2340
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 2341
    return-object p0
.end method

.method public setDownTime(J)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 2181
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->downTime_:J

    .line 2182
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 2183
    return-object p0
.end method

.method public setEdgeFlags(I)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2358
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->edgeFlags_:I

    .line 2359
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 2360
    return-object p0
.end method

.method public setEventTime(J)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 2200
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->eventTime_:J

    .line 2201
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 2202
    return-object p0
.end method

.method public setFlags(I)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2396
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->flags_:I

    .line 2397
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 2398
    return-object p0
.end method

.method public setMetaState(I)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2263
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->metaState_:I

    .line 2264
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 2265
    return-object p0
.end method

.method public setPointerCount(I)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2238
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCount_:I

    .line 2239
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 2240
    return-object p0
.end method

.method public setSource(I)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2377
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->source_:I

    .line 2378
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 2379
    return-object p0
.end method

.method public setXPrecision(F)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 2301
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->xPrecision_:F

    .line 2302
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 2303
    return-object p0
.end method

.method public setYPrecision(F)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 2320
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->yPrecision_:F

    .line 2321
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 2322
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
    const/4 v1, 0x0

    .line 2463
    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 2464
    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->downTime_:J

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 2466
    :cond_0
    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 2467
    const/4 v2, 0x2

    iget-wide v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->eventTime_:J

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 2469
    :cond_1
    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 2470
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->action_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2472
    :cond_2
    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    .line 2473
    const/4 v2, 0x4

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCount_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2475
    :cond_3
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    if-eqz v2, :cond_5

    .line 2476
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_5

    aget-object v0, v3, v2

    .line 2477
    .local v0, "element":Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    if-eqz v0, :cond_4

    .line 2478
    const/4 v5, 0x5

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2476
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2482
    .end local v0    # "element":Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    :cond_5
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    if-eqz v2, :cond_7

    .line 2483
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_7

    aget-object v0, v2, v1

    .line 2484
    .local v0, "element":Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    if-eqz v0, :cond_6

    .line 2485
    const/4 v4, 0x6

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2483
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2489
    .end local v0    # "element":Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    :cond_7
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_8

    .line 2490
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->metaState_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2492
    :cond_8
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_9

    .line 2493
    const/16 v1, 0x8

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->buttonState_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2495
    :cond_9
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_a

    .line 2496
    const/16 v1, 0x9

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->xPrecision_:F

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2498
    :cond_a
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_b

    .line 2499
    const/16 v1, 0xa

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->yPrecision_:F

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2501
    :cond_b
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_c

    .line 2502
    const/16 v1, 0xb

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->deviceId_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2504
    :cond_c
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_d

    .line 2505
    const/16 v1, 0xc

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->edgeFlags_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2507
    :cond_d
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_e

    .line 2508
    const/16 v1, 0xd

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->source_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2510
    :cond_e
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_f

    .line 2511
    const/16 v1, 0xe

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->flags_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2513
    :cond_f
    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2515
    return-void
.end method
