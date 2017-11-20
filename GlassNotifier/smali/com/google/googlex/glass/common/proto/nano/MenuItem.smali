.class public final Lcom/google/googlex/glass/common/proto/nano/MenuItem;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "MenuItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/nano/MenuItem$TravelMode;,
        Lcom/google/googlex/glass/common/proto/nano/MenuItem$State;,
        Lcom/google/googlex/glass/common/proto/nano/MenuItem$Action;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/googlex/glass/common/proto/nano/MenuItem;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/googlex/glass/common/proto/nano/MenuItem;


# instance fields
.field private action_:I

.field private bitField0_:I

.field private broadcastAction_:Ljava/lang/String;

.field private id_:Ljava/lang/String;

.field private payload_:Ljava/lang/String;

.field public recipient:Lcom/google/googlex/glass/common/proto/nano/Entity;

.field private removeWhenSelected_:Z

.field private travelMode_:I

.field public value:[Lcom/google/googlex/glass/common/proto/nano/MenuValue;

.field private voiceCommand_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 224
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->clear()Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    .line 225
    return-void
.end method

.method public static emptyArray()[Lcom/google/googlex/glass/common/proto/nano/MenuItem;
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    if-nez v0, :cond_1

    .line 58
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 60
    :try_start_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    if-nez v0, :cond_0

    .line 61
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    sput-object v0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    .line 63
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_1
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    return-object v0

    .line 63
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/MenuItem;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 542
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/MenuItem;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/nano/MenuItem;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 536
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/MenuItem;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/googlex/glass/common/proto/nano/MenuItem;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 228
    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    .line 229
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->id_:Ljava/lang/String;

    .line 230
    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->action_:I

    .line 231
    invoke-static {}, Lcom/google/googlex/glass/common/proto/nano/MenuValue;->emptyArray()[Lcom/google/googlex/glass/common/proto/nano/MenuValue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->value:[Lcom/google/googlex/glass/common/proto/nano/MenuValue;

    .line 232
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->broadcastAction_:Ljava/lang/String;

    .line 233
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->removeWhenSelected_:Z

    .line 234
    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->travelMode_:I

    .line 235
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->recipient:Lcom/google/googlex/glass/common/proto/nano/Entity;

    .line 236
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->payload_:Ljava/lang/String;

    .line 237
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->voiceCommand_:Ljava/lang/String;

    .line 238
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 239
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->cachedSize:I

    .line 240
    return-object p0
.end method

.method public clearAction()Lcom/google/googlex/glass/common/proto/nano/MenuItem;
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->action_:I

    .line 108
    return-object p0
.end method

.method public clearBroadcastAction()Lcom/google/googlex/glass/common/proto/nano/MenuItem;
    .locals 1

    .prologue
    .line 123
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->broadcastAction_:Ljava/lang/String;

    .line 124
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    .line 125
    return-object p0
.end method

.method public clearId()Lcom/google/googlex/glass/common/proto/nano/MenuItem;
    .locals 1

    .prologue
    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->id_:Ljava/lang/String;

    .line 80
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    .line 81
    return-object p0
.end method

.method public clearPayload()Lcom/google/googlex/glass/common/proto/nano/MenuItem;
    .locals 1

    .prologue
    .line 186
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->payload_:Ljava/lang/String;

    .line 187
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    .line 188
    return-object p0
.end method

.method public clearRemoveWhenSelected()Lcom/google/googlex/glass/common/proto/nano/MenuItem;
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->removeWhenSelected_:Z

    .line 146
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    .line 147
    return-object p0
.end method

.method public clearTravelMode()Lcom/google/googlex/glass/common/proto/nano/MenuItem;
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    .line 170
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->travelMode_:I

    .line 171
    return-object p0
.end method

.method public clearVoiceCommand()Lcom/google/googlex/glass/common/proto/nano/MenuItem;
    .locals 1

    .prologue
    .line 208
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->voiceCommand_:Ljava/lang/String;

    .line 209
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    .line 210
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    .prologue
    .line 360
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v2

    .line 361
    .local v2, "size":I
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 362
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->id_:Ljava/lang/String;

    .line 363
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 365
    :cond_0
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 366
    const/4 v3, 0x2

    iget v4, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->action_:I

    .line 367
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 369
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->value:[Lcom/google/googlex/glass/common/proto/nano/MenuValue;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->value:[Lcom/google/googlex/glass/common/proto/nano/MenuValue;

    array-length v3, v3

    if-lez v3, :cond_3

    .line 370
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->value:[Lcom/google/googlex/glass/common/proto/nano/MenuValue;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 371
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->value:[Lcom/google/googlex/glass/common/proto/nano/MenuValue;

    aget-object v0, v3, v1

    .line 372
    .local v0, "element":Lcom/google/googlex/glass/common/proto/nano/MenuValue;
    if-eqz v0, :cond_2

    .line 373
    const/4 v3, 0x3

    .line 374
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 370
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 378
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/nano/MenuValue;
    .end local v1    # "i":I
    :cond_3
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_4

    .line 379
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->broadcastAction_:Ljava/lang/String;

    .line 380
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 382
    :cond_4
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_5

    .line 383
    const/4 v3, 0x7

    iget-boolean v4, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->removeWhenSelected_:Z

    .line 384
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 386
    :cond_5
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_6

    .line 387
    const/16 v3, 0x8

    iget v4, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->travelMode_:I

    .line 388
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 390
    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->recipient:Lcom/google/googlex/glass/common/proto/nano/Entity;

    if-eqz v3, :cond_7

    .line 391
    const/16 v3, 0x9

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->recipient:Lcom/google/googlex/glass/common/proto/nano/Entity;

    .line 392
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 394
    :cond_7
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_8

    .line 395
    const/16 v3, 0xa

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->payload_:Ljava/lang/String;

    .line 396
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 398
    :cond_8
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_9

    .line 399
    const/16 v3, 0xb

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->voiceCommand_:Ljava/lang/String;

    .line 400
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 402
    :cond_9
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 245
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 296
    :cond_0
    :goto_0
    return v1

    .line 248
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 251
    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    .line 252
    .local v0, "other":Lcom/google/googlex/glass/common/proto/nano/MenuItem;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->id_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->id_:Ljava/lang/String;

    .line 253
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 256
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->action_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->action_:I

    if-ne v3, v4, :cond_0

    .line 260
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->value:[Lcom/google/googlex/glass/common/proto/nano/MenuValue;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->value:[Lcom/google/googlex/glass/common/proto/nano/MenuValue;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/InternalNano;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 264
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->broadcastAction_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->broadcastAction_:Ljava/lang/String;

    .line 265
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 268
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->removeWhenSelected_:Z

    iget-boolean v4, v0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->removeWhenSelected_:Z

    if-ne v3, v4, :cond_0

    .line 272
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->travelMode_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->travelMode_:I

    if-ne v3, v4, :cond_0

    .line 276
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->recipient:Lcom/google/googlex/glass/common/proto/nano/Entity;

    if-nez v3, :cond_5

    .line 277
    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->recipient:Lcom/google/googlex/glass/common/proto/nano/Entity;

    if-nez v3, :cond_0

    .line 285
    :cond_2
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->payload_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->payload_:Ljava/lang/String;

    .line 286
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 289
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->voiceCommand_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->voiceCommand_:Ljava/lang/String;

    .line 290
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 293
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 294
    :cond_3
    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto/16 :goto_0

    .line 281
    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->recipient:Lcom/google/googlex/glass/common/proto/nano/Entity;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->recipient:Lcom/google/googlex/glass/common/proto/nano/Entity;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/nano/Entity;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_0

    .line 296
    :cond_6
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public getAction()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->action_:I

    return v0
.end method

.method public getBroadcastAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->broadcastAction_:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getPayload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->payload_:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoveWhenSelected()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->removeWhenSelected_:Z

    return v0
.end method

.method public getTravelMode()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->travelMode_:I

    return v0
.end method

.method public getVoiceCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->voiceCommand_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAction()Z
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasBroadcastAction()Z
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

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
    .line 76
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPayload()Z
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRemoveWhenSelected()Z
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTravelMode()Z
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVoiceCommand()Z
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 301
    const/16 v0, 0x11

    .line 302
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 303
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->id_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 304
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->action_:I

    add-int v0, v1, v3

    .line 305
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->value:[Lcom/google/googlex/glass/common/proto/nano/MenuValue;

    .line 306
    invoke-static {v3}, Lcom/google/protobuf/nano/InternalNano;->hashCode([Ljava/lang/Object;)I

    move-result v3

    add-int v0, v1, v3

    .line 307
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->broadcastAction_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 308
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->removeWhenSelected_:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x4cf

    :goto_0
    add-int v0, v3, v1

    .line 309
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->travelMode_:I

    add-int v0, v1, v3

    .line 310
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->recipient:Lcom/google/googlex/glass/common/proto/nano/Entity;

    if-nez v1, :cond_2

    move v1, v2

    .line 311
    :goto_1
    add-int v0, v3, v1

    .line 312
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->payload_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 313
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->voiceCommand_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 314
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 315
    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 316
    :cond_0
    :goto_2
    add-int v0, v1, v2

    .line 317
    return v0

    .line 308
    :cond_1
    const/16 v1, 0x4d5

    goto :goto_0

    .line 311
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->recipient:Lcom/google/googlex/glass/common/proto/nano/Entity;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/nano/Entity;->hashCode()I

    move-result v1

    goto :goto_1

    .line 316
    :cond_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v2}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v2

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/MenuItem;
    .locals 8
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 410
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v4

    .line 411
    .local v4, "tag":I
    sparse-switch v4, :sswitch_data_0

    .line 415
    invoke-super {p0, p1, v4}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 416
    :sswitch_0
    return-object p0

    .line 421
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->id_:Ljava/lang/String;

    .line 422
    iget v7, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    goto :goto_0

    .line 426
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 427
    .local v2, "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    .line 428
    .local v5, "value":I
    packed-switch v5, :pswitch_data_0

    .line 458
    :pswitch_0
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 459
    invoke-virtual {p0, p1, v4}, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 454
    :pswitch_1
    iput v5, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->action_:I

    .line 455
    iget v7, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    goto :goto_0

    .line 465
    .end local v2    # "initialPos":I
    .end local v5    # "value":I
    :sswitch_3
    const/16 v7, 0x1a

    .line 466
    invoke-static {p1, v7}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 467
    .local v0, "arrayLength":I
    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->value:[Lcom/google/googlex/glass/common/proto/nano/MenuValue;

    if-nez v7, :cond_2

    move v1, v6

    .line 468
    .local v1, "i":I
    :goto_1
    add-int v7, v1, v0

    new-array v3, v7, [Lcom/google/googlex/glass/common/proto/nano/MenuValue;

    .line 470
    .local v3, "newArray":[Lcom/google/googlex/glass/common/proto/nano/MenuValue;
    if-eqz v1, :cond_1

    .line 471
    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->value:[Lcom/google/googlex/glass/common/proto/nano/MenuValue;

    invoke-static {v7, v6, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 473
    :cond_1
    :goto_2
    array-length v7, v3

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_3

    .line 474
    new-instance v7, Lcom/google/googlex/glass/common/proto/nano/MenuValue;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/nano/MenuValue;-><init>()V

    aput-object v7, v3, v1

    .line 475
    aget-object v7, v3, v1

    invoke-virtual {p1, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 476
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 473
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 467
    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/google/googlex/glass/common/proto/nano/MenuValue;
    :cond_2
    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->value:[Lcom/google/googlex/glass/common/proto/nano/MenuValue;

    array-length v1, v7

    goto :goto_1

    .line 479
    .restart local v1    # "i":I
    .restart local v3    # "newArray":[Lcom/google/googlex/glass/common/proto/nano/MenuValue;
    :cond_3
    new-instance v7, Lcom/google/googlex/glass/common/proto/nano/MenuValue;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/nano/MenuValue;-><init>()V

    aput-object v7, v3, v1

    .line 480
    aget-object v7, v3, v1

    invoke-virtual {p1, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 481
    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->value:[Lcom/google/googlex/glass/common/proto/nano/MenuValue;

    goto :goto_0

    .line 485
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/google/googlex/glass/common/proto/nano/MenuValue;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->broadcastAction_:Ljava/lang/String;

    .line 486
    iget v7, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    goto/16 :goto_0

    .line 490
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->removeWhenSelected_:Z

    .line 491
    iget v7, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    or-int/lit8 v7, v7, 0x8

    iput v7, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    goto/16 :goto_0

    .line 495
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 496
    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    .line 497
    .restart local v5    # "value":I
    packed-switch v5, :pswitch_data_1

    .line 507
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 508
    invoke-virtual {p0, p1, v4}, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 503
    :pswitch_2
    iput v5, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->travelMode_:I

    .line 504
    iget v7, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    or-int/lit8 v7, v7, 0x10

    iput v7, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    goto/16 :goto_0

    .line 514
    .end local v2    # "initialPos":I
    .end local v5    # "value":I
    :sswitch_7
    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->recipient:Lcom/google/googlex/glass/common/proto/nano/Entity;

    if-nez v7, :cond_4

    .line 515
    new-instance v7, Lcom/google/googlex/glass/common/proto/nano/Entity;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/nano/Entity;-><init>()V

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->recipient:Lcom/google/googlex/glass/common/proto/nano/Entity;

    .line 517
    :cond_4
    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->recipient:Lcom/google/googlex/glass/common/proto/nano/Entity;

    invoke-virtual {p1, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 521
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->payload_:Ljava/lang/String;

    .line 522
    iget v7, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    or-int/lit8 v7, v7, 0x20

    iput v7, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    goto/16 :goto_0

    .line 526
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->voiceCommand_:Ljava/lang/String;

    .line 527
    iget v7, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    or-int/lit8 v7, v7, 0x40

    iput v7, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    goto/16 :goto_0

    .line 411
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x2a -> :sswitch_4
        0x38 -> :sswitch_5
        0x40 -> :sswitch_6
        0x4a -> :sswitch_7
        0x52 -> :sswitch_8
        0x5a -> :sswitch_9
    .end sparse-switch

    .line 428
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 497
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
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
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setAction(I)Lcom/google/googlex/glass/common/proto/nano/MenuItem;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->action_:I

    .line 99
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    .line 100
    return-object p0
.end method

.method public setBroadcastAction(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/MenuItem;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 128
    if-nez p1, :cond_0

    .line 129
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 131
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->broadcastAction_:Ljava/lang/String;

    .line 132
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    .line 133
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/MenuItem;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 84
    if-nez p1, :cond_0

    .line 85
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 87
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->id_:Ljava/lang/String;

    .line 88
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    .line 89
    return-object p0
.end method

.method public setPayload(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/MenuItem;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 191
    if-nez p1, :cond_0

    .line 192
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 194
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->payload_:Ljava/lang/String;

    .line 195
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    .line 196
    return-object p0
.end method

.method public setRemoveWhenSelected(Z)Lcom/google/googlex/glass/common/proto/nano/MenuItem;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->removeWhenSelected_:Z

    .line 151
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    .line 152
    return-object p0
.end method

.method public setTravelMode(I)Lcom/google/googlex/glass/common/proto/nano/MenuItem;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 161
    iput p1, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->travelMode_:I

    .line 162
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    .line 163
    return-object p0
.end method

.method public setVoiceCommand(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/MenuItem;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 213
    if-nez p1, :cond_0

    .line 214
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 216
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->voiceCommand_:Ljava/lang/String;

    .line 217
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    .line 218
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
    .line 323
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 324
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->id_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 326
    :cond_0
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 327
    const/4 v2, 0x2

    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->action_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 329
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->value:[Lcom/google/googlex/glass/common/proto/nano/MenuValue;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->value:[Lcom/google/googlex/glass/common/proto/nano/MenuValue;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 330
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->value:[Lcom/google/googlex/glass/common/proto/nano/MenuValue;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 331
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->value:[Lcom/google/googlex/glass/common/proto/nano/MenuValue;

    aget-object v0, v2, v1

    .line 332
    .local v0, "element":Lcom/google/googlex/glass/common/proto/nano/MenuValue;
    if-eqz v0, :cond_2

    .line 333
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 330
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 337
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/nano/MenuValue;
    .end local v1    # "i":I
    :cond_3
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_4

    .line 338
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->broadcastAction_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 340
    :cond_4
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_5

    .line 341
    const/4 v2, 0x7

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->removeWhenSelected_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 343
    :cond_5
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_6

    .line 344
    const/16 v2, 0x8

    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->travelMode_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 346
    :cond_6
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->recipient:Lcom/google/googlex/glass/common/proto/nano/Entity;

    if-eqz v2, :cond_7

    .line 347
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->recipient:Lcom/google/googlex/glass/common/proto/nano/Entity;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 349
    :cond_7
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_8

    .line 350
    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->payload_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 352
    :cond_8
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_9

    .line 353
    const/16 v2, 0xb

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->voiceCommand_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 355
    :cond_9
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 356
    return-void
.end method
