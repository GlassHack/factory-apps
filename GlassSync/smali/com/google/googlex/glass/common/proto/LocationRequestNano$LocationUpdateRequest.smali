.class public final Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "LocationRequestNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/LocationRequestNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocationUpdateRequest"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;


# instance fields
.field private bitField0_:I

.field private deviceId_:Ljava/lang/String;

.field private location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;

    sput-object v0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->deviceId_:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    new-instance v0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 139
    new-instance v0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;

    return-object v0
.end method


# virtual methods
.method public clearDeviceId()Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;
    .locals 1

    .prologue
    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->deviceId_:Ljava/lang/String;

    .line 51
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->bitField0_:I

    .line 52
    return-object p0
.end method

.method public clearLocation()Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    .line 31
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 57
    if-ne p1, p0, :cond_1

    .line 62
    :cond_0
    :goto_0
    return v1

    .line 58
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 59
    check-cast v0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;

    .line 60
    .local v0, "other":Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->deviceId_:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->deviceId_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 61
    :goto_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 62
    goto :goto_0

    .line 60
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->deviceId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->deviceId_:Ljava/lang/String;

    .line 61
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->unknownFieldData:Ljava/util/List;

    .line 62
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->deviceId_:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    if-eqz v1, :cond_0

    .line 89
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    .line 90
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 92
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 93
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->deviceId_:Ljava/lang/String;

    .line 94
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 97
    iput v0, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->cachedSize:I

    .line 98
    return v0
.end method

.method public hasDeviceId()Z
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLocation()Z
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

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

    .line 66
    const/16 v0, 0x11

    .line 67
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 68
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->deviceId_:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 69
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_2

    :goto_2
    add-int v0, v1, v2

    .line 70
    return v0

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->hashCode()I

    move-result v1

    goto :goto_0

    .line 68
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->deviceId_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    .line 69
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 107
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 111
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->unknownFieldData:Ljava/util/List;

    .line 115
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    :sswitch_0
    return-object p0

    .line 122
    :sswitch_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    if-nez v1, :cond_2

    .line 123
    new-instance v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    invoke-direct {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;-><init>()V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    .line 125
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 129
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->deviceId_:Ljava/lang/String;

    .line 130
    iget v1, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->bitField0_:I

    goto :goto_0

    .line 107
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 42
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->deviceId_:Ljava/lang/String;

    .line 43
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->bitField0_:I

    .line 44
    return-object p0
.end method

.method public setLocation(Lcom/google/googlex/glass/common/proto/TimelineNano$Location;)Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;
    .locals 1
    .param p1, "value"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    .prologue
    .line 20
    if-nez p1, :cond_0

    .line 21
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    .line 24
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
    .line 75
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    if-eqz v0, :cond_0

    .line 76
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 78
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 79
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->deviceId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 83
    return-void
.end method
