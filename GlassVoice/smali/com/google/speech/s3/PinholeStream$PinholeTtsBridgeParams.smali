.class public final Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "PinholeStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/s3/PinholeStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PinholeTtsBridgeParams"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;


# instance fields
.field private bitField0_:I

.field private ttsStringPrefix_:Ljava/lang/String;

.field private ttsStringSuffix_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1154
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1155
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->clear()Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;

    .line 1156
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;
    .locals 2

    .prologue
    .line 1097
    sget-object v0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->_emptyArray:[Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;

    if-nez v0, :cond_1

    .line 1098
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1100
    :try_start_0
    sget-object v0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->_emptyArray:[Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;

    if-nez v0, :cond_0

    .line 1101
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;

    sput-object v0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->_emptyArray:[Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;

    .line 1103
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1105
    :cond_1
    sget-object v0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->_emptyArray:[Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;

    return-object v0

    .line 1103
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1229
    new-instance v0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;

    invoke-direct {v0}, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1223
    new-instance v0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;

    invoke-direct {v0}, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;
    .locals 1

    .prologue
    .line 1159
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->bitField0_:I

    .line 1160
    const-string v0, "\\u003C!-- ectanstts "

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->ttsStringPrefix_:Ljava/lang/String;

    .line 1161
    const-string v0, " ectanstts --\\u003E"

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->ttsStringSuffix_:Ljava/lang/String;

    .line 1162
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->cachedSize:I

    .line 1163
    return-object p0
.end method

.method public clearTtsStringPrefix()Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;
    .locals 1

    .prologue
    .line 1127
    const-string v0, "\\u003C!-- ectanstts "

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->ttsStringPrefix_:Ljava/lang/String;

    .line 1128
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->bitField0_:I

    .line 1129
    return-object p0
.end method

.method public clearTtsStringSuffix()Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;
    .locals 1

    .prologue
    .line 1149
    const-string v0, " ectanstts --\\u003E"

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->ttsStringSuffix_:Ljava/lang/String;

    .line 1150
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->bitField0_:I

    .line 1151
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1179
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1180
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1181
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->ttsStringPrefix_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1184
    :cond_0
    iget v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1185
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->ttsStringSuffix_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1188
    :cond_1
    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->cachedSize:I

    .line 1189
    return v0
.end method

.method public getTtsStringPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->ttsStringPrefix_:Ljava/lang/String;

    return-object v0
.end method

.method public getTtsStringSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->ttsStringSuffix_:Ljava/lang/String;

    return-object v0
.end method

.method public hasTtsStringPrefix()Z
    .locals 1

    .prologue
    .line 1124
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTtsStringSuffix()Z
    .locals 1

    .prologue
    .line 1146
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->bitField0_:I

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
    .line 1091
    invoke-virtual {p0, p1}, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1197
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1198
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1202
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1203
    :sswitch_0
    return-object p0

    .line 1208
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->ttsStringPrefix_:Ljava/lang/String;

    .line 1209
    iget v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->bitField0_:I

    goto :goto_0

    .line 1213
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->ttsStringSuffix_:Ljava/lang/String;

    .line 1214
    iget v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->bitField0_:I

    goto :goto_0

    .line 1198
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setTtsStringPrefix(Ljava/lang/String;)Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1116
    if-nez p1, :cond_0

    .line 1117
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1119
    :cond_0
    iput-object p1, p0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->ttsStringPrefix_:Ljava/lang/String;

    .line 1120
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->bitField0_:I

    .line 1121
    return-object p0
.end method

.method public setTtsStringSuffix(Ljava/lang/String;)Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1138
    if-nez p1, :cond_0

    .line 1139
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1141
    :cond_0
    iput-object p1, p0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->ttsStringSuffix_:Ljava/lang/String;

    .line 1142
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->bitField0_:I

    .line 1143
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
    .line 1169
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1170
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->ttsStringPrefix_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1172
    :cond_0
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1173
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->ttsStringSuffix_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1175
    :cond_1
    return-void
.end method
