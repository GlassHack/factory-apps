.class public final Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "CalendarProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/CalendarProtos$CalendarEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Attendee"
.end annotation


# static fields
.field public static final RESPONSE_STATUS_ACCEPTED:I = 0x3

.field public static final RESPONSE_STATUS_DECLINED:I = 0x1

.field public static final RESPONSE_STATUS_NEEDS_ACTION:I = 0x0

.field public static final RESPONSE_STATUS_TENTATIVE:I = 0x2

.field private static volatile _emptyArray:[Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;


# instance fields
.field private bitField0_:I

.field private displayName_:Ljava/lang/String;

.field private email_:Ljava/lang/String;

.field private optionalAttendee_:Z

.field private resource_:Z

.field private responseComment_:Ljava/lang/String;

.field private responseStatus_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 395
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 396
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->clear()Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;

    .line 397
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;
    .locals 2

    .prologue
    .line 259
    sget-object v0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->_emptyArray:[Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;

    if-nez v0, :cond_1

    .line 260
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 262
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->_emptyArray:[Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;

    if-nez v0, :cond_0

    .line 263
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;

    sput-object v0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->_emptyArray:[Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;

    .line 265
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    :cond_1
    sget-object v0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->_emptyArray:[Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;

    return-object v0

    .line 265
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 522
    new-instance v0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;

    invoke-direct {v0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 516
    new-instance v0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;

    invoke-direct {v0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 400
    iput v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->bitField0_:I

    .line 401
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->email_:Ljava/lang/String;

    .line 402
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->displayName_:Ljava/lang/String;

    .line 403
    iput-boolean v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->resource_:Z

    .line 404
    iput-boolean v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->optionalAttendee_:Z

    .line 405
    iput v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->responseStatus_:I

    .line 406
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->responseComment_:Ljava/lang/String;

    .line 407
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->cachedSize:I

    .line 408
    return-object p0
.end method

.method public clearDisplayName()Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;
    .locals 1

    .prologue
    .line 311
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->displayName_:Ljava/lang/String;

    .line 312
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->bitField0_:I

    .line 313
    return-object p0
.end method

.method public clearEmail()Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;
    .locals 1

    .prologue
    .line 289
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->email_:Ljava/lang/String;

    .line 290
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->bitField0_:I

    .line 291
    return-object p0
.end method

.method public clearOptionalAttendee()Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;
    .locals 1

    .prologue
    .line 349
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->optionalAttendee_:Z

    .line 350
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->bitField0_:I

    .line 351
    return-object p0
.end method

.method public clearResource()Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->resource_:Z

    .line 331
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->bitField0_:I

    .line 332
    return-object p0
.end method

.method public clearResponseComment()Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;
    .locals 1

    .prologue
    .line 390
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->responseComment_:Ljava/lang/String;

    .line 391
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->bitField0_:I

    .line 392
    return-object p0
.end method

.method public clearResponseStatus()Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;
    .locals 1

    .prologue
    .line 368
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->responseStatus_:I

    .line 369
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->bitField0_:I

    .line 370
    return-object p0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->displayName_:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->email_:Ljava/lang/String;

    return-object v0
.end method

.method public getOptionalAttendee()Z
    .locals 1

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->optionalAttendee_:Z

    return v0
.end method

.method public getResource()Z
    .locals 1

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->resource_:Z

    return v0
.end method

.method public getResponseComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->responseComment_:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseStatus()I
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->responseStatus_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 436
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 437
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 438
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->email_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 441
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 442
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->displayName_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 445
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 446
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->resource_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 449
    :cond_2
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 450
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->optionalAttendee_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 453
    :cond_3
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 454
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->responseStatus_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 457
    :cond_4
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 458
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->responseComment_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 461
    :cond_5
    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->cachedSize:I

    .line 462
    return v0
.end method

.method public hasDisplayName()Z
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEmail()Z
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOptionalAttendee()Z
    .locals 1

    .prologue
    .line 346
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasResource()Z
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasResponseComment()Z
    .locals 1

    .prologue
    .line 387
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasResponseStatus()Z
    .locals 1

    .prologue
    .line 365
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->bitField0_:I

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
    .line 247
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 470
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 471
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 475
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 476
    :sswitch_0
    return-object p0

    .line 481
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->email_:Ljava/lang/String;

    .line 482
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->bitField0_:I

    goto :goto_0

    .line 486
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->displayName_:Ljava/lang/String;

    .line 487
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->bitField0_:I

    goto :goto_0

    .line 491
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->resource_:Z

    .line 492
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->bitField0_:I

    goto :goto_0

    .line 496
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->optionalAttendee_:Z

    .line 497
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->bitField0_:I

    goto :goto_0

    .line 501
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->responseStatus_:I

    .line 502
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->bitField0_:I

    goto :goto_0

    .line 506
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->responseComment_:Ljava/lang/String;

    .line 507
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->bitField0_:I

    goto :goto_0

    .line 471
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 300
    if-nez p1, :cond_0

    .line 301
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 303
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->displayName_:Ljava/lang/String;

    .line 304
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->bitField0_:I

    .line 305
    return-object p0
.end method

.method public setEmail(Ljava/lang/String;)Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;
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
    iput-object p1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->email_:Ljava/lang/String;

    .line 282
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->bitField0_:I

    .line 283
    return-object p0
.end method

.method public setOptionalAttendee(Z)Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 341
    iput-boolean p1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->optionalAttendee_:Z

    .line 342
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->bitField0_:I

    .line 343
    return-object p0
.end method

.method public setResource(Z)Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 322
    iput-boolean p1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->resource_:Z

    .line 323
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->bitField0_:I

    .line 324
    return-object p0
.end method

.method public setResponseComment(Ljava/lang/String;)Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 379
    if-nez p1, :cond_0

    .line 380
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 382
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->responseComment_:Ljava/lang/String;

    .line 383
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->bitField0_:I

    .line 384
    return-object p0
.end method

.method public setResponseStatus(I)Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 360
    iput p1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->responseStatus_:I

    .line 361
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->bitField0_:I

    .line 362
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
    .line 414
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 415
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->email_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 417
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 418
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->displayName_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 420
    :cond_1
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 421
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->resource_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 423
    :cond_2
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 424
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->optionalAttendee_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 426
    :cond_3
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 427
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->responseStatus_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 429
    :cond_4
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 430
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->responseComment_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 432
    :cond_5
    return-void
.end method
