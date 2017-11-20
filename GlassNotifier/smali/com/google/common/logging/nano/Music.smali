.class public final Lcom/google/common/logging/nano/Music;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Music.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/nano/Music$ErrorCode;,
        Lcom/google/common/logging/nano/Music$SeedType;,
        Lcom/google/common/logging/nano/Music$UiType;,
        Lcom/google/common/logging/nano/Music$PlayerCommand;,
        Lcom/google/common/logging/nano/Music$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Music;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Music;


# instance fields
.field private bitField0_:I

.field private errorCode_:I

.field private inputType_:I

.field private musicErrorCodeExtra_:I

.field private numberOfTracks_:I

.field private playerCommand_:I

.field private previousCommand_:I

.field private seedType_:I

.field private success_:Z

.field private swipe_:I

.field private timeSincePreviousCommand_:J

.field private timeSpent_:J

.field private type_:I

.field private uiType_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 333
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 334
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Music;->clear()Lcom/google/common/logging/nano/Music;

    .line 335
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Music;
    .locals 2

    .prologue
    .line 71
    sget-object v0, Lcom/google/common/logging/nano/Music;->_emptyArray:[Lcom/google/common/logging/nano/Music;

    if-nez v0, :cond_1

    .line 72
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 74
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/Music;->_emptyArray:[Lcom/google/common/logging/nano/Music;

    if-nez v0, :cond_0

    .line 75
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/Music;

    sput-object v0, Lcom/google/common/logging/nano/Music;->_emptyArray:[Lcom/google/common/logging/nano/Music;

    .line 77
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/Music;->_emptyArray:[Lcom/google/common/logging/nano/Music;

    return-object v0

    .line 77
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Music;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 769
    new-instance v0, Lcom/google/common/logging/nano/Music;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Music;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/Music;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Music;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/Music;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 763
    new-instance v0, Lcom/google/common/logging/nano/Music;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Music;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Music;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/Music;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 338
    iput v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    .line 339
    iput v0, p0, Lcom/google/common/logging/nano/Music;->type_:I

    .line 340
    iput v0, p0, Lcom/google/common/logging/nano/Music;->playerCommand_:I

    .line 341
    iput v0, p0, Lcom/google/common/logging/nano/Music;->uiType_:I

    .line 342
    iput v0, p0, Lcom/google/common/logging/nano/Music;->previousCommand_:I

    .line 343
    iput-wide v2, p0, Lcom/google/common/logging/nano/Music;->timeSincePreviousCommand_:J

    .line 344
    iput v0, p0, Lcom/google/common/logging/nano/Music;->numberOfTracks_:I

    .line 345
    iput-wide v2, p0, Lcom/google/common/logging/nano/Music;->timeSpent_:J

    .line 346
    iput-boolean v0, p0, Lcom/google/common/logging/nano/Music;->success_:Z

    .line 347
    iput v0, p0, Lcom/google/common/logging/nano/Music;->seedType_:I

    .line 348
    iput v0, p0, Lcom/google/common/logging/nano/Music;->inputType_:I

    .line 349
    iput v0, p0, Lcom/google/common/logging/nano/Music;->swipe_:I

    .line 350
    iput v0, p0, Lcom/google/common/logging/nano/Music;->errorCode_:I

    .line 351
    iput v0, p0, Lcom/google/common/logging/nano/Music;->musicErrorCodeExtra_:I

    .line 352
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/Music;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 353
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Music;->cachedSize:I

    .line 354
    return-object p0
.end method

.method public clearErrorCode()Lcom/google/common/logging/nano/Music;
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    .line 308
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/Music;->errorCode_:I

    .line 309
    return-object p0
.end method

.method public clearInputType()Lcom/google/common/logging/nano/Music;
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    .line 270
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/Music;->inputType_:I

    .line 271
    return-object p0
.end method

.method public clearMusicErrorCodeExtra()Lcom/google/common/logging/nano/Music;
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/Music;->musicErrorCodeExtra_:I

    .line 322
    iget v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    .line 323
    return-object p0
.end method

.method public clearNumberOfTracks()Lcom/google/common/logging/nano/Music;
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/Music;->numberOfTracks_:I

    .line 189
    iget v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    .line 190
    return-object p0
.end method

.method public clearPlayerCommand()Lcom/google/common/logging/nano/Music;
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/Music;->playerCommand_:I

    .line 119
    return-object p0
.end method

.method public clearPreviousCommand()Lcom/google/common/logging/nano/Music;
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    .line 156
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/Music;->previousCommand_:I

    .line 157
    return-object p0
.end method

.method public clearSeedType()Lcom/google/common/logging/nano/Music;
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    .line 251
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/Music;->seedType_:I

    .line 252
    return-object p0
.end method

.method public clearSuccess()Lcom/google/common/logging/nano/Music;
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/logging/nano/Music;->success_:Z

    .line 227
    iget v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    .line 228
    return-object p0
.end method

.method public clearSwipe()Lcom/google/common/logging/nano/Music;
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    .line 289
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/Music;->swipe_:I

    .line 290
    return-object p0
.end method

.method public clearTimeSincePreviousCommand()Lcom/google/common/logging/nano/Music;
    .locals 2

    .prologue
    .line 169
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/logging/nano/Music;->timeSincePreviousCommand_:J

    .line 170
    iget v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    .line 171
    return-object p0
.end method

.method public clearTimeSpent()Lcom/google/common/logging/nano/Music;
    .locals 2

    .prologue
    .line 207
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/logging/nano/Music;->timeSpent_:J

    .line 208
    iget v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    .line 209
    return-object p0
.end method

.method public clearType()Lcom/google/common/logging/nano/Music;
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/Music;->type_:I

    .line 100
    return-object p0
.end method

.method public clearUiType()Lcom/google/common/logging/nano/Music;
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/Music;->uiType_:I

    .line 138
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 494
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 495
    .local v0, "size":I
    iget v1, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 496
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/logging/nano/Music;->type_:I

    .line 497
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 499
    :cond_0
    iget v1, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 500
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/common/logging/nano/Music;->playerCommand_:I

    .line 501
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 503
    :cond_1
    iget v1, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 504
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/common/logging/nano/Music;->uiType_:I

    .line 505
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 507
    :cond_2
    iget v1, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 508
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/common/logging/nano/Music;->previousCommand_:I

    .line 509
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 511
    :cond_3
    iget v1, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 512
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/common/logging/nano/Music;->timeSincePreviousCommand_:J

    .line 513
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 515
    :cond_4
    iget v1, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 516
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/common/logging/nano/Music;->numberOfTracks_:I

    .line 517
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 519
    :cond_5
    iget v1, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 520
    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/common/logging/nano/Music;->timeSpent_:J

    .line 521
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 523
    :cond_6
    iget v1, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 524
    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/google/common/logging/nano/Music;->success_:Z

    .line 525
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 527
    :cond_7
    iget v1, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    .line 528
    const/16 v1, 0x9

    iget v2, p0, Lcom/google/common/logging/nano/Music;->seedType_:I

    .line 529
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 531
    :cond_8
    iget v1, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    .line 532
    const/16 v1, 0xa

    iget v2, p0, Lcom/google/common/logging/nano/Music;->inputType_:I

    .line 533
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 535
    :cond_9
    iget v1, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    .line 536
    const/16 v1, 0xb

    iget v2, p0, Lcom/google/common/logging/nano/Music;->swipe_:I

    .line 537
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 539
    :cond_a
    iget v1, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_b

    .line 540
    const/16 v1, 0xc

    iget v2, p0, Lcom/google/common/logging/nano/Music;->errorCode_:I

    .line 541
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 543
    :cond_b
    iget v1, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_c

    .line 544
    const/16 v1, 0xd

    iget v2, p0, Lcom/google/common/logging/nano/Music;->musicErrorCodeExtra_:I

    .line 545
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 547
    :cond_c
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 359
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 421
    :cond_0
    :goto_0
    return v1

    .line 362
    :cond_1
    instance-of v3, p1, Lcom/google/common/logging/nano/Music;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 365
    check-cast v0, Lcom/google/common/logging/nano/Music;

    .line 366
    .local v0, "other":Lcom/google/common/logging/nano/Music;
    iget v3, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/Music;->type_:I

    iget v4, v0, Lcom/google/common/logging/nano/Music;->type_:I

    if-ne v3, v4, :cond_0

    .line 370
    iget v3, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/Music;->playerCommand_:I

    iget v4, v0, Lcom/google/common/logging/nano/Music;->playerCommand_:I

    if-ne v3, v4, :cond_0

    .line 374
    iget v3, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/Music;->uiType_:I

    iget v4, v0, Lcom/google/common/logging/nano/Music;->uiType_:I

    if-ne v3, v4, :cond_0

    .line 378
    iget v3, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    iget v4, v0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/Music;->previousCommand_:I

    iget v4, v0, Lcom/google/common/logging/nano/Music;->previousCommand_:I

    if-ne v3, v4, :cond_0

    .line 382
    iget v3, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    iget v4, v0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/common/logging/nano/Music;->timeSincePreviousCommand_:J

    iget-wide v6, v0, Lcom/google/common/logging/nano/Music;->timeSincePreviousCommand_:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 386
    iget v3, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    iget v4, v0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/Music;->numberOfTracks_:I

    iget v4, v0, Lcom/google/common/logging/nano/Music;->numberOfTracks_:I

    if-ne v3, v4, :cond_0

    .line 390
    iget v3, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    iget v4, v0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/common/logging/nano/Music;->timeSpent_:J

    iget-wide v6, v0, Lcom/google/common/logging/nano/Music;->timeSpent_:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 394
    iget v3, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    iget v4, v0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/common/logging/nano/Music;->success_:Z

    iget-boolean v4, v0, Lcom/google/common/logging/nano/Music;->success_:Z

    if-ne v3, v4, :cond_0

    .line 398
    iget v3, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    iget v4, v0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit16 v4, v4, 0x100

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/Music;->seedType_:I

    iget v4, v0, Lcom/google/common/logging/nano/Music;->seedType_:I

    if-ne v3, v4, :cond_0

    .line 402
    iget v3, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    iget v4, v0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit16 v4, v4, 0x200

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/Music;->inputType_:I

    iget v4, v0, Lcom/google/common/logging/nano/Music;->inputType_:I

    if-ne v3, v4, :cond_0

    .line 406
    iget v3, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit16 v3, v3, 0x400

    iget v4, v0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit16 v4, v4, 0x400

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/Music;->swipe_:I

    iget v4, v0, Lcom/google/common/logging/nano/Music;->swipe_:I

    if-ne v3, v4, :cond_0

    .line 410
    iget v3, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit16 v3, v3, 0x800

    iget v4, v0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit16 v4, v4, 0x800

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/Music;->errorCode_:I

    iget v4, v0, Lcom/google/common/logging/nano/Music;->errorCode_:I

    if-ne v3, v4, :cond_0

    .line 414
    iget v3, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit16 v3, v3, 0x1000

    iget v4, v0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit16 v4, v4, 0x1000

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/Music;->musicErrorCodeExtra_:I

    iget v4, v0, Lcom/google/common/logging/nano/Music;->musicErrorCodeExtra_:I

    if-ne v3, v4, :cond_0

    .line 418
    iget-object v3, p0, Lcom/google/common/logging/nano/Music;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/common/logging/nano/Music;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 419
    :cond_2
    iget-object v3, v0, Lcom/google/common/logging/nano/Music;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/common/logging/nano/Music;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto/16 :goto_0

    .line 421
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Music;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/common/logging/nano/Music;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lcom/google/common/logging/nano/Music;->errorCode_:I

    return v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/google/common/logging/nano/Music;->inputType_:I

    return v0
.end method

.method public getMusicErrorCodeExtra()I
    .locals 1

    .prologue
    .line 315
    iget v0, p0, Lcom/google/common/logging/nano/Music;->musicErrorCodeExtra_:I

    return v0
.end method

.method public getNumberOfTracks()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/google/common/logging/nano/Music;->numberOfTracks_:I

    return v0
.end method

.method public getPlayerCommand()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/google/common/logging/nano/Music;->playerCommand_:I

    return v0
.end method

.method public getPreviousCommand()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/google/common/logging/nano/Music;->previousCommand_:I

    return v0
.end method

.method public getSeedType()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/google/common/logging/nano/Music;->seedType_:I

    return v0
.end method

.method public getSuccess()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/google/common/logging/nano/Music;->success_:Z

    return v0
.end method

.method public getSwipe()I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lcom/google/common/logging/nano/Music;->swipe_:I

    return v0
.end method

.method public getTimeSincePreviousCommand()J
    .locals 2

    .prologue
    .line 163
    iget-wide v0, p0, Lcom/google/common/logging/nano/Music;->timeSincePreviousCommand_:J

    return-wide v0
.end method

.method public getTimeSpent()J
    .locals 2

    .prologue
    .line 201
    iget-wide v0, p0, Lcom/google/common/logging/nano/Music;->timeSpent_:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/google/common/logging/nano/Music;->type_:I

    return v0
.end method

.method public getUiType()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/google/common/logging/nano/Music;->uiType_:I

    return v0
.end method

.method public hasErrorCode()Z
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

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
    .line 266
    iget v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMusicErrorCodeExtra()Z
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNumberOfTracks()Z
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPlayerCommand()Z
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPreviousCommand()Z
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSeedType()Z
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSuccess()Z
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSwipe()Z
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimeSincePreviousCommand()Z
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimeSpent()Z
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

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
    .line 95
    iget v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUiType()Z
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 426
    const/16 v0, 0x11

    .line 427
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 428
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/nano/Music;->type_:I

    add-int v0, v1, v2

    .line 429
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/nano/Music;->playerCommand_:I

    add-int v0, v1, v2

    .line 430
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/nano/Music;->uiType_:I

    add-int v0, v1, v2

    .line 431
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/nano/Music;->previousCommand_:I

    add-int v0, v1, v2

    .line 432
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/common/logging/nano/Music;->timeSincePreviousCommand_:J

    iget-wide v4, p0, Lcom/google/common/logging/nano/Music;->timeSincePreviousCommand_:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 433
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/nano/Music;->numberOfTracks_:I

    add-int v0, v1, v2

    .line 434
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/common/logging/nano/Music;->timeSpent_:J

    iget-wide v4, p0, Lcom/google/common/logging/nano/Music;->timeSpent_:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 435
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/common/logging/nano/Music;->success_:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x4cf

    :goto_0
    add-int v0, v2, v1

    .line 436
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/nano/Music;->seedType_:I

    add-int v0, v1, v2

    .line 437
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/nano/Music;->inputType_:I

    add-int v0, v1, v2

    .line 438
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/nano/Music;->swipe_:I

    add-int v0, v1, v2

    .line 439
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/nano/Music;->errorCode_:I

    add-int v0, v1, v2

    .line 440
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/nano/Music;->musicErrorCodeExtra_:I

    add-int v0, v1, v2

    .line 441
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/nano/Music;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/logging/nano/Music;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 442
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x0

    .line 443
    :goto_1
    add-int v0, v2, v1

    .line 444
    return v0

    .line 435
    :cond_1
    const/16 v1, 0x4d5

    goto :goto_0

    .line 443
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Music;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Music;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 555
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v1

    .line 556
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 560
    invoke-super {p0, p1, v1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 561
    :sswitch_0
    return-object p0

    .line 566
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 567
    .local v0, "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 568
    .local v2, "value":I
    sparse-switch v2, :sswitch_data_1

    .line 578
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 579
    invoke-virtual {p0, p1, v1}, Lcom/google/common/logging/nano/Music;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 574
    :sswitch_2
    iput v2, p0, Lcom/google/common/logging/nano/Music;->type_:I

    .line 575
    iget v3, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    goto :goto_0

    .line 585
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 586
    .restart local v0    # "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 587
    .restart local v2    # "value":I
    packed-switch v2, :pswitch_data_0

    .line 599
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 600
    invoke-virtual {p0, p1, v1}, Lcom/google/common/logging/nano/Music;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 595
    :pswitch_0
    iput v2, p0, Lcom/google/common/logging/nano/Music;->playerCommand_:I

    .line 596
    iget v3, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    goto :goto_0

    .line 606
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 607
    .restart local v0    # "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 608
    .restart local v2    # "value":I
    packed-switch v2, :pswitch_data_1

    .line 618
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 619
    invoke-virtual {p0, p1, v1}, Lcom/google/common/logging/nano/Music;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 614
    :pswitch_1
    iput v2, p0, Lcom/google/common/logging/nano/Music;->uiType_:I

    .line 615
    iget v3, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    goto :goto_0

    .line 625
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 626
    .restart local v0    # "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 627
    .restart local v2    # "value":I
    packed-switch v2, :pswitch_data_2

    .line 639
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 640
    invoke-virtual {p0, p1, v1}, Lcom/google/common/logging/nano/Music;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 635
    :pswitch_2
    iput v2, p0, Lcom/google/common/logging/nano/Music;->previousCommand_:I

    .line 636
    iget v3, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    goto :goto_0

    .line 646
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/common/logging/nano/Music;->timeSincePreviousCommand_:J

    .line 647
    iget v3, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    goto/16 :goto_0

    .line 651
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/google/common/logging/nano/Music;->numberOfTracks_:I

    .line 652
    iget v3, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    goto/16 :goto_0

    .line 656
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/common/logging/nano/Music;->timeSpent_:J

    .line 657
    iget v3, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    goto/16 :goto_0

    .line 661
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/common/logging/nano/Music;->success_:Z

    .line 662
    iget v3, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    goto/16 :goto_0

    .line 666
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 667
    .restart local v0    # "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 668
    .restart local v2    # "value":I
    packed-switch v2, :pswitch_data_3

    .line 679
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 680
    invoke-virtual {p0, p1, v1}, Lcom/google/common/logging/nano/Music;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 675
    :pswitch_3
    iput v2, p0, Lcom/google/common/logging/nano/Music;->seedType_:I

    .line 676
    iget v3, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    or-int/lit16 v3, v3, 0x100

    iput v3, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    goto/16 :goto_0

    .line 686
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 687
    .restart local v0    # "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 688
    .restart local v2    # "value":I
    packed-switch v2, :pswitch_data_4

    .line 696
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 697
    invoke-virtual {p0, p1, v1}, Lcom/google/common/logging/nano/Music;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 692
    :pswitch_4
    iput v2, p0, Lcom/google/common/logging/nano/Music;->inputType_:I

    .line 693
    iget v3, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    or-int/lit16 v3, v3, 0x200

    iput v3, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    goto/16 :goto_0

    .line 703
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 704
    .restart local v0    # "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 705
    .restart local v2    # "value":I
    packed-switch v2, :pswitch_data_5

    .line 716
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 717
    invoke-virtual {p0, p1, v1}, Lcom/google/common/logging/nano/Music;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 712
    :pswitch_5
    iput v2, p0, Lcom/google/common/logging/nano/Music;->swipe_:I

    .line 713
    iget v3, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    or-int/lit16 v3, v3, 0x400

    iput v3, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    goto/16 :goto_0

    .line 723
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 724
    .restart local v0    # "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 725
    .restart local v2    # "value":I
    packed-switch v2, :pswitch_data_6

    .line 746
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 747
    invoke-virtual {p0, p1, v1}, Lcom/google/common/logging/nano/Music;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 742
    :pswitch_6
    iput v2, p0, Lcom/google/common/logging/nano/Music;->errorCode_:I

    .line 743
    iget v3, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    or-int/lit16 v3, v3, 0x800

    iput v3, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    goto/16 :goto_0

    .line 753
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/google/common/logging/nano/Music;->musicErrorCodeExtra_:I

    .line 754
    iget v3, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    or-int/lit16 v3, v3, 0x1000

    iput v3, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    goto/16 :goto_0

    .line 556
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_3
        0x18 -> :sswitch_4
        0x20 -> :sswitch_5
        0x28 -> :sswitch_6
        0x30 -> :sswitch_7
        0x38 -> :sswitch_8
        0x40 -> :sswitch_9
        0x48 -> :sswitch_a
        0x50 -> :sswitch_b
        0x58 -> :sswitch_c
        0x60 -> :sswitch_d
        0x68 -> :sswitch_e
    .end sparse-switch

    .line 568
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_2
        0x2 -> :sswitch_2
        0x3 -> :sswitch_2
        0xc -> :sswitch_2
    .end sparse-switch

    .line 587
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 608
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 627
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

    .line 668
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 688
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 705
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    .line 725
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
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
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Music;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Music;

    move-result-object v0

    return-object v0
.end method

.method public setErrorCode(I)Lcom/google/common/logging/nano/Music;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 299
    iput p1, p0, Lcom/google/common/logging/nano/Music;->errorCode_:I

    .line 300
    iget v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    .line 301
    return-object p0
.end method

.method public setInputType(I)Lcom/google/common/logging/nano/Music;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 261
    iput p1, p0, Lcom/google/common/logging/nano/Music;->inputType_:I

    .line 262
    iget v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    .line 263
    return-object p0
.end method

.method public setMusicErrorCodeExtra(I)Lcom/google/common/logging/nano/Music;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 326
    iput p1, p0, Lcom/google/common/logging/nano/Music;->musicErrorCodeExtra_:I

    .line 327
    iget v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    .line 328
    return-object p0
.end method

.method public setNumberOfTracks(I)Lcom/google/common/logging/nano/Music;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 193
    iput p1, p0, Lcom/google/common/logging/nano/Music;->numberOfTracks_:I

    .line 194
    iget v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    .line 195
    return-object p0
.end method

.method public setPlayerCommand(I)Lcom/google/common/logging/nano/Music;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/google/common/logging/nano/Music;->playerCommand_:I

    .line 110
    iget v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    .line 111
    return-object p0
.end method

.method public setPreviousCommand(I)Lcom/google/common/logging/nano/Music;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 147
    iput p1, p0, Lcom/google/common/logging/nano/Music;->previousCommand_:I

    .line 148
    iget v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    .line 149
    return-object p0
.end method

.method public setSeedType(I)Lcom/google/common/logging/nano/Music;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 242
    iput p1, p0, Lcom/google/common/logging/nano/Music;->seedType_:I

    .line 243
    iget v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    .line 244
    return-object p0
.end method

.method public setSuccess(Z)Lcom/google/common/logging/nano/Music;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 231
    iput-boolean p1, p0, Lcom/google/common/logging/nano/Music;->success_:Z

    .line 232
    iget v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    .line 233
    return-object p0
.end method

.method public setSwipe(I)Lcom/google/common/logging/nano/Music;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 280
    iput p1, p0, Lcom/google/common/logging/nano/Music;->swipe_:I

    .line 281
    iget v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    .line 282
    return-object p0
.end method

.method public setTimeSincePreviousCommand(J)Lcom/google/common/logging/nano/Music;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 174
    iput-wide p1, p0, Lcom/google/common/logging/nano/Music;->timeSincePreviousCommand_:J

    .line 175
    iget v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    .line 176
    return-object p0
.end method

.method public setTimeSpent(J)Lcom/google/common/logging/nano/Music;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 212
    iput-wide p1, p0, Lcom/google/common/logging/nano/Music;->timeSpent_:J

    .line 213
    iget v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    .line 214
    return-object p0
.end method

.method public setType(I)Lcom/google/common/logging/nano/Music;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/google/common/logging/nano/Music;->type_:I

    .line 91
    iget v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    .line 92
    return-object p0
.end method

.method public setUiType(I)Lcom/google/common/logging/nano/Music;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 128
    iput p1, p0, Lcom/google/common/logging/nano/Music;->uiType_:I

    .line 129
    iget v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    .line 130
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 450
    iget v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 451
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/common/logging/nano/Music;->type_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 453
    :cond_0
    iget v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 454
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/common/logging/nano/Music;->playerCommand_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 456
    :cond_1
    iget v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 457
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/common/logging/nano/Music;->uiType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 459
    :cond_2
    iget v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 460
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/common/logging/nano/Music;->previousCommand_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 462
    :cond_3
    iget v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 463
    const/4 v0, 0x5

    iget-wide v2, p0, Lcom/google/common/logging/nano/Music;->timeSincePreviousCommand_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 465
    :cond_4
    iget v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 466
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/common/logging/nano/Music;->numberOfTracks_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 468
    :cond_5
    iget v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 469
    const/4 v0, 0x7

    iget-wide v2, p0, Lcom/google/common/logging/nano/Music;->timeSpent_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 471
    :cond_6
    iget v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 472
    const/16 v0, 0x8

    iget-boolean v1, p0, Lcom/google/common/logging/nano/Music;->success_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 474
    :cond_7
    iget v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    .line 475
    const/16 v0, 0x9

    iget v1, p0, Lcom/google/common/logging/nano/Music;->seedType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 477
    :cond_8
    iget v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    .line 478
    const/16 v0, 0xa

    iget v1, p0, Lcom/google/common/logging/nano/Music;->inputType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 480
    :cond_9
    iget v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    .line 481
    const/16 v0, 0xb

    iget v1, p0, Lcom/google/common/logging/nano/Music;->swipe_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 483
    :cond_a
    iget v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_b

    .line 484
    const/16 v0, 0xc

    iget v1, p0, Lcom/google/common/logging/nano/Music;->errorCode_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 486
    :cond_b
    iget v0, p0, Lcom/google/common/logging/nano/Music;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    .line 487
    const/16 v0, 0xd

    iget v1, p0, Lcom/google/common/logging/nano/Music;->musicErrorCodeExtra_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 489
    :cond_c
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 490
    return-void
.end method
