.class public final Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AtHomePowerControlAction"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;


# instance fields
.field private bitField0_:I

.field private level_:I

.field private target_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11367
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 11368
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->clear()Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;

    .line 11369
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;
    .locals 2

    .prologue
    .line 11313
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;

    if-nez v0, :cond_1

    .line 11314
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 11316
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;

    if-nez v0, :cond_0

    .line 11317
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;

    .line 11319
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11321
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;

    return-object v0

    .line 11319
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11442
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 11436
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11372
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->bitField0_:I

    .line 11373
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->level_:I

    .line 11374
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->target_:Ljava/lang/String;

    .line 11375
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->cachedSize:I

    .line 11376
    return-object p0
.end method

.method public clearLevel()Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;
    .locals 1

    .prologue
    .line 11340
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->level_:I

    .line 11341
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->bitField0_:I

    .line 11342
    return-object p0
.end method

.method public clearTarget()Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;
    .locals 1

    .prologue
    .line 11362
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->target_:Ljava/lang/String;

    .line 11363
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->bitField0_:I

    .line 11364
    return-object p0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 11329
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->level_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 11392
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 11393
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 11394
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->level_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11397
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 11398
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->target_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11401
    :cond_1
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->cachedSize:I

    .line 11402
    return v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11348
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->target_:Ljava/lang/String;

    return-object v0
.end method

.method public hasLevel()Z
    .locals 1

    .prologue
    .line 11337
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTarget()Z
    .locals 1

    .prologue
    .line 11359
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->bitField0_:I

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
    .line 11307
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11410
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 11411
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 11415
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 11416
    :sswitch_0
    return-object p0

    .line 11421
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->level_:I

    .line 11422
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->bitField0_:I

    goto :goto_0

    .line 11426
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->target_:Ljava/lang/String;

    .line 11427
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->bitField0_:I

    goto :goto_0

    .line 11411
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setLevel(I)Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 11332
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->level_:I

    .line 11333
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->bitField0_:I

    .line 11334
    return-object p0
.end method

.method public setTarget(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 11351
    if-nez p1, :cond_0

    .line 11352
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11354
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->target_:Ljava/lang/String;

    .line 11355
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->bitField0_:I

    .line 11356
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
    .line 11382
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 11383
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->level_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11385
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 11386
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AtHomePowerControlAction;->target_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 11388
    :cond_1
    return-void
.end method
