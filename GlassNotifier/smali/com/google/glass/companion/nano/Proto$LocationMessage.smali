.class public final Lcom/google/glass/companion/nano/Proto$LocationMessage;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/nano/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocationMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/nano/Proto$LocationMessage$MessageType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/glass/companion/nano/Proto$LocationMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/glass/companion/nano/Proto$LocationMessage;


# instance fields
.field private bitField0_:I

.field public location:Lcom/google/glass/companion/nano/Proto$Location;

.field public provider:Ljava/lang/String;

.field private receiver_:Ljava/lang/String;

.field private status_:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3233
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3234
    invoke-virtual {p0}, Lcom/google/glass/companion/nano/Proto$LocationMessage;->clear()Lcom/google/glass/companion/nano/Proto$LocationMessage;

    .line 3235
    return-void
.end method

.method public static emptyArray()[Lcom/google/glass/companion/nano/Proto$LocationMessage;
    .locals 2

    .prologue
    .line 3168
    sget-object v0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$LocationMessage;

    if-nez v0, :cond_1

    .line 3169
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3171
    :try_start_0
    sget-object v0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$LocationMessage;

    if-nez v0, :cond_0

    .line 3172
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/nano/Proto$LocationMessage;

    sput-object v0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$LocationMessage;

    .line 3174
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3176
    :cond_1
    sget-object v0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$LocationMessage;

    return-object v0

    .line 3174
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$LocationMessage;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3412
    new-instance v0, Lcom/google/glass/companion/nano/Proto$LocationMessage;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$LocationMessage;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/nano/Proto$LocationMessage;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$LocationMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/nano/Proto$LocationMessage;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3406
    new-instance v0, Lcom/google/glass/companion/nano/Proto$LocationMessage;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$LocationMessage;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/nano/Proto$LocationMessage;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/glass/companion/nano/Proto$LocationMessage;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 3238
    iput v1, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->bitField0_:I

    .line 3239
    iput v1, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->type:I

    .line 3240
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->provider:Ljava/lang/String;

    .line 3241
    iput-object v2, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->location:Lcom/google/glass/companion/nano/Proto$Location;

    .line 3242
    iput v1, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->status_:I

    .line 3243
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->receiver_:Ljava/lang/String;

    .line 3244
    iput-object v2, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 3245
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->cachedSize:I

    .line 3246
    return-object p0
.end method

.method public clearReceiver()Lcom/google/glass/companion/nano/Proto$LocationMessage;
    .locals 1

    .prologue
    .line 3218
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->receiver_:Ljava/lang/String;

    .line 3219
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->bitField0_:I

    .line 3220
    return-object p0
.end method

.method public clearStatus()Lcom/google/glass/companion/nano/Proto$LocationMessage;
    .locals 1

    .prologue
    .line 3199
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->status_:I

    .line 3200
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->bitField0_:I

    .line 3201
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 3327
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 3328
    .local v0, "size":I
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->type:I

    .line 3329
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3330
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->provider:Ljava/lang/String;

    .line 3331
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3332
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->location:Lcom/google/glass/companion/nano/Proto$Location;

    if-eqz v1, :cond_0

    .line 3333
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->location:Lcom/google/glass/companion/nano/Proto$Location;

    .line 3334
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3336
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 3337
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->status_:I

    .line 3338
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3340
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 3341
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->receiver_:Ljava/lang/String;

    .line 3342
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3344
    :cond_2
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3251
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 3288
    :cond_0
    :goto_0
    return v1

    .line 3254
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/nano/Proto$LocationMessage;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 3257
    check-cast v0, Lcom/google/glass/companion/nano/Proto$LocationMessage;

    .line 3258
    .local v0, "other":Lcom/google/glass/companion/nano/Proto$LocationMessage;
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->type:I

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->type:I

    if-ne v3, v4, :cond_0

    .line 3261
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->provider:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 3262
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->provider:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 3268
    :cond_2
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->location:Lcom/google/glass/companion/nano/Proto$Location;

    if-nez v3, :cond_7

    .line 3269
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->location:Lcom/google/glass/companion/nano/Proto$Location;

    if-nez v3, :cond_0

    .line 3277
    :cond_3
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->status_:I

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->status_:I

    if-ne v3, v4, :cond_0

    .line 3281
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->receiver_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->receiver_:Ljava/lang/String;

    .line 3282
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3285
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3286
    :cond_4
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0

    .line 3265
    :cond_6
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->provider:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->provider:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 3273
    :cond_7
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->location:Lcom/google/glass/companion/nano/Proto$Location;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->location:Lcom/google/glass/companion/nano/Proto$Location;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/nano/Proto$Location;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 3288
    :cond_8
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getReceiver()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3212
    iget-object v0, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->receiver_:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 3193
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->status_:I

    return v0
.end method

.method public hasReceiver()Z
    .locals 1

    .prologue
    .line 3215
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 3196
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->bitField0_:I

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
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 3293
    const/16 v0, 0x11

    .line 3294
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 3295
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->type:I

    add-int v0, v1, v3

    .line 3296
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->provider:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    .line 3297
    :goto_0
    add-int v0, v3, v1

    .line 3298
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->location:Lcom/google/glass/companion/nano/Proto$Location;

    if-nez v1, :cond_2

    move v1, v2

    .line 3299
    :goto_1
    add-int v0, v3, v1

    .line 3300
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->status_:I

    add-int v0, v1, v3

    .line 3301
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->receiver_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 3302
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 3303
    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3304
    :cond_0
    :goto_2
    add-int v0, v1, v2

    .line 3305
    return v0

    .line 3297
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->provider:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 3299
    :cond_2
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->location:Lcom/google/glass/companion/nano/Proto$Location;

    invoke-virtual {v1}, Lcom/google/glass/companion/nano/Proto$Location;->hashCode()I

    move-result v1

    goto :goto_1

    .line 3304
    :cond_3
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v2}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v2

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$LocationMessage;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3352
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v1

    .line 3353
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 3357
    invoke-super {p0, p1, v1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3358
    :sswitch_0
    return-object p0

    .line 3363
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 3364
    .local v0, "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 3365
    .local v2, "value":I
    packed-switch v2, :pswitch_data_0

    .line 3373
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 3374
    invoke-virtual {p0, p1, v1}, Lcom/google/glass/companion/nano/Proto$LocationMessage;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 3370
    :pswitch_0
    iput v2, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->type:I

    goto :goto_0

    .line 3380
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->provider:Ljava/lang/String;

    goto :goto_0

    .line 3384
    :sswitch_3
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->location:Lcom/google/glass/companion/nano/Proto$Location;

    if-nez v3, :cond_1

    .line 3385
    new-instance v3, Lcom/google/glass/companion/nano/Proto$Location;

    invoke-direct {v3}, Lcom/google/glass/companion/nano/Proto$Location;-><init>()V

    iput-object v3, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->location:Lcom/google/glass/companion/nano/Proto$Location;

    .line 3387
    :cond_1
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->location:Lcom/google/glass/companion/nano/Proto$Location;

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 3391
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->status_:I

    .line 3392
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->bitField0_:I

    goto :goto_0

    .line 3396
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->receiver_:Ljava/lang/String;

    .line 3397
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->bitField0_:I

    goto :goto_0

    .line 3353
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch

    .line 3365
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
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
    .line 3154
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/nano/Proto$LocationMessage;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$LocationMessage;

    move-result-object v0

    return-object v0
.end method

.method public setReceiver(Ljava/lang/String;)Lcom/google/glass/companion/nano/Proto$LocationMessage;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3223
    if-nez p1, :cond_0

    .line 3224
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3226
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->receiver_:Ljava/lang/String;

    .line 3227
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->bitField0_:I

    .line 3228
    return-object p0
.end method

.method public setStatus(I)Lcom/google/glass/companion/nano/Proto$LocationMessage;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3204
    iput p1, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->status_:I

    .line 3205
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->bitField0_:I

    .line 3206
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
    .line 3311
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->type:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3312
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->provider:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3313
    iget-object v0, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->location:Lcom/google/glass/companion/nano/Proto$Location;

    if-eqz v0, :cond_0

    .line 3314
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->location:Lcom/google/glass/companion/nano/Proto$Location;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 3316
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 3317
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->status_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3319
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 3320
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$LocationMessage;->receiver_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3322
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 3323
    return-void
.end method
