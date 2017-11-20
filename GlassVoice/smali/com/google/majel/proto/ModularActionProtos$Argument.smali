.class public final Lcom/google/majel/proto/ModularActionProtos$Argument;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ModularActionProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ModularActionProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Argument"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ModularActionProtos$Argument;


# instance fields
.field private bitField0_:I

.field public contactReferenceArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;

.field public dateTimeArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;

.field public documentArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;

.field public genericEntityArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;

.field private hintText_:Ljava/lang/String;

.field private id_:I

.field private label_:Ljava/lang/String;

.field public locationArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$LocationArgument;

.field private purpose_:I

.field public stringArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$StringArgument;

.field private veUiType_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 351
    invoke-virtual {p0}, Lcom/google/majel/proto/ModularActionProtos$Argument;->clear()Lcom/google/majel/proto/ModularActionProtos$Argument;

    .line 352
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ModularActionProtos$Argument;
    .locals 2

    .prologue
    .line 218
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$Argument;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$Argument;

    if-nez v0, :cond_1

    .line 219
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 221
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$Argument;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$Argument;

    if-nez v0, :cond_0

    .line 222
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ModularActionProtos$Argument;

    sput-object v0, Lcom/google/majel/proto/ModularActionProtos$Argument;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$Argument;

    .line 224
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$Argument;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$Argument;

    return-object v0

    .line 224
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$Argument;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 554
    new-instance v0, Lcom/google/majel/proto/ModularActionProtos$Argument;

    invoke-direct {v0}, Lcom/google/majel/proto/ModularActionProtos$Argument;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ModularActionProtos$Argument;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$Argument;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ModularActionProtos$Argument;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 548
    new-instance v0, Lcom/google/majel/proto/ModularActionProtos$Argument;

    invoke-direct {v0}, Lcom/google/majel/proto/ModularActionProtos$Argument;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ModularActionProtos$Argument;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ModularActionProtos$Argument;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 355
    iput v2, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->bitField0_:I

    .line 356
    iput v2, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->id_:I

    .line 357
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->label_:Ljava/lang/String;

    .line 358
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->hintText_:Ljava/lang/String;

    .line 359
    iput v2, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->purpose_:I

    .line 360
    iput v2, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->veUiType_:I

    .line 361
    iput-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->stringArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$StringArgument;

    .line 362
    iput-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->contactReferenceArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;

    .line 363
    iput-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->genericEntityArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;

    .line 364
    iput-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->dateTimeArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;

    .line 365
    iput-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->locationArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$LocationArgument;

    .line 366
    iput-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->documentArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;

    .line 367
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->cachedSize:I

    .line 368
    return-object p0
.end method

.method public clearHintText()Lcom/google/majel/proto/ModularActionProtos$Argument;
    .locals 1

    .prologue
    .line 289
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->hintText_:Ljava/lang/String;

    .line 290
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->bitField0_:I

    .line 291
    return-object p0
.end method

.method public clearId()Lcom/google/majel/proto/ModularActionProtos$Argument;
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->id_:I

    .line 246
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->bitField0_:I

    .line 247
    return-object p0
.end method

.method public clearLabel()Lcom/google/majel/proto/ModularActionProtos$Argument;
    .locals 1

    .prologue
    .line 267
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->label_:Ljava/lang/String;

    .line 268
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->bitField0_:I

    .line 269
    return-object p0
.end method

.method public clearPurpose()Lcom/google/majel/proto/ModularActionProtos$Argument;
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->purpose_:I

    .line 309
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->bitField0_:I

    .line 310
    return-object p0
.end method

.method public clearVeUiType()Lcom/google/majel/proto/ModularActionProtos$Argument;
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->veUiType_:I

    .line 328
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->bitField0_:I

    .line 329
    return-object p0
.end method

.method public getHintText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->hintText_:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->id_:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->label_:Ljava/lang/String;

    return-object v0
.end method

.method public getPurpose()I
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->purpose_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 411
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 412
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 413
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->id_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 416
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 417
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->label_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 420
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_2

    .line 421
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->purpose_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 424
    :cond_2
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 425
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->hintText_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 428
    :cond_3
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 429
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->veUiType_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 432
    :cond_4
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->stringArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$StringArgument;

    if-eqz v1, :cond_5

    .line 433
    const/16 v1, 0x3e8

    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->stringArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$StringArgument;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 436
    :cond_5
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->contactReferenceArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;

    if-eqz v1, :cond_6

    .line 437
    const/16 v1, 0x3e9

    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->contactReferenceArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 440
    :cond_6
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->genericEntityArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;

    if-eqz v1, :cond_7

    .line 441
    const/16 v1, 0x3ea

    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->genericEntityArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 444
    :cond_7
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->dateTimeArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;

    if-eqz v1, :cond_8

    .line 445
    const v1, 0x39c3ea8

    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->dateTimeArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 448
    :cond_8
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->locationArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$LocationArgument;

    if-eqz v1, :cond_9

    .line 449
    const v1, 0x39c67ed

    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->locationArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$LocationArgument;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 452
    :cond_9
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->documentArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;

    if-eqz v1, :cond_a

    .line 453
    const v1, 0x3b923e3

    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->documentArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 456
    :cond_a
    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->cachedSize:I

    .line 457
    return v0
.end method

.method public getVeUiType()I
    .locals 1

    .prologue
    .line 316
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->veUiType_:I

    return v0
.end method

.method public hasHintText()Z
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLabel()Z
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPurpose()Z
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVeUiType()Z
    .locals 1

    .prologue
    .line 324
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

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
    .line 212
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ModularActionProtos$Argument;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$Argument;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$Argument;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 465
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 466
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 470
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 471
    :sswitch_0
    return-object p0

    .line 476
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->id_:I

    .line 477
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->bitField0_:I

    goto :goto_0

    .line 481
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->label_:Ljava/lang/String;

    .line 482
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->bitField0_:I

    goto :goto_0

    .line 486
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->purpose_:I

    .line 487
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->bitField0_:I

    goto :goto_0

    .line 491
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->hintText_:Ljava/lang/String;

    .line 492
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->bitField0_:I

    goto :goto_0

    .line 496
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->veUiType_:I

    .line 497
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->bitField0_:I

    goto :goto_0

    .line 501
    :sswitch_6
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->stringArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$StringArgument;

    if-nez v1, :cond_1

    .line 502
    new-instance v1, Lcom/google/majel/proto/ModularActionProtos$StringArgument;

    invoke-direct {v1}, Lcom/google/majel/proto/ModularActionProtos$StringArgument;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->stringArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$StringArgument;

    .line 504
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->stringArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$StringArgument;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 508
    :sswitch_7
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->contactReferenceArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;

    if-nez v1, :cond_2

    .line 509
    new-instance v1, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;

    invoke-direct {v1}, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->contactReferenceArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;

    .line 511
    :cond_2
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->contactReferenceArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 515
    :sswitch_8
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->genericEntityArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;

    if-nez v1, :cond_3

    .line 516
    new-instance v1, Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;

    invoke-direct {v1}, Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->genericEntityArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;

    .line 518
    :cond_3
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->genericEntityArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 522
    :sswitch_9
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->dateTimeArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;

    if-nez v1, :cond_4

    .line 523
    new-instance v1, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;

    invoke-direct {v1}, Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->dateTimeArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;

    .line 525
    :cond_4
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->dateTimeArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 529
    :sswitch_a
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->locationArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$LocationArgument;

    if-nez v1, :cond_5

    .line 530
    new-instance v1, Lcom/google/majel/proto/ModularActionProtos$LocationArgument;

    invoke-direct {v1}, Lcom/google/majel/proto/ModularActionProtos$LocationArgument;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->locationArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$LocationArgument;

    .line 532
    :cond_5
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->locationArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$LocationArgument;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 536
    :sswitch_b
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->documentArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;

    if-nez v1, :cond_6

    .line 537
    new-instance v1, Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;

    invoke-direct {v1}, Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->documentArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;

    .line 539
    :cond_6
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->documentArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 466
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x1f42 -> :sswitch_6
        0x1f4a -> :sswitch_7
        0x1f52 -> :sswitch_8
        0x1ce1f542 -> :sswitch_9
        0x1ce33f6a -> :sswitch_a
        0x1dc91f1a -> :sswitch_b
    .end sparse-switch
.end method

.method public setHintText(Ljava/lang/String;)Lcom/google/majel/proto/ModularActionProtos$Argument;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 278
    if-nez p1, :cond_0

    .line 279
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 281
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->hintText_:Ljava/lang/String;

    .line 282
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->bitField0_:I

    .line 283
    return-object p0
.end method

.method public setId(I)Lcom/google/majel/proto/ModularActionProtos$Argument;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 237
    iput p1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->id_:I

    .line 238
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->bitField0_:I

    .line 239
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/google/majel/proto/ModularActionProtos$Argument;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 256
    if-nez p1, :cond_0

    .line 257
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 259
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->label_:Ljava/lang/String;

    .line 260
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->bitField0_:I

    .line 261
    return-object p0
.end method

.method public setPurpose(I)Lcom/google/majel/proto/ModularActionProtos$Argument;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 300
    iput p1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->purpose_:I

    .line 301
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->bitField0_:I

    .line 302
    return-object p0
.end method

.method public setVeUiType(I)Lcom/google/majel/proto/ModularActionProtos$Argument;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 319
    iput p1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->veUiType_:I

    .line 320
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->bitField0_:I

    .line 321
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
    .line 374
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 375
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->id_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 377
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 378
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->label_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 380
    :cond_1
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 381
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->purpose_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 383
    :cond_2
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 384
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->hintText_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 386
    :cond_3
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 387
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->veUiType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 389
    :cond_4
    iget-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->stringArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$StringArgument;

    if-eqz v0, :cond_5

    .line 390
    const/16 v0, 0x3e8

    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->stringArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$StringArgument;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 392
    :cond_5
    iget-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->contactReferenceArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;

    if-eqz v0, :cond_6

    .line 393
    const/16 v0, 0x3e9

    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->contactReferenceArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 395
    :cond_6
    iget-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->genericEntityArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;

    if-eqz v0, :cond_7

    .line 396
    const/16 v0, 0x3ea

    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->genericEntityArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 398
    :cond_7
    iget-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->dateTimeArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;

    if-eqz v0, :cond_8

    .line 399
    const v0, 0x39c3ea8

    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->dateTimeArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$DateTimeArgument;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 401
    :cond_8
    iget-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->locationArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$LocationArgument;

    if-eqz v0, :cond_9

    .line 402
    const v0, 0x39c67ed

    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->locationArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$LocationArgument;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 404
    :cond_9
    iget-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->documentArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;

    if-eqz v0, :cond_a

    .line 405
    const v0, 0x3b923e3

    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$Argument;->documentArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$DocumentArgument;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 407
    :cond_a
    return-void
.end method
