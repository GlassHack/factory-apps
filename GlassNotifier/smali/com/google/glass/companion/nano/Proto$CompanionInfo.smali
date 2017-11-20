.class public final Lcom/google/glass/companion/nano/Proto$CompanionInfo;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/nano/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CompanionInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/glass/companion/nano/Proto$CompanionInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/glass/companion/nano/Proto$CompanionInfo;


# instance fields
.field private bitField0_:I

.field public id:J

.field private requestLocaleInfo_:Z

.field private requestLog_:Z

.field private requestNetwork_:Z

.field private responseAndroidVersion_:I

.field private responseIsNetworkOk_:Z

.field public responseLocaleInfo:Lcom/google/glass/companion/nano/Proto$LocaleInfo;

.field private responseLog_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4228
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4229
    invoke-virtual {p0}, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->clear()Lcom/google/glass/companion/nano/Proto$CompanionInfo;

    .line 4230
    return-void
.end method

.method public static emptyArray()[Lcom/google/glass/companion/nano/Proto$CompanionInfo;
    .locals 2

    .prologue
    .line 4090
    sget-object v0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$CompanionInfo;

    if-nez v0, :cond_1

    .line 4091
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 4093
    :try_start_0
    sget-object v0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$CompanionInfo;

    if-nez v0, :cond_0

    .line 4094
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/nano/Proto$CompanionInfo;

    sput-object v0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$CompanionInfo;

    .line 4096
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4098
    :cond_1
    sget-object v0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$CompanionInfo;

    return-object v0

    .line 4096
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$CompanionInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4450
    new-instance v0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$CompanionInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$CompanionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/nano/Proto$CompanionInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 4444
    new-instance v0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$CompanionInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/glass/companion/nano/Proto$CompanionInfo;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 4233
    iput v2, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    .line 4234
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->id:J

    .line 4235
    iput-boolean v2, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->requestNetwork_:Z

    .line 4236
    iput-boolean v2, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->responseIsNetworkOk_:Z

    .line 4237
    iput v2, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->responseAndroidVersion_:I

    .line 4238
    iput-boolean v2, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->requestLog_:Z

    .line 4239
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->responseLog_:Ljava/lang/String;

    .line 4240
    iput-boolean v2, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->requestLocaleInfo_:Z

    .line 4241
    iput-object v3, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->responseLocaleInfo:Lcom/google/glass/companion/nano/Proto$LocaleInfo;

    .line 4242
    iput-object v3, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 4243
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->cachedSize:I

    .line 4244
    return-object p0
.end method

.method public clearRequestLocaleInfo()Lcom/google/glass/companion/nano/Proto$CompanionInfo;
    .locals 1

    .prologue
    .line 4213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->requestLocaleInfo_:Z

    .line 4214
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    .line 4215
    return-object p0
.end method

.method public clearRequestLog()Lcom/google/glass/companion/nano/Proto$CompanionInfo;
    .locals 1

    .prologue
    .line 4172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->requestLog_:Z

    .line 4173
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    .line 4174
    return-object p0
.end method

.method public clearRequestNetwork()Lcom/google/glass/companion/nano/Proto$CompanionInfo;
    .locals 1

    .prologue
    .line 4115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->requestNetwork_:Z

    .line 4116
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    .line 4117
    return-object p0
.end method

.method public clearResponseAndroidVersion()Lcom/google/glass/companion/nano/Proto$CompanionInfo;
    .locals 1

    .prologue
    .line 4153
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->responseAndroidVersion_:I

    .line 4154
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    .line 4155
    return-object p0
.end method

.method public clearResponseIsNetworkOk()Lcom/google/glass/companion/nano/Proto$CompanionInfo;
    .locals 1

    .prologue
    .line 4134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->responseIsNetworkOk_:Z

    .line 4135
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    .line 4136
    return-object p0
.end method

.method public clearResponseLog()Lcom/google/glass/companion/nano/Proto$CompanionInfo;
    .locals 1

    .prologue
    .line 4191
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->responseLog_:Ljava/lang/String;

    .line 4192
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    .line 4193
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 4348
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 4349
    .local v0, "size":I
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->id:J

    .line 4350
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4351
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 4352
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->requestNetwork_:Z

    .line 4353
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4355
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 4356
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->responseIsNetworkOk_:Z

    .line 4357
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4359
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 4360
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->responseAndroidVersion_:I

    .line 4361
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4363
    :cond_2
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 4364
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->requestLog_:Z

    .line 4365
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4367
    :cond_3
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 4368
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->responseLog_:Ljava/lang/String;

    .line 4369
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4371
    :cond_4
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 4372
    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->requestLocaleInfo_:Z

    .line 4373
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4375
    :cond_5
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->responseLocaleInfo:Lcom/google/glass/companion/nano/Proto$LocaleInfo;

    if-eqz v1, :cond_6

    .line 4376
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->responseLocaleInfo:Lcom/google/glass/companion/nano/Proto$LocaleInfo;

    .line 4377
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4379
    :cond_6
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4249
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 4295
    :cond_0
    :goto_0
    return v1

    .line 4252
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/nano/Proto$CompanionInfo;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 4255
    check-cast v0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;

    .line 4256
    .local v0, "other":Lcom/google/glass/companion/nano/Proto$CompanionInfo;
    iget-wide v4, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->id:J

    iget-wide v6, v0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->id:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 4259
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->requestNetwork_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->requestNetwork_:Z

    if-ne v3, v4, :cond_0

    .line 4263
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->responseIsNetworkOk_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->responseIsNetworkOk_:Z

    if-ne v3, v4, :cond_0

    .line 4267
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->responseAndroidVersion_:I

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->responseAndroidVersion_:I

    if-ne v3, v4, :cond_0

    .line 4271
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->requestLog_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->requestLog_:Z

    if-ne v3, v4, :cond_0

    .line 4275
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->responseLog_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->responseLog_:Ljava/lang/String;

    .line 4276
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4279
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->requestLocaleInfo_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->requestLocaleInfo_:Z

    if-ne v3, v4, :cond_0

    .line 4283
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->responseLocaleInfo:Lcom/google/glass/companion/nano/Proto$LocaleInfo;

    if-nez v3, :cond_5

    .line 4284
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->responseLocaleInfo:Lcom/google/glass/companion/nano/Proto$LocaleInfo;

    if-nez v3, :cond_0

    .line 4292
    :cond_2
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4293
    :cond_3
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto/16 :goto_0

    .line 4288
    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->responseLocaleInfo:Lcom/google/glass/companion/nano/Proto$LocaleInfo;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->responseLocaleInfo:Lcom/google/glass/companion/nano/Proto$LocaleInfo;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_0

    .line 4295
    :cond_6
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public getRequestLocaleInfo()Z
    .locals 1

    .prologue
    .line 4207
    iget-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->requestLocaleInfo_:Z

    return v0
.end method

.method public getRequestLog()Z
    .locals 1

    .prologue
    .line 4166
    iget-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->requestLog_:Z

    return v0
.end method

.method public getRequestNetwork()Z
    .locals 1

    .prologue
    .line 4109
    iget-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->requestNetwork_:Z

    return v0
.end method

.method public getResponseAndroidVersion()I
    .locals 1

    .prologue
    .line 4147
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->responseAndroidVersion_:I

    return v0
.end method

.method public getResponseIsNetworkOk()Z
    .locals 1

    .prologue
    .line 4128
    iget-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->responseIsNetworkOk_:Z

    return v0
.end method

.method public getResponseLog()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4185
    iget-object v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->responseLog_:Ljava/lang/String;

    return-object v0
.end method

.method public hasRequestLocaleInfo()Z
    .locals 1

    .prologue
    .line 4210
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRequestLog()Z
    .locals 1

    .prologue
    .line 4169
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRequestNetwork()Z
    .locals 1

    .prologue
    .line 4112
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasResponseAndroidVersion()Z
    .locals 1

    .prologue
    .line 4150
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasResponseIsNetworkOk()Z
    .locals 1

    .prologue
    .line 4131
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasResponseLog()Z
    .locals 1

    .prologue
    .line 4188
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x4d5

    const/16 v2, 0x4cf

    .line 4300
    const/16 v0, 0x11

    .line 4301
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 4302
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v6, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->id:J

    iget-wide v8, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->id:J

    const/16 v5, 0x20

    ushr-long/2addr v8, v5

    xor-long/2addr v6, v8

    long-to-int v5, v6

    add-int v0, v1, v5

    .line 4304
    mul-int/lit8 v5, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->requestNetwork_:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    add-int v0, v5, v1

    .line 4305
    mul-int/lit8 v5, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->responseIsNetworkOk_:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    add-int v0, v5, v1

    .line 4306
    mul-int/lit8 v1, v0, 0x1f

    iget v5, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->responseAndroidVersion_:I

    add-int v0, v1, v5

    .line 4307
    mul-int/lit8 v5, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->requestLog_:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_2
    add-int v0, v5, v1

    .line 4308
    mul-int/lit8 v1, v0, 0x1f

    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->responseLog_:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    add-int v0, v1, v5

    .line 4309
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v5, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->requestLocaleInfo_:Z

    if-eqz v5, :cond_4

    :goto_3
    add-int v0, v1, v2

    .line 4310
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->responseLocaleInfo:Lcom/google/glass/companion/nano/Proto$LocaleInfo;

    if-nez v1, :cond_5

    move v1, v4

    .line 4311
    :goto_4
    add-int v0, v2, v1

    .line 4312
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 4313
    invoke-virtual {v2}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4314
    :cond_0
    :goto_5
    add-int v0, v1, v4

    .line 4315
    return v0

    :cond_1
    move v1, v3

    .line 4304
    goto :goto_0

    :cond_2
    move v1, v3

    .line 4305
    goto :goto_1

    :cond_3
    move v1, v3

    .line 4307
    goto :goto_2

    :cond_4
    move v2, v3

    .line 4309
    goto :goto_3

    .line 4311
    :cond_5
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->responseLocaleInfo:Lcom/google/glass/companion/nano/Proto$LocaleInfo;

    invoke-virtual {v1}, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->hashCode()I

    move-result v1

    goto :goto_4

    .line 4314
    :cond_6
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v2}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v4

    goto :goto_5
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$CompanionInfo;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4387
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 4388
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 4392
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4393
    :sswitch_0
    return-object p0

    .line 4398
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->id:J

    goto :goto_0

    .line 4402
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->requestNetwork_:Z

    .line 4403
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    goto :goto_0

    .line 4407
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->responseIsNetworkOk_:Z

    .line 4408
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    goto :goto_0

    .line 4412
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->responseAndroidVersion_:I

    .line 4413
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    goto :goto_0

    .line 4417
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->requestLog_:Z

    .line 4418
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    goto :goto_0

    .line 4422
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->responseLog_:Ljava/lang/String;

    .line 4423
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    goto :goto_0

    .line 4427
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->requestLocaleInfo_:Z

    .line 4428
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    goto :goto_0

    .line 4432
    :sswitch_8
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->responseLocaleInfo:Lcom/google/glass/companion/nano/Proto$LocaleInfo;

    if-nez v1, :cond_1

    .line 4433
    new-instance v1, Lcom/google/glass/companion/nano/Proto$LocaleInfo;

    invoke-direct {v1}, Lcom/google/glass/companion/nano/Proto$LocaleInfo;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->responseLocaleInfo:Lcom/google/glass/companion/nano/Proto$LocaleInfo;

    .line 4435
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->responseLocaleInfo:Lcom/google/glass/companion/nano/Proto$LocaleInfo;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 4388
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4084
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$CompanionInfo;

    move-result-object v0

    return-object v0
.end method

.method public setRequestLocaleInfo(Z)Lcom/google/glass/companion/nano/Proto$CompanionInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 4218
    iput-boolean p1, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->requestLocaleInfo_:Z

    .line 4219
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    .line 4220
    return-object p0
.end method

.method public setRequestLog(Z)Lcom/google/glass/companion/nano/Proto$CompanionInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 4177
    iput-boolean p1, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->requestLog_:Z

    .line 4178
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    .line 4179
    return-object p0
.end method

.method public setRequestNetwork(Z)Lcom/google/glass/companion/nano/Proto$CompanionInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 4120
    iput-boolean p1, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->requestNetwork_:Z

    .line 4121
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    .line 4122
    return-object p0
.end method

.method public setResponseAndroidVersion(I)Lcom/google/glass/companion/nano/Proto$CompanionInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4158
    iput p1, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->responseAndroidVersion_:I

    .line 4159
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    .line 4160
    return-object p0
.end method

.method public setResponseIsNetworkOk(Z)Lcom/google/glass/companion/nano/Proto$CompanionInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 4139
    iput-boolean p1, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->responseIsNetworkOk_:Z

    .line 4140
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    .line 4141
    return-object p0
.end method

.method public setResponseLog(Ljava/lang/String;)Lcom/google/glass/companion/nano/Proto$CompanionInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4196
    if-nez p1, :cond_0

    .line 4197
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4199
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->responseLog_:Ljava/lang/String;

    .line 4200
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    .line 4201
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
    .line 4321
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->id:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 4322
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 4323
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->requestNetwork_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4325
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 4326
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->responseIsNetworkOk_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4328
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 4329
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->responseAndroidVersion_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4331
    :cond_2
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 4332
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->requestLog_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4334
    :cond_3
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 4335
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->responseLog_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4337
    :cond_4
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 4338
    const/4 v0, 0x7

    iget-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->requestLocaleInfo_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4340
    :cond_5
    iget-object v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->responseLocaleInfo:Lcom/google/glass/companion/nano/Proto$LocaleInfo;

    if-eqz v0, :cond_6

    .line 4341
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->responseLocaleInfo:Lcom/google/glass/companion/nano/Proto$LocaleInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 4343
    :cond_6
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 4344
    return-void
.end method
