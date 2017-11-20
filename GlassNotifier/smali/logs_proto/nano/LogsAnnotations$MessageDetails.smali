.class public final Llogs_proto/nano/LogsAnnotations$MessageDetails;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "LogsAnnotations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llogs_proto/nano/LogsAnnotations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageDetails"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Llogs_proto/nano/LogsAnnotations$MessageDetails;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Llogs_proto/nano/LogsAnnotations$MessageDetails;


# instance fields
.field public mayAppearIn:[Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 372
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 373
    invoke-virtual {p0}, Llogs_proto/nano/LogsAnnotations$MessageDetails;->clear()Llogs_proto/nano/LogsAnnotations$MessageDetails;

    .line 374
    return-void
.end method

.method public static emptyArray()[Llogs_proto/nano/LogsAnnotations$MessageDetails;
    .locals 2

    .prologue
    .line 356
    sget-object v0, Llogs_proto/nano/LogsAnnotations$MessageDetails;->_emptyArray:[Llogs_proto/nano/LogsAnnotations$MessageDetails;

    if-nez v0, :cond_1

    .line 357
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 359
    :try_start_0
    sget-object v0, Llogs_proto/nano/LogsAnnotations$MessageDetails;->_emptyArray:[Llogs_proto/nano/LogsAnnotations$MessageDetails;

    if-nez v0, :cond_0

    .line 360
    const/4 v0, 0x0

    new-array v0, v0, [Llogs_proto/nano/LogsAnnotations$MessageDetails;

    sput-object v0, Llogs_proto/nano/LogsAnnotations$MessageDetails;->_emptyArray:[Llogs_proto/nano/LogsAnnotations$MessageDetails;

    .line 362
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    :cond_1
    sget-object v0, Llogs_proto/nano/LogsAnnotations$MessageDetails;->_emptyArray:[Llogs_proto/nano/LogsAnnotations$MessageDetails;

    return-object v0

    .line 362
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Llogs_proto/nano/LogsAnnotations$MessageDetails;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 490
    new-instance v0, Llogs_proto/nano/LogsAnnotations$MessageDetails;

    invoke-direct {v0}, Llogs_proto/nano/LogsAnnotations$MessageDetails;-><init>()V

    invoke-virtual {v0, p0}, Llogs_proto/nano/LogsAnnotations$MessageDetails;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Llogs_proto/nano/LogsAnnotations$MessageDetails;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Llogs_proto/nano/LogsAnnotations$MessageDetails;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 484
    new-instance v0, Llogs_proto/nano/LogsAnnotations$MessageDetails;

    invoke-direct {v0}, Llogs_proto/nano/LogsAnnotations$MessageDetails;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Llogs_proto/nano/LogsAnnotations$MessageDetails;

    return-object v0
.end method


# virtual methods
.method public clear()Llogs_proto/nano/LogsAnnotations$MessageDetails;
    .locals 1

    .prologue
    .line 377
    invoke-static {}, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;->emptyArray()[Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;

    move-result-object v0

    iput-object v0, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails;->mayAppearIn:[Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;

    .line 378
    const/4 v0, 0x0

    iput-object v0, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 379
    const/4 v0, -0x1

    iput v0, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails;->cachedSize:I

    .line 380
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 430
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v2

    .line 431
    .local v2, "size":I
    iget-object v3, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails;->mayAppearIn:[Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;

    if-eqz v3, :cond_1

    iget-object v3, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails;->mayAppearIn:[Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 432
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails;->mayAppearIn:[Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 433
    iget-object v3, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails;->mayAppearIn:[Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;

    aget-object v0, v3, v1

    .line 434
    .local v0, "element":Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;
    if-eqz v0, :cond_0

    .line 435
    const/4 v3, 0x1

    .line 436
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 432
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 440
    .end local v0    # "element":Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;
    .end local v1    # "i":I
    :cond_1
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 385
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 399
    :cond_0
    :goto_0
    return v1

    .line 388
    :cond_1
    instance-of v3, p1, Llogs_proto/nano/LogsAnnotations$MessageDetails;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 391
    check-cast v0, Llogs_proto/nano/LogsAnnotations$MessageDetails;

    .line 392
    .local v0, "other":Llogs_proto/nano/LogsAnnotations$MessageDetails;
    iget-object v3, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails;->mayAppearIn:[Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;

    iget-object v4, v0, Llogs_proto/nano/LogsAnnotations$MessageDetails;->mayAppearIn:[Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/InternalNano;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 396
    iget-object v3, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 397
    :cond_2
    iget-object v3, v0, Llogs_proto/nano/LogsAnnotations$MessageDetails;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Llogs_proto/nano/LogsAnnotations$MessageDetails;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 399
    :cond_4
    iget-object v1, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Llogs_proto/nano/LogsAnnotations$MessageDetails;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 404
    const/16 v0, 0x11

    .line 405
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 406
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails;->mayAppearIn:[Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;

    .line 407
    invoke-static {v2}, Lcom/google/protobuf/nano/InternalNano;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 408
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 409
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 410
    :goto_0
    add-int v0, v2, v1

    .line 411
    return v0

    .line 410
    :cond_1
    iget-object v1, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    invoke-virtual {p0, p1}, Llogs_proto/nano/LogsAnnotations$MessageDetails;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Llogs_proto/nano/LogsAnnotations$MessageDetails;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Llogs_proto/nano/LogsAnnotations$MessageDetails;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 448
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 449
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 453
    invoke-super {p0, p1, v3}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 454
    :sswitch_0
    return-object p0

    .line 459
    :sswitch_1
    const/16 v5, 0xa

    .line 460
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 461
    .local v0, "arrayLength":I
    iget-object v5, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails;->mayAppearIn:[Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;

    if-nez v5, :cond_2

    move v1, v4

    .line 462
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;

    .line 464
    .local v2, "newArray":[Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;
    if-eqz v1, :cond_1

    .line 465
    iget-object v5, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails;->mayAppearIn:[Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 467
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 468
    new-instance v5, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;

    invoke-direct {v5}, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;-><init>()V

    aput-object v5, v2, v1

    .line 469
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 470
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 467
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 461
    .end local v1    # "i":I
    .end local v2    # "newArray":[Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;
    :cond_2
    iget-object v5, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails;->mayAppearIn:[Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;

    array-length v1, v5

    goto :goto_1

    .line 473
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;
    :cond_3
    new-instance v5, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;

    invoke-direct {v5}, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;-><init>()V

    aput-object v5, v2, v1

    .line 474
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 475
    iput-object v2, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails;->mayAppearIn:[Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;

    goto :goto_0

    .line 449
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 417
    iget-object v2, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails;->mayAppearIn:[Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;

    if-eqz v2, :cond_1

    iget-object v2, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails;->mayAppearIn:[Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 418
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails;->mayAppearIn:[Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 419
    iget-object v2, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails;->mayAppearIn:[Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;

    aget-object v0, v2, v1

    .line 420
    .local v0, "element":Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;
    if-eqz v0, :cond_0

    .line 421
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 418
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 425
    .end local v0    # "element":Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;
    .end local v1    # "i":I
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 426
    return-void
.end method
