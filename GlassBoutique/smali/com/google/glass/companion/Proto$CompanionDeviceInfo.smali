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
    .line 4093
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    sput-object v0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4094
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4099
    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->wifiConnected_:Z

    .line 4118
    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->isInteractiveState_:Z

    .line 4137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->gpsEnabled_:Z

    .line 4094
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
    .line 4257
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
    .line 4251
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
    .line 4150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->gpsEnabled_:Z

    .line 4151
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->bitField0_:I

    .line 4152
    return-object p0
.end method

.method public clearIsInteractiveState()Lcom/google/glass/companion/Proto$CompanionDeviceInfo;
    .locals 1

    .prologue
    .line 4131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->isInteractiveState_:Z

    .line 4132
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->bitField0_:I

    .line 4133
    return-object p0
.end method

.method public clearWifiConnected()Lcom/google/glass/companion/Proto$CompanionDeviceInfo;
    .locals 1

    .prologue
    .line 4112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->wifiConnected_:Z

    .line 4113
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->bitField0_:I

    .line 4114
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4157
    if-ne p1, p0, :cond_1

    .line 4163
    :cond_0
    :goto_0
    return v1

    .line 4158
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 4159
    check-cast v0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    .line 4160
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

    .line 4163
    goto :goto_0

    .line 4160
    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->unknownFieldData:Ljava/util/List;

    .line 4163
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getGpsEnabled()Z
    .locals 1

    .prologue
    .line 4139
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->gpsEnabled_:Z

    return v0
.end method

.method public getIsInteractiveState()Z
    .locals 1

    .prologue
    .line 4120
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->isInteractiveState_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 4192
    const/4 v0, 0x0

    .line 4193
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 4194
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->wifiConnected_:Z

    .line 4195
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4197
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 4198
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->isInteractiveState_:Z

    .line 4199
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4201
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 4202
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->gpsEnabled_:Z

    .line 4203
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4205
    :cond_2
    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4206
    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->cachedSize:I

    .line 4207
    return v0
.end method

.method public getWifiConnected()Z
    .locals 1

    .prologue
    .line 4101
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->wifiConnected_:Z

    return v0
.end method

.method public hasGpsEnabled()Z
    .locals 1

    .prologue
    .line 4147
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
    .line 4128
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
    .line 4109
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

    .line 4167
    const/16 v0, 0x11

    .line 4168
    .local v0, "result":I
    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->wifiConnected_:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 4169
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->isInteractiveState_:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v4, v1

    .line 4170
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v4, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->gpsEnabled_:Z

    if-eqz v4, :cond_2

    :goto_2
    add-int v0, v1, v2

    .line 4171
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    :goto_3
    add-int v0, v2, v1

    .line 4172
    return v0

    :cond_0
    move v1, v3

    .line 4168
    goto :goto_0

    :cond_1
    move v1, v3

    .line 4169
    goto :goto_1

    :cond_2
    move v2, v3

    .line 4170
    goto :goto_2

    .line 4171
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
    .line 4215
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 4216
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 4220
    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 4221
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->unknownFieldData:Ljava/util/List;

    .line 4224
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4226
    :sswitch_0
    return-object p0

    .line 4231
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->wifiConnected_:Z

    .line 4232
    iget v1, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->bitField0_:I

    goto :goto_0

    .line 4236
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->isInteractiveState_:Z

    .line 4237
    iget v1, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->bitField0_:I

    goto :goto_0

    .line 4241
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->gpsEnabled_:Z

    .line 4242
    iget v1, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->bitField0_:I

    goto :goto_0

    .line 4216
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
    .line 4090
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public setGpsEnabled(Z)Lcom/google/glass/companion/Proto$CompanionDeviceInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 4142
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->gpsEnabled_:Z

    .line 4143
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->bitField0_:I

    .line 4144
    return-object p0
.end method

.method public setIsInteractiveState(Z)Lcom/google/glass/companion/Proto$CompanionDeviceInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 4123
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->isInteractiveState_:Z

    .line 4124
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->bitField0_:I

    .line 4125
    return-object p0
.end method

.method public setWifiConnected(Z)Lcom/google/glass/companion/Proto$CompanionDeviceInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 4104
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->wifiConnected_:Z

    .line 4105
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->bitField0_:I

    .line 4106
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
    .line 4177
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 4178
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->wifiConnected_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4180
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 4181
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->isInteractiveState_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4183
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 4184
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->gpsEnabled_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4186
    :cond_2
    iget-object v0, p0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 4188
    return-void
.end method
