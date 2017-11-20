.class public final Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SettingSyncNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/SettingSyncNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SettingSyncRequest"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;


# instance fields
.field private bitField0_:I

.field private currentClientTimeMs_:J

.field private deviceId_:Ljava/lang/String;

.field private lastSyncVersion_:J

.field public setting:[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;

    sput-object v0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;

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

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->deviceId_:Ljava/lang/String;

    .line 37
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->currentClientTimeMs_:J

    .line 56
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->lastSyncVersion_:J

    .line 75
    sget-object v0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->setting:[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    new-instance v0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 213
    new-instance v0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;

    return-object v0
.end method


# virtual methods
.method public clearCurrentClientTimeMs()Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;
    .locals 2

    .prologue
    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->currentClientTimeMs_:J

    .line 51
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->bitField0_:I

    .line 52
    return-object p0
.end method

.method public clearDeviceId()Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;
    .locals 1

    .prologue
    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->deviceId_:Ljava/lang/String;

    .line 32
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->bitField0_:I

    .line 33
    return-object p0
.end method

.method public clearLastSyncVersion()Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;
    .locals 2

    .prologue
    .line 69
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->lastSyncVersion_:J

    .line 70
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->bitField0_:I

    .line 71
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 79
    if-ne p1, p0, :cond_1

    .line 86
    :cond_0
    :goto_0
    return v1

    .line 80
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 81
    check-cast v0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;

    .line 82
    .local v0, "other":Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->deviceId_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->deviceId_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->currentClientTimeMs_:J

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->currentClientTimeMs_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->lastSyncVersion_:J

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->lastSyncVersion_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->setting:[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->setting:[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    .line 85
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 86
    goto :goto_0

    .line 82
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->deviceId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->deviceId_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 85
    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->unknownFieldData:Ljava/util/List;

    .line 86
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getCurrentClientTimeMs()J
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->currentClientTimeMs_:J

    return-wide v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->deviceId_:Ljava/lang/String;

    return-object v0
.end method

.method public getLastSyncVersion()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->lastSyncVersion_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 128
    const/4 v1, 0x0

    .line 129
    .local v1, "size":I
    iget v2, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 130
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->deviceId_:Ljava/lang/String;

    .line 131
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    .line 133
    :cond_0
    iget v2, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 134
    const/4 v2, 0x2

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->currentClientTimeMs_:J

    .line 135
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v1, v2

    .line 137
    :cond_1
    iget v2, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 138
    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->lastSyncVersion_:J

    .line 139
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v1, v2

    .line 141
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->setting:[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    if-eqz v2, :cond_4

    .line 142
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->setting:[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_4

    aget-object v0, v3, v2

    .line 143
    .local v0, "element":Lcom/google/googlex/glass/common/proto/SettingNano$Setting;
    if-eqz v0, :cond_3

    .line 144
    const/4 v5, 0x4

    .line 145
    invoke-static {v5, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v1, v5

    .line 142
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 149
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/SettingNano$Setting;
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v2

    add-int/2addr v1, v2

    .line 150
    iput v1, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->cachedSize:I

    .line 151
    return v1
.end method

.method public hasCurrentClientTimeMs()Z
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDeviceId()Z
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLastSyncVersion()Z
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->bitField0_:I

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
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/4 v3, 0x0

    .line 90
    const/16 v1, 0x11

    .line 91
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->deviceId_:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    add-int/lit16 v1, v2, 0x20f

    .line 92
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->currentClientTimeMs_:J

    iget-wide v6, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->currentClientTimeMs_:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 93
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->lastSyncVersion_:J

    iget-wide v6, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->lastSyncVersion_:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 94
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->setting:[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    if-nez v2, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    .line 100
    :cond_0
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->unknownFieldData:Ljava/util/List;

    if-nez v4, :cond_4

    :goto_1
    add-int v1, v2, v3

    .line 101
    return v1

    .line 91
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->deviceId_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 96
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->setting:[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 97
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->setting:[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    aget-object v2, v2, v0

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v1, v4, v2

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 97
    :cond_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->setting:[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->hashCode()I

    move-result v2

    goto :goto_3

    .line 100
    .end local v0    # "i":I
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;
    .locals 7
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 159
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 160
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 164
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->unknownFieldData:Ljava/util/List;

    if-nez v5, :cond_1

    .line 165
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->unknownFieldData:Ljava/util/List;

    .line 168
    :cond_1
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v5, p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 170
    :sswitch_0
    return-object p0

    .line 175
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->deviceId_:Ljava/lang/String;

    .line 176
    iget v5, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->bitField0_:I

    goto :goto_0

    .line 180
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->currentClientTimeMs_:J

    .line 181
    iget v5, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->bitField0_:I

    goto :goto_0

    .line 185
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->lastSyncVersion_:J

    .line 186
    iget v5, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->bitField0_:I

    goto :goto_0

    .line 190
    :sswitch_4
    const/16 v5, 0x22

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 191
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->setting:[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    if-nez v5, :cond_3

    move v1, v4

    .line 192
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    .line 193
    .local v2, "newArray":[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->setting:[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    if-eqz v5, :cond_2

    .line 194
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->setting:[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    :cond_2
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->setting:[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    .line 197
    :goto_2
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->setting:[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_4

    .line 198
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->setting:[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    new-instance v6, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;-><init>()V

    aput-object v6, v5, v1

    .line 199
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->setting:[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 200
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 191
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;
    :cond_3
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->setting:[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    array-length v1, v5

    goto :goto_1

    .line 203
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;
    :cond_4
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->setting:[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    new-instance v6, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;-><init>()V

    aput-object v6, v5, v1

    .line 204
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->setting:[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 160
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
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
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;

    move-result-object v0

    return-object v0
.end method

.method public setCurrentClientTimeMs(J)Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->currentClientTimeMs_:J

    .line 43
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->bitField0_:I

    .line 44
    return-object p0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;
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
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->deviceId_:Ljava/lang/String;

    .line 24
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->bitField0_:I

    .line 25
    return-object p0
.end method

.method public setLastSyncVersion(J)Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->lastSyncVersion_:J

    .line 62
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->bitField0_:I

    .line 63
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 107
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->deviceId_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 109
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 110
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->currentClientTimeMs_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 112
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 113
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->lastSyncVersion_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 115
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->setting:[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    if-eqz v1, :cond_4

    .line 116
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->setting:[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_4

    aget-object v0, v2, v1

    .line 117
    .local v0, "element":Lcom/google/googlex/glass/common/proto/SettingNano$Setting;
    if-eqz v0, :cond_3

    .line 118
    const/4 v4, 0x4

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 116
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/SettingNano$Setting;
    :cond_4
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 124
    return-void
.end method
