.class public final Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "LockscreenRecoveryNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LockscreenRecoveryRequest"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;


# instance fields
.field private bitField0_:I

.field private deviceId_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;

    sput-object v0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;->deviceId_:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    new-instance v0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;

    return-object v0
.end method


# virtual methods
.method public clearDeviceId()Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;
    .locals 1

    .prologue
    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;->deviceId_:Ljava/lang/String;

    .line 32
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;->bitField0_:I

    .line 33
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 38
    if-ne p1, p0, :cond_1

    .line 42
    :cond_0
    :goto_0
    return v1

    .line 39
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 40
    check-cast v0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;

    .line 41
    .local v0, "other":Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;->deviceId_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;->deviceId_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 42
    goto :goto_0

    .line 41
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;->deviceId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;->deviceId_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;->unknownFieldData:Ljava/util/List;

    .line 42
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;->deviceId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "size":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 65
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;->deviceId_:Ljava/lang/String;

    .line 66
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 69
    iput v0, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;->cachedSize:I

    .line 70
    return v0
.end method

.method public hasDeviceId()Z
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;->bitField0_:I

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

    .line 46
    const/16 v0, 0x11

    .line 47
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;->deviceId_:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 48
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_1

    :goto_1
    add-int v0, v1, v2

    .line 49
    return v0

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;->deviceId_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 48
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 79
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 83
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;->unknownFieldData:Ljava/util/List;

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    :sswitch_0
    return-object p0

    .line 94
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;->deviceId_:Ljava/lang/String;

    .line 95
    iget v1, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;->bitField0_:I

    goto :goto_0

    .line 79
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;

    move-result-object v0

    return-object v0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;
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
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;->deviceId_:Ljava/lang/String;

    .line 24
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;->bitField0_:I

    .line 25
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
    .line 54
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 55
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;->deviceId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 59
    return-void
.end method
