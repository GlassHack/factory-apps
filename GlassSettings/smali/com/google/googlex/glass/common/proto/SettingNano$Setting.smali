.class public final Lcom/google/googlex/glass/common/proto/SettingNano$Setting;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SettingNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/SettingNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Setting"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;


# instance fields
.field private bitField0_:I

.field private deviceId_:Ljava/lang/String;

.field private glasswareId_:J

.field private key_:Ljava/lang/String;

.field private modifiedTime_:J

.field private value_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    sput-object v0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->key_:Ljava/lang/String;

    .line 37
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->glasswareId_:J

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->deviceId_:Ljava/lang/String;

    .line 78
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->modifiedTime_:J

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->value_:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SettingNano$Setting;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    new-instance v0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/SettingNano$Setting;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 242
    new-instance v0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    return-object v0
.end method


# virtual methods
.method public clearDeviceId()Lcom/google/googlex/glass/common/proto/SettingNano$Setting;
    .locals 1

    .prologue
    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->deviceId_:Ljava/lang/String;

    .line 73
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->bitField0_:I

    .line 74
    return-object p0
.end method

.method public clearGlasswareId()Lcom/google/googlex/glass/common/proto/SettingNano$Setting;
    .locals 2

    .prologue
    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->glasswareId_:J

    .line 51
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->bitField0_:I

    .line 52
    return-object p0
.end method

.method public clearKey()Lcom/google/googlex/glass/common/proto/SettingNano$Setting;
    .locals 1

    .prologue
    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->key_:Ljava/lang/String;

    .line 32
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->bitField0_:I

    .line 33
    return-object p0
.end method

.method public clearModifiedTime()Lcom/google/googlex/glass/common/proto/SettingNano$Setting;
    .locals 2

    .prologue
    .line 91
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->modifiedTime_:J

    .line 92
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->bitField0_:I

    .line 93
    return-object p0
.end method

.method public clearValue()Lcom/google/googlex/glass/common/proto/SettingNano$Setting;
    .locals 1

    .prologue
    .line 113
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->value_:Ljava/lang/String;

    .line 114
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->bitField0_:I

    .line 115
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 120
    if-ne p1, p0, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v1

    .line 121
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 122
    check-cast v0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    .line 123
    .local v0, "other":Lcom/google/googlex/glass/common/proto/SettingNano$Setting;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->key_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->key_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->glasswareId_:J

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->glasswareId_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->deviceId_:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->deviceId_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 125
    :goto_2
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->modifiedTime_:J

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->modifiedTime_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->value_:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->value_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 127
    :goto_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 128
    goto :goto_0

    .line 123
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->key_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->key_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->deviceId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->deviceId_:Ljava/lang/String;

    .line 125
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->value_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->value_:Ljava/lang/String;

    .line 127
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->unknownFieldData:Ljava/util/List;

    .line 128
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->deviceId_:Ljava/lang/String;

    return-object v0
.end method

.method public getGlasswareId()J
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->glasswareId_:J

    return-wide v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->key_:Ljava/lang/String;

    return-object v0
.end method

.method public getModifiedTime()J
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->modifiedTime_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, "size":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 167
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->key_:Ljava/lang/String;

    .line 168
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 170
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 171
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->glasswareId_:J

    .line 172
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 174
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 175
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->deviceId_:Ljava/lang/String;

    .line 176
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 178
    :cond_2
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 179
    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->modifiedTime_:J

    .line 180
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 182
    :cond_3
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 183
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->value_:Ljava/lang/String;

    .line 184
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 186
    :cond_4
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 187
    iput v0, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->cachedSize:I

    .line 188
    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->value_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDeviceId()Z
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGlasswareId()Z
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasKey()Z
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasModifiedTime()Z
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->bitField0_:I

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
    .locals 8

    .prologue
    const/16 v7, 0x20

    const/4 v2, 0x0

    .line 132
    const/16 v0, 0x11

    .line 133
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->key_:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 134
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->glasswareId_:J

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->glasswareId_:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v1, v3

    .line 135
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->deviceId_:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 136
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->modifiedTime_:J

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->modifiedTime_:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v1, v3

    .line 137
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->value_:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    add-int v0, v3, v1

    .line 138
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_3

    :goto_3
    add-int v0, v1, v2

    .line 139
    return v0

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->key_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 135
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->deviceId_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    .line 137
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->value_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    .line 138
    :cond_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_3
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SettingNano$Setting;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 197
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 201
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 202
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->unknownFieldData:Ljava/util/List;

    .line 205
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 207
    :sswitch_0
    return-object p0

    .line 212
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->key_:Ljava/lang/String;

    .line 213
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->bitField0_:I

    goto :goto_0

    .line 217
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->glasswareId_:J

    .line 218
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->bitField0_:I

    goto :goto_0

    .line 222
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->deviceId_:Ljava/lang/String;

    .line 223
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->bitField0_:I

    goto :goto_0

    .line 227
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->modifiedTime_:J

    .line 228
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->bitField0_:I

    goto :goto_0

    .line 232
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->value_:Ljava/lang/String;

    .line 233
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->bitField0_:I

    goto :goto_0

    .line 197
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
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
    .line 6
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    move-result-object v0

    return-object v0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/SettingNano$Setting;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 61
    if-nez p1, :cond_0

    .line 62
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 64
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->deviceId_:Ljava/lang/String;

    .line 65
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->bitField0_:I

    .line 66
    return-object p0
.end method

.method public setGlasswareId(J)Lcom/google/googlex/glass/common/proto/SettingNano$Setting;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->glasswareId_:J

    .line 43
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->bitField0_:I

    .line 44
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/SettingNano$Setting;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 20
    if-nez p1, :cond_0

    .line 21
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->key_:Ljava/lang/String;

    .line 24
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->bitField0_:I

    .line 25
    return-object p0
.end method

.method public setModifiedTime(J)Lcom/google/googlex/glass/common/proto/SettingNano$Setting;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 83
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->modifiedTime_:J

    .line 84
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->bitField0_:I

    .line 85
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/SettingNano$Setting;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 102
    if-nez p1, :cond_0

    .line 103
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 105
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->value_:Ljava/lang/String;

    .line 106
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->bitField0_:I

    .line 107
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 145
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->key_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 147
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 148
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->glasswareId_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 150
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 151
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->deviceId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 153
    :cond_2
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 154
    const/4 v0, 0x4

    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->modifiedTime_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 156
    :cond_3
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 157
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->value_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 159
    :cond_4
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 161
    return-void
.end method
