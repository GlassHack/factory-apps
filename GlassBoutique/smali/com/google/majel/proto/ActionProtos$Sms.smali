.class public final Lcom/google/majel/proto/ActionProtos$Sms;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Sms"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionProtos$Sms;


# instance fields
.field private bitField0_:I

.field public contact:[Lcom/google/majel/proto/ActionProtos$Contact;

.field private messageContent_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 364
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Sms;->clear()Lcom/google/majel/proto/ActionProtos$Sms;

    .line 365
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionProtos$Sms;
    .locals 2

    .prologue
    .line 325
    sget-object v0, Lcom/google/majel/proto/ActionProtos$Sms;->_emptyArray:[Lcom/google/majel/proto/ActionProtos$Sms;

    if-nez v0, :cond_1

    .line 326
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 328
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionProtos$Sms;->_emptyArray:[Lcom/google/majel/proto/ActionProtos$Sms;

    if-nez v0, :cond_0

    .line 329
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionProtos$Sms;

    sput-object v0, Lcom/google/majel/proto/ActionProtos$Sms;->_emptyArray:[Lcom/google/majel/proto/ActionProtos$Sms;

    .line 331
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionProtos$Sms;->_emptyArray:[Lcom/google/majel/proto/ActionProtos$Sms;

    return-object v0

    .line 331
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionProtos$Sms;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 463
    new-instance v0, Lcom/google/majel/proto/ActionProtos$Sms;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionProtos$Sms;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionProtos$Sms;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionProtos$Sms;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionProtos$Sms;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 457
    new-instance v0, Lcom/google/majel/proto/ActionProtos$Sms;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionProtos$Sms;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionProtos$Sms;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionProtos$Sms;
    .locals 1

    .prologue
    .line 368
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionProtos$Sms;->bitField0_:I

    .line 369
    invoke-static {}, Lcom/google/majel/proto/ActionProtos$Contact;->emptyArray()[Lcom/google/majel/proto/ActionProtos$Contact;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionProtos$Sms;->contact:[Lcom/google/majel/proto/ActionProtos$Contact;

    .line 370
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionProtos$Sms;->messageContent_:Ljava/lang/String;

    .line 371
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionProtos$Sms;->cachedSize:I

    .line 372
    return-object p0
.end method

.method public clearMessageContent()Lcom/google/majel/proto/ActionProtos$Sms;
    .locals 1

    .prologue
    .line 358
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionProtos$Sms;->messageContent_:Ljava/lang/String;

    .line 359
    iget v0, p0, Lcom/google/majel/proto/ActionProtos$Sms;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionProtos$Sms;->bitField0_:I

    .line 360
    return-object p0
.end method

.method public getMessageContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/google/majel/proto/ActionProtos$Sms;->messageContent_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 393
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 394
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/majel/proto/ActionProtos$Sms;->contact:[Lcom/google/majel/proto/ActionProtos$Contact;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/majel/proto/ActionProtos$Sms;->contact:[Lcom/google/majel/proto/ActionProtos$Contact;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 395
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/majel/proto/ActionProtos$Sms;->contact:[Lcom/google/majel/proto/ActionProtos$Contact;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 396
    iget-object v3, p0, Lcom/google/majel/proto/ActionProtos$Sms;->contact:[Lcom/google/majel/proto/ActionProtos$Contact;

    aget-object v0, v3, v1

    .line 397
    .local v0, "element":Lcom/google/majel/proto/ActionProtos$Contact;
    if-eqz v0, :cond_0

    .line 398
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 395
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 403
    .end local v0    # "element":Lcom/google/majel/proto/ActionProtos$Contact;
    .end local v1    # "i":I
    :cond_1
    iget v3, p0, Lcom/google/majel/proto/ActionProtos$Sms;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 404
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/majel/proto/ActionProtos$Sms;->messageContent_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 407
    :cond_2
    iput v2, p0, Lcom/google/majel/proto/ActionProtos$Sms;->cachedSize:I

    .line 408
    return v2
.end method

.method public hasMessageContent()Z
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Lcom/google/majel/proto/ActionProtos$Sms;->bitField0_:I

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
    .line 319
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionProtos$Sms;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionProtos$Sms;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionProtos$Sms;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 416
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 417
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 421
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 422
    :sswitch_0
    return-object p0

    .line 427
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 429
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/ActionProtos$Sms;->contact:[Lcom/google/majel/proto/ActionProtos$Contact;

    if-nez v5, :cond_2

    move v1, v4

    .line 430
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/ActionProtos$Contact;

    .line 432
    .local v2, "newArray":[Lcom/google/majel/proto/ActionProtos$Contact;
    if-eqz v1, :cond_1

    .line 433
    iget-object v5, p0, Lcom/google/majel/proto/ActionProtos$Sms;->contact:[Lcom/google/majel/proto/ActionProtos$Contact;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 435
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 436
    new-instance v5, Lcom/google/majel/proto/ActionProtos$Contact;

    invoke-direct {v5}, Lcom/google/majel/proto/ActionProtos$Contact;-><init>()V

    aput-object v5, v2, v1

    .line 437
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 438
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 435
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 429
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ActionProtos$Contact;
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/ActionProtos$Sms;->contact:[Lcom/google/majel/proto/ActionProtos$Contact;

    array-length v1, v5

    goto :goto_1

    .line 441
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ActionProtos$Contact;
    :cond_3
    new-instance v5, Lcom/google/majel/proto/ActionProtos$Contact;

    invoke-direct {v5}, Lcom/google/majel/proto/ActionProtos$Contact;-><init>()V

    aput-object v5, v2, v1

    .line 442
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 443
    iput-object v2, p0, Lcom/google/majel/proto/ActionProtos$Sms;->contact:[Lcom/google/majel/proto/ActionProtos$Contact;

    goto :goto_0

    .line 447
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ActionProtos$Contact;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/ActionProtos$Sms;->messageContent_:Ljava/lang/String;

    .line 448
    iget v5, p0, Lcom/google/majel/proto/ActionProtos$Sms;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/majel/proto/ActionProtos$Sms;->bitField0_:I

    goto :goto_0

    .line 417
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setMessageContent(Ljava/lang/String;)Lcom/google/majel/proto/ActionProtos$Sms;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 347
    if-nez p1, :cond_0

    .line 348
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 350
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionProtos$Sms;->messageContent_:Ljava/lang/String;

    .line 351
    iget v0, p0, Lcom/google/majel/proto/ActionProtos$Sms;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionProtos$Sms;->bitField0_:I

    .line 352
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 378
    iget-object v2, p0, Lcom/google/majel/proto/ActionProtos$Sms;->contact:[Lcom/google/majel/proto/ActionProtos$Contact;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/majel/proto/ActionProtos$Sms;->contact:[Lcom/google/majel/proto/ActionProtos$Contact;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 379
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/ActionProtos$Sms;->contact:[Lcom/google/majel/proto/ActionProtos$Contact;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 380
    iget-object v2, p0, Lcom/google/majel/proto/ActionProtos$Sms;->contact:[Lcom/google/majel/proto/ActionProtos$Contact;

    aget-object v0, v2, v1

    .line 381
    .local v0, "element":Lcom/google/majel/proto/ActionProtos$Contact;
    if-eqz v0, :cond_0

    .line 382
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 379
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 386
    .end local v0    # "element":Lcom/google/majel/proto/ActionProtos$Contact;
    .end local v1    # "i":I
    :cond_1
    iget v2, p0, Lcom/google/majel/proto/ActionProtos$Sms;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 387
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/majel/proto/ActionProtos$Sms;->messageContent_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 389
    :cond_2
    return-void
.end method
