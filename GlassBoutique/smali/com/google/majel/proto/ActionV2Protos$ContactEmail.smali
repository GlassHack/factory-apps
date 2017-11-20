.class public final Lcom/google/majel/proto/ActionV2Protos$ContactEmail;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContactEmail"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ContactEmail;


# instance fields
.field private address_:Ljava/lang/String;

.field private bitField0_:I

.field private type_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2423
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2424
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->clear()Lcom/google/majel/proto/ActionV2Protos$ContactEmail;

    .line 2425
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$ContactEmail;
    .locals 2

    .prologue
    .line 2366
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ContactEmail;

    if-nez v0, :cond_1

    .line 2367
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2369
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ContactEmail;

    if-nez v0, :cond_0

    .line 2370
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$ContactEmail;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ContactEmail;

    .line 2372
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2374
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ContactEmail;

    return-object v0

    .line 2372
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ContactEmail;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2498
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ContactEmail;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$ContactEmail;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2492
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$ContactEmail;
    .locals 1

    .prologue
    .line 2428
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->bitField0_:I

    .line 2429
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->address_:Ljava/lang/String;

    .line 2430
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->type_:Ljava/lang/String;

    .line 2431
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->cachedSize:I

    .line 2432
    return-object p0
.end method

.method public clearAddress()Lcom/google/majel/proto/ActionV2Protos$ContactEmail;
    .locals 1

    .prologue
    .line 2396
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->address_:Ljava/lang/String;

    .line 2397
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->bitField0_:I

    .line 2398
    return-object p0
.end method

.method public clearType()Lcom/google/majel/proto/ActionV2Protos$ContactEmail;
    .locals 1

    .prologue
    .line 2418
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->type_:Ljava/lang/String;

    .line 2419
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->bitField0_:I

    .line 2420
    return-object p0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2382
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->address_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2448
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 2449
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 2450
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->address_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2453
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 2454
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->type_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2457
    :cond_1
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->cachedSize:I

    .line 2458
    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2404
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->type_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAddress()Z
    .locals 1

    .prologue
    .line 2393
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 2415
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->bitField0_:I

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
    .line 2360
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ContactEmail;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ContactEmail;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2466
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2467
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2471
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2472
    :sswitch_0
    return-object p0

    .line 2477
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->address_:Ljava/lang/String;

    .line 2478
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->bitField0_:I

    goto :goto_0

    .line 2482
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->type_:Ljava/lang/String;

    .line 2483
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->bitField0_:I

    goto :goto_0

    .line 2467
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setAddress(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$ContactEmail;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2385
    if-nez p1, :cond_0

    .line 2386
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2388
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->address_:Ljava/lang/String;

    .line 2389
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->bitField0_:I

    .line 2390
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$ContactEmail;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2407
    if-nez p1, :cond_0

    .line 2408
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2410
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->type_:Ljava/lang/String;

    .line 2411
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->bitField0_:I

    .line 2412
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
    .line 2438
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2439
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->address_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2441
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 2442
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->type_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2444
    :cond_1
    return-void
.end method
