.class public final Lcom/google/googlex/glass/common/proto/nano/Entity$Command;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Entity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/nano/Entity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Command"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/nano/Entity$Command$InvocationMode;,
        Lcom/google/googlex/glass/common/proto/nano/Entity$Command$InputType;,
        Lcom/google/googlex/glass/common/proto/nano/Entity$Command$CommandType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/googlex/glass/common/proto/nano/Entity$Command;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/googlex/glass/common/proto/nano/Entity$Command;


# instance fields
.field private bitField0_:I

.field private completionLabel_:Ljava/lang/String;

.field private inputType_:I

.field private invocationMode_:I

.field private isVoiceEnabled_:Z

.field private pendingLabel_:Ljava/lang/String;

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 444
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 445
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->clear()Lcom/google/googlex/glass/common/proto/nano/Entity$Command;

    .line 446
    return-void
.end method

.method public static emptyArray()[Lcom/google/googlex/glass/common/proto/nano/Entity$Command;
    .locals 2

    .prologue
    .line 309
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/Entity$Command;

    if-nez v0, :cond_1

    .line 310
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 312
    :try_start_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/Entity$Command;

    if-nez v0, :cond_0

    .line 313
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/nano/Entity$Command;

    sput-object v0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/Entity$Command;

    .line 315
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    :cond_1
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/Entity$Command;

    return-object v0

    .line 315
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/Entity$Command;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 668
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/Entity$Command;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/nano/Entity$Command;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 662
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/googlex/glass/common/proto/nano/Entity$Command;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 449
    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    .line 450
    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->type_:I

    .line 451
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->isVoiceEnabled_:Z

    .line 452
    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->inputType_:I

    .line 453
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->pendingLabel_:Ljava/lang/String;

    .line 454
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->completionLabel_:Ljava/lang/String;

    .line 455
    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->invocationMode_:I

    .line 456
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 457
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->cachedSize:I

    .line 458
    return-object p0
.end method

.method public clearCompletionLabel()Lcom/google/googlex/glass/common/proto/nano/Entity$Command;
    .locals 1

    .prologue
    .line 410
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->completionLabel_:Ljava/lang/String;

    .line 411
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    .line 412
    return-object p0
.end method

.method public clearInputType()Lcom/google/googlex/glass/common/proto/nano/Entity$Command;
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    .line 375
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->inputType_:I

    .line 376
    return-object p0
.end method

.method public clearInvocationMode()Lcom/google/googlex/glass/common/proto/nano/Entity$Command;
    .locals 1

    .prologue
    .line 437
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    .line 438
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->invocationMode_:I

    .line 439
    return-object p0
.end method

.method public clearIsVoiceEnabled()Lcom/google/googlex/glass/common/proto/nano/Entity$Command;
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->isVoiceEnabled_:Z

    .line 351
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    .line 352
    return-object p0
.end method

.method public clearPendingLabel()Lcom/google/googlex/glass/common/proto/nano/Entity$Command;
    .locals 1

    .prologue
    .line 388
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->pendingLabel_:Ljava/lang/String;

    .line 389
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    .line 390
    return-object p0
.end method

.method public clearType()Lcom/google/googlex/glass/common/proto/nano/Entity$Command;
    .locals 1

    .prologue
    .line 336
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    .line 337
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->type_:I

    .line 338
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 542
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 543
    .local v0, "size":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 544
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->type_:I

    .line 545
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 547
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 548
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->isVoiceEnabled_:Z

    .line 549
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 551
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 552
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->inputType_:I

    .line 553
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 555
    :cond_2
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 556
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->pendingLabel_:Ljava/lang/String;

    .line 557
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 559
    :cond_3
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 560
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->completionLabel_:Ljava/lang/String;

    .line 561
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 563
    :cond_4
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 564
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->invocationMode_:I

    .line 565
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 567
    :cond_5
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 463
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 497
    :cond_0
    :goto_0
    return v1

    .line 466
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 469
    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;

    .line 470
    .local v0, "other":Lcom/google/googlex/glass/common/proto/nano/Entity$Command;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->type_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->type_:I

    if-ne v3, v4, :cond_0

    .line 474
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->isVoiceEnabled_:Z

    iget-boolean v4, v0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->isVoiceEnabled_:Z

    if-ne v3, v4, :cond_0

    .line 478
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->inputType_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->inputType_:I

    if-ne v3, v4, :cond_0

    .line 482
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->pendingLabel_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->pendingLabel_:Ljava/lang/String;

    .line 483
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 486
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->completionLabel_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->completionLabel_:Ljava/lang/String;

    .line 487
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 490
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->invocationMode_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->invocationMode_:I

    if-ne v3, v4, :cond_0

    .line 494
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 495
    :cond_2
    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto/16 :goto_0

    .line 497
    :cond_4
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public getCompletionLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->completionLabel_:Ljava/lang/String;

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 363
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->inputType_:I

    return v0
.end method

.method public getInvocationMode()I
    .locals 1

    .prologue
    .line 426
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->invocationMode_:I

    return v0
.end method

.method public getIsVoiceEnabled()Z
    .locals 1

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->isVoiceEnabled_:Z

    return v0
.end method

.method public getPendingLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->pendingLabel_:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->type_:I

    return v0
.end method

.method public hasCompletionLabel()Z
    .locals 1

    .prologue
    .line 407
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInputType()Z
    .locals 1

    .prologue
    .line 371
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInvocationMode()Z
    .locals 1

    .prologue
    .line 434
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsVoiceEnabled()Z
    .locals 1

    .prologue
    .line 347
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPendingLabel()Z
    .locals 1

    .prologue
    .line 385
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

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
    .line 333
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 502
    const/16 v0, 0x11

    .line 503
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 504
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->type_:I

    add-int v0, v1, v2

    .line 505
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->isVoiceEnabled_:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x4cf

    :goto_0
    add-int v0, v2, v1

    .line 506
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->inputType_:I

    add-int v0, v1, v2

    .line 507
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->pendingLabel_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 508
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->completionLabel_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 509
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->invocationMode_:I

    add-int v0, v1, v2

    .line 510
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 511
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x0

    .line 512
    :goto_1
    add-int v0, v2, v1

    .line 513
    return v0

    .line 505
    :cond_1
    const/16 v1, 0x4d5

    goto :goto_0

    .line 512
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/Entity$Command;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 575
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v1

    .line 576
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 580
    invoke-super {p0, p1, v1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 581
    :sswitch_0
    return-object p0

    .line 586
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 587
    .local v0, "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 588
    .local v2, "value":I
    packed-switch v2, :pswitch_data_0

    .line 600
    :pswitch_0
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 601
    invoke-virtual {p0, p1, v1}, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 596
    :pswitch_1
    iput v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->type_:I

    .line 597
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    goto :goto_0

    .line 607
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->isVoiceEnabled_:Z

    .line 608
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    goto :goto_0

    .line 612
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 613
    .restart local v0    # "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 614
    .restart local v2    # "value":I
    packed-switch v2, :pswitch_data_1

    .line 623
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 624
    invoke-virtual {p0, p1, v1}, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 619
    :pswitch_2
    iput v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->inputType_:I

    .line 620
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    goto :goto_0

    .line 630
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->pendingLabel_:Ljava/lang/String;

    .line 631
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    goto :goto_0

    .line 635
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->completionLabel_:Ljava/lang/String;

    .line 636
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    goto :goto_0

    .line 640
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 641
    .restart local v0    # "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 642
    .restart local v2    # "value":I
    packed-switch v2, :pswitch_data_2

    .line 650
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 651
    invoke-virtual {p0, p1, v1}, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 646
    :pswitch_3
    iput v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->invocationMode_:I

    .line 647
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    goto/16 :goto_0

    .line 576
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch

    .line 588
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 614
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 642
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
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
    .line 277
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/Entity$Command;

    move-result-object v0

    return-object v0
.end method

.method public setCompletionLabel(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Entity$Command;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 415
    if-nez p1, :cond_0

    .line 416
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 418
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->completionLabel_:Ljava/lang/String;

    .line 419
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    .line 420
    return-object p0
.end method

.method public setInputType(I)Lcom/google/googlex/glass/common/proto/nano/Entity$Command;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 366
    iput p1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->inputType_:I

    .line 367
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    .line 368
    return-object p0
.end method

.method public setInvocationMode(I)Lcom/google/googlex/glass/common/proto/nano/Entity$Command;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 429
    iput p1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->invocationMode_:I

    .line 430
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    .line 431
    return-object p0
.end method

.method public setIsVoiceEnabled(Z)Lcom/google/googlex/glass/common/proto/nano/Entity$Command;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 355
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->isVoiceEnabled_:Z

    .line 356
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    .line 357
    return-object p0
.end method

.method public setPendingLabel(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Entity$Command;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 393
    if-nez p1, :cond_0

    .line 394
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 396
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->pendingLabel_:Ljava/lang/String;

    .line 397
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    .line 398
    return-object p0
.end method

.method public setType(I)Lcom/google/googlex/glass/common/proto/nano/Entity$Command;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 328
    iput p1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->type_:I

    .line 329
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    .line 330
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 519
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 520
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->type_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 522
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 523
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->isVoiceEnabled_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 525
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 526
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->inputType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 528
    :cond_2
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 529
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->pendingLabel_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 531
    :cond_3
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 532
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->completionLabel_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 534
    :cond_4
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 535
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Command;->invocationMode_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 537
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 538
    return-void
.end method
