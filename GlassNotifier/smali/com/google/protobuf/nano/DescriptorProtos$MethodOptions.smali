.class public final Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MethodOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$IdempotencyLevel;,
        Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$TokenUnit;,
        Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$LogLevel;,
        Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$Format;,
        Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$SecurityLevel;,
        Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$Protocol;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;


# instance fields
.field public clientLogging:I

.field public clientStreaming:Z

.field public deadline:D

.field public deprecated:Z

.field public duplicateSuppression:Z

.field public endUserCredsRequested:Z

.field public failFast:Z

.field public goLegacyChannelApi:Z

.field public idempotencyLevel:I

.field public legacyClientInitialTokens:J

.field public legacyResultType:Ljava/lang/String;

.field public legacyServerInitialTokens:J

.field public legacyStreamType:Ljava/lang/String;

.field public legacyTokenUnit:I

.field public logLevel:I

.field public protocol:I

.field public requestFormat:I

.field public responseFormat:I

.field public securityLabel:Ljava/lang/String;

.field public securityLevel:I

.field public serverLogging:I

.field public serverStreaming:Z

.field public streamType:Ljava/lang/String;

.field public uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4415
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4416
    invoke-virtual {p0}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->clear()Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    .line 4417
    return-void
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;
    .locals 2

    .prologue
    .line 4330
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    if-nez v0, :cond_1

    .line 4331
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 4333
    :try_start_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    if-nez v0, :cond_0

    .line 4334
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    sput-object v0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    .line 4336
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4338
    :cond_1
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    return-object v0

    .line 4336
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4863
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 4857
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/16 v3, 0x100

    const/4 v2, 0x0

    .line 4420
    iput v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->protocol:I

    .line 4421
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->deadline:D

    .line 4422
    iput-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->duplicateSuppression:Z

    .line 4423
    iput-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->failFast:Z

    .line 4424
    iput-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->endUserCredsRequested:Z

    .line 4425
    iput v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->clientLogging:I

    .line 4426
    iput v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->serverLogging:I

    .line 4427
    iput v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->securityLevel:I

    .line 4428
    iput v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->responseFormat:I

    .line 4429
    iput v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->requestFormat:I

    .line 4430
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->streamType:Ljava/lang/String;

    .line 4431
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->securityLabel:Ljava/lang/String;

    .line 4432
    iput-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->clientStreaming:Z

    .line 4433
    iput-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->serverStreaming:Z

    .line 4434
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyStreamType:Ljava/lang/String;

    .line 4435
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyResultType:Ljava/lang/String;

    .line 4436
    iput-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->goLegacyChannelApi:Z

    .line 4437
    iput-wide v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyClientInitialTokens:J

    .line 4438
    iput-wide v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyServerInitialTokens:J

    .line 4439
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyTokenUnit:I

    .line 4440
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->logLevel:I

    .line 4441
    iput-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->deprecated:Z

    .line 4442
    iput v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->idempotencyLevel:I

    .line 4443
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    .line 4444
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 4445
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->cachedSize:I

    .line 4446
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 12

    .prologue
    const-wide/16 v10, -0x1

    const/16 v8, 0x100

    .line 4535
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v2

    .line 4536
    .local v2, "size":I
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->protocol:I

    if-eqz v3, :cond_0

    .line 4537
    const/4 v3, 0x7

    iget v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->protocol:I

    .line 4538
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 4540
    :cond_0
    iget-wide v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->deadline:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    .line 4541
    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    .line 4542
    const/16 v3, 0x8

    iget-wide v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->deadline:D

    .line 4543
    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v3

    add-int/2addr v2, v3

    .line 4545
    :cond_1
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->duplicateSuppression:Z

    if-eqz v3, :cond_2

    .line 4546
    const/16 v3, 0x9

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->duplicateSuppression:Z

    .line 4547
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 4549
    :cond_2
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->failFast:Z

    if-eqz v3, :cond_3

    .line 4550
    const/16 v3, 0xa

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->failFast:Z

    .line 4551
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 4553
    :cond_3
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->clientLogging:I

    if-eq v3, v8, :cond_4

    .line 4554
    const/16 v3, 0xb

    iget v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->clientLogging:I

    .line 4555
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeSInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 4557
    :cond_4
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->serverLogging:I

    if-eq v3, v8, :cond_5

    .line 4558
    const/16 v3, 0xc

    iget v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->serverLogging:I

    .line 4559
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeSInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 4561
    :cond_5
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->securityLevel:I

    if-eqz v3, :cond_6

    .line 4562
    const/16 v3, 0xd

    iget v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->securityLevel:I

    .line 4563
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 4565
    :cond_6
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->responseFormat:I

    if-eqz v3, :cond_7

    .line 4566
    const/16 v3, 0xf

    iget v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->responseFormat:I

    .line 4567
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 4569
    :cond_7
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->requestFormat:I

    if-eqz v3, :cond_8

    .line 4570
    const/16 v3, 0x11

    iget v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->requestFormat:I

    .line 4571
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 4573
    :cond_8
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->streamType:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->streamType:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 4574
    const/16 v3, 0x12

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->streamType:Ljava/lang/String;

    .line 4575
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4577
    :cond_9
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->securityLabel:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->securityLabel:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 4578
    const/16 v3, 0x13

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->securityLabel:Ljava/lang/String;

    .line 4579
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4581
    :cond_a
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->clientStreaming:Z

    if-eqz v3, :cond_b

    .line 4582
    const/16 v3, 0x14

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->clientStreaming:Z

    .line 4583
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 4585
    :cond_b
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->serverStreaming:Z

    if-eqz v3, :cond_c

    .line 4586
    const/16 v3, 0x15

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->serverStreaming:Z

    .line 4587
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 4589
    :cond_c
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyStreamType:Ljava/lang/String;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyStreamType:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 4590
    const/16 v3, 0x16

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyStreamType:Ljava/lang/String;

    .line 4591
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4593
    :cond_d
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyResultType:Ljava/lang/String;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyResultType:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 4594
    const/16 v3, 0x17

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyResultType:Ljava/lang/String;

    .line 4595
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4597
    :cond_e
    iget-wide v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyClientInitialTokens:J

    cmp-long v3, v4, v10

    if-eqz v3, :cond_f

    .line 4598
    const/16 v3, 0x18

    iget-wide v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyClientInitialTokens:J

    .line 4599
    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 4601
    :cond_f
    iget-wide v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyServerInitialTokens:J

    cmp-long v3, v4, v10

    if-eqz v3, :cond_10

    .line 4602
    const/16 v3, 0x19

    iget-wide v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyServerInitialTokens:J

    .line 4603
    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 4605
    :cond_10
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->endUserCredsRequested:Z

    if-eqz v3, :cond_11

    .line 4606
    const/16 v3, 0x1a

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->endUserCredsRequested:Z

    .line 4607
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 4609
    :cond_11
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->logLevel:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_12

    .line 4610
    const/16 v3, 0x1b

    iget v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->logLevel:I

    .line 4611
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 4613
    :cond_12
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyTokenUnit:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_13

    .line 4614
    const/16 v3, 0x1c

    iget v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyTokenUnit:I

    .line 4615
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 4617
    :cond_13
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->goLegacyChannelApi:Z

    if-eqz v3, :cond_14

    .line 4618
    const/16 v3, 0x1d

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->goLegacyChannelApi:Z

    .line 4619
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 4621
    :cond_14
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->deprecated:Z

    if-eqz v3, :cond_15

    .line 4622
    const/16 v3, 0x21

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->deprecated:Z

    .line 4623
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 4625
    :cond_15
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->idempotencyLevel:I

    if-eqz v3, :cond_16

    .line 4626
    const/16 v3, 0x22

    iget v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->idempotencyLevel:I

    .line 4627
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 4629
    :cond_16
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v3, v3

    if-lez v3, :cond_18

    .line 4630
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v3, v3

    if-ge v1, v3, :cond_18

    .line 4631
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    aget-object v0, v3, v1

    .line 4632
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    if-eqz v0, :cond_17

    .line 4633
    const/16 v3, 0x3e7

    .line 4634
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4630
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4638
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    .end local v1    # "i":I
    :cond_18
    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;
    .locals 10
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 4646
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v4

    .line 4647
    .local v4, "tag":I
    sparse-switch v4, :sswitch_data_0

    .line 4651
    invoke-super {p0, p1, v4}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 4652
    :sswitch_0
    return-object p0

    .line 4657
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 4658
    .local v2, "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    .line 4659
    .local v5, "value":I
    packed-switch v5, :pswitch_data_0

    .line 4665
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 4666
    invoke-virtual {p0, p1, v4}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 4662
    :pswitch_0
    iput v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->protocol:I

    goto :goto_0

    .line 4672
    .end local v2    # "initialPos":I
    .end local v5    # "value":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->deadline:D

    goto :goto_0

    .line 4676
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->duplicateSuppression:Z

    goto :goto_0

    .line 4680
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->failFast:Z

    goto :goto_0

    .line 4684
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readSInt32()I

    move-result v7

    iput v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->clientLogging:I

    goto :goto_0

    .line 4688
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readSInt32()I

    move-result v7

    iput v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->serverLogging:I

    goto :goto_0

    .line 4692
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 4693
    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    .line 4694
    .restart local v5    # "value":I
    packed-switch v5, :pswitch_data_1

    .line 4702
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 4703
    invoke-virtual {p0, p1, v4}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 4699
    :pswitch_1
    iput v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->securityLevel:I

    goto :goto_0

    .line 4709
    .end local v2    # "initialPos":I
    .end local v5    # "value":I
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 4710
    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    .line 4711
    .restart local v5    # "value":I
    packed-switch v5, :pswitch_data_2

    .line 4717
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 4718
    invoke-virtual {p0, p1, v4}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 4714
    :pswitch_2
    iput v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->responseFormat:I

    goto :goto_0

    .line 4724
    .end local v2    # "initialPos":I
    .end local v5    # "value":I
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 4725
    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    .line 4726
    .restart local v5    # "value":I
    packed-switch v5, :pswitch_data_3

    .line 4732
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 4733
    invoke-virtual {p0, p1, v4}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 4729
    :pswitch_3
    iput v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->requestFormat:I

    goto/16 :goto_0

    .line 4739
    .end local v2    # "initialPos":I
    .end local v5    # "value":I
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->streamType:Ljava/lang/String;

    goto/16 :goto_0

    .line 4743
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->securityLabel:Ljava/lang/String;

    goto/16 :goto_0

    .line 4747
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->clientStreaming:Z

    goto/16 :goto_0

    .line 4751
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->serverStreaming:Z

    goto/16 :goto_0

    .line 4755
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyStreamType:Ljava/lang/String;

    goto/16 :goto_0

    .line 4759
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyResultType:Ljava/lang/String;

    goto/16 :goto_0

    .line 4763
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyClientInitialTokens:J

    goto/16 :goto_0

    .line 4767
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyServerInitialTokens:J

    goto/16 :goto_0

    .line 4771
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->endUserCredsRequested:Z

    goto/16 :goto_0

    .line 4775
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 4776
    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    .line 4777
    .restart local v5    # "value":I
    packed-switch v5, :pswitch_data_4

    .line 4786
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 4787
    invoke-virtual {p0, p1, v4}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 4783
    :pswitch_4
    iput v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->logLevel:I

    goto/16 :goto_0

    .line 4793
    .end local v2    # "initialPos":I
    .end local v5    # "value":I
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 4794
    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    .line 4795
    .restart local v5    # "value":I
    packed-switch v5, :pswitch_data_5

    .line 4801
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 4802
    invoke-virtual {p0, p1, v4}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 4798
    :pswitch_5
    iput v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyTokenUnit:I

    goto/16 :goto_0

    .line 4808
    .end local v2    # "initialPos":I
    .end local v5    # "value":I
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->goLegacyChannelApi:Z

    goto/16 :goto_0

    .line 4812
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->deprecated:Z

    goto/16 :goto_0

    .line 4816
    :sswitch_17
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 4817
    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    .line 4818
    .restart local v5    # "value":I
    packed-switch v5, :pswitch_data_6

    .line 4825
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 4826
    invoke-virtual {p0, p1, v4}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 4822
    :pswitch_6
    iput v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->idempotencyLevel:I

    goto/16 :goto_0

    .line 4832
    .end local v2    # "initialPos":I
    .end local v5    # "value":I
    :sswitch_18
    const/16 v7, 0x1f3a

    .line 4833
    invoke-static {p1, v7}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4834
    .local v0, "arrayLength":I
    iget-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-nez v7, :cond_2

    move v1, v6

    .line 4835
    .local v1, "i":I
    :goto_1
    add-int v7, v1, v0

    new-array v3, v7, [Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    .line 4837
    .local v3, "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    if-eqz v1, :cond_1

    .line 4838
    iget-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-static {v7, v6, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4840
    :cond_1
    :goto_2
    array-length v7, v3

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_3

    .line 4841
    new-instance v7, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-direct {v7}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;-><init>()V

    aput-object v7, v3, v1

    .line 4842
    aget-object v7, v3, v1

    invoke-virtual {p1, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 4843
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4840
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4834
    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    :cond_2
    iget-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v1, v7

    goto :goto_1

    .line 4846
    .restart local v1    # "i":I
    .restart local v3    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    :cond_3
    new-instance v7, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-direct {v7}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;-><init>()V

    aput-object v7, v3, v1

    .line 4847
    aget-object v7, v3, v1

    invoke-virtual {p1, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 4848
    iput-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    goto/16 :goto_0

    .line 4647
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x38 -> :sswitch_1
        0x41 -> :sswitch_2
        0x48 -> :sswitch_3
        0x50 -> :sswitch_4
        0x58 -> :sswitch_5
        0x60 -> :sswitch_6
        0x68 -> :sswitch_7
        0x78 -> :sswitch_8
        0x88 -> :sswitch_9
        0x92 -> :sswitch_a
        0x9a -> :sswitch_b
        0xa0 -> :sswitch_c
        0xa8 -> :sswitch_d
        0xb2 -> :sswitch_e
        0xba -> :sswitch_f
        0xc0 -> :sswitch_10
        0xc8 -> :sswitch_11
        0xd0 -> :sswitch_12
        0xd8 -> :sswitch_13
        0xe0 -> :sswitch_14
        0xe8 -> :sswitch_15
        0x108 -> :sswitch_16
        0x110 -> :sswitch_17
        0x1f3a -> :sswitch_18
    .end sparse-switch

    .line 4659
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 4694
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 4711
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 4726
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 4777
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 4795
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
    .end packed-switch

    .line 4818
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4282
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 10
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, -0x1

    const/16 v6, 0x100

    .line 4452
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->protocol:I

    if-eqz v2, :cond_0

    .line 4453
    const/4 v2, 0x7

    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->protocol:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4455
    :cond_0
    iget-wide v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->deadline:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 4456
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 4457
    const/16 v2, 0x8

    iget-wide v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->deadline:D

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 4459
    :cond_1
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->duplicateSuppression:Z

    if-eqz v2, :cond_2

    .line 4460
    const/16 v2, 0x9

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->duplicateSuppression:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4462
    :cond_2
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->failFast:Z

    if-eqz v2, :cond_3

    .line 4463
    const/16 v2, 0xa

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->failFast:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4465
    :cond_3
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->clientLogging:I

    if-eq v2, v6, :cond_4

    .line 4466
    const/16 v2, 0xb

    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->clientLogging:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSInt32(II)V

    .line 4468
    :cond_4
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->serverLogging:I

    if-eq v2, v6, :cond_5

    .line 4469
    const/16 v2, 0xc

    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->serverLogging:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSInt32(II)V

    .line 4471
    :cond_5
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->securityLevel:I

    if-eqz v2, :cond_6

    .line 4472
    const/16 v2, 0xd

    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->securityLevel:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4474
    :cond_6
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->responseFormat:I

    if-eqz v2, :cond_7

    .line 4475
    const/16 v2, 0xf

    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->responseFormat:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4477
    :cond_7
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->requestFormat:I

    if-eqz v2, :cond_8

    .line 4478
    const/16 v2, 0x11

    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->requestFormat:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4480
    :cond_8
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->streamType:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->streamType:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 4481
    const/16 v2, 0x12

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->streamType:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4483
    :cond_9
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->securityLabel:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->securityLabel:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 4484
    const/16 v2, 0x13

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->securityLabel:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4486
    :cond_a
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->clientStreaming:Z

    if-eqz v2, :cond_b

    .line 4487
    const/16 v2, 0x14

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->clientStreaming:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4489
    :cond_b
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->serverStreaming:Z

    if-eqz v2, :cond_c

    .line 4490
    const/16 v2, 0x15

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->serverStreaming:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4492
    :cond_c
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyStreamType:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyStreamType:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 4493
    const/16 v2, 0x16

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyStreamType:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4495
    :cond_d
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyResultType:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyResultType:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 4496
    const/16 v2, 0x17

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyResultType:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4498
    :cond_e
    iget-wide v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyClientInitialTokens:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_f

    .line 4499
    const/16 v2, 0x18

    iget-wide v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyClientInitialTokens:J

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 4501
    :cond_f
    iget-wide v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyServerInitialTokens:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_10

    .line 4502
    const/16 v2, 0x19

    iget-wide v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyServerInitialTokens:J

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 4504
    :cond_10
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->endUserCredsRequested:Z

    if-eqz v2, :cond_11

    .line 4505
    const/16 v2, 0x1a

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->endUserCredsRequested:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4507
    :cond_11
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->logLevel:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_12

    .line 4508
    const/16 v2, 0x1b

    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->logLevel:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4510
    :cond_12
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyTokenUnit:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_13

    .line 4511
    const/16 v2, 0x1c

    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyTokenUnit:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4513
    :cond_13
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->goLegacyChannelApi:Z

    if-eqz v2, :cond_14

    .line 4514
    const/16 v2, 0x1d

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->goLegacyChannelApi:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4516
    :cond_14
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->deprecated:Z

    if-eqz v2, :cond_15

    .line 4517
    const/16 v2, 0x21

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->deprecated:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4519
    :cond_15
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->idempotencyLevel:I

    if-eqz v2, :cond_16

    .line 4520
    const/16 v2, 0x22

    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->idempotencyLevel:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4522
    :cond_16
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v2, v2

    if-lez v2, :cond_18

    .line 4523
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v2, v2

    if-ge v1, v2, :cond_18

    .line 4524
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    aget-object v0, v2, v1

    .line 4525
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    if-eqz v0, :cond_17

    .line 4526
    const/16 v2, 0x3e7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 4523
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4530
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    .end local v1    # "i":I
    :cond_18
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 4531
    return-void
.end method
