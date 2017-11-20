.class public final Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EarsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/audio/ears/proto/EarsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EarsResultsResponse"
.end annotation


# static fields
.field public static final STATUS_CODE_COMPLETE:I = 0x1

.field public static final STATUS_CODE_FAILURE:I = 0x2

.field public static final STATUS_CODE_IN_PROGRESS:I

.field private static volatile _emptyArray:[Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;


# instance fields
.field private bitField0_:I

.field private detectedCountryCode_:Ljava/lang/String;

.field public result:[Lcom/google/audio/ears/proto/EarsService$EarsResult;

.field private statusCode_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1086
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1087
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->clear()Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    .line 1088
    return-void
.end method

.method public static emptyArray()[Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;
    .locals 2

    .prologue
    .line 1029
    sget-object v0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    if-nez v0, :cond_1

    .line 1030
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1032
    :try_start_0
    sget-object v0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    if-nez v0, :cond_0

    .line 1033
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    sput-object v0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    .line 1035
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1037
    :cond_1
    sget-object v0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    return-object v0

    .line 1035
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1199
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1193
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1091
    iput v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->bitField0_:I

    .line 1092
    invoke-static {}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->emptyArray()[Lcom/google/audio/ears/proto/EarsService$EarsResult;

    move-result-object v0

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->result:[Lcom/google/audio/ears/proto/EarsService$EarsResult;

    .line 1093
    iput v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->statusCode_:I

    .line 1094
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->detectedCountryCode_:Ljava/lang/String;

    .line 1095
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->cachedSize:I

    .line 1096
    return-object p0
.end method

.method public clearDetectedCountryCode()Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;
    .locals 1

    .prologue
    .line 1081
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->detectedCountryCode_:Ljava/lang/String;

    .line 1082
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->bitField0_:I

    .line 1083
    return-object p0
.end method

.method public clearStatusCode()Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;
    .locals 1

    .prologue
    .line 1059
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->statusCode_:I

    .line 1060
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->bitField0_:I

    .line 1061
    return-object p0
.end method

.method public getDetectedCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->detectedCountryCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 1120
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 1121
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->result:[Lcom/google/audio/ears/proto/EarsService$EarsResult;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->result:[Lcom/google/audio/ears/proto/EarsService$EarsResult;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 1122
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->result:[Lcom/google/audio/ears/proto/EarsService$EarsResult;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 1123
    iget-object v3, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->result:[Lcom/google/audio/ears/proto/EarsService$EarsResult;

    aget-object v0, v3, v1

    .line 1124
    .local v0, "element":Lcom/google/audio/ears/proto/EarsService$EarsResult;
    if-eqz v0, :cond_0

    .line 1125
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1122
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1130
    .end local v0    # "element":Lcom/google/audio/ears/proto/EarsService$EarsResult;
    .end local v1    # "i":I
    :cond_1
    iget v3, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 1131
    const/4 v3, 0x2

    iget v4, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->statusCode_:I

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 1134
    :cond_2
    iget v3, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    .line 1135
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->detectedCountryCode_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1138
    :cond_3
    iput v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->cachedSize:I

    .line 1139
    return v2
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 1048
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->statusCode_:I

    return v0
.end method

.method public hasDetectedCountryCode()Z
    .locals 1

    .prologue
    .line 1078
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStatusCode()Z
    .locals 1

    .prologue
    .line 1056
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1147
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 1148
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 1152
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1153
    :sswitch_0
    return-object p0

    .line 1158
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1160
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->result:[Lcom/google/audio/ears/proto/EarsService$EarsResult;

    if-nez v5, :cond_2

    move v1, v4

    .line 1161
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/audio/ears/proto/EarsService$EarsResult;

    .line 1163
    .local v2, "newArray":[Lcom/google/audio/ears/proto/EarsService$EarsResult;
    if-eqz v1, :cond_1

    .line 1164
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->result:[Lcom/google/audio/ears/proto/EarsService$EarsResult;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1166
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 1167
    new-instance v5, Lcom/google/audio/ears/proto/EarsService$EarsResult;

    invoke-direct {v5}, Lcom/google/audio/ears/proto/EarsService$EarsResult;-><init>()V

    aput-object v5, v2, v1

    .line 1168
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1169
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1166
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1160
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/audio/ears/proto/EarsService$EarsResult;
    :cond_2
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->result:[Lcom/google/audio/ears/proto/EarsService$EarsResult;

    array-length v1, v5

    goto :goto_1

    .line 1172
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/audio/ears/proto/EarsService$EarsResult;
    :cond_3
    new-instance v5, Lcom/google/audio/ears/proto/EarsService$EarsResult;

    invoke-direct {v5}, Lcom/google/audio/ears/proto/EarsService$EarsResult;-><init>()V

    aput-object v5, v2, v1

    .line 1173
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1174
    iput-object v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->result:[Lcom/google/audio/ears/proto/EarsService$EarsResult;

    goto :goto_0

    .line 1178
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/audio/ears/proto/EarsService$EarsResult;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->statusCode_:I

    .line 1179
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->bitField0_:I

    goto :goto_0

    .line 1183
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->detectedCountryCode_:Ljava/lang/String;

    .line 1184
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->bitField0_:I

    goto :goto_0

    .line 1148
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 1018
    invoke-virtual {p0, p1}, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    move-result-object v0

    return-object v0
.end method

.method public setDetectedCountryCode(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1070
    if-nez p1, :cond_0

    .line 1071
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1073
    :cond_0
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->detectedCountryCode_:Ljava/lang/String;

    .line 1074
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->bitField0_:I

    .line 1075
    return-object p0
.end method

.method public setStatusCode(I)Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1051
    iput p1, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->statusCode_:I

    .line 1052
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->bitField0_:I

    .line 1053
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
    .line 1102
    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->result:[Lcom/google/audio/ears/proto/EarsService$EarsResult;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->result:[Lcom/google/audio/ears/proto/EarsService$EarsResult;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 1103
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->result:[Lcom/google/audio/ears/proto/EarsService$EarsResult;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1104
    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->result:[Lcom/google/audio/ears/proto/EarsService$EarsResult;

    aget-object v0, v2, v1

    .line 1105
    .local v0, "element":Lcom/google/audio/ears/proto/EarsService$EarsResult;
    if-eqz v0, :cond_0

    .line 1106
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1103
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1110
    .end local v0    # "element":Lcom/google/audio/ears/proto/EarsService$EarsResult;
    .end local v1    # "i":I
    :cond_1
    iget v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 1111
    const/4 v2, 0x2

    iget v3, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->statusCode_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1113
    :cond_2
    iget v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    .line 1114
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->detectedCountryCode_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1116
    :cond_3
    return-void
.end method
