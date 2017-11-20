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
    .line 1513
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

    .line 1514
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2028
    iput-wide v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->downTime_:J

    .line 2047
    iput-wide v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->eventTime_:J

    .line 2066
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->action_:I

    .line 2085
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCount_:I

    .line 2104
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    .line 2107
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    .line 2110
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->metaState_:I

    .line 2129
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->buttonState_:I

    .line 2148
    iput v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->xPrecision_:F

    .line 2167
    iput v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->yPrecision_:F

    .line 2186
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->deviceId_:I

    .line 2205
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->edgeFlags_:I

    .line 2224
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->source_:I

    .line 2243
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->flags_:I

    .line 1514
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
    .line 2569
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
    .line 2563
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
    .line 2079
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->action_:I

    .line 2080
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 2081
    return-object p0
.end method

.method public clearButtonState()Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1

    .prologue
    .line 2142
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->buttonState_:I

    .line 2143
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 2144
    return-object p0
.end method

.method public clearDeviceId()Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1

    .prologue
    .line 2199
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->deviceId_:I

    .line 2200
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 2201
    return-object p0
.end method

.method public clearDownTime()Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 2

    .prologue
    .line 2041
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->downTime_:J

    .line 2042
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 2043
    return-object p0
.end method

.method public clearEdgeFlags()Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1

    .prologue
    .line 2218
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->edgeFlags_:I

    .line 2219
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 2220
    return-object p0
.end method

.method public clearEventTime()Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 2

    .prologue
    .line 2060
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->eventTime_:J

    .line 2061
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 2062
    return-object p0
.end method

.method public clearFlags()Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1

    .prologue
    .line 2256
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->flags_:I

    .line 2257
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 2258
    return-object p0
.end method

.method public clearMetaState()Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1

    .prologue
    .line 2123
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->metaState_:I

    .line 2124
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 2125
    return-object p0
.end method

.method public clearPointerCount()Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1

    .prologue
    .line 2098
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCount_:I

    .line 2099
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 2100
    return-object p0
.end method

.method public clearSource()Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1

    .prologue
    .line 2237
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->source_:I

    .line 2238
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 2239
    return-object p0
.end method

.method public clearXPrecision()Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1

    .prologue
    .line 2161
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->xPrecision_:F

    .line 2162
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 2163
    return-object p0
.end method

.method public clearYPrecision()Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1

    .prologue
    .line 2180
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->yPrecision_:F

    .line 2181
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 2182
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2263
    if-ne p1, p0, :cond_1

    .line 2280
    :cond_0
    :goto_0
    return v1

    .line 2264
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$MotionEvent;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 2265
    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent;

    .line 2266
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

    .line 2270
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    .line 2271
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

    .line 2280
    goto :goto_0

    .line 2271
    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$MotionEvent;->unknownFieldData:Ljava/util/List;

    .line 2280
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_0
.end method

.method public getAction()I
    .locals 1

    .prologue
    .line 2068
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->action_:I

    return v0
.end method

.method public getButtonState()I
    .locals 1

    .prologue
    .line 2131
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->buttonState_:I

    return v0
.end method

.method public getDeviceId()I
    .locals 1

    .prologue
    .line 2188
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->deviceId_:I

    return v0
.end method

.method public getDownTime()J
    .locals 2

    .prologue
    .line 2030
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->downTime_:J

    return-wide v0
.end method

.method public getEdgeFlags()I
    .locals 1

    .prologue
    .line 2207
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->edgeFlags_:I

    return v0
.end method

.method public getEventTime()J
    .locals 2

    .prologue
    .line 2049
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->eventTime_:J

    return-wide v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 2245
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->flags_:I

    return v0
.end method

.method public getMetaState()I
    .locals 1

    .prologue
    .line 2112
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->metaState_:I

    return v0
.end method

.method public getPointerCount()I
    .locals 1

    .prologue
    .line 2087
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCount_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 2371
    const/4 v1, 0x0

    .line 2372
    .local v1, "size":I
    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 2373
    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->downTime_:J

    .line 2374
    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 2376
    :cond_0
    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 2377
    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->eventTime_:J

    .line 2378
    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 2380
    :cond_1
    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    .line 2381
    const/4 v3, 0x3

    iget v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->action_:I

    .line 2382
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 2384
    :cond_2
    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    .line 2385
    const/4 v3, 0x4

    iget v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCount_:I

    .line 2386
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 2388
    :cond_3
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    if-eqz v3, :cond_5

    .line 2389
    iget-object v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_5

    aget-object v0, v4, v3

    .line 2390
    .local v0, "element":Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    if-eqz v0, :cond_4

    .line 2391
    const/4 v6, 0x5

    .line 2392
    invoke-static {v6, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v1, v6

    .line 2389
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2396
    .end local v0    # "element":Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    if-eqz v3, :cond_7

    .line 2397
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_7

    aget-object v0, v3, v2

    .line 2398
    .local v0, "element":Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    if-eqz v0, :cond_6

    .line 2399
    const/4 v5, 0x6

    .line 2400
    invoke-static {v5, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v1, v5

    .line 2397
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2404
    .end local v0    # "element":Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    :cond_7
    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_8

    .line 2405
    const/4 v2, 0x7

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->metaState_:I

    .line 2406
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 2408
    :cond_8
    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_9

    .line 2409
    const/16 v2, 0x8

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->buttonState_:I

    .line 2410
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 2412
    :cond_9
    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_a

    .line 2413
    const/16 v2, 0x9

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->xPrecision_:F

    .line 2414
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v1, v2

    .line 2416
    :cond_a
    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_b

    .line 2417
    const/16 v2, 0xa

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->yPrecision_:F

    .line 2418
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v1, v2

    .line 2420
    :cond_b
    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_c

    .line 2421
    const/16 v2, 0xb

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->deviceId_:I

    .line 2422
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 2424
    :cond_c
    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_d

    .line 2425
    const/16 v2, 0xc

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->edgeFlags_:I

    .line 2426
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 2428
    :cond_d
    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_e

    .line 2429
    const/16 v2, 0xd

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->source_:I

    .line 2430
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 2432
    :cond_e
    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_f

    .line 2433
    const/16 v2, 0xe

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->flags_:I

    .line 2434
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 2436
    :cond_f
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->unknownFieldData:Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v2

    add-int/2addr v1, v2

    .line 2437
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->cachedSize:I

    .line 2438
    return v1
.end method

.method public getSource()I
    .locals 1

    .prologue
    .line 2226
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->source_:I

    return v0
.end method

.method public getXPrecision()F
    .locals 1

    .prologue
    .line 2150
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->xPrecision_:F

    return v0
.end method

.method public getYPrecision()F
    .locals 1

    .prologue
    .line 2169
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->yPrecision_:F

    return v0
.end method

.method public hasAction()Z
    .locals 1

    .prologue
    .line 2076
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
    .line 2139
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
    .line 2196
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
    .line 2038
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
    .line 2215
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
    .line 2057
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
    .line 2253
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
    .line 2120
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
    .line 2095
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
    .line 2234
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
    .line 2158
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
    .line 2177
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

    .line 2284
    const/16 v1, 0x11

    .line 2285
    .local v1, "result":I
    iget-wide v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->downTime_:J

    iget-wide v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->downTime_:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v2, v4

    add-int/lit16 v1, v2, 0x20f

    .line 2286
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->eventTime_:J

    iget-wide v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->eventTime_:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 2287
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->action_:I

    add-int v1, v2, v4

    .line 2288
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCount_:I

    add-int v1, v2, v4

    .line 2289
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    if-nez v2, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    .line 2295
    :cond_0
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    if-nez v2, :cond_4

    mul-int/lit8 v1, v1, 0x1f

    .line 2301
    :cond_1
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->metaState_:I

    add-int v1, v2, v4

    .line 2302
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->buttonState_:I

    add-int v1, v2, v4

    .line 2303
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->xPrecision_:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    add-int v1, v2, v4

    .line 2304
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->yPrecision_:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    add-int v1, v2, v4

    .line 2305
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->deviceId_:I

    add-int v1, v2, v4

    .line 2306
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->edgeFlags_:I

    add-int v1, v2, v4

    .line 2307
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->source_:I

    add-int v1, v2, v4

    .line 2308
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->flags_:I

    add-int v1, v2, v4

    .line 2309
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->unknownFieldData:Ljava/util/List;

    if-nez v4, :cond_6

    :goto_0
    add-int v1, v2, v3

    .line 2310
    return v1

    .line 2291
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 2292
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    aget-object v2, v2, v0

    if-nez v2, :cond_3

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 2291
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2292
    :cond_3
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->hashCode()I

    move-result v2

    goto :goto_2

    .line 2297
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 2298
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    aget-object v2, v2, v0

    if-nez v2, :cond_5

    move v2, v3

    :goto_4
    add-int v1, v4, v2

    .line 2297
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2298
    :cond_5
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->hashCode()I

    move-result v2

    goto :goto_4

    .line 2309
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

    .line 2446
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 2447
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 2451
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->unknownFieldData:Ljava/util/List;

    if-nez v5, :cond_1

    .line 2452
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->unknownFieldData:Ljava/util/List;

    .line 2455
    :cond_1
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->unknownFieldData:Ljava/util/List;

    invoke-static {v5, p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2457
    :sswitch_0
    return-object p0

    .line 2462
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->downTime_:J

    .line 2463
    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    goto :goto_0

    .line 2467
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->eventTime_:J

    .line 2468
    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    goto :goto_0

    .line 2472
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->action_:I

    .line 2473
    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    goto :goto_0

    .line 2477
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCount_:I

    .line 2478
    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    goto :goto_0

    .line 2482
    :sswitch_5
    const/16 v5, 0x2a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2483
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    if-nez v5, :cond_3

    move v1, v4

    .line 2484
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    .line 2485
    .local v2, "newArray":[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    if-eqz v5, :cond_2

    .line 2486
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2488
    :cond_2
    iput-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    .line 2489
    :goto_2
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_4

    .line 2490
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    new-instance v6, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    invoke-direct {v6}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;-><init>()V

    aput-object v6, v5, v1

    .line 2491
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 2492
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2489
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2483
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    :cond_3
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    array-length v1, v5

    goto :goto_1

    .line 2495
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    :cond_4
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    new-instance v6, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    invoke-direct {v6}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;-><init>()V

    aput-object v6, v5, v1

    .line 2496
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2500
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    :sswitch_6
    const/16 v5, 0x32

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2501
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    if-nez v5, :cond_6

    move v1, v4

    .line 2502
    .restart local v1    # "i":I
    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    .line 2503
    .local v2, "newArray":[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    if-eqz v5, :cond_5

    .line 2504
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2506
    :cond_5
    iput-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    .line 2507
    :goto_4
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_7

    .line 2508
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    new-instance v6, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    invoke-direct {v6}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;-><init>()V

    aput-object v6, v5, v1

    .line 2509
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 2510
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2507
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2501
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    :cond_6
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    array-length v1, v5

    goto :goto_3

    .line 2513
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    :cond_7
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    new-instance v6, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    invoke-direct {v6}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;-><init>()V

    aput-object v6, v5, v1

    .line 2514
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2518
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->metaState_:I

    .line 2519
    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    goto/16 :goto_0

    .line 2523
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->buttonState_:I

    .line 2524
    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    goto/16 :goto_0

    .line 2528
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v5

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->xPrecision_:F

    .line 2529
    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v5, v5, 0x40

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    goto/16 :goto_0

    .line 2533
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v5

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->yPrecision_:F

    .line 2534
    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit16 v5, v5, 0x80

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    goto/16 :goto_0

    .line 2538
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->deviceId_:I

    .line 2539
    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit16 v5, v5, 0x100

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    goto/16 :goto_0

    .line 2543
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->edgeFlags_:I

    .line 2544
    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit16 v5, v5, 0x200

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    goto/16 :goto_0

    .line 2548
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->source_:I

    .line 2549
    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    goto/16 :goto_0

    .line 2553
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->flags_:I

    .line 2554
    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit16 v5, v5, 0x800

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    goto/16 :goto_0

    .line 2447
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
    .line 1510
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$MotionEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public setAction(I)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2071
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->action_:I

    .line 2072
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 2073
    return-object p0
.end method

.method public setButtonState(I)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2134
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->buttonState_:I

    .line 2135
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 2136
    return-object p0
.end method

.method public setDeviceId(I)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2191
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->deviceId_:I

    .line 2192
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 2193
    return-object p0
.end method

.method public setDownTime(J)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 2033
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->downTime_:J

    .line 2034
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 2035
    return-object p0
.end method

.method public setEdgeFlags(I)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2210
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->edgeFlags_:I

    .line 2211
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 2212
    return-object p0
.end method

.method public setEventTime(J)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 2052
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->eventTime_:J

    .line 2053
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 2054
    return-object p0
.end method

.method public setFlags(I)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2248
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->flags_:I

    .line 2249
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 2250
    return-object p0
.end method

.method public setMetaState(I)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2115
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->metaState_:I

    .line 2116
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 2117
    return-object p0
.end method

.method public setPointerCount(I)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2090
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCount_:I

    .line 2091
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 2092
    return-object p0
.end method

.method public setSource(I)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2229
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->source_:I

    .line 2230
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 2231
    return-object p0
.end method

.method public setXPrecision(F)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 2153
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->xPrecision_:F

    .line 2154
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 2155
    return-object p0
.end method

.method public setYPrecision(F)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 2172
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->yPrecision_:F

    .line 2173
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 2174
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

    .line 2315
    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 2316
    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->downTime_:J

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 2318
    :cond_0
    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 2319
    const/4 v2, 0x2

    iget-wide v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->eventTime_:J

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 2321
    :cond_1
    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 2322
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->action_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2324
    :cond_2
    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    .line 2325
    const/4 v2, 0x4

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCount_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2327
    :cond_3
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    if-eqz v2, :cond_5

    .line 2328
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_5

    aget-object v0, v3, v2

    .line 2329
    .local v0, "element":Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    if-eqz v0, :cond_4

    .line 2330
    const/4 v5, 0x5

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2328
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2334
    .end local v0    # "element":Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    :cond_5
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    if-eqz v2, :cond_7

    .line 2335
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_7

    aget-object v0, v2, v1

    .line 2336
    .local v0, "element":Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    if-eqz v0, :cond_6

    .line 2337
    const/4 v4, 0x6

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2335
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2341
    .end local v0    # "element":Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    :cond_7
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_8

    .line 2342
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->metaState_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2344
    :cond_8
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_9

    .line 2345
    const/16 v1, 0x8

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->buttonState_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2347
    :cond_9
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_a

    .line 2348
    const/16 v1, 0x9

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->xPrecision_:F

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2350
    :cond_a
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_b

    .line 2351
    const/16 v1, 0xa

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->yPrecision_:F

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2353
    :cond_b
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_c

    .line 2354
    const/16 v1, 0xb

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->deviceId_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2356
    :cond_c
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_d

    .line 2357
    const/16 v1, 0xc

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->edgeFlags_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2359
    :cond_d
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_e

    .line 2360
    const/16 v1, 0xd

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->source_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2362
    :cond_e
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_f

    .line 2363
    const/16 v1, 0xe

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->flags_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2365
    :cond_f
    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2367
    return-void
.end method
