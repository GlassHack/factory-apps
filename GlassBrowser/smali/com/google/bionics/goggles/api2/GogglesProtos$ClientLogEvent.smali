.class public final Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "GogglesProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bionics/goggles/api2/GogglesProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientLogEvent"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;


# instance fields
.field private bitField0_:I

.field public clientEvent:Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;

.field private clientTimeMs_:J

.field public impression:Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

.field public userEvent:Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3001
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 3002
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->clear()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    .line 3003
    return-void
.end method

.method public static emptyArray()[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;
    .locals 2

    .prologue
    .line 2960
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    if-nez v0, :cond_1

    .line 2961
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2963
    :try_start_0
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    if-nez v0, :cond_0

    .line 2964
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    sput-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    .line 2966
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2968
    :cond_1
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    return-object v0

    .line 2966
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3108
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3102
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3006
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->bitField0_:I

    .line 3007
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->clientTimeMs_:J

    .line 3008
    iput-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->userEvent:Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;

    .line 3009
    iput-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->clientEvent:Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;

    .line 3010
    iput-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->impression:Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    .line 3011
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->cachedSize:I

    .line 3012
    return-object p0
.end method

.method public clearClientTimeMs()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;
    .locals 2

    .prologue
    .line 2987
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->clientTimeMs_:J

    .line 2988
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->bitField0_:I

    .line 2989
    return-object p0
.end method

.method public getClientTimeMs()J
    .locals 2

    .prologue
    .line 2976
    iget-wide v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->clientTimeMs_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 3034
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 3035
    .local v0, "size":I
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 3036
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->clientTimeMs_:J

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3039
    :cond_0
    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->userEvent:Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;

    if-eqz v1, :cond_1

    .line 3040
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->userEvent:Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3043
    :cond_1
    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->clientEvent:Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;

    if-eqz v1, :cond_2

    .line 3044
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->clientEvent:Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3047
    :cond_2
    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->impression:Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    if-eqz v1, :cond_3

    .line 3048
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->impression:Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3051
    :cond_3
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->cachedSize:I

    .line 3052
    return v0
.end method

.method public hasClientTimeMs()Z
    .locals 1

    .prologue
    .line 2984
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;
    .locals 3
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3060
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3061
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 3065
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3066
    :sswitch_0
    return-object p0

    .line 3071
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->clientTimeMs_:J

    .line 3072
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->bitField0_:I

    goto :goto_0

    .line 3076
    :sswitch_2
    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->userEvent:Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;

    if-nez v1, :cond_1

    .line 3077
    new-instance v1, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;

    invoke-direct {v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;-><init>()V

    iput-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->userEvent:Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;

    .line 3079
    :cond_1
    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->userEvent:Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 3083
    :sswitch_3
    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->clientEvent:Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;

    if-nez v1, :cond_2

    .line 3084
    new-instance v1, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;

    invoke-direct {v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;-><init>()V

    iput-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->clientEvent:Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;

    .line 3086
    :cond_2
    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->clientEvent:Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 3090
    :sswitch_4
    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->impression:Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    if-nez v1, :cond_3

    .line 3091
    new-instance v1, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    invoke-direct {v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;-><init>()V

    iput-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->impression:Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    .line 3093
    :cond_3
    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->impression:Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 3061
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
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
    .line 2954
    invoke-virtual {p0, p1}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    move-result-object v0

    return-object v0
.end method

.method public setClientTimeMs(J)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 2979
    iput-wide p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->clientTimeMs_:J

    .line 2980
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->bitField0_:I

    .line 2981
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3018
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3019
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->clientTimeMs_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 3021
    :cond_0
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->userEvent:Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;

    if-eqz v0, :cond_1

    .line 3022
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->userEvent:Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3024
    :cond_1
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->clientEvent:Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;

    if-eqz v0, :cond_2

    .line 3025
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->clientEvent:Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3027
    :cond_2
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->impression:Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    if-eqz v0, :cond_3

    .line 3028
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->impression:Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3030
    :cond_3
    return-void
.end method
