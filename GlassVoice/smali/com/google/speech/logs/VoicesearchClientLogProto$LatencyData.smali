.class public final Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "VoicesearchClientLogProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/VoicesearchClientLogProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LatencyData"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;


# instance fields
.field private bitField0_:I

.field public breakdown:[Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

.field private durationMsec_:I

.field private factor_:I

.field private timeout_:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3058
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 3059
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->clear()Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;

    .line 3060
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;
    .locals 2

    .prologue
    .line 2985
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;

    if-nez v0, :cond_1

    .line 2986
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2988
    :try_start_0
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;

    if-nez v0, :cond_0

    .line 2989
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;

    sput-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;

    .line 2991
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2993
    :cond_1
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;

    return-object v0

    .line 2991
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3184
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3178
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3063
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->bitField0_:I

    .line 3064
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->durationMsec_:I

    .line 3065
    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->timeout_:Z

    .line 3066
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->factor_:I

    .line 3067
    invoke-static {}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->emptyArray()[Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->breakdown:[Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    .line 3068
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->cachedSize:I

    .line 3069
    return-object p0
.end method

.method public clearDurationMsec()Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;
    .locals 1

    .prologue
    .line 3012
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->durationMsec_:I

    .line 3013
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->bitField0_:I

    .line 3014
    return-object p0
.end method

.method public clearFactor()Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;
    .locals 1

    .prologue
    .line 3050
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->factor_:I

    .line 3051
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->bitField0_:I

    .line 3052
    return-object p0
.end method

.method public clearTimeout()Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;
    .locals 1

    .prologue
    .line 3031
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->timeout_:Z

    .line 3032
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->bitField0_:I

    .line 3033
    return-object p0
.end method

.method public getDurationMsec()I
    .locals 1

    .prologue
    .line 3001
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->durationMsec_:I

    return v0
.end method

.method public getFactor()I
    .locals 1

    .prologue
    .line 3039
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->factor_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 3096
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 3097
    .local v2, "size":I
    iget v3, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 3098
    const/4 v3, 0x1

    iget v4, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->durationMsec_:I

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 3101
    :cond_0
    iget v3, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 3102
    const/4 v3, 0x2

    iget-boolean v4, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->timeout_:Z

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 3105
    :cond_1
    iget v3, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    .line 3106
    const/4 v3, 0x3

    iget v4, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->factor_:I

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 3109
    :cond_2
    iget-object v3, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->breakdown:[Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->breakdown:[Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    array-length v3, v3

    if-lez v3, :cond_4

    .line 3110
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->breakdown:[Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 3111
    iget-object v3, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->breakdown:[Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    aget-object v0, v3, v1

    .line 3112
    .local v0, "element":Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;
    if-eqz v0, :cond_3

    .line 3113
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3110
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3118
    .end local v0    # "element":Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;
    .end local v1    # "i":I
    :cond_4
    iput v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->cachedSize:I

    .line 3119
    return v2
.end method

.method public getTimeout()Z
    .locals 1

    .prologue
    .line 3020
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->timeout_:Z

    return v0
.end method

.method public hasDurationMsec()Z
    .locals 1

    .prologue
    .line 3009
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFactor()Z
    .locals 1

    .prologue
    .line 3047
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimeout()Z
    .locals 1

    .prologue
    .line 3028
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

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
    .line 2979
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3127
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 3128
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 3132
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3133
    :sswitch_0
    return-object p0

    .line 3138
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->durationMsec_:I

    .line 3139
    iget v5, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->bitField0_:I

    goto :goto_0

    .line 3143
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->timeout_:Z

    .line 3144
    iget v5, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->bitField0_:I

    goto :goto_0

    .line 3148
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->factor_:I

    .line 3149
    iget v5, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->bitField0_:I

    goto :goto_0

    .line 3153
    :sswitch_4
    const/16 v5, 0x22

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 3155
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->breakdown:[Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    if-nez v5, :cond_2

    move v1, v4

    .line 3156
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    .line 3158
    .local v2, "newArray":[Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;
    if-eqz v1, :cond_1

    .line 3159
    iget-object v5, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->breakdown:[Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3161
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 3162
    new-instance v5, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    invoke-direct {v5}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;-><init>()V

    aput-object v5, v2, v1

    .line 3163
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3164
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 3161
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3155
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;
    :cond_2
    iget-object v5, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->breakdown:[Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    array-length v1, v5

    goto :goto_1

    .line 3167
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;
    :cond_3
    new-instance v5, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    invoke-direct {v5}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;-><init>()V

    aput-object v5, v2, v1

    .line 3168
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3169
    iput-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->breakdown:[Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    goto :goto_0

    .line 3128
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public setDurationMsec(I)Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3004
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->durationMsec_:I

    .line 3005
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->bitField0_:I

    .line 3006
    return-object p0
.end method

.method public setFactor(I)Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3042
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->factor_:I

    .line 3043
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->bitField0_:I

    .line 3044
    return-object p0
.end method

.method public setTimeout(Z)Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 3023
    iput-boolean p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->timeout_:Z

    .line 3024
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->bitField0_:I

    .line 3025
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3075
    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 3076
    const/4 v2, 0x1

    iget v3, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->durationMsec_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3078
    :cond_0
    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 3079
    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->timeout_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3081
    :cond_1
    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 3082
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->factor_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3084
    :cond_2
    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->breakdown:[Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->breakdown:[Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    array-length v2, v2

    if-lez v2, :cond_4

    .line 3085
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->breakdown:[Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 3086
    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->breakdown:[Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    aget-object v0, v2, v1

    .line 3087
    .local v0, "element":Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;
    if-eqz v0, :cond_3

    .line 3088
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3085
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3092
    .end local v0    # "element":Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;
    .end local v1    # "i":I
    :cond_4
    return-void
.end method
