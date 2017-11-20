.class public final Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ModularActionProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ModularActionProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContactReferenceArgumentPrompt"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;


# instance fields
.field public endpointInstanceDisambiguationSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

.field public endpointTypeDisambiguationSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

.field public getNameSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

.field public noEndpointSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

.field public personDisambiguationSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

.field public rememberCanonicalRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

.field public rememberRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

.field public whoIsCanonicalRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

.field public whoIsRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4420
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 4421
    invoke-virtual {p0}, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->clear()Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;

    .line 4422
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;
    .locals 2

    .prologue
    .line 4382
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;

    if-nez v0, :cond_1

    .line 4383
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 4385
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;

    if-nez v0, :cond_0

    .line 4386
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;

    sput-object v0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;

    .line 4388
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4390
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;

    return-object v0

    .line 4388
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4810
    new-instance v0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;

    invoke-direct {v0}, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 4804
    new-instance v0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;

    invoke-direct {v0}, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;
    .locals 1

    .prologue
    .line 4425
    invoke-static {}, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->emptyArray()[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->getNameSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    .line 4426
    invoke-static {}, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->emptyArray()[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->whoIsRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    .line 4427
    invoke-static {}, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->emptyArray()[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->whoIsCanonicalRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    .line 4428
    invoke-static {}, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->emptyArray()[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->rememberRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    .line 4429
    invoke-static {}, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->emptyArray()[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->rememberCanonicalRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    .line 4430
    invoke-static {}, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->emptyArray()[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->personDisambiguationSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    .line 4431
    invoke-static {}, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->emptyArray()[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->endpointTypeDisambiguationSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    .line 4432
    invoke-static {}, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->emptyArray()[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->endpointInstanceDisambiguationSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    .line 4433
    invoke-static {}, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->emptyArray()[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->noEndpointSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    .line 4434
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->cachedSize:I

    .line 4435
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 4517
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 4518
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->getNameSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->getNameSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 4519
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->getNameSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 4520
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->getNameSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    aget-object v0, v3, v1

    .line 4521
    .local v0, "element":Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    if-eqz v0, :cond_0

    .line 4522
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4519
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4527
    .end local v0    # "element":Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    .end local v1    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->whoIsRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->whoIsRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    array-length v3, v3

    if-lez v3, :cond_3

    .line 4528
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->whoIsRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 4529
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->whoIsRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    aget-object v0, v3, v1

    .line 4530
    .restart local v0    # "element":Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    if-eqz v0, :cond_2

    .line 4531
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4528
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4536
    .end local v0    # "element":Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    .end local v1    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->whoIsCanonicalRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->whoIsCanonicalRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    array-length v3, v3

    if-lez v3, :cond_5

    .line 4537
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->whoIsCanonicalRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    array-length v3, v3

    if-ge v1, v3, :cond_5

    .line 4538
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->whoIsCanonicalRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    aget-object v0, v3, v1

    .line 4539
    .restart local v0    # "element":Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    if-eqz v0, :cond_4

    .line 4540
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4537
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4545
    .end local v0    # "element":Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    .end local v1    # "i":I
    :cond_5
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->rememberRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->rememberRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    array-length v3, v3

    if-lez v3, :cond_7

    .line 4546
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->rememberRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    array-length v3, v3

    if-ge v1, v3, :cond_7

    .line 4547
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->rememberRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    aget-object v0, v3, v1

    .line 4548
    .restart local v0    # "element":Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    if-eqz v0, :cond_6

    .line 4549
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4546
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 4554
    .end local v0    # "element":Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    .end local v1    # "i":I
    :cond_7
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->rememberCanonicalRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->rememberCanonicalRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    array-length v3, v3

    if-lez v3, :cond_9

    .line 4555
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->rememberCanonicalRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    array-length v3, v3

    if-ge v1, v3, :cond_9

    .line 4556
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->rememberCanonicalRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    aget-object v0, v3, v1

    .line 4557
    .restart local v0    # "element":Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    if-eqz v0, :cond_8

    .line 4558
    const/4 v3, 0x5

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4555
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 4563
    .end local v0    # "element":Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    .end local v1    # "i":I
    :cond_9
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->personDisambiguationSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->personDisambiguationSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    array-length v3, v3

    if-lez v3, :cond_b

    .line 4564
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->personDisambiguationSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    array-length v3, v3

    if-ge v1, v3, :cond_b

    .line 4565
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->personDisambiguationSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    aget-object v0, v3, v1

    .line 4566
    .restart local v0    # "element":Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    if-eqz v0, :cond_a

    .line 4567
    const/4 v3, 0x6

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4564
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 4572
    .end local v0    # "element":Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    .end local v1    # "i":I
    :cond_b
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->endpointTypeDisambiguationSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->endpointTypeDisambiguationSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    array-length v3, v3

    if-lez v3, :cond_d

    .line 4573
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->endpointTypeDisambiguationSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    array-length v3, v3

    if-ge v1, v3, :cond_d

    .line 4574
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->endpointTypeDisambiguationSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    aget-object v0, v3, v1

    .line 4575
    .restart local v0    # "element":Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    if-eqz v0, :cond_c

    .line 4576
    const/4 v3, 0x7

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4573
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 4581
    .end local v0    # "element":Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    .end local v1    # "i":I
    :cond_d
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->endpointInstanceDisambiguationSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->endpointInstanceDisambiguationSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    array-length v3, v3

    if-lez v3, :cond_f

    .line 4582
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_7
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->endpointInstanceDisambiguationSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    array-length v3, v3

    if-ge v1, v3, :cond_f

    .line 4583
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->endpointInstanceDisambiguationSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    aget-object v0, v3, v1

    .line 4584
    .restart local v0    # "element":Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    if-eqz v0, :cond_e

    .line 4585
    const/16 v3, 0x8

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4582
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4590
    .end local v0    # "element":Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    .end local v1    # "i":I
    :cond_f
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->noEndpointSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->noEndpointSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    array-length v3, v3

    if-lez v3, :cond_11

    .line 4591
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_8
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->noEndpointSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    array-length v3, v3

    if-ge v1, v3, :cond_11

    .line 4592
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->noEndpointSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    aget-object v0, v3, v1

    .line 4593
    .restart local v0    # "element":Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    if-eqz v0, :cond_10

    .line 4594
    const/16 v3, 0x9

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4591
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 4599
    .end local v0    # "element":Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    .end local v1    # "i":I
    :cond_11
    iput v2, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->cachedSize:I

    .line 4600
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
    .line 4376
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 4608
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 4609
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 4613
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4614
    :sswitch_0
    return-object p0

    .line 4619
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4621
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->getNameSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    if-nez v5, :cond_2

    move v1, v4

    .line 4622
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    .line 4624
    .local v2, "newArray":[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    if-eqz v1, :cond_1

    .line 4625
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->getNameSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4627
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 4628
    new-instance v5, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    invoke-direct {v5}, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;-><init>()V

    aput-object v5, v2, v1

    .line 4629
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4630
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4627
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4621
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->getNameSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    array-length v1, v5

    goto :goto_1

    .line 4633
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    :cond_3
    new-instance v5, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    invoke-direct {v5}, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;-><init>()V

    aput-object v5, v2, v1

    .line 4634
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4635
    iput-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->getNameSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    goto :goto_0

    .line 4639
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    :sswitch_2
    const/16 v5, 0x12

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4641
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->whoIsRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    if-nez v5, :cond_5

    move v1, v4

    .line 4642
    .restart local v1    # "i":I
    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    .line 4644
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    if-eqz v1, :cond_4

    .line 4645
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->whoIsRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4647
    :cond_4
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_6

    .line 4648
    new-instance v5, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    invoke-direct {v5}, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;-><init>()V

    aput-object v5, v2, v1

    .line 4649
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4650
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4647
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 4641
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    :cond_5
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->whoIsRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    array-length v1, v5

    goto :goto_3

    .line 4653
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    :cond_6
    new-instance v5, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    invoke-direct {v5}, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;-><init>()V

    aput-object v5, v2, v1

    .line 4654
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4655
    iput-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->whoIsRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    goto/16 :goto_0

    .line 4659
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    :sswitch_3
    const/16 v5, 0x1a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4661
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->whoIsCanonicalRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    if-nez v5, :cond_8

    move v1, v4

    .line 4662
    .restart local v1    # "i":I
    :goto_5
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    .line 4664
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    if-eqz v1, :cond_7

    .line 4665
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->whoIsCanonicalRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4667
    :cond_7
    :goto_6
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_9

    .line 4668
    new-instance v5, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    invoke-direct {v5}, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;-><init>()V

    aput-object v5, v2, v1

    .line 4669
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4670
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4667
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 4661
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    :cond_8
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->whoIsCanonicalRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    array-length v1, v5

    goto :goto_5

    .line 4673
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    :cond_9
    new-instance v5, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    invoke-direct {v5}, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;-><init>()V

    aput-object v5, v2, v1

    .line 4674
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4675
    iput-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->whoIsCanonicalRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    goto/16 :goto_0

    .line 4679
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    :sswitch_4
    const/16 v5, 0x22

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4681
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->rememberRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    if-nez v5, :cond_b

    move v1, v4

    .line 4682
    .restart local v1    # "i":I
    :goto_7
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    .line 4684
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    if-eqz v1, :cond_a

    .line 4685
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->rememberRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4687
    :cond_a
    :goto_8
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_c

    .line 4688
    new-instance v5, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    invoke-direct {v5}, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;-><init>()V

    aput-object v5, v2, v1

    .line 4689
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4690
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4687
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 4681
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    :cond_b
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->rememberRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    array-length v1, v5

    goto :goto_7

    .line 4693
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    :cond_c
    new-instance v5, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    invoke-direct {v5}, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;-><init>()V

    aput-object v5, v2, v1

    .line 4694
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4695
    iput-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->rememberRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    goto/16 :goto_0

    .line 4699
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    :sswitch_5
    const/16 v5, 0x2a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4701
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->rememberCanonicalRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    if-nez v5, :cond_e

    move v1, v4

    .line 4702
    .restart local v1    # "i":I
    :goto_9
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    .line 4704
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    if-eqz v1, :cond_d

    .line 4705
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->rememberCanonicalRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4707
    :cond_d
    :goto_a
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_f

    .line 4708
    new-instance v5, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    invoke-direct {v5}, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;-><init>()V

    aput-object v5, v2, v1

    .line 4709
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4710
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4707
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 4701
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    :cond_e
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->rememberCanonicalRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    array-length v1, v5

    goto :goto_9

    .line 4713
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    :cond_f
    new-instance v5, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    invoke-direct {v5}, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;-><init>()V

    aput-object v5, v2, v1

    .line 4714
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4715
    iput-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->rememberCanonicalRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    goto/16 :goto_0

    .line 4719
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    :sswitch_6
    const/16 v5, 0x32

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4721
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->personDisambiguationSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    if-nez v5, :cond_11

    move v1, v4

    .line 4722
    .restart local v1    # "i":I
    :goto_b
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    .line 4724
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    if-eqz v1, :cond_10

    .line 4725
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->personDisambiguationSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4727
    :cond_10
    :goto_c
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_12

    .line 4728
    new-instance v5, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    invoke-direct {v5}, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;-><init>()V

    aput-object v5, v2, v1

    .line 4729
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4730
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4727
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 4721
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    :cond_11
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->personDisambiguationSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    array-length v1, v5

    goto :goto_b

    .line 4733
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    :cond_12
    new-instance v5, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    invoke-direct {v5}, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;-><init>()V

    aput-object v5, v2, v1

    .line 4734
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4735
    iput-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->personDisambiguationSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    goto/16 :goto_0

    .line 4739
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    :sswitch_7
    const/16 v5, 0x3a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4741
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->endpointTypeDisambiguationSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    if-nez v5, :cond_14

    move v1, v4

    .line 4742
    .restart local v1    # "i":I
    :goto_d
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    .line 4744
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    if-eqz v1, :cond_13

    .line 4745
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->endpointTypeDisambiguationSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4747
    :cond_13
    :goto_e
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_15

    .line 4748
    new-instance v5, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    invoke-direct {v5}, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;-><init>()V

    aput-object v5, v2, v1

    .line 4749
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4750
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4747
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 4741
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    :cond_14
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->endpointTypeDisambiguationSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    array-length v1, v5

    goto :goto_d

    .line 4753
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    :cond_15
    new-instance v5, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    invoke-direct {v5}, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;-><init>()V

    aput-object v5, v2, v1

    .line 4754
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4755
    iput-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->endpointTypeDisambiguationSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    goto/16 :goto_0

    .line 4759
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    :sswitch_8
    const/16 v5, 0x42

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4761
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->endpointInstanceDisambiguationSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    if-nez v5, :cond_17

    move v1, v4

    .line 4762
    .restart local v1    # "i":I
    :goto_f
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    .line 4764
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    if-eqz v1, :cond_16

    .line 4765
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->endpointInstanceDisambiguationSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4767
    :cond_16
    :goto_10
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_18

    .line 4768
    new-instance v5, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    invoke-direct {v5}, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;-><init>()V

    aput-object v5, v2, v1

    .line 4769
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4770
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4767
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 4761
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    :cond_17
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->endpointInstanceDisambiguationSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    array-length v1, v5

    goto :goto_f

    .line 4773
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    :cond_18
    new-instance v5, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    invoke-direct {v5}, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;-><init>()V

    aput-object v5, v2, v1

    .line 4774
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4775
    iput-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->endpointInstanceDisambiguationSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    goto/16 :goto_0

    .line 4779
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    :sswitch_9
    const/16 v5, 0x4a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4781
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->noEndpointSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    if-nez v5, :cond_1a

    move v1, v4

    .line 4782
    .restart local v1    # "i":I
    :goto_11
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    .line 4784
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    if-eqz v1, :cond_19

    .line 4785
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->noEndpointSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4787
    :cond_19
    :goto_12
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_1b

    .line 4788
    new-instance v5, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    invoke-direct {v5}, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;-><init>()V

    aput-object v5, v2, v1

    .line 4789
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4790
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4787
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 4781
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    :cond_1a
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->noEndpointSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    array-length v1, v5

    goto :goto_11

    .line 4793
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    :cond_1b
    new-instance v5, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    invoke-direct {v5}, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;-><init>()V

    aput-object v5, v2, v1

    .line 4794
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4795
    iput-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->noEndpointSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    goto/16 :goto_0

    .line 4609
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
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
    .line 4441
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->getNameSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->getNameSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 4442
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->getNameSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 4443
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->getNameSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    aget-object v0, v2, v1

    .line 4444
    .local v0, "element":Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    if-eqz v0, :cond_0

    .line 4445
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4442
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4449
    .end local v0    # "element":Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->whoIsRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->whoIsRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 4450
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->whoIsRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 4451
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->whoIsRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    aget-object v0, v2, v1

    .line 4452
    .restart local v0    # "element":Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    if-eqz v0, :cond_2

    .line 4453
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4450
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4457
    .end local v0    # "element":Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    .end local v1    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->whoIsCanonicalRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->whoIsCanonicalRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    array-length v2, v2

    if-lez v2, :cond_5

    .line 4458
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->whoIsCanonicalRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 4459
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->whoIsCanonicalRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    aget-object v0, v2, v1

    .line 4460
    .restart local v0    # "element":Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    if-eqz v0, :cond_4

    .line 4461
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4458
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4465
    .end local v0    # "element":Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    .end local v1    # "i":I
    :cond_5
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->rememberRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->rememberRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    array-length v2, v2

    if-lez v2, :cond_7

    .line 4466
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->rememberRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    .line 4467
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->rememberRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    aget-object v0, v2, v1

    .line 4468
    .restart local v0    # "element":Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    if-eqz v0, :cond_6

    .line 4469
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4466
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 4473
    .end local v0    # "element":Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    .end local v1    # "i":I
    :cond_7
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->rememberCanonicalRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->rememberCanonicalRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    array-length v2, v2

    if-lez v2, :cond_9

    .line 4474
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->rememberCanonicalRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    array-length v2, v2

    if-ge v1, v2, :cond_9

    .line 4475
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->rememberCanonicalRelationshipSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    aget-object v0, v2, v1

    .line 4476
    .restart local v0    # "element":Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    if-eqz v0, :cond_8

    .line 4477
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4474
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 4481
    .end local v0    # "element":Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    .end local v1    # "i":I
    :cond_9
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->personDisambiguationSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->personDisambiguationSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    array-length v2, v2

    if-lez v2, :cond_b

    .line 4482
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->personDisambiguationSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    array-length v2, v2

    if-ge v1, v2, :cond_b

    .line 4483
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->personDisambiguationSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    aget-object v0, v2, v1

    .line 4484
    .restart local v0    # "element":Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    if-eqz v0, :cond_a

    .line 4485
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4482
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 4489
    .end local v0    # "element":Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    .end local v1    # "i":I
    :cond_b
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->endpointTypeDisambiguationSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->endpointTypeDisambiguationSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    array-length v2, v2

    if-lez v2, :cond_d

    .line 4490
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->endpointTypeDisambiguationSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    array-length v2, v2

    if-ge v1, v2, :cond_d

    .line 4491
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->endpointTypeDisambiguationSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    aget-object v0, v2, v1

    .line 4492
    .restart local v0    # "element":Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    if-eqz v0, :cond_c

    .line 4493
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4490
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 4497
    .end local v0    # "element":Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    .end local v1    # "i":I
    :cond_d
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->endpointInstanceDisambiguationSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->endpointInstanceDisambiguationSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    array-length v2, v2

    if-lez v2, :cond_f

    .line 4498
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_7
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->endpointInstanceDisambiguationSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    array-length v2, v2

    if-ge v1, v2, :cond_f

    .line 4499
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->endpointInstanceDisambiguationSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    aget-object v0, v2, v1

    .line 4500
    .restart local v0    # "element":Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    if-eqz v0, :cond_e

    .line 4501
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4498
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4505
    .end local v0    # "element":Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    .end local v1    # "i":I
    :cond_f
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->noEndpointSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->noEndpointSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    array-length v2, v2

    if-lez v2, :cond_11

    .line 4506
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_8
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->noEndpointSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    array-length v2, v2

    if-ge v1, v2, :cond_11

    .line 4507
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;->noEndpointSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    aget-object v0, v2, v1

    .line 4508
    .restart local v0    # "element":Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    if-eqz v0, :cond_10

    .line 4509
    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4506
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 4513
    .end local v0    # "element":Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    .end local v1    # "i":I
    :cond_11
    return-void
.end method
