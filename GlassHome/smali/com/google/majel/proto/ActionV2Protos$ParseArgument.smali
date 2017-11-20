.class public final Lcom/google/majel/proto/ActionV2Protos$ParseArgument;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParseArgument"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ParseArgument;


# instance fields
.field private bitField0_:I

.field private relation_:Ljava/lang/String;

.field private value_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5372
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 5373
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ParseArgument;->clear()Lcom/google/majel/proto/ActionV2Protos$ParseArgument;

    .line 5374
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$ParseArgument;
    .locals 2

    .prologue
    .line 5315
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$ParseArgument;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ParseArgument;

    if-nez v0, :cond_1

    .line 5316
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 5318
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$ParseArgument;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ParseArgument;

    if-nez v0, :cond_0

    .line 5319
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$ParseArgument;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$ParseArgument;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ParseArgument;

    .line 5321
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5323
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$ParseArgument;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ParseArgument;

    return-object v0

    .line 5321
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ParseArgument;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5447
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$ParseArgument;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$ParseArgument;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$ParseArgument;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ParseArgument;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$ParseArgument;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 5441
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$ParseArgument;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$ParseArgument;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ParseArgument;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$ParseArgument;
    .locals 1

    .prologue
    .line 5377
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ParseArgument;->bitField0_:I

    .line 5378
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ParseArgument;->relation_:Ljava/lang/String;

    .line 5379
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ParseArgument;->value_:Ljava/lang/String;

    .line 5380
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ParseArgument;->cachedSize:I

    .line 5381
    return-object p0
.end method

.method public clearRelation()Lcom/google/majel/proto/ActionV2Protos$ParseArgument;
    .locals 1

    .prologue
    .line 5345
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ParseArgument;->relation_:Ljava/lang/String;

    .line 5346
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ParseArgument;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ParseArgument;->bitField0_:I

    .line 5347
    return-object p0
.end method

.method public clearValue()Lcom/google/majel/proto/ActionV2Protos$ParseArgument;
    .locals 1

    .prologue
    .line 5367
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ParseArgument;->value_:Ljava/lang/String;

    .line 5368
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ParseArgument;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ParseArgument;->bitField0_:I

    .line 5369
    return-object p0
.end method

.method public getRelation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5331
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ParseArgument;->relation_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 5397
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 5398
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$ParseArgument;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 5399
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ParseArgument;->relation_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5402
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$ParseArgument;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 5403
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ParseArgument;->value_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5406
    :cond_1
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ParseArgument;->cachedSize:I

    .line 5407
    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5353
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ParseArgument;->value_:Ljava/lang/String;

    return-object v0
.end method

.method public hasRelation()Z
    .locals 1

    .prologue
    .line 5342
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ParseArgument;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 5364
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ParseArgument;->bitField0_:I

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
    .line 5309
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$ParseArgument;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ParseArgument;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ParseArgument;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5415
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 5416
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 5420
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5421
    :sswitch_0
    return-object p0

    .line 5426
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ParseArgument;->relation_:Ljava/lang/String;

    .line 5427
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$ParseArgument;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$ParseArgument;->bitField0_:I

    goto :goto_0

    .line 5431
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ParseArgument;->value_:Ljava/lang/String;

    .line 5432
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$ParseArgument;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$ParseArgument;->bitField0_:I

    goto :goto_0

    .line 5416
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setRelation(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$ParseArgument;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5334
    if-nez p1, :cond_0

    .line 5335
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5337
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$ParseArgument;->relation_:Ljava/lang/String;

    .line 5338
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ParseArgument;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ParseArgument;->bitField0_:I

    .line 5339
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$ParseArgument;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5356
    if-nez p1, :cond_0

    .line 5357
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5359
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$ParseArgument;->value_:Ljava/lang/String;

    .line 5360
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ParseArgument;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ParseArgument;->bitField0_:I

    .line 5361
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
    .line 5387
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ParseArgument;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 5388
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ParseArgument;->relation_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5390
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ParseArgument;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 5391
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ParseArgument;->value_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5393
    :cond_1
    return-void
.end method
