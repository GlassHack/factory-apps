.class public final Lcom/google/common/logging/Cw$CwStreamletLog;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Cw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/Cw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CwStreamletLog"
.end annotation


# static fields
.field public static final CW_HAND_GESTURE_TILT:I = 0x1

.field public static final CW_HAND_GESTURE_UNKNOWN:I = 0x0

.field public static final CW_LIFECYCLE_EVENT_ATTACHED:I = 0x1

.field public static final CW_LIFECYCLE_EVENT_DETACHED:I = 0x2

.field public static final CW_LIFECYCLE_EVENT_HIDDEN:I = 0x4

.field public static final CW_LIFECYCLE_EVENT_ON_FOCUSED:I = 0x6

.field public static final CW_LIFECYCLE_EVENT_ON_PEEK:I = 0x7

.field public static final CW_LIFECYCLE_EVENT_SCROLLING:I = 0x5

.field public static final CW_LIFECYCLE_EVENT_UNKNOWN:I = 0x0

.field public static final CW_LIFECYCLE_EVENT_VISIBLE:I = 0x3

.field public static final CW_STREAMLET_SOURCE_TYPE_MICRO_APP:I = 0x3

.field public static final CW_STREAMLET_SOURCE_TYPE_NOTIFICATION:I = 0x1

.field public static final CW_STREAMLET_SOURCE_TYPE_SYSTEM_APP:I = 0x2

.field public static final CW_STREAMLET_SOURCE_TYPE_UNKNOWN:I = 0x0

.field public static final CW_TOUCH_GESTURE_NONE:I = 0x1

.field public static final CW_TOUCH_GESTURE_SWIPE_DOWN:I = 0x4

.field public static final CW_TOUCH_GESTURE_SWIPE_LEFT:I = 0x5

.field public static final CW_TOUCH_GESTURE_SWIPE_RIGHT:I = 0x6

.field public static final CW_TOUCH_GESTURE_SWIPE_UP:I = 0x3

.field public static final CW_TOUCH_GESTURE_TOUCH:I = 0x2

.field public static final CW_TOUCH_GESTURE_UNKNOWN:I

.field private static volatile _emptyArray:[Lcom/google/common/logging/Cw$CwStreamletLog;


# instance fields
.field public handGesture:I

.field public lifeCycleEvent:I

.field public rankingEvent:Lcom/google/common/logging/Cw$CwRankingEvent;

.field public streamItemId:Lcom/google/common/logging/Cw$CwStreamItemId;

.field public streamletSourceType:I

.field public touchGesture:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 313
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 314
    invoke-virtual {p0}, Lcom/google/common/logging/Cw$CwStreamletLog;->clear()Lcom/google/common/logging/Cw$CwStreamletLog;

    .line 315
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/Cw$CwStreamletLog;
    .locals 2

    .prologue
    .line 284
    sget-object v0, Lcom/google/common/logging/Cw$CwStreamletLog;->_emptyArray:[Lcom/google/common/logging/Cw$CwStreamletLog;

    if-nez v0, :cond_1

    .line 285
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 287
    :try_start_0
    sget-object v0, Lcom/google/common/logging/Cw$CwStreamletLog;->_emptyArray:[Lcom/google/common/logging/Cw$CwStreamletLog;

    if-nez v0, :cond_0

    .line 288
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/Cw$CwStreamletLog;

    sput-object v0, Lcom/google/common/logging/Cw$CwStreamletLog;->_emptyArray:[Lcom/google/common/logging/Cw$CwStreamletLog;

    .line 290
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    :cond_1
    sget-object v0, Lcom/google/common/logging/Cw$CwStreamletLog;->_emptyArray:[Lcom/google/common/logging/Cw$CwStreamletLog;

    return-object v0

    .line 290
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/Cw$CwStreamletLog;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 476
    new-instance v0, Lcom/google/common/logging/Cw$CwStreamletLog;

    invoke-direct {v0}, Lcom/google/common/logging/Cw$CwStreamletLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/Cw$CwStreamletLog;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/Cw$CwStreamletLog;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/Cw$CwStreamletLog;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 470
    new-instance v0, Lcom/google/common/logging/Cw$CwStreamletLog;

    invoke-direct {v0}, Lcom/google/common/logging/Cw$CwStreamletLog;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/Cw$CwStreamletLog;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/Cw$CwStreamletLog;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 318
    iput-object v1, p0, Lcom/google/common/logging/Cw$CwStreamletLog;->streamItemId:Lcom/google/common/logging/Cw$CwStreamItemId;

    .line 319
    iput v0, p0, Lcom/google/common/logging/Cw$CwStreamletLog;->lifeCycleEvent:I

    .line 320
    iput v0, p0, Lcom/google/common/logging/Cw$CwStreamletLog;->streamletSourceType:I

    .line 321
    iput v0, p0, Lcom/google/common/logging/Cw$CwStreamletLog;->touchGesture:I

    .line 322
    iput v0, p0, Lcom/google/common/logging/Cw$CwStreamletLog;->handGesture:I

    .line 323
    iput-object v1, p0, Lcom/google/common/logging/Cw$CwStreamletLog;->rankingEvent:Lcom/google/common/logging/Cw$CwRankingEvent;

    .line 324
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/Cw$CwStreamletLog;->cachedSize:I

    .line 325
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 354
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 355
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/common/logging/Cw$CwStreamletLog;->streamItemId:Lcom/google/common/logging/Cw$CwStreamItemId;

    if-eqz v1, :cond_0

    .line 356
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/Cw$CwStreamletLog;->streamItemId:Lcom/google/common/logging/Cw$CwStreamItemId;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 359
    :cond_0
    iget v1, p0, Lcom/google/common/logging/Cw$CwStreamletLog;->lifeCycleEvent:I

    if-eqz v1, :cond_1

    .line 360
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/common/logging/Cw$CwStreamletLog;->lifeCycleEvent:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 363
    :cond_1
    iget v1, p0, Lcom/google/common/logging/Cw$CwStreamletLog;->streamletSourceType:I

    if-eqz v1, :cond_2

    .line 364
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/common/logging/Cw$CwStreamletLog;->streamletSourceType:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 367
    :cond_2
    iget v1, p0, Lcom/google/common/logging/Cw$CwStreamletLog;->touchGesture:I

    if-eqz v1, :cond_3

    .line 368
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/common/logging/Cw$CwStreamletLog;->touchGesture:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 371
    :cond_3
    iget v1, p0, Lcom/google/common/logging/Cw$CwStreamletLog;->handGesture:I

    if-eqz v1, :cond_4

    .line 372
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/common/logging/Cw$CwStreamletLog;->handGesture:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 375
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/Cw$CwStreamletLog;->rankingEvent:Lcom/google/common/logging/Cw$CwRankingEvent;

    if-eqz v1, :cond_5

    .line 376
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/common/logging/Cw$CwStreamletLog;->rankingEvent:Lcom/google/common/logging/Cw$CwRankingEvent;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 379
    :cond_5
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/Cw$CwStreamletLog;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 387
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 388
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 392
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 393
    :sswitch_0
    return-object p0

    .line 398
    :sswitch_1
    iget-object v2, p0, Lcom/google/common/logging/Cw$CwStreamletLog;->streamItemId:Lcom/google/common/logging/Cw$CwStreamItemId;

    if-nez v2, :cond_1

    .line 399
    new-instance v2, Lcom/google/common/logging/Cw$CwStreamItemId;

    invoke-direct {v2}, Lcom/google/common/logging/Cw$CwStreamItemId;-><init>()V

    iput-object v2, p0, Lcom/google/common/logging/Cw$CwStreamletLog;->streamItemId:Lcom/google/common/logging/Cw$CwStreamItemId;

    .line 401
    :cond_1
    iget-object v2, p0, Lcom/google/common/logging/Cw$CwStreamletLog;->streamItemId:Lcom/google/common/logging/Cw$CwStreamItemId;

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 405
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 406
    .local v1, "value":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 415
    :pswitch_0
    iput v1, p0, Lcom/google/common/logging/Cw$CwStreamletLog;->lifeCycleEvent:I

    goto :goto_0

    .line 421
    .end local v1    # "value":I
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 422
    .restart local v1    # "value":I
    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 427
    :pswitch_1
    iput v1, p0, Lcom/google/common/logging/Cw$CwStreamletLog;->streamletSourceType:I

    goto :goto_0

    .line 433
    .end local v1    # "value":I
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 434
    .restart local v1    # "value":I
    packed-switch v1, :pswitch_data_2

    goto :goto_0

    .line 442
    :pswitch_2
    iput v1, p0, Lcom/google/common/logging/Cw$CwStreamletLog;->touchGesture:I

    goto :goto_0

    .line 448
    .end local v1    # "value":I
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 449
    .restart local v1    # "value":I
    packed-switch v1, :pswitch_data_3

    goto :goto_0

    .line 452
    :pswitch_3
    iput v1, p0, Lcom/google/common/logging/Cw$CwStreamletLog;->handGesture:I

    goto :goto_0

    .line 458
    .end local v1    # "value":I
    :sswitch_6
    iget-object v2, p0, Lcom/google/common/logging/Cw$CwStreamletLog;->rankingEvent:Lcom/google/common/logging/Cw$CwRankingEvent;

    if-nez v2, :cond_2

    .line 459
    new-instance v2, Lcom/google/common/logging/Cw$CwRankingEvent;

    invoke-direct {v2}, Lcom/google/common/logging/Cw$CwRankingEvent;-><init>()V

    iput-object v2, p0, Lcom/google/common/logging/Cw$CwStreamletLog;->rankingEvent:Lcom/google/common/logging/Cw$CwRankingEvent;

    .line 461
    :cond_2
    iget-object v2, p0, Lcom/google/common/logging/Cw$CwStreamletLog;->rankingEvent:Lcom/google/common/logging/Cw$CwRankingEvent;

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 388
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch

    .line 406
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 422
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 434
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 449
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    invoke-virtual {p0, p1}, Lcom/google/common/logging/Cw$CwStreamletLog;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/Cw$CwStreamletLog;

    move-result-object v0

    return-object v0
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
    .line 331
    iget-object v0, p0, Lcom/google/common/logging/Cw$CwStreamletLog;->streamItemId:Lcom/google/common/logging/Cw$CwStreamItemId;

    if-eqz v0, :cond_0

    .line 332
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/Cw$CwStreamletLog;->streamItemId:Lcom/google/common/logging/Cw$CwStreamItemId;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 334
    :cond_0
    iget v0, p0, Lcom/google/common/logging/Cw$CwStreamletLog;->lifeCycleEvent:I

    if-eqz v0, :cond_1

    .line 335
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/common/logging/Cw$CwStreamletLog;->lifeCycleEvent:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 337
    :cond_1
    iget v0, p0, Lcom/google/common/logging/Cw$CwStreamletLog;->streamletSourceType:I

    if-eqz v0, :cond_2

    .line 338
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/common/logging/Cw$CwStreamletLog;->streamletSourceType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 340
    :cond_2
    iget v0, p0, Lcom/google/common/logging/Cw$CwStreamletLog;->touchGesture:I

    if-eqz v0, :cond_3

    .line 341
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/common/logging/Cw$CwStreamletLog;->touchGesture:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 343
    :cond_3
    iget v0, p0, Lcom/google/common/logging/Cw$CwStreamletLog;->handGesture:I

    if-eqz v0, :cond_4

    .line 344
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/common/logging/Cw$CwStreamletLog;->handGesture:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 346
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/Cw$CwStreamletLog;->rankingEvent:Lcom/google/common/logging/Cw$CwRankingEvent;

    if-eqz v0, :cond_5

    .line 347
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/common/logging/Cw$CwStreamletLog;->rankingEvent:Lcom/google/common/logging/Cw$CwRankingEvent;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 349
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 350
    return-void
.end method
