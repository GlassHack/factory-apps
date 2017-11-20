.class public final Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;


# instance fields
.field private action_:I

.field private bitField0_:I

.field private broadcastAction_:Ljava/lang/String;

.field private id_:Ljava/lang/String;

.field private payload_:Ljava/lang/String;

.field private recipient_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

.field private removeWhenSelected_:Z

.field private travelMode_:I

.field public value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

.field private voiceCommand_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5090
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5091
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 5138
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->id_:Ljava/lang/String;

    .line 5160
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->action_:I

    .line 5179
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    .line 5182
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->broadcastAction_:Ljava/lang/String;

    .line 5204
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->removeWhenSelected_:Z

    .line 5223
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->travelMode_:I

    .line 5261
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->payload_:Ljava/lang/String;

    .line 5283
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->voiceCommand_:Ljava/lang/String;

    .line 5091
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .locals 1

    .prologue
    .line 5556
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .locals 1

    .prologue
    .line 5550
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    return-object v0
.end method


# virtual methods
.method public final clearAction()Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .locals 1

    .prologue
    .line 5173
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->action_:I

    .line 5174
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    .line 5175
    return-object p0
.end method

.method public final clearBroadcastAction()Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .locals 1

    .prologue
    .line 5198
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->broadcastAction_:Ljava/lang/String;

    .line 5199
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    .line 5200
    return-object p0
.end method

.method public final clearId()Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .locals 1

    .prologue
    .line 5154
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->id_:Ljava/lang/String;

    .line 5155
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    .line 5156
    return-object p0
.end method

.method public final clearPayload()Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .locals 1

    .prologue
    .line 5277
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->payload_:Ljava/lang/String;

    .line 5278
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    .line 5279
    return-object p0
.end method

.method public final clearRecipient()Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .locals 1

    .prologue
    .line 5257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->recipient_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 5258
    return-object p0
.end method

.method public final clearRemoveWhenSelected()Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .locals 1

    .prologue
    .line 5217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->removeWhenSelected_:Z

    .line 5218
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    .line 5219
    return-object p0
.end method

.method public final clearTravelMode()Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .locals 1

    .prologue
    .line 5236
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->travelMode_:I

    .line 5237
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    .line 5238
    return-object p0
.end method

.method public final clearVoiceCommand()Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .locals 1

    .prologue
    .line 5299
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->voiceCommand_:Ljava/lang/String;

    .line 5300
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    .line 5301
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5306
    if-ne p1, p0, :cond_1

    .line 5318
    :cond_0
    :goto_0
    return v0

    .line 5307
    :cond_1
    instance-of v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 5308
    :cond_2
    check-cast p1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 5309
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->id_:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->id_:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_1
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->action_:I

    iget v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->action_:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    .line 5311
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->broadcastAction_:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->broadcastAction_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 5312
    :goto_2
    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->removeWhenSelected_:Z

    iget-boolean v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->removeWhenSelected_:Z

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->travelMode_:I

    iget v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->travelMode_:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->recipient_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->recipient_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v2, :cond_3

    .line 5315
    :goto_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->payload_:Ljava/lang/String;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->payload_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 5316
    :goto_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->voiceCommand_:Ljava/lang/String;

    if-nez v2, :cond_8

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->voiceCommand_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 5317
    :goto_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_9

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 5318
    goto :goto_0

    .line 5309
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->id_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->id_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 5311
    :cond_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->broadcastAction_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->broadcastAction_:Ljava/lang/String;

    .line 5312
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->recipient_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->recipient_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 5315
    invoke-virtual {v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->payload_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->payload_:Ljava/lang/String;

    .line 5316
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_4

    :cond_8
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->voiceCommand_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->voiceCommand_:Ljava/lang/String;

    .line 5317
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_5

    :cond_9
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->unknownFieldData:Ljava/util/List;

    .line 5318
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_0
.end method

.method public final getAction()I
    .locals 1

    .prologue
    .line 5162
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->action_:I

    return v0
.end method

.method public final getBroadcastAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5184
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->broadcastAction_:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5140
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public final getPayload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5263
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->payload_:Ljava/lang/String;

    return-object v0
.end method

.method public final getRecipient()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 5244
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->recipient_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    return-object v0
.end method

.method public final getRemoveWhenSelected()Z
    .locals 1

    .prologue
    .line 5206
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->removeWhenSelected_:Z

    return v0
.end method

.method public final getSerializedSize()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 5380
    .line 5381
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_9

    .line 5382
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->id_:Ljava/lang/String;

    .line 5383
    invoke-static {v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    .line 5385
    :goto_0
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 5386
    const/4 v2, 0x2

    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->action_:I

    .line 5387
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 5389
    :cond_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    if-eqz v2, :cond_2

    .line 5390
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 5391
    if-eqz v4, :cond_1

    .line 5392
    const/4 v5, 0x3

    .line 5393
    invoke-static {v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v0, v4

    .line 5390
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5397
    :cond_2
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 5398
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->broadcastAction_:Ljava/lang/String;

    .line 5399
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5401
    :cond_3
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    .line 5402
    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->removeWhenSelected_:Z

    .line 5403
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5405
    :cond_4
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_5

    .line 5406
    const/16 v1, 0x8

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->travelMode_:I

    .line 5407
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5409
    :cond_5
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->recipient_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v1, :cond_6

    .line 5410
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->recipient_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 5411
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5413
    :cond_6
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_7

    .line 5414
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->payload_:Ljava/lang/String;

    .line 5415
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5417
    :cond_7
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_8

    .line 5418
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->voiceCommand_:Ljava/lang/String;

    .line 5419
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5421
    :cond_8
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5422
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->cachedSize:I

    .line 5423
    return v0

    :cond_9
    move v0, v1

    goto/16 :goto_0
.end method

.method public final getTravelMode()I
    .locals 1

    .prologue
    .line 5225
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->travelMode_:I

    return v0
.end method

.method public final getVoiceCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5285
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->voiceCommand_:Ljava/lang/String;

    return-object v0
.end method

.method public final hasAction()Z
    .locals 1

    .prologue
    .line 5170
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasBroadcastAction()Z
    .locals 1

    .prologue
    .line 5195
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasId()Z
    .locals 1

    .prologue
    .line 5151
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasPayload()Z
    .locals 1

    .prologue
    .line 5274
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasRecipient()Z
    .locals 1

    .prologue
    .line 5254
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->recipient_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasRemoveWhenSelected()Z
    .locals 1

    .prologue
    .line 5214
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasTravelMode()Z
    .locals 1

    .prologue
    .line 5233
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasVoiceCommand()Z
    .locals 1

    .prologue
    .line 5296
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 5322
    .line 5323
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->id_:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 5324
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->action_:I

    add-int/2addr v0, v2

    .line 5325
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    if-nez v2, :cond_2

    mul-int/lit8 v2, v0, 0x1f

    .line 5331
    :cond_0
    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->broadcastAction_:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 5332
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->removeWhenSelected_:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_2
    add-int/2addr v0, v2

    .line 5333
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->travelMode_:I

    add-int/2addr v0, v2

    .line 5334
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->recipient_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v0, :cond_6

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 5335
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->payload_:Ljava/lang/String;

    if-nez v0, :cond_7

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    .line 5336
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->voiceCommand_:Ljava/lang/String;

    if-nez v0, :cond_8

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    .line 5337
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_9

    :goto_6
    add-int/2addr v0, v1

    .line 5338
    return v0

    .line 5323
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->id_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    move v2, v0

    move v0, v1

    .line 5327
    :goto_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 5328
    mul-int/lit8 v3, v2, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    aget-object v2, v2, v0

    if-nez v2, :cond_3

    move v2, v1

    :goto_8
    add-int/2addr v2, v3

    .line 5327
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 5328
    :cond_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->hashCode()I

    move-result v2

    goto :goto_8

    .line 5331
    :cond_4
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->broadcastAction_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 5332
    :cond_5
    const/4 v0, 0x2

    goto :goto_2

    .line 5334
    :cond_6
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->recipient_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->hashCode()I

    move-result v0

    goto :goto_3

    .line 5335
    :cond_7
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->payload_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4

    .line 5336
    :cond_8
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->voiceCommand_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_5

    .line 5337
    :cond_9
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_6
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 5431
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 5432
    sparse-switch v0, :sswitch_data_0

    .line 5436
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    .line 5437
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->unknownFieldData:Ljava/util/List;

    .line 5440
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->unknownFieldData:Ljava/util/List;

    invoke-static {v2, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5442
    :sswitch_0
    return-object p0

    .line 5447
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->id_:Ljava/lang/String;

    .line 5448
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    goto :goto_0

    .line 5452
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 5453
    if-eqz v0, :cond_2

    if-eq v0, v4, :cond_2

    if-eq v0, v5, :cond_2

    if-eq v0, v6, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2

    const/4 v2, 0x7

    if-eq v0, v2, :cond_2

    const/16 v2, 0x8

    if-eq v0, v2, :cond_2

    const/16 v2, 0x9

    if-eq v0, v2, :cond_2

    const/16 v2, 0xa

    if-eq v0, v2, :cond_2

    const/16 v2, 0xb

    if-eq v0, v2, :cond_2

    const/16 v2, 0xc

    if-eq v0, v2, :cond_2

    const/16 v2, 0xd

    if-eq v0, v2, :cond_2

    const/16 v2, 0xe

    if-eq v0, v2, :cond_2

    const/16 v2, 0xf

    if-eq v0, v2, :cond_2

    const/16 v2, 0x10

    if-eq v0, v2, :cond_2

    const/16 v2, 0x11

    if-eq v0, v2, :cond_2

    const/16 v2, 0x12

    if-eq v0, v2, :cond_2

    const/16 v2, 0x13

    if-eq v0, v2, :cond_2

    const/16 v2, 0x14

    if-eq v0, v2, :cond_2

    const/16 v2, 0x15

    if-eq v0, v2, :cond_2

    const/16 v2, 0x16

    if-eq v0, v2, :cond_2

    const/16 v2, 0x17

    if-eq v0, v2, :cond_2

    const/16 v2, 0x18

    if-eq v0, v2, :cond_2

    const/16 v2, 0x19

    if-ne v0, v2, :cond_3

    .line 5478
    :cond_2
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->action_:I

    .line 5479
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    goto/16 :goto_0

    .line 5481
    :cond_3
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->action_:I

    goto/16 :goto_0

    .line 5486
    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 5487
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    if-nez v0, :cond_5

    move v0, v1

    .line 5488
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    .line 5489
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    if-eqz v3, :cond_4

    .line 5490
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5492
    :cond_4
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    .line 5493
    :goto_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_6

    .line 5494
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    new-instance v3, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;-><init>()V

    aput-object v3, v2, v0

    .line 5495
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 5496
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5493
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5487
    :cond_5
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    array-length v0, v0

    goto :goto_1

    .line 5499
    :cond_6
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    new-instance v3, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;-><init>()V

    aput-object v3, v2, v0

    .line 5500
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 5504
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->broadcastAction_:Ljava/lang/String;

    .line 5505
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    goto/16 :goto_0

    .line 5509
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->removeWhenSelected_:Z

    .line 5510
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    goto/16 :goto_0

    .line 5514
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 5515
    if-eqz v0, :cond_7

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    if-eq v0, v4, :cond_7

    if-eq v0, v5, :cond_7

    if-ne v0, v6, :cond_8

    .line 5520
    :cond_7
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->travelMode_:I

    .line 5521
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    goto/16 :goto_0

    .line 5523
    :cond_8
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->travelMode_:I

    goto/16 :goto_0

    .line 5528
    :sswitch_7
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->recipient_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v0, :cond_9

    .line 5529
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;-><init>()V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->recipient_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 5531
    :cond_9
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->recipient_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 5535
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->payload_:Ljava/lang/String;

    .line 5536
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    goto/16 :goto_0

    .line 5540
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->voiceCommand_:Ljava/lang/String;

    .line 5541
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    goto/16 :goto_0

    .line 5432
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
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 5087
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public final setAction(I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .locals 1

    .prologue
    .line 5165
    iput p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->action_:I

    .line 5166
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    .line 5167
    return-object p0
.end method

.method public final setBroadcastAction(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .locals 1

    .prologue
    .line 5187
    if-nez p1, :cond_0

    .line 5188
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5190
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->broadcastAction_:Ljava/lang/String;

    .line 5191
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    .line 5192
    return-object p0
.end method

.method public final setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .locals 1

    .prologue
    .line 5143
    if-nez p1, :cond_0

    .line 5144
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5146
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->id_:Ljava/lang/String;

    .line 5147
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    .line 5148
    return-object p0
.end method

.method public final setPayload(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .locals 1

    .prologue
    .line 5266
    if-nez p1, :cond_0

    .line 5267
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5269
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->payload_:Ljava/lang/String;

    .line 5270
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    .line 5271
    return-object p0
.end method

.method public final setRecipient(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .locals 1

    .prologue
    .line 5247
    if-nez p1, :cond_0

    .line 5248
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5250
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->recipient_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 5251
    return-object p0
.end method

.method public final setRemoveWhenSelected(Z)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .locals 1

    .prologue
    .line 5209
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->removeWhenSelected_:Z

    .line 5210
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    .line 5211
    return-object p0
.end method

.method public final setTravelMode(I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .locals 1

    .prologue
    .line 5228
    iput p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->travelMode_:I

    .line 5229
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    .line 5230
    return-object p0
.end method

.method public final setVoiceCommand(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .locals 1

    .prologue
    .line 5288
    if-nez p1, :cond_0

    .line 5289
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5291
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->voiceCommand_:Ljava/lang/String;

    .line 5292
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    .line 5293
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5

    .prologue
    .line 5343
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 5344
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->id_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5346
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 5347
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->action_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5349
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    if-eqz v0, :cond_3

    .line 5350
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    .line 5351
    if-eqz v3, :cond_2

    .line 5352
    const/4 v4, 0x3

    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 5350
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5356
    :cond_3
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 5357
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->broadcastAction_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5359
    :cond_4
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    .line 5360
    const/4 v0, 0x7

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->removeWhenSelected_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5362
    :cond_5
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_6

    .line 5363
    const/16 v0, 0x8

    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->travelMode_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5365
    :cond_6
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->recipient_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v0, :cond_7

    .line 5366
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->recipient_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 5368
    :cond_7
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    .line 5369
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->payload_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5371
    :cond_8
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_9

    .line 5372
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->voiceCommand_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5374
    :cond_9
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 5376
    return-void
.end method
