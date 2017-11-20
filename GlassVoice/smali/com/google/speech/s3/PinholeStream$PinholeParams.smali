.class public final Lcom/google/speech/s3/PinholeStream$PinholeParams;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "PinholeStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/s3/PinholeStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PinholeParams"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/s3/PinholeStream$PinholeParams;


# instance fields
.field private bitField0_:I

.field public cgiParams:[Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

.field public headers:[Lcom/google/speech/s3/PinholeStream$PinholeHeader;

.field private sendResultsAfterEndOfSpeech_:Z

.field private urlPath_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 75
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeParams;->clear()Lcom/google/speech/s3/PinholeStream$PinholeParams;

    .line 76
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/s3/PinholeStream$PinholeParams;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->_emptyArray:[Lcom/google/speech/s3/PinholeStream$PinholeParams;

    if-nez v0, :cond_1

    .line 15
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->_emptyArray:[Lcom/google/speech/s3/PinholeStream$PinholeParams;

    if-nez v0, :cond_0

    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/s3/PinholeStream$PinholeParams;

    sput-object v0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->_emptyArray:[Lcom/google/speech/s3/PinholeStream$PinholeParams;

    .line 20
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_1
    sget-object v0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->_emptyArray:[Lcom/google/speech/s3/PinholeStream$PinholeParams;

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

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/PinholeStream$PinholeParams;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    new-instance v0, Lcom/google/speech/s3/PinholeStream$PinholeParams;

    invoke-direct {v0}, Lcom/google/speech/s3/PinholeStream$PinholeParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/PinholeStream$PinholeParams;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/PinholeStream$PinholeParams;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/s3/PinholeStream$PinholeParams;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 219
    new-instance v0, Lcom/google/speech/s3/PinholeStream$PinholeParams;

    invoke-direct {v0}, Lcom/google/speech/s3/PinholeStream$PinholeParams;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/PinholeStream$PinholeParams;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/s3/PinholeStream$PinholeParams;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    iput v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->bitField0_:I

    .line 80
    const-string v0, "/search"

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->urlPath_:Ljava/lang/String;

    .line 81
    invoke-static {}, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->emptyArray()[Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->cgiParams:[Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    .line 82
    invoke-static {}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->emptyArray()[Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->headers:[Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    .line 83
    iput-boolean v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->sendResultsAfterEndOfSpeech_:Z

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->cachedSize:I

    .line 85
    return-object p0
.end method

.method public clearSendResultsAfterEndOfSpeech()Lcom/google/speech/s3/PinholeStream$PinholeParams;
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->sendResultsAfterEndOfSpeech_:Z

    .line 70
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->bitField0_:I

    .line 71
    return-object p0
.end method

.method public clearUrlPath()Lcom/google/speech/s3/PinholeStream$PinholeParams;
    .locals 1

    .prologue
    .line 44
    const-string v0, "/search"

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->urlPath_:Ljava/lang/String;

    .line 45
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->bitField0_:I

    .line 46
    return-object p0
.end method

.method public getSendResultsAfterEndOfSpeech()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->sendResultsAfterEndOfSpeech_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 117
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 118
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->cgiParams:[Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->cgiParams:[Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 119
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->cgiParams:[Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 120
    iget-object v3, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->cgiParams:[Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    aget-object v0, v3, v1

    .line 121
    .local v0, "element":Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
    if-eqz v0, :cond_0

    .line 122
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 119
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    .end local v0    # "element":Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
    .end local v1    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->headers:[Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->headers:[Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    array-length v3, v3

    if-lez v3, :cond_3

    .line 128
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->headers:[Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 129
    iget-object v3, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->headers:[Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    aget-object v0, v3, v1

    .line 130
    .local v0, "element":Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    if-eqz v0, :cond_2

    .line 131
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 128
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 136
    .end local v0    # "element":Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    .end local v1    # "i":I
    :cond_3
    iget v3, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    .line 137
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->urlPath_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 140
    :cond_4
    iget v3, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_5

    .line 141
    const/4 v3, 0x4

    iget-boolean v4, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->sendResultsAfterEndOfSpeech_:Z

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 144
    :cond_5
    iput v2, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->cachedSize:I

    .line 145
    return v2
.end method

.method public getUrlPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->urlPath_:Ljava/lang/String;

    return-object v0
.end method

.method public hasSendResultsAfterEndOfSpeech()Z
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUrlPath()Z
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->bitField0_:I

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
    invoke-virtual {p0, p1}, Lcom/google/speech/s3/PinholeStream$PinholeParams;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/PinholeStream$PinholeParams;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/PinholeStream$PinholeParams;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 153
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 154
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 158
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 159
    :sswitch_0
    return-object p0

    .line 164
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 166
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->cgiParams:[Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    if-nez v5, :cond_2

    move v1, v4

    .line 167
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    .line 169
    .local v2, "newArray":[Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
    if-eqz v1, :cond_1

    .line 170
    iget-object v5, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->cgiParams:[Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 173
    new-instance v5, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    invoke-direct {v5}, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;-><init>()V

    aput-object v5, v2, v1

    .line 174
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 175
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 166
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
    :cond_2
    iget-object v5, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->cgiParams:[Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    array-length v1, v5

    goto :goto_1

    .line 178
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
    :cond_3
    new-instance v5, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    invoke-direct {v5}, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;-><init>()V

    aput-object v5, v2, v1

    .line 179
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 180
    iput-object v2, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->cgiParams:[Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    goto :goto_0

    .line 184
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
    :sswitch_2
    const/16 v5, 0x12

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 186
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->headers:[Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    if-nez v5, :cond_5

    move v1, v4

    .line 187
    .restart local v1    # "i":I
    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    .line 189
    .local v2, "newArray":[Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    if-eqz v1, :cond_4

    .line 190
    iget-object v5, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->headers:[Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    :cond_4
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_6

    .line 193
    new-instance v5, Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    invoke-direct {v5}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;-><init>()V

    aput-object v5, v2, v1

    .line 194
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 195
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 186
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    :cond_5
    iget-object v5, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->headers:[Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    array-length v1, v5

    goto :goto_3

    .line 198
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    :cond_6
    new-instance v5, Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    invoke-direct {v5}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;-><init>()V

    aput-object v5, v2, v1

    .line 199
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 200
    iput-object v2, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->headers:[Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    goto/16 :goto_0

    .line 204
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->urlPath_:Ljava/lang/String;

    .line 205
    iget v5, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->bitField0_:I

    goto/16 :goto_0

    .line 209
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->sendResultsAfterEndOfSpeech_:Z

    .line 210
    iget v5, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->bitField0_:I

    goto/16 :goto_0

    .line 154
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public setSendResultsAfterEndOfSpeech(Z)Lcom/google/speech/s3/PinholeStream$PinholeParams;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->sendResultsAfterEndOfSpeech_:Z

    .line 62
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->bitField0_:I

    .line 63
    return-object p0
.end method

.method public setUrlPath(Ljava/lang/String;)Lcom/google/speech/s3/PinholeStream$PinholeParams;
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
    iput-object p1, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->urlPath_:Ljava/lang/String;

    .line 37
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->bitField0_:I

    .line 38
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
    .line 91
    iget-object v2, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->cgiParams:[Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->cgiParams:[Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 92
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->cgiParams:[Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 93
    iget-object v2, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->cgiParams:[Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    aget-object v0, v2, v1

    .line 94
    .local v0, "element":Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
    if-eqz v0, :cond_0

    .line 95
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 92
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    .end local v0    # "element":Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->headers:[Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->headers:[Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 100
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->headers:[Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 101
    iget-object v2, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->headers:[Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    aget-object v0, v2, v1

    .line 102
    .local v0, "element":Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    if-eqz v0, :cond_2

    .line 103
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 100
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 107
    .end local v0    # "element":Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    .end local v1    # "i":I
    :cond_3
    iget v2, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    .line 108
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->urlPath_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 110
    :cond_4
    iget v2, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5

    .line 111
    const/4 v2, 0x4

    iget-boolean v3, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->sendResultsAfterEndOfSpeech_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 113
    :cond_5
    return-void
.end method
