.class public final Lcom/google/speech/s3/Clockwork$ClockworkParams;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "Clockwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/s3/Clockwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClockworkParams"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/s3/Clockwork$ClockworkParams;


# instance fields
.field public cgiParam:[Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;

.field public cookie:[Lcom/google/wireless/clockwork/Search$ClockworkCookie;

.field public httpHeader:[Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 122
    invoke-virtual {p0}, Lcom/google/speech/s3/Clockwork$ClockworkParams;->clear()Lcom/google/speech/s3/Clockwork$ClockworkParams;

    .line 123
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/s3/Clockwork$ClockworkParams;
    .locals 2

    .prologue
    .line 101
    sget-object v0, Lcom/google/speech/s3/Clockwork$ClockworkParams;->_emptyArray:[Lcom/google/speech/s3/Clockwork$ClockworkParams;

    if-nez v0, :cond_1

    .line 102
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 104
    :try_start_0
    sget-object v0, Lcom/google/speech/s3/Clockwork$ClockworkParams;->_emptyArray:[Lcom/google/speech/s3/Clockwork$ClockworkParams;

    if-nez v0, :cond_0

    .line 105
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/s3/Clockwork$ClockworkParams;

    sput-object v0, Lcom/google/speech/s3/Clockwork$ClockworkParams;->_emptyArray:[Lcom/google/speech/s3/Clockwork$ClockworkParams;

    .line 107
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_1
    sget-object v0, Lcom/google/speech/s3/Clockwork$ClockworkParams;->_emptyArray:[Lcom/google/speech/s3/Clockwork$ClockworkParams;

    return-object v0

    .line 107
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/Clockwork$ClockworkParams;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    new-instance v0, Lcom/google/speech/s3/Clockwork$ClockworkParams;

    invoke-direct {v0}, Lcom/google/speech/s3/Clockwork$ClockworkParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/Clockwork$ClockworkParams;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/Clockwork$ClockworkParams;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/s3/Clockwork$ClockworkParams;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 277
    new-instance v0, Lcom/google/speech/s3/Clockwork$ClockworkParams;

    invoke-direct {v0}, Lcom/google/speech/s3/Clockwork$ClockworkParams;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/Clockwork$ClockworkParams;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/s3/Clockwork$ClockworkParams;
    .locals 1

    .prologue
    .line 126
    invoke-static {}, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->emptyArray()[Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/s3/Clockwork$ClockworkParams;->httpHeader:[Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;

    .line 127
    invoke-static {}, Lcom/google/wireless/clockwork/Search$ClockworkCookie;->emptyArray()[Lcom/google/wireless/clockwork/Search$ClockworkCookie;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/s3/Clockwork$ClockworkParams;->cookie:[Lcom/google/wireless/clockwork/Search$ClockworkCookie;

    .line 128
    invoke-static {}, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;->emptyArray()[Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/s3/Clockwork$ClockworkParams;->cgiParam:[Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;

    .line 129
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/Clockwork$ClockworkParams;->cachedSize:I

    .line 130
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 164
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 165
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/speech/s3/Clockwork$ClockworkParams;->httpHeader:[Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/speech/s3/Clockwork$ClockworkParams;->httpHeader:[Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 166
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/speech/s3/Clockwork$ClockworkParams;->httpHeader:[Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 167
    iget-object v3, p0, Lcom/google/speech/s3/Clockwork$ClockworkParams;->httpHeader:[Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;

    aget-object v0, v3, v1

    .line 168
    .local v0, "element":Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;
    if-eqz v0, :cond_0

    .line 169
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 166
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    .end local v0    # "element":Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;
    .end local v1    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/google/speech/s3/Clockwork$ClockworkParams;->cookie:[Lcom/google/wireless/clockwork/Search$ClockworkCookie;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/speech/s3/Clockwork$ClockworkParams;->cookie:[Lcom/google/wireless/clockwork/Search$ClockworkCookie;

    array-length v3, v3

    if-lez v3, :cond_3

    .line 175
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/google/speech/s3/Clockwork$ClockworkParams;->cookie:[Lcom/google/wireless/clockwork/Search$ClockworkCookie;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 176
    iget-object v3, p0, Lcom/google/speech/s3/Clockwork$ClockworkParams;->cookie:[Lcom/google/wireless/clockwork/Search$ClockworkCookie;

    aget-object v0, v3, v1

    .line 177
    .local v0, "element":Lcom/google/wireless/clockwork/Search$ClockworkCookie;
    if-eqz v0, :cond_2

    .line 178
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 175
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 183
    .end local v0    # "element":Lcom/google/wireless/clockwork/Search$ClockworkCookie;
    .end local v1    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/google/speech/s3/Clockwork$ClockworkParams;->cgiParam:[Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/speech/s3/Clockwork$ClockworkParams;->cgiParam:[Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;

    array-length v3, v3

    if-lez v3, :cond_5

    .line 184
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v3, p0, Lcom/google/speech/s3/Clockwork$ClockworkParams;->cgiParam:[Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;

    array-length v3, v3

    if-ge v1, v3, :cond_5

    .line 185
    iget-object v3, p0, Lcom/google/speech/s3/Clockwork$ClockworkParams;->cgiParam:[Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;

    aget-object v0, v3, v1

    .line 186
    .local v0, "element":Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;
    if-eqz v0, :cond_4

    .line 187
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 184
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 192
    .end local v0    # "element":Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;
    .end local v1    # "i":I
    :cond_5
    iput v2, p0, Lcom/google/speech/s3/Clockwork$ClockworkParams;->cachedSize:I

    .line 193
    return v2
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
    .line 95
    invoke-virtual {p0, p1}, Lcom/google/speech/s3/Clockwork$ClockworkParams;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/Clockwork$ClockworkParams;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/Clockwork$ClockworkParams;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 201
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 202
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 206
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 207
    :sswitch_0
    return-object p0

    .line 212
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 214
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/speech/s3/Clockwork$ClockworkParams;->httpHeader:[Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;

    if-nez v5, :cond_2

    move v1, v4

    .line 215
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;

    .line 217
    .local v2, "newArray":[Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;
    if-eqz v1, :cond_1

    .line 218
    iget-object v5, p0, Lcom/google/speech/s3/Clockwork$ClockworkParams;->httpHeader:[Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 221
    new-instance v5, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;

    invoke-direct {v5}, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;-><init>()V

    aput-object v5, v2, v1

    .line 222
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 223
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 220
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 214
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;
    :cond_2
    iget-object v5, p0, Lcom/google/speech/s3/Clockwork$ClockworkParams;->httpHeader:[Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;

    array-length v1, v5

    goto :goto_1

    .line 226
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;
    :cond_3
    new-instance v5, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;

    invoke-direct {v5}, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;-><init>()V

    aput-object v5, v2, v1

    .line 227
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 228
    iput-object v2, p0, Lcom/google/speech/s3/Clockwork$ClockworkParams;->httpHeader:[Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;

    goto :goto_0

    .line 232
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;
    :sswitch_2
    const/16 v5, 0x12

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 234
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/speech/s3/Clockwork$ClockworkParams;->cookie:[Lcom/google/wireless/clockwork/Search$ClockworkCookie;

    if-nez v5, :cond_5

    move v1, v4

    .line 235
    .restart local v1    # "i":I
    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/wireless/clockwork/Search$ClockworkCookie;

    .line 237
    .local v2, "newArray":[Lcom/google/wireless/clockwork/Search$ClockworkCookie;
    if-eqz v1, :cond_4

    .line 238
    iget-object v5, p0, Lcom/google/speech/s3/Clockwork$ClockworkParams;->cookie:[Lcom/google/wireless/clockwork/Search$ClockworkCookie;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    :cond_4
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_6

    .line 241
    new-instance v5, Lcom/google/wireless/clockwork/Search$ClockworkCookie;

    invoke-direct {v5}, Lcom/google/wireless/clockwork/Search$ClockworkCookie;-><init>()V

    aput-object v5, v2, v1

    .line 242
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 243
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 240
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 234
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/wireless/clockwork/Search$ClockworkCookie;
    :cond_5
    iget-object v5, p0, Lcom/google/speech/s3/Clockwork$ClockworkParams;->cookie:[Lcom/google/wireless/clockwork/Search$ClockworkCookie;

    array-length v1, v5

    goto :goto_3

    .line 246
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/wireless/clockwork/Search$ClockworkCookie;
    :cond_6
    new-instance v5, Lcom/google/wireless/clockwork/Search$ClockworkCookie;

    invoke-direct {v5}, Lcom/google/wireless/clockwork/Search$ClockworkCookie;-><init>()V

    aput-object v5, v2, v1

    .line 247
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 248
    iput-object v2, p0, Lcom/google/speech/s3/Clockwork$ClockworkParams;->cookie:[Lcom/google/wireless/clockwork/Search$ClockworkCookie;

    goto/16 :goto_0

    .line 252
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/wireless/clockwork/Search$ClockworkCookie;
    :sswitch_3
    const/16 v5, 0x1a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 254
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/speech/s3/Clockwork$ClockworkParams;->cgiParam:[Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;

    if-nez v5, :cond_8

    move v1, v4

    .line 255
    .restart local v1    # "i":I
    :goto_5
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;

    .line 257
    .local v2, "newArray":[Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;
    if-eqz v1, :cond_7

    .line 258
    iget-object v5, p0, Lcom/google/speech/s3/Clockwork$ClockworkParams;->cgiParam:[Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    :cond_7
    :goto_6
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_9

    .line 261
    new-instance v5, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;

    invoke-direct {v5}, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;-><init>()V

    aput-object v5, v2, v1

    .line 262
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 263
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 260
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 254
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;
    :cond_8
    iget-object v5, p0, Lcom/google/speech/s3/Clockwork$ClockworkParams;->cgiParam:[Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;

    array-length v1, v5

    goto :goto_5

    .line 266
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;
    :cond_9
    new-instance v5, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;

    invoke-direct {v5}, Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;-><init>()V

    aput-object v5, v2, v1

    .line 267
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 268
    iput-object v2, p0, Lcom/google/speech/s3/Clockwork$ClockworkParams;->cgiParam:[Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;

    goto/16 :goto_0

    .line 202
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
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
    .line 136
    iget-object v2, p0, Lcom/google/speech/s3/Clockwork$ClockworkParams;->httpHeader:[Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/speech/s3/Clockwork$ClockworkParams;->httpHeader:[Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 137
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/speech/s3/Clockwork$ClockworkParams;->httpHeader:[Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 138
    iget-object v2, p0, Lcom/google/speech/s3/Clockwork$ClockworkParams;->httpHeader:[Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;

    aget-object v0, v2, v1

    .line 139
    .local v0, "element":Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;
    if-eqz v0, :cond_0

    .line 140
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 137
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    .end local v0    # "element":Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/google/speech/s3/Clockwork$ClockworkParams;->cookie:[Lcom/google/wireless/clockwork/Search$ClockworkCookie;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/speech/s3/Clockwork$ClockworkParams;->cookie:[Lcom/google/wireless/clockwork/Search$ClockworkCookie;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 145
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/speech/s3/Clockwork$ClockworkParams;->cookie:[Lcom/google/wireless/clockwork/Search$ClockworkCookie;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 146
    iget-object v2, p0, Lcom/google/speech/s3/Clockwork$ClockworkParams;->cookie:[Lcom/google/wireless/clockwork/Search$ClockworkCookie;

    aget-object v0, v2, v1

    .line 147
    .local v0, "element":Lcom/google/wireless/clockwork/Search$ClockworkCookie;
    if-eqz v0, :cond_2

    .line 148
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 145
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 152
    .end local v0    # "element":Lcom/google/wireless/clockwork/Search$ClockworkCookie;
    .end local v1    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/google/speech/s3/Clockwork$ClockworkParams;->cgiParam:[Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/speech/s3/Clockwork$ClockworkParams;->cgiParam:[Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;

    array-length v2, v2

    if-lez v2, :cond_5

    .line 153
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/speech/s3/Clockwork$ClockworkParams;->cgiParam:[Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 154
    iget-object v2, p0, Lcom/google/speech/s3/Clockwork$ClockworkParams;->cgiParam:[Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;

    aget-object v0, v2, v1

    .line 155
    .local v0, "element":Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;
    if-eqz v0, :cond_4

    .line 156
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 153
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 160
    .end local v0    # "element":Lcom/google/wireless/clockwork/Search$ClockworkCgiParam;
    .end local v1    # "i":I
    :cond_5
    return-void
.end method
