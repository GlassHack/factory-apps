.class public final Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaControlAction"
.end annotation


# static fields
.field public static final COMMAND_COMMAND_UNKNOWN:I = 0x0

.field public static final COMMAND_NEXT:I = 0x3

.field public static final COMMAND_PAUSE:I = 0x5

.field public static final COMMAND_PREVIOUS:I = 0x4

.field public static final COMMAND_RESUME:I = 0x6

.field public static final COMMAND_START:I = 0x1

.field public static final COMMAND_STOP:I = 0x2

.field public static final MEDIA_TYPE_MEDIATYPE_UNKNOWN:I = 0x0

.field public static final MEDIA_TYPE_MUSIC:I = 0x1

.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;


# instance fields
.field private action_:I

.field private bitField0_:I

.field private mediaType_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3361
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 3362
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;->clear()Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;

    .line 3363
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;
    .locals 2

    .prologue
    .line 3310
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;

    if-nez v0, :cond_1

    .line 3311
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3313
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;

    if-nez v0, :cond_0

    .line 3314
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;

    .line 3316
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3318
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;

    return-object v0

    .line 3316
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3436
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3430
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3366
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;->bitField0_:I

    .line 3367
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;->action_:I

    .line 3368
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;->mediaType_:I

    .line 3369
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;->cachedSize:I

    .line 3370
    return-object p0
.end method

.method public clearAction()Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;
    .locals 1

    .prologue
    .line 3337
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;->action_:I

    .line 3338
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;->bitField0_:I

    .line 3339
    return-object p0
.end method

.method public clearMediaType()Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;
    .locals 1

    .prologue
    .line 3356
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;->mediaType_:I

    .line 3357
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;->bitField0_:I

    .line 3358
    return-object p0
.end method

.method public getAction()I
    .locals 1

    .prologue
    .line 3326
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;->action_:I

    return v0
.end method

.method public getMediaType()I
    .locals 1

    .prologue
    .line 3345
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;->mediaType_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 3386
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 3387
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 3388
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;->action_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3391
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 3392
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;->mediaType_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3395
    :cond_1
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;->cachedSize:I

    .line 3396
    return v0
.end method

.method public hasAction()Z
    .locals 1

    .prologue
    .line 3334
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMediaType()Z
    .locals 1

    .prologue
    .line 3353
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;->bitField0_:I

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
    .line 3291
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3404
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3405
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 3409
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3410
    :sswitch_0
    return-object p0

    .line 3415
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;->action_:I

    .line 3416
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;->bitField0_:I

    goto :goto_0

    .line 3420
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;->mediaType_:I

    .line 3421
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;->bitField0_:I

    goto :goto_0

    .line 3405
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public setAction(I)Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3329
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;->action_:I

    .line 3330
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;->bitField0_:I

    .line 3331
    return-object p0
.end method

.method public setMediaType(I)Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3348
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;->mediaType_:I

    .line 3349
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;->bitField0_:I

    .line 3350
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
    .line 3376
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3377
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;->action_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3379
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 3380
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaControlAction;->mediaType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3382
    :cond_1
    return-void
.end method
