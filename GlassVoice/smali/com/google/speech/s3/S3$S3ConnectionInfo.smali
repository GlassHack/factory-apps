.class public final Lcom/google/speech/s3/S3$S3ConnectionInfo;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "S3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/s3/S3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "S3ConnectionInfo"
.end annotation


# static fields
.field public static final TYPE_BIDIRECTIONAL_STUBBY:I = 0x9

.field public static final TYPE_BLOCKING_STUBBY:I = 0x2

.field public static final TYPE_PAIRED_HTTP:I = 0x4

.field public static final TYPE_SERVERLESS:I = 0x6

.field public static final TYPE_SINGLE_HTTP:I = 0x5

.field public static final TYPE_SSFE_HTTP_FALLBACK:I = 0x8

.field public static final TYPE_SSFE_TCP:I = 0x7

.field public static final TYPE_STREAMING_STUBBY:I = 0x1

.field public static final TYPE_TCP:I = 0x3

.field private static volatile _emptyArray:[Lcom/google/speech/s3/S3$S3ConnectionInfo;


# instance fields
.field private bitField0_:I

.field private clientCountryCode_:Ljava/lang/String;

.field private clientIp_:Ljava/lang/String;

.field private clientPort_:I

.field private debugIp_:Z

.field private gfeFrontlineInfo_:Ljava/lang/String;

.field private host_:Ljava/lang/String;

.field private immediateClientIp_:Ljava/lang/String;

.field private immediateClientPort_:I

.field private legacyClientTargetVip_:Ljava/lang/String;

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2495
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2496
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->clear()Lcom/google/speech/s3/S3$S3ConnectionInfo;

    .line 2497
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/s3/S3$S3ConnectionInfo;
    .locals 2

    .prologue
    .line 2274
    sget-object v0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->_emptyArray:[Lcom/google/speech/s3/S3$S3ConnectionInfo;

    if-nez v0, :cond_1

    .line 2275
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2277
    :try_start_0
    sget-object v0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->_emptyArray:[Lcom/google/speech/s3/S3$S3ConnectionInfo;

    if-nez v0, :cond_0

    .line 2278
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/s3/S3$S3ConnectionInfo;

    sput-object v0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->_emptyArray:[Lcom/google/speech/s3/S3$S3ConnectionInfo;

    .line 2280
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2282
    :cond_1
    sget-object v0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->_emptyArray:[Lcom/google/speech/s3/S3$S3ConnectionInfo;

    return-object v0

    .line 2280
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/S3$S3ConnectionInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2674
    new-instance v0, Lcom/google/speech/s3/S3$S3ConnectionInfo;

    invoke-direct {v0}, Lcom/google/speech/s3/S3$S3ConnectionInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/S3$S3ConnectionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/s3/S3$S3ConnectionInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2668
    new-instance v0, Lcom/google/speech/s3/S3$S3ConnectionInfo;

    invoke-direct {v0}, Lcom/google/speech/s3/S3$S3ConnectionInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/S3$S3ConnectionInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/s3/S3$S3ConnectionInfo;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2500
    iput v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    .line 2501
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->type_:I

    .line 2502
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->clientIp_:Ljava/lang/String;

    .line 2503
    iput v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->clientPort_:I

    .line 2504
    iput-boolean v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->debugIp_:Z

    .line 2505
    const-string v0, "ZZ"

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->clientCountryCode_:Ljava/lang/String;

    .line 2506
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->immediateClientIp_:Ljava/lang/String;

    .line 2507
    iput v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->immediateClientPort_:I

    .line 2508
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->legacyClientTargetVip_:Ljava/lang/String;

    .line 2509
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->gfeFrontlineInfo_:Ljava/lang/String;

    .line 2510
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->host_:Ljava/lang/String;

    .line 2511
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->cachedSize:I

    .line 2512
    return-object p0
.end method

.method public clearClientCountryCode()Lcom/google/speech/s3/S3$S3ConnectionInfo;
    .locals 1

    .prologue
    .line 2383
    const-string v0, "ZZ"

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->clientCountryCode_:Ljava/lang/String;

    .line 2384
    iget v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    .line 2385
    return-object p0
.end method

.method public clearClientIp()Lcom/google/speech/s3/S3$S3ConnectionInfo;
    .locals 1

    .prologue
    .line 2323
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->clientIp_:Ljava/lang/String;

    .line 2324
    iget v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    .line 2325
    return-object p0
.end method

.method public clearClientPort()Lcom/google/speech/s3/S3$S3ConnectionInfo;
    .locals 1

    .prologue
    .line 2342
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->clientPort_:I

    .line 2343
    iget v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    .line 2344
    return-object p0
.end method

.method public clearDebugIp()Lcom/google/speech/s3/S3$S3ConnectionInfo;
    .locals 1

    .prologue
    .line 2361
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->debugIp_:Z

    .line 2362
    iget v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    .line 2363
    return-object p0
.end method

.method public clearGfeFrontlineInfo()Lcom/google/speech/s3/S3$S3ConnectionInfo;
    .locals 1

    .prologue
    .line 2468
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->gfeFrontlineInfo_:Ljava/lang/String;

    .line 2469
    iget v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    .line 2470
    return-object p0
.end method

.method public clearHost()Lcom/google/speech/s3/S3$S3ConnectionInfo;
    .locals 1

    .prologue
    .line 2490
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->host_:Ljava/lang/String;

    .line 2491
    iget v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    .line 2492
    return-object p0
.end method

.method public clearImmediateClientIp()Lcom/google/speech/s3/S3$S3ConnectionInfo;
    .locals 1

    .prologue
    .line 2405
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->immediateClientIp_:Ljava/lang/String;

    .line 2406
    iget v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    .line 2407
    return-object p0
.end method

.method public clearImmediateClientPort()Lcom/google/speech/s3/S3$S3ConnectionInfo;
    .locals 1

    .prologue
    .line 2424
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->immediateClientPort_:I

    .line 2425
    iget v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    .line 2426
    return-object p0
.end method

.method public clearLegacyClientTargetVip()Lcom/google/speech/s3/S3$S3ConnectionInfo;
    .locals 1

    .prologue
    .line 2446
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->legacyClientTargetVip_:Ljava/lang/String;

    .line 2447
    iget v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    .line 2448
    return-object p0
.end method

.method public clearType()Lcom/google/speech/s3/S3$S3ConnectionInfo;
    .locals 1

    .prologue
    .line 2301
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->type_:I

    .line 2302
    iget v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    .line 2303
    return-object p0
.end method

.method public getClientCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2369
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->clientCountryCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getClientIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2309
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->clientIp_:Ljava/lang/String;

    return-object v0
.end method

.method public getClientPort()I
    .locals 1

    .prologue
    .line 2331
    iget v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->clientPort_:I

    return v0
.end method

.method public getDebugIp()Z
    .locals 1

    .prologue
    .line 2350
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->debugIp_:Z

    return v0
.end method

.method public getGfeFrontlineInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2454
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->gfeFrontlineInfo_:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2476
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->host_:Ljava/lang/String;

    return-object v0
.end method

.method public getImmediateClientIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2391
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->immediateClientIp_:Ljava/lang/String;

    return-object v0
.end method

.method public getImmediateClientPort()I
    .locals 1

    .prologue
    .line 2413
    iget v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->immediateClientPort_:I

    return v0
.end method

.method public getLegacyClientTargetVip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2432
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->legacyClientTargetVip_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2552
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 2553
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 2554
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->type_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2557
    :cond_0
    iget v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 2558
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->clientIp_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2561
    :cond_1
    iget v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 2562
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->clientPort_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2565
    :cond_2
    iget v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 2566
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->debugIp_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2569
    :cond_3
    iget v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_4

    .line 2570
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->gfeFrontlineInfo_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2573
    :cond_4
    iget v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_5

    .line 2574
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->host_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2577
    :cond_5
    iget v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_6

    .line 2578
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->immediateClientIp_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2581
    :cond_6
    iget v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_7

    .line 2582
    const/16 v1, 0x8

    iget v2, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->immediateClientPort_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2585
    :cond_7
    iget v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_8

    .line 2586
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->legacyClientTargetVip_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2589
    :cond_8
    iget v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_9

    .line 2590
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->clientCountryCode_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2593
    :cond_9
    iput v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->cachedSize:I

    .line 2594
    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 2290
    iget v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->type_:I

    return v0
.end method

.method public hasClientCountryCode()Z
    .locals 1

    .prologue
    .line 2380
    iget v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasClientIp()Z
    .locals 1

    .prologue
    .line 2320
    iget v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasClientPort()Z
    .locals 1

    .prologue
    .line 2339
    iget v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDebugIp()Z
    .locals 1

    .prologue
    .line 2358
    iget v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGfeFrontlineInfo()Z
    .locals 1

    .prologue
    .line 2465
    iget v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHost()Z
    .locals 1

    .prologue
    .line 2487
    iget v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasImmediateClientIp()Z
    .locals 1

    .prologue
    .line 2402
    iget v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasImmediateClientPort()Z
    .locals 1

    .prologue
    .line 2421
    iget v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLegacyClientTargetVip()Z
    .locals 1

    .prologue
    .line 2443
    iget v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

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
    .line 2298
    iget v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

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
    .line 2257
    invoke-virtual {p0, p1}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/S3$S3ConnectionInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/S3$S3ConnectionInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2602
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2603
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2607
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2608
    :sswitch_0
    return-object p0

    .line 2613
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->type_:I

    .line 2614
    iget v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    goto :goto_0

    .line 2618
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->clientIp_:Ljava/lang/String;

    .line 2619
    iget v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    goto :goto_0

    .line 2623
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->clientPort_:I

    .line 2624
    iget v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    goto :goto_0

    .line 2628
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->debugIp_:Z

    .line 2629
    iget v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    goto :goto_0

    .line 2633
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->gfeFrontlineInfo_:Ljava/lang/String;

    .line 2634
    iget v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    goto :goto_0

    .line 2638
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->host_:Ljava/lang/String;

    .line 2639
    iget v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    goto :goto_0

    .line 2643
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->immediateClientIp_:Ljava/lang/String;

    .line 2644
    iget v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    goto :goto_0

    .line 2648
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->immediateClientPort_:I

    .line 2649
    iget v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    goto :goto_0

    .line 2653
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->legacyClientTargetVip_:Ljava/lang/String;

    .line 2654
    iget v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    goto/16 :goto_0

    .line 2658
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->clientCountryCode_:Ljava/lang/String;

    .line 2659
    iget v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    goto/16 :goto_0

    .line 2603
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
    .end sparse-switch
.end method

.method public setClientCountryCode(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ConnectionInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2372
    if-nez p1, :cond_0

    .line 2373
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2375
    :cond_0
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->clientCountryCode_:Ljava/lang/String;

    .line 2376
    iget v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    .line 2377
    return-object p0
.end method

.method public setClientIp(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ConnectionInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2312
    if-nez p1, :cond_0

    .line 2313
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2315
    :cond_0
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->clientIp_:Ljava/lang/String;

    .line 2316
    iget v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    .line 2317
    return-object p0
.end method

.method public setClientPort(I)Lcom/google/speech/s3/S3$S3ConnectionInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2334
    iput p1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->clientPort_:I

    .line 2335
    iget v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    .line 2336
    return-object p0
.end method

.method public setDebugIp(Z)Lcom/google/speech/s3/S3$S3ConnectionInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 2353
    iput-boolean p1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->debugIp_:Z

    .line 2354
    iget v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    .line 2355
    return-object p0
.end method

.method public setGfeFrontlineInfo(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ConnectionInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2457
    if-nez p1, :cond_0

    .line 2458
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2460
    :cond_0
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->gfeFrontlineInfo_:Ljava/lang/String;

    .line 2461
    iget v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    .line 2462
    return-object p0
.end method

.method public setHost(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ConnectionInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2479
    if-nez p1, :cond_0

    .line 2480
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2482
    :cond_0
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->host_:Ljava/lang/String;

    .line 2483
    iget v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    .line 2484
    return-object p0
.end method

.method public setImmediateClientIp(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ConnectionInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2394
    if-nez p1, :cond_0

    .line 2395
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2397
    :cond_0
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->immediateClientIp_:Ljava/lang/String;

    .line 2398
    iget v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    .line 2399
    return-object p0
.end method

.method public setImmediateClientPort(I)Lcom/google/speech/s3/S3$S3ConnectionInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2416
    iput p1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->immediateClientPort_:I

    .line 2417
    iget v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    .line 2418
    return-object p0
.end method

.method public setLegacyClientTargetVip(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ConnectionInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2435
    if-nez p1, :cond_0

    .line 2436
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2438
    :cond_0
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->legacyClientTargetVip_:Ljava/lang/String;

    .line 2439
    iget v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    .line 2440
    return-object p0
.end method

.method public setType(I)Lcom/google/speech/s3/S3$S3ConnectionInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2293
    iput p1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->type_:I

    .line 2294
    iget v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    .line 2295
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
    .line 2518
    iget v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2519
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->type_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2521
    :cond_0
    iget v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 2522
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->clientIp_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2524
    :cond_1
    iget v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 2525
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->clientPort_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2527
    :cond_2
    iget v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 2528
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->debugIp_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2530
    :cond_3
    iget v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_4

    .line 2531
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->gfeFrontlineInfo_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2533
    :cond_4
    iget v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_5

    .line 2534
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->host_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2536
    :cond_5
    iget v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 2537
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->immediateClientIp_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2539
    :cond_6
    iget v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7

    .line 2540
    const/16 v0, 0x8

    iget v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->immediateClientPort_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2542
    :cond_7
    iget v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    .line 2543
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->legacyClientTargetVip_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2545
    :cond_8
    iget v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_9

    .line 2546
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->clientCountryCode_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2548
    :cond_9
    return-void
.end method
