.class public final Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "GogglesProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bionics/goggles/api2/GogglesProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GogglesClientLog"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;


# instance fields
.field private bitField0_:I

.field public events:[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

.field private sessionId_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3156
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 3157
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->clear()Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;

    .line 3158
    return-void
.end method

.method public static emptyArray()[Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;
    .locals 2

    .prologue
    .line 3118
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;

    if-nez v0, :cond_1

    .line 3119
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3121
    :try_start_0
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;

    if-nez v0, :cond_0

    .line 3122
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;

    sput-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;

    .line 3124
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3126
    :cond_1
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;

    return-object v0

    .line 3124
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3256
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3250
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;
    .locals 1

    .prologue
    .line 3161
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->bitField0_:I

    .line 3162
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->sessionId_:Ljava/lang/String;

    .line 3163
    invoke-static {}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->emptyArray()[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->events:[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    .line 3164
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->cachedSize:I

    .line 3165
    return-object p0
.end method

.method public clearSessionId()Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;
    .locals 1

    .prologue
    .line 3148
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->sessionId_:Ljava/lang/String;

    .line 3149
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->bitField0_:I

    .line 3150
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 3186
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 3187
    .local v2, "size":I
    iget v3, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 3188
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->sessionId_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3191
    :cond_0
    iget-object v3, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->events:[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->events:[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    array-length v3, v3

    if-lez v3, :cond_2

    .line 3192
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->events:[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 3193
    iget-object v3, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->events:[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    aget-object v0, v3, v1

    .line 3194
    .local v0, "element":Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;
    if-eqz v0, :cond_1

    .line 3195
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3192
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3200
    .end local v0    # "element":Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;
    .end local v1    # "i":I
    :cond_2
    iput v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->cachedSize:I

    .line 3201
    return v2
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3134
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->sessionId_:Ljava/lang/String;

    return-object v0
.end method

.method public hasSessionId()Z
    .locals 1

    .prologue
    .line 3145
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3209
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 3210
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 3214
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3215
    :sswitch_0
    return-object p0

    .line 3220
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->sessionId_:Ljava/lang/String;

    .line 3221
    iget v5, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->bitField0_:I

    goto :goto_0

    .line 3225
    :sswitch_2
    const/16 v5, 0x12

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 3227
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->events:[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    if-nez v5, :cond_2

    move v1, v4

    .line 3228
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    .line 3230
    .local v2, "newArray":[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;
    if-eqz v1, :cond_1

    .line 3231
    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->events:[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3233
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 3234
    new-instance v5, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    invoke-direct {v5}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;-><init>()V

    aput-object v5, v2, v1

    .line 3235
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3236
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 3233
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3227
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;
    :cond_2
    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->events:[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    array-length v1, v5

    goto :goto_1

    .line 3239
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;
    :cond_3
    new-instance v5, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    invoke-direct {v5}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;-><init>()V

    aput-object v5, v2, v1

    .line 3240
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3241
    iput-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->events:[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    goto :goto_0

    .line 3210
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 3112
    invoke-virtual {p0, p1}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;

    move-result-object v0

    return-object v0
.end method

.method public setSessionId(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3137
    if-nez p1, :cond_0

    .line 3138
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3140
    :cond_0
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->sessionId_:Ljava/lang/String;

    .line 3141
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->bitField0_:I

    .line 3142
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
    .line 3171
    iget v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 3172
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->sessionId_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3174
    :cond_0
    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->events:[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->events:[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    array-length v2, v2

    if-lez v2, :cond_2

    .line 3175
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->events:[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 3176
    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->events:[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    aget-object v0, v2, v1

    .line 3177
    .local v0, "element":Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;
    if-eqz v0, :cond_1

    .line 3178
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3175
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3182
    .end local v0    # "element":Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;
    .end local v1    # "i":I
    :cond_2
    return-void
.end method
