.class public final Lcom/google/glass/companion/Proto$CompanionDeviceInfo;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CompanionDeviceInfo"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$CompanionDeviceInfo;


# instance fields
.field private bitField0_:I

.field private gpsEnabled_:Z

.field private isInteractiveState_:Z

.field private wifiConnected_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4241
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    sput-object v0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4242
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4247
    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->wifiConnected_:Z

    .line 4266
    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->isInteractiveState_:Z

    .line 4285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->gpsEnabled_:Z

    .line 4242
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$CompanionDeviceInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4405
    new-instance v0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$CompanionDeviceInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 4399
    new-instance v0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    return-object v0
.end method


# virtual methods
.method public clearGpsEnabled()Lcom/google/glass/companion/Proto$CompanionDeviceInfo;
    .locals 1

    .prologue
    .line 4298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->gpsEnabled_:Z

    .line 4299
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->bitField0_:I

    .line 4300
    return-object p0
.end method

.method public clearIsInteractiveState()Lcom/google/glass/companion/Proto$CompanionDeviceInfo;
    .locals 1

    .prologue
    .line 4279
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->isInteractiveState_:Z

    .line 4280
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->bitField0_:I

    .line 4281
    return-object p0
.end method

.method public clearWifiConnected()Lcom/google/glass/companion/Proto$CompanionDeviceInfo;
    .locals 1

    .prologue
    .line 4260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->wifiConnected_:Z

    .line 4261
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->bitField0_:I

    .line 4262
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4305
    if-ne p1, p0, :cond_1

    .line 4311
    :cond_0
    :goto_0
    return v1

    .line 4306
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 4307
    check-cast v0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    .line 4308
    .local v0, "other":Lcom/google/glass/companion/Proto$CompanionDeviceInfo;
    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->wifiConnected_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->wifiConnected_:Z

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->isInteractiveState_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->isInteractiveState_:Z

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->gpsEnabled_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->gpsEnabled_:Z

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 4311
    goto :goto_0

    .line 4308
    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->unknownFieldData:Ljava/util/List;

    .line 4311
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getGpsEnabled()Z
    .locals 1

    .prologue
    .line 4287
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->gpsEnabled_:Z

    return v0
.end method

.method public getIsInteractiveState()Z
    .locals 1

    .prologue
    .line 4268
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->isInteractiveState_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 4340
    const/4 v0, 0x0

    .line 4341
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 4342
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->wifiConnected_:Z

    .line 4343
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4345
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 4346
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->isInteractiveState_:Z

    .line 4347
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4349
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 4350
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->gpsEnabled_:Z

    .line 4351
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4353
    :cond_2
    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4354
    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->cachedSize:I

    .line 4355
    return v0
.end method

.method public getWifiConnected()Z
    .locals 1

    .prologue
    .line 4249
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->wifiConnected_:Z

    return v0
.end method

.method public hasGpsEnabled()Z
    .locals 1

    .prologue
    .line 4295
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsInteractiveState()Z
    .locals 1

    .prologue
    .line 4276
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWifiConnected()Z
    .locals 1

    .prologue
    .line 4257
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->bitField0_:I

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
    .locals 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 4315
    const/16 v0, 0x11

    .line 4316
    .local v0, "result":I
    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->wifiConnected_:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 4317
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->isInteractiveState_:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v4, v1

    .line 4318
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v4, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->gpsEnabled_:Z

    if-eqz v4, :cond_2

    :goto_2
    add-int v0, v1, v2

    .line 4319
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    :goto_3
    add-int v0, v2, v1

    .line 4320
    return v0

    :cond_0
    move v1, v3

    .line 4316
    goto :goto_0

    :cond_1
    move v1, v3

    .line 4317
    goto :goto_1

    :cond_2
    move v2, v3

    .line 4318
    goto :goto_2

    .line 4319
    :cond_3
    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_3
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$CompanionDeviceInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4363
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 4364
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 4368
    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 4369
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->unknownFieldData:Ljava/util/List;

    .line 4372
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4374
    :sswitch_0
    return-object p0

    .line 4379
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->wifiConnected_:Z

    .line 4380
    iget v1, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->bitField0_:I

    goto :goto_0

    .line 4384
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->isInteractiveState_:Z

    .line 4385
    iget v1, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->bitField0_:I

    goto :goto_0

    .line 4389
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->gpsEnabled_:Z

    .line 4390
    iget v1, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->bitField0_:I

    goto :goto_0

    .line 4364
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
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
    .line 4238
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public setGpsEnabled(Z)Lcom/google/glass/companion/Proto$CompanionDeviceInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 4290
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->gpsEnabled_:Z

    .line 4291
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->bitField0_:I

    .line 4292
    return-object p0
.end method

.method public setIsInteractiveState(Z)Lcom/google/glass/companion/Proto$CompanionDeviceInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 4271
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->isInteractiveState_:Z

    .line 4272
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->bitField0_:I

    .line 4273
    return-object p0
.end method

.method public setWifiConnected(Z)Lcom/google/glass/companion/Proto$CompanionDeviceInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 4252
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->wifiConnected_:Z

    .line 4253
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->bitField0_:I

    .line 4254
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
    .line 4325
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 4326
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->wifiConnected_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4328
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 4329
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->isInteractiveState_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4331
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 4332
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->gpsEnabled_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4334
    :cond_2
    iget-object v0, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 4336
    return-void
.end method
