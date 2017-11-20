.class public final Lcom/google/majel/proto/CalendarProtos$Event;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "CalendarProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/CalendarProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/CalendarProtos$Event;


# instance fields
.field public attendee:[Ljava/lang/String;

.field private bitField0_:I

.field private calendarColor_:I

.field private calendarName_:Ljava/lang/String;

.field private description_:Ljava/lang/String;

.field private eventId_:J

.field private isGplusEvent_:Z

.field private location_:Ljava/lang/String;

.field private ownerName_:Ljava/lang/String;

.field private totalAttendeeCount_:I

.field private url_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2394
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2395
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$Event;->clear()Lcom/google/majel/proto/CalendarProtos$Event;

    .line 2396
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/CalendarProtos$Event;
    .locals 2

    .prologue
    .line 2192
    sget-object v0, Lcom/google/majel/proto/CalendarProtos$Event;->_emptyArray:[Lcom/google/majel/proto/CalendarProtos$Event;

    if-nez v0, :cond_1

    .line 2193
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2195
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/CalendarProtos$Event;->_emptyArray:[Lcom/google/majel/proto/CalendarProtos$Event;

    if-nez v0, :cond_0

    .line 2196
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/CalendarProtos$Event;

    sput-object v0, Lcom/google/majel/proto/CalendarProtos$Event;->_emptyArray:[Lcom/google/majel/proto/CalendarProtos$Event;

    .line 2198
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2200
    :cond_1
    sget-object v0, Lcom/google/majel/proto/CalendarProtos$Event;->_emptyArray:[Lcom/google/majel/proto/CalendarProtos$Event;

    return-object v0

    .line 2198
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CalendarProtos$Event;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2600
    new-instance v0, Lcom/google/majel/proto/CalendarProtos$Event;

    invoke-direct {v0}, Lcom/google/majel/proto/CalendarProtos$Event;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/CalendarProtos$Event;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CalendarProtos$Event;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/CalendarProtos$Event;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2594
    new-instance v0, Lcom/google/majel/proto/CalendarProtos$Event;

    invoke-direct {v0}, Lcom/google/majel/proto/CalendarProtos$Event;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/CalendarProtos$Event;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/CalendarProtos$Event;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2399
    iput v2, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    .line 2400
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->description_:Ljava/lang/String;

    .line 2401
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->location_:Ljava/lang/String;

    .line 2402
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->attendee:[Ljava/lang/String;

    .line 2403
    iput v2, p0, Lcom/google/majel/proto/CalendarProtos$Event;->totalAttendeeCount_:I

    .line 2404
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->url_:Ljava/lang/String;

    .line 2405
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->eventId_:J

    .line 2406
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->calendarName_:Ljava/lang/String;

    .line 2407
    iput v2, p0, Lcom/google/majel/proto/CalendarProtos$Event;->calendarColor_:I

    .line 2408
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->ownerName_:Ljava/lang/String;

    .line 2409
    iput-boolean v2, p0, Lcom/google/majel/proto/CalendarProtos$Event;->isGplusEvent_:Z

    .line 2410
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->cachedSize:I

    .line 2411
    return-object p0
.end method

.method public clearCalendarColor()Lcom/google/majel/proto/CalendarProtos$Event;
    .locals 1

    .prologue
    .line 2348
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->calendarColor_:I

    .line 2349
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    .line 2350
    return-object p0
.end method

.method public clearCalendarName()Lcom/google/majel/proto/CalendarProtos$Event;
    .locals 1

    .prologue
    .line 2329
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->calendarName_:Ljava/lang/String;

    .line 2330
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    .line 2331
    return-object p0
.end method

.method public clearDescription()Lcom/google/majel/proto/CalendarProtos$Event;
    .locals 1

    .prologue
    .line 2222
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->description_:Ljava/lang/String;

    .line 2223
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    .line 2224
    return-object p0
.end method

.method public clearEventId()Lcom/google/majel/proto/CalendarProtos$Event;
    .locals 2

    .prologue
    .line 2307
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->eventId_:J

    .line 2308
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    .line 2309
    return-object p0
.end method

.method public clearIsGplusEvent()Lcom/google/majel/proto/CalendarProtos$Event;
    .locals 1

    .prologue
    .line 2389
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->isGplusEvent_:Z

    .line 2390
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    .line 2391
    return-object p0
.end method

.method public clearLocation()Lcom/google/majel/proto/CalendarProtos$Event;
    .locals 1

    .prologue
    .line 2244
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->location_:Ljava/lang/String;

    .line 2245
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    .line 2246
    return-object p0
.end method

.method public clearOwnerName()Lcom/google/majel/proto/CalendarProtos$Event;
    .locals 1

    .prologue
    .line 2370
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->ownerName_:Ljava/lang/String;

    .line 2371
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    .line 2372
    return-object p0
.end method

.method public clearTotalAttendeeCount()Lcom/google/majel/proto/CalendarProtos$Event;
    .locals 1

    .prologue
    .line 2266
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->totalAttendeeCount_:I

    .line 2267
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    .line 2268
    return-object p0
.end method

.method public clearUrl()Lcom/google/majel/proto/CalendarProtos$Event;
    .locals 1

    .prologue
    .line 2288
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->url_:Ljava/lang/String;

    .line 2289
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    .line 2290
    return-object p0
.end method

.method public getCalendarColor()I
    .locals 1

    .prologue
    .line 2337
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->calendarColor_:I

    return v0
.end method

.method public getCalendarName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2315
    iget-object v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->calendarName_:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2208
    iget-object v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->description_:Ljava/lang/String;

    return-object v0
.end method

.method public getEventId()J
    .locals 2

    .prologue
    .line 2296
    iget-wide v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->eventId_:J

    return-wide v0
.end method

.method public getIsGplusEvent()Z
    .locals 1

    .prologue
    .line 2378
    iget-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->isGplusEvent_:Z

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2230
    iget-object v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->location_:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2356
    iget-object v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->ownerName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    .line 2456
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v4

    .line 2457
    .local v4, "size":I
    iget v5, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 2458
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/majel/proto/CalendarProtos$Event;->description_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 2461
    :cond_0
    iget v5, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    .line 2462
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/majel/proto/CalendarProtos$Event;->location_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 2465
    :cond_1
    iget-object v5, p0, Lcom/google/majel/proto/CalendarProtos$Event;->attendee:[Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/google/majel/proto/CalendarProtos$Event;->attendee:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_4

    .line 2466
    const/4 v0, 0x0

    .line 2467
    .local v0, "dataCount":I
    const/4 v1, 0x0

    .line 2468
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/majel/proto/CalendarProtos$Event;->attendee:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_3

    .line 2469
    iget-object v5, p0, Lcom/google/majel/proto/CalendarProtos$Event;->attendee:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 2470
    .local v2, "element":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 2471
    add-int/lit8 v0, v0, 0x1

    .line 2472
    invoke-static {v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 2468
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2476
    .end local v2    # "element":Ljava/lang/String;
    :cond_3
    add-int/2addr v4, v1

    .line 2477
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 2479
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_4
    iget v5, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_5

    .line 2480
    const/4 v5, 0x4

    iget-object v6, p0, Lcom/google/majel/proto/CalendarProtos$Event;->url_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 2483
    :cond_5
    iget v5, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_6

    .line 2484
    const/4 v5, 0x5

    iget-wide v6, p0, Lcom/google/majel/proto/CalendarProtos$Event;->eventId_:J

    invoke-static {v5, v6, v7}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    .line 2487
    :cond_6
    iget v5, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_7

    .line 2488
    const/4 v5, 0x6

    iget-object v6, p0, Lcom/google/majel/proto/CalendarProtos$Event;->calendarName_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 2491
    :cond_7
    iget v5, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_8

    .line 2492
    const/4 v5, 0x7

    iget-boolean v6, p0, Lcom/google/majel/proto/CalendarProtos$Event;->isGplusEvent_:Z

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v4, v5

    .line 2495
    :cond_8
    iget v5, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_9

    .line 2496
    const/16 v5, 0x8

    iget v6, p0, Lcom/google/majel/proto/CalendarProtos$Event;->calendarColor_:I

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 2499
    :cond_9
    iget v5, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_a

    .line 2500
    const/16 v5, 0x9

    iget-object v6, p0, Lcom/google/majel/proto/CalendarProtos$Event;->ownerName_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 2503
    :cond_a
    iget v5, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_b

    .line 2504
    const/16 v5, 0xa

    iget v6, p0, Lcom/google/majel/proto/CalendarProtos$Event;->totalAttendeeCount_:I

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 2507
    :cond_b
    iput v4, p0, Lcom/google/majel/proto/CalendarProtos$Event;->cachedSize:I

    .line 2508
    return v4
.end method

.method public getTotalAttendeeCount()I
    .locals 1

    .prologue
    .line 2255
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->totalAttendeeCount_:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2274
    iget-object v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public hasCalendarColor()Z
    .locals 1

    .prologue
    .line 2345
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCalendarName()Z
    .locals 1

    .prologue
    .line 2326
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDescription()Z
    .locals 1

    .prologue
    .line 2219
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEventId()Z
    .locals 1

    .prologue
    .line 2304
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsGplusEvent()Z
    .locals 1

    .prologue
    .line 2386
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLocation()Z
    .locals 1

    .prologue
    .line 2241
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOwnerName()Z
    .locals 1

    .prologue
    .line 2367
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTotalAttendeeCount()Z
    .locals 1

    .prologue
    .line 2263
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUrl()Z
    .locals 1

    .prologue
    .line 2285
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

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
    .line 2186
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/CalendarProtos$Event;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CalendarProtos$Event;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CalendarProtos$Event;
    .locals 7
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2516
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 2517
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 2521
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2522
    :sswitch_0
    return-object p0

    .line 2527
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/CalendarProtos$Event;->description_:Ljava/lang/String;

    .line 2528
    iget v5, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    goto :goto_0

    .line 2532
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/CalendarProtos$Event;->location_:Ljava/lang/String;

    .line 2533
    iget v5, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    goto :goto_0

    .line 2537
    :sswitch_3
    const/16 v5, 0x1a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2539
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/CalendarProtos$Event;->attendee:[Ljava/lang/String;

    if-nez v5, :cond_2

    move v1, v4

    .line 2540
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    .line 2541
    .local v2, "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 2542
    iget-object v5, p0, Lcom/google/majel/proto/CalendarProtos$Event;->attendee:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2544
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 2545
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 2546
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2544
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2539
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/CalendarProtos$Event;->attendee:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_1

    .line 2549
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 2550
    iput-object v2, p0, Lcom/google/majel/proto/CalendarProtos$Event;->attendee:[Ljava/lang/String;

    goto :goto_0

    .line 2554
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/CalendarProtos$Event;->url_:Ljava/lang/String;

    .line 2555
    iget v5, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    goto :goto_0

    .line 2559
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/majel/proto/CalendarProtos$Event;->eventId_:J

    .line 2560
    iget v5, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    goto :goto_0

    .line 2564
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/CalendarProtos$Event;->calendarName_:Ljava/lang/String;

    .line 2565
    iget v5, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    goto/16 :goto_0

    .line 2569
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/majel/proto/CalendarProtos$Event;->isGplusEvent_:Z

    .line 2570
    iget v5, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    or-int/lit16 v5, v5, 0x100

    iput v5, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    goto/16 :goto_0

    .line 2574
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/majel/proto/CalendarProtos$Event;->calendarColor_:I

    .line 2575
    iget v5, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    or-int/lit8 v5, v5, 0x40

    iput v5, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    goto/16 :goto_0

    .line 2579
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/CalendarProtos$Event;->ownerName_:Ljava/lang/String;

    .line 2580
    iget v5, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    or-int/lit16 v5, v5, 0x80

    iput v5, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    goto/16 :goto_0

    .line 2584
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/majel/proto/CalendarProtos$Event;->totalAttendeeCount_:I

    .line 2585
    iget v5, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    goto/16 :goto_0

    .line 2517
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x4a -> :sswitch_9
        0x50 -> :sswitch_a
    .end sparse-switch
.end method

.method public setCalendarColor(I)Lcom/google/majel/proto/CalendarProtos$Event;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2340
    iput p1, p0, Lcom/google/majel/proto/CalendarProtos$Event;->calendarColor_:I

    .line 2341
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    .line 2342
    return-object p0
.end method

.method public setCalendarName(Ljava/lang/String;)Lcom/google/majel/proto/CalendarProtos$Event;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2318
    if-nez p1, :cond_0

    .line 2319
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2321
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/CalendarProtos$Event;->calendarName_:Ljava/lang/String;

    .line 2322
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    .line 2323
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/majel/proto/CalendarProtos$Event;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2211
    if-nez p1, :cond_0

    .line 2212
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2214
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/CalendarProtos$Event;->description_:Ljava/lang/String;

    .line 2215
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    .line 2216
    return-object p0
.end method

.method public setEventId(J)Lcom/google/majel/proto/CalendarProtos$Event;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 2299
    iput-wide p1, p0, Lcom/google/majel/proto/CalendarProtos$Event;->eventId_:J

    .line 2300
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    .line 2301
    return-object p0
.end method

.method public setIsGplusEvent(Z)Lcom/google/majel/proto/CalendarProtos$Event;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 2381
    iput-boolean p1, p0, Lcom/google/majel/proto/CalendarProtos$Event;->isGplusEvent_:Z

    .line 2382
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    .line 2383
    return-object p0
.end method

.method public setLocation(Ljava/lang/String;)Lcom/google/majel/proto/CalendarProtos$Event;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2233
    if-nez p1, :cond_0

    .line 2234
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2236
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/CalendarProtos$Event;->location_:Ljava/lang/String;

    .line 2237
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    .line 2238
    return-object p0
.end method

.method public setOwnerName(Ljava/lang/String;)Lcom/google/majel/proto/CalendarProtos$Event;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2359
    if-nez p1, :cond_0

    .line 2360
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2362
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/CalendarProtos$Event;->ownerName_:Ljava/lang/String;

    .line 2363
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    .line 2364
    return-object p0
.end method

.method public setTotalAttendeeCount(I)Lcom/google/majel/proto/CalendarProtos$Event;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2258
    iput p1, p0, Lcom/google/majel/proto/CalendarProtos$Event;->totalAttendeeCount_:I

    .line 2259
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    .line 2260
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/majel/proto/CalendarProtos$Event;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2277
    if-nez p1, :cond_0

    .line 2278
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2280
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/CalendarProtos$Event;->url_:Ljava/lang/String;

    .line 2281
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    .line 2282
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2417
    iget v2, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 2418
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/majel/proto/CalendarProtos$Event;->description_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2420
    :cond_0
    iget v2, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 2421
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/majel/proto/CalendarProtos$Event;->location_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2423
    :cond_1
    iget-object v2, p0, Lcom/google/majel/proto/CalendarProtos$Event;->attendee:[Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/majel/proto/CalendarProtos$Event;->attendee:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 2424
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/CalendarProtos$Event;->attendee:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 2425
    iget-object v2, p0, Lcom/google/majel/proto/CalendarProtos$Event;->attendee:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 2426
    .local v0, "element":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 2427
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2424
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2431
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_3
    iget v2, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_4

    .line 2432
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/majel/proto/CalendarProtos$Event;->url_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2434
    :cond_4
    iget v2, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_5

    .line 2435
    const/4 v2, 0x5

    iget-wide v3, p0, Lcom/google/majel/proto/CalendarProtos$Event;->eventId_:J

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 2437
    :cond_5
    iget v2, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_6

    .line 2438
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/majel/proto/CalendarProtos$Event;->calendarName_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2440
    :cond_6
    iget v2, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_7

    .line 2441
    const/4 v2, 0x7

    iget-boolean v3, p0, Lcom/google/majel/proto/CalendarProtos$Event;->isGplusEvent_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2443
    :cond_7
    iget v2, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_8

    .line 2444
    const/16 v2, 0x8

    iget v3, p0, Lcom/google/majel/proto/CalendarProtos$Event;->calendarColor_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2446
    :cond_8
    iget v2, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_9

    .line 2447
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/majel/proto/CalendarProtos$Event;->ownerName_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2449
    :cond_9
    iget v2, p0, Lcom/google/majel/proto/CalendarProtos$Event;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_a

    .line 2450
    const/16 v2, 0xa

    iget v3, p0, Lcom/google/majel/proto/CalendarProtos$Event;->totalAttendeeCount_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2452
    :cond_a
    return-void
.end method
