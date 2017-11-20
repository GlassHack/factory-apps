.class public final Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateSocialNetworkAction"
.end annotation


# static fields
.field public static final SOCIAL_NETWORK_FACEBOOK:I = 0x0

.field public static final SOCIAL_NETWORK_GOOGLE_PLUS:I = 0x1

.field public static final SOCIAL_NETWORK_TWITTER:I = 0x2

.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;


# instance fields
.field private bitField0_:I

.field private socialNetwork_:I

.field public statusMessageSpan:Lcom/google/majel/proto/SpanProtos$Span;

.field private statusMessage_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8070
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 8071
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->clear()Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;

    .line 8072
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;
    .locals 2

    .prologue
    .line 8013
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;

    if-nez v0, :cond_1

    .line 8014
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 8016
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;

    if-nez v0, :cond_0

    .line 8017
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;

    .line 8019
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8021
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;

    return-object v0

    .line 8019
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8160
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 8154
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8075
    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->bitField0_:I

    .line 8076
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->statusMessage_:Ljava/lang/String;

    .line 8077
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->statusMessageSpan:Lcom/google/majel/proto/SpanProtos$Span;

    .line 8078
    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->socialNetwork_:I

    .line 8079
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->cachedSize:I

    .line 8080
    return-object p0
.end method

.method public clearSocialNetwork()Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;
    .locals 1

    .prologue
    .line 8065
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->socialNetwork_:I

    .line 8066
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->bitField0_:I

    .line 8067
    return-object p0
.end method

.method public clearStatusMessage()Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;
    .locals 1

    .prologue
    .line 8043
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->statusMessage_:Ljava/lang/String;

    .line 8044
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->bitField0_:I

    .line 8045
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 8099
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 8100
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 8101
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->statusMessage_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8104
    :cond_0
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->statusMessageSpan:Lcom/google/majel/proto/SpanProtos$Span;

    if-eqz v1, :cond_1

    .line 8105
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->statusMessageSpan:Lcom/google/majel/proto/SpanProtos$Span;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8108
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 8109
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->socialNetwork_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8112
    :cond_2
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->cachedSize:I

    .line 8113
    return v0
.end method

.method public getSocialNetwork()I
    .locals 1

    .prologue
    .line 8054
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->socialNetwork_:I

    return v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8029
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->statusMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public hasSocialNetwork()Z
    .locals 1

    .prologue
    .line 8062
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStatusMessage()Z
    .locals 1

    .prologue
    .line 8040
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->bitField0_:I

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
    .line 8002
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8121
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 8122
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 8126
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8127
    :sswitch_0
    return-object p0

    .line 8132
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->statusMessage_:Ljava/lang/String;

    .line 8133
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->bitField0_:I

    goto :goto_0

    .line 8137
    :sswitch_2
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->statusMessageSpan:Lcom/google/majel/proto/SpanProtos$Span;

    if-nez v1, :cond_1

    .line 8138
    new-instance v1, Lcom/google/majel/proto/SpanProtos$Span;

    invoke-direct {v1}, Lcom/google/majel/proto/SpanProtos$Span;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->statusMessageSpan:Lcom/google/majel/proto/SpanProtos$Span;

    .line 8140
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->statusMessageSpan:Lcom/google/majel/proto/SpanProtos$Span;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 8144
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->socialNetwork_:I

    .line 8145
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->bitField0_:I

    goto :goto_0

    .line 8122
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public setSocialNetwork(I)Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 8057
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->socialNetwork_:I

    .line 8058
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->bitField0_:I

    .line 8059
    return-object p0
.end method

.method public setStatusMessage(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 8032
    if-nez p1, :cond_0

    .line 8033
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8035
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->statusMessage_:Ljava/lang/String;

    .line 8036
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->bitField0_:I

    .line 8037
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
    .line 8086
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 8087
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->statusMessage_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 8089
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->statusMessageSpan:Lcom/google/majel/proto/SpanProtos$Span;

    if-eqz v0, :cond_1

    .line 8090
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->statusMessageSpan:Lcom/google/majel/proto/SpanProtos$Span;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 8092
    :cond_1
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 8093
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->socialNetwork_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8095
    :cond_2
    return-void
.end method
