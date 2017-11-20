.class public final Lcom/google/majel/proto/MajelProtos$MajelRequest;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "MajelProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/MajelProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MajelRequest"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/MajelProtos$MajelRequest;


# instance fields
.field public authInfo:Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

.field private bitField0_:I

.field public clientInfo:Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

.field public context:Lcom/google/majel/proto/ContextProtos$Context;

.field public latLng:Lcom/google/majel/proto/LatLngProtos$LatLng;

.field private query_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 62
    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MajelRequest;->clear()Lcom/google/majel/proto/MajelProtos$MajelRequest;

    .line 63
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/MajelProtos$MajelRequest;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->_emptyArray:[Lcom/google/majel/proto/MajelProtos$MajelRequest;

    if-nez v0, :cond_1

    .line 15
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->_emptyArray:[Lcom/google/majel/proto/MajelProtos$MajelRequest;

    if-nez v0, :cond_0

    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/MajelProtos$MajelRequest;

    sput-object v0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->_emptyArray:[Lcom/google/majel/proto/MajelProtos$MajelRequest;

    .line 20
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_1
    sget-object v0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->_emptyArray:[Lcom/google/majel/proto/MajelProtos$MajelRequest;

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/MajelProtos$MajelRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    new-instance v0, Lcom/google/majel/proto/MajelProtos$MajelRequest;

    invoke-direct {v0}, Lcom/google/majel/proto/MajelProtos$MajelRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/MajelProtos$MajelRequest;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/MajelProtos$MajelRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/MajelProtos$MajelRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 177
    new-instance v0, Lcom/google/majel/proto/MajelProtos$MajelRequest;

    invoke-direct {v0}, Lcom/google/majel/proto/MajelProtos$MajelRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/MajelProtos$MajelRequest;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/MajelProtos$MajelRequest;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->bitField0_:I

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->query_:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->authInfo:Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    .line 69
    iput-object v1, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->clientInfo:Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    .line 70
    iput-object v1, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->latLng:Lcom/google/majel/proto/LatLngProtos$LatLng;

    .line 71
    iput-object v1, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->context:Lcom/google/majel/proto/ContextProtos$Context;

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->cachedSize:I

    .line 73
    return-object p0
.end method

.method public clearQuery()Lcom/google/majel/proto/MajelProtos$MajelRequest;
    .locals 1

    .prologue
    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->query_:Ljava/lang/String;

    .line 45
    iget v0, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->bitField0_:I

    .line 46
    return-object p0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->query_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 98
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 99
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 100
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->query_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->authInfo:Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    if-eqz v1, :cond_1

    .line 104
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->authInfo:Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 107
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->clientInfo:Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    if-eqz v1, :cond_2

    .line 108
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->clientInfo:Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 111
    :cond_2
    iget-object v1, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->latLng:Lcom/google/majel/proto/LatLngProtos$LatLng;

    if-eqz v1, :cond_3

    .line 112
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->latLng:Lcom/google/majel/proto/LatLngProtos$LatLng;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 115
    :cond_3
    iget-object v1, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->context:Lcom/google/majel/proto/ContextProtos$Context;

    if-eqz v1, :cond_4

    .line 116
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->context:Lcom/google/majel/proto/ContextProtos$Context;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 119
    :cond_4
    iput v0, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->cachedSize:I

    .line 120
    return v0
.end method

.method public hasQuery()Z
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "x0"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/MajelProtos$MajelRequest;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/MajelProtos$MajelRequest;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/MajelProtos$MajelRequest;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 129
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 133
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    :sswitch_0
    return-object p0

    .line 139
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->query_:Ljava/lang/String;

    .line 140
    iget v1, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->bitField0_:I

    goto :goto_0

    .line 144
    :sswitch_2
    iget-object v1, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->authInfo:Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    if-nez v1, :cond_1

    .line 145
    new-instance v1, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    invoke-direct {v1}, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->authInfo:Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    .line 147
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->authInfo:Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 151
    :sswitch_3
    iget-object v1, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->clientInfo:Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    if-nez v1, :cond_2

    .line 152
    new-instance v1, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    invoke-direct {v1}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->clientInfo:Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    .line 154
    :cond_2
    iget-object v1, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->clientInfo:Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 158
    :sswitch_4
    iget-object v1, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->latLng:Lcom/google/majel/proto/LatLngProtos$LatLng;

    if-nez v1, :cond_3

    .line 159
    new-instance v1, Lcom/google/majel/proto/LatLngProtos$LatLng;

    invoke-direct {v1}, Lcom/google/majel/proto/LatLngProtos$LatLng;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->latLng:Lcom/google/majel/proto/LatLngProtos$LatLng;

    .line 161
    :cond_3
    iget-object v1, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->latLng:Lcom/google/majel/proto/LatLngProtos$LatLng;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 165
    :sswitch_5
    iget-object v1, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->context:Lcom/google/majel/proto/ContextProtos$Context;

    if-nez v1, :cond_4

    .line 166
    new-instance v1, Lcom/google/majel/proto/ContextProtos$Context;

    invoke-direct {v1}, Lcom/google/majel/proto/ContextProtos$Context;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->context:Lcom/google/majel/proto/ContextProtos$Context;

    .line 168
    :cond_4
    iget-object v1, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->context:Lcom/google/majel/proto/ContextProtos$Context;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 129
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public setQuery(Ljava/lang/String;)Lcom/google/majel/proto/MajelProtos$MajelRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 33
    if-nez p1, :cond_0

    .line 34
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 36
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->query_:Ljava/lang/String;

    .line 37
    iget v0, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->bitField0_:I

    .line 38
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    iget v0, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->query_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->authInfo:Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    if-eqz v0, :cond_1

    .line 83
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->authInfo:Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->clientInfo:Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    if-eqz v0, :cond_2

    .line 86
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->clientInfo:Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->latLng:Lcom/google/majel/proto/LatLngProtos$LatLng;

    if-eqz v0, :cond_3

    .line 89
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->latLng:Lcom/google/majel/proto/LatLngProtos$LatLng;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 91
    :cond_3
    iget-object v0, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->context:Lcom/google/majel/proto/ContextProtos$Context;

    if-eqz v0, :cond_4

    .line 92
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/majel/proto/MajelProtos$MajelRequest;->context:Lcom/google/majel/proto/ContextProtos$Context;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 94
    :cond_4
    return-void
.end method
