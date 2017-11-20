.class public final Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "Majel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/speech/s3/Majel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MajelClientInfo"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/speech/s3/Majel$MajelClientInfo;


# instance fields
.field private bitField0_:I

.field public browserParams:Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

.field public capabilities:[I

.field private clientName_:Ljava/lang/String;

.field private client_:I

.field public context:Lcom/google/majel/proto/ContextProtos$Context;

.field private gservicesCountryCode_:Ljava/lang/String;

.field public previewParams:Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

.field private safesearchLevel_:I

.field public screenParams:Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

.field private systemTimeMs_:J

.field private timeZone_:Ljava/lang/String;

.field private useCompressedResponse_:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 185
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->clear()Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    .line 186
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->_emptyArray:[Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    if-nez v0, :cond_1

    .line 15
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->_emptyArray:[Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    if-nez v0, :cond_0

    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    sput-object v0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->_emptyArray:[Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    .line 20
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_1
    sget-object v0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->_emptyArray:[Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

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

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 440
    new-instance v0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    invoke-direct {v0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 434
    new-instance v0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    invoke-direct {v0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 189
    iput v2, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    .line 190
    iput-boolean v2, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->useCompressedResponse_:Z

    .line 191
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->capabilities:[I

    .line 192
    iput-object v1, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->previewParams:Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    .line 193
    iput-object v1, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->browserParams:Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    .line 194
    iput-object v1, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->screenParams:Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    .line 195
    iput-object v1, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->context:Lcom/google/majel/proto/ContextProtos$Context;

    .line 196
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->safesearchLevel_:I

    .line 197
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->systemTimeMs_:J

    .line 198
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->timeZone_:Ljava/lang/String;

    .line 199
    iput v2, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->client_:I

    .line 200
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->clientName_:Ljava/lang/String;

    .line 201
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->gservicesCountryCode_:Ljava/lang/String;

    .line 202
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->cachedSize:I

    .line 203
    return-object p0
.end method

.method public clearClient()Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->client_:I

    .line 136
    iget v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    .line 137
    return-object p0
.end method

.method public clearClientName()Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 1

    .prologue
    .line 157
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->clientName_:Ljava/lang/String;

    .line 158
    iget v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    .line 159
    return-object p0
.end method

.method public clearGservicesCountryCode()Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 1

    .prologue
    .line 179
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->gservicesCountryCode_:Ljava/lang/String;

    .line 180
    iget v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    .line 181
    return-object p0
.end method

.method public clearSafesearchLevel()Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->safesearchLevel_:I

    .line 76
    iget v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    .line 77
    return-object p0
.end method

.method public clearSystemTimeMs()Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 2

    .prologue
    .line 94
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->systemTimeMs_:J

    .line 95
    iget v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    .line 96
    return-object p0
.end method

.method public clearTimeZone()Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 1

    .prologue
    .line 116
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->timeZone_:Ljava/lang/String;

    .line 117
    iget v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    .line 118
    return-object p0
.end method

.method public clearUseCompressedResponse()Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->useCompressedResponse_:Z

    .line 42
    iget v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    .line 43
    return-object p0
.end method

.method public getClient()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->client_:I

    return v0
.end method

.method public getClientName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->clientName_:Ljava/lang/String;

    return-object v0
.end method

.method public getGservicesCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->gservicesCountryCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getSafesearchLevel()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->safesearchLevel_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 251
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v3

    .line 252
    .local v3, "size":I
    iget v4, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 253
    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->useCompressedResponse_:Z

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 256
    :cond_0
    iget-object v4, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->capabilities:[I

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->capabilities:[I

    array-length v4, v4

    if-lez v4, :cond_2

    .line 257
    const/4 v0, 0x0

    .line 258
    .local v0, "dataSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->capabilities:[I

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 259
    iget-object v4, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->capabilities:[I

    aget v1, v4, v2

    .line 260
    .local v1, "element":I
    invoke-static {v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 258
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 263
    .end local v1    # "element":I
    :cond_1
    add-int/2addr v3, v0

    .line 264
    iget-object v4, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->capabilities:[I

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 266
    .end local v0    # "dataSize":I
    .end local v2    # "i":I
    :cond_2
    iget-object v4, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->context:Lcom/google/majel/proto/ContextProtos$Context;

    if-eqz v4, :cond_3

    .line 267
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->context:Lcom/google/majel/proto/ContextProtos$Context;

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 270
    :cond_3
    iget v4, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_4

    .line 271
    const/4 v4, 0x4

    iget v5, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->safesearchLevel_:I

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 274
    :cond_4
    iget-object v4, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->previewParams:Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    if-eqz v4, :cond_5

    .line 275
    const/4 v4, 0x5

    iget-object v5, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->previewParams:Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 278
    :cond_5
    iget-object v4, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->browserParams:Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    if-eqz v4, :cond_6

    .line 279
    const/4 v4, 0x6

    iget-object v5, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->browserParams:Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 282
    :cond_6
    iget v4, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_7

    .line 283
    const/4 v4, 0x7

    iget-wide v5, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->systemTimeMs_:J

    invoke-static {v4, v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 286
    :cond_7
    iget v4, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_8

    .line 287
    const/16 v4, 0x8

    iget-object v5, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->timeZone_:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 290
    :cond_8
    iget-object v4, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->screenParams:Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    if-eqz v4, :cond_9

    .line 291
    const/16 v4, 0x9

    iget-object v5, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->screenParams:Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 294
    :cond_9
    iget v4, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_a

    .line 295
    const/16 v4, 0xa

    iget v5, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->client_:I

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 298
    :cond_a
    iget v4, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_b

    .line 299
    const/16 v4, 0xb

    iget-object v5, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->clientName_:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 302
    :cond_b
    iget v4, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_c

    .line 303
    const/16 v4, 0xc

    iget-object v5, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->gservicesCountryCode_:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 306
    :cond_c
    iput v3, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->cachedSize:I

    .line 307
    return v3
.end method

.method public getSystemTimeMs()J
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->systemTimeMs_:J

    return-wide v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->timeZone_:Ljava/lang/String;

    return-object v0
.end method

.method public getUseCompressedResponse()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->useCompressedResponse_:Z

    return v0
.end method

.method public hasClient()Z
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasClientName()Z
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGservicesCountryCode()Z
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSafesearchLevel()Z
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSystemTimeMs()Z
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimeZone()Z
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUseCompressedResponse()Z
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

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
    invoke-virtual {p0, p1}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 10
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 315
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v6

    .line 316
    .local v6, "tag":I
    sparse-switch v6, :sswitch_data_0

    .line 320
    invoke-static {p1, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 321
    :sswitch_0
    return-object p0

    .line 326
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->useCompressedResponse_:Z

    .line 327
    iget v8, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    goto :goto_0

    .line 331
    :sswitch_2
    const/16 v8, 0x10

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 333
    .local v0, "arrayLength":I
    iget-object v8, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->capabilities:[I

    if-nez v8, :cond_2

    move v1, v7

    .line 334
    .local v1, "i":I
    :goto_1
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 335
    .local v4, "newArray":[I
    if-eqz v1, :cond_1

    .line 336
    iget-object v8, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->capabilities:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 338
    :cond_1
    :goto_2
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_3

    .line 339
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 340
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 338
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 333
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_2
    iget-object v8, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->capabilities:[I

    array-length v1, v8

    goto :goto_1

    .line 343
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 344
    iput-object v4, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->capabilities:[I

    goto :goto_0

    .line 348
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 349
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 351
    .local v3, "limit":I
    const/4 v0, 0x0

    .line 352
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 353
    .local v5, "startPos":I
    :goto_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_4

    .line 354
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 355
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 357
    :cond_4
    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 358
    iget-object v8, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->capabilities:[I

    if-nez v8, :cond_6

    move v1, v7

    .line 359
    .restart local v1    # "i":I
    :goto_4
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 360
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_5

    .line 361
    iget-object v8, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->capabilities:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 363
    :cond_5
    :goto_5
    array-length v8, v4

    if-ge v1, v8, :cond_7

    .line 364
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 363
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 358
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_6
    iget-object v8, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->capabilities:[I

    array-length v1, v8

    goto :goto_4

    .line 366
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_7
    iput-object v4, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->capabilities:[I

    .line 367
    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 371
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[I
    .end local v5    # "startPos":I
    :sswitch_4
    iget-object v8, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->context:Lcom/google/majel/proto/ContextProtos$Context;

    if-nez v8, :cond_8

    .line 372
    new-instance v8, Lcom/google/majel/proto/ContextProtos$Context;

    invoke-direct {v8}, Lcom/google/majel/proto/ContextProtos$Context;-><init>()V

    iput-object v8, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->context:Lcom/google/majel/proto/ContextProtos$Context;

    .line 374
    :cond_8
    iget-object v8, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->context:Lcom/google/majel/proto/ContextProtos$Context;

    invoke-virtual {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 378
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->safesearchLevel_:I

    .line 379
    iget v8, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    goto/16 :goto_0

    .line 383
    :sswitch_6
    iget-object v8, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->previewParams:Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    if-nez v8, :cond_9

    .line 384
    new-instance v8, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    invoke-direct {v8}, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;-><init>()V

    iput-object v8, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->previewParams:Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    .line 386
    :cond_9
    iget-object v8, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->previewParams:Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    invoke-virtual {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 390
    :sswitch_7
    iget-object v8, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->browserParams:Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    if-nez v8, :cond_a

    .line 391
    new-instance v8, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    invoke-direct {v8}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;-><init>()V

    iput-object v8, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->browserParams:Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    .line 393
    :cond_a
    iget-object v8, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->browserParams:Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    invoke-virtual {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 397
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->systemTimeMs_:J

    .line 398
    iget v8, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    goto/16 :goto_0

    .line 402
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->timeZone_:Ljava/lang/String;

    .line 403
    iget v8, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    goto/16 :goto_0

    .line 407
    :sswitch_a
    iget-object v8, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->screenParams:Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    if-nez v8, :cond_b

    .line 408
    new-instance v8, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    invoke-direct {v8}, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;-><init>()V

    iput-object v8, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->screenParams:Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    .line 410
    :cond_b
    iget-object v8, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->screenParams:Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    invoke-virtual {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 414
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->client_:I

    .line 415
    iget v8, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    goto/16 :goto_0

    .line 419
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->clientName_:Ljava/lang/String;

    .line 420
    iget v8, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    goto/16 :goto_0

    .line 424
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->gservicesCountryCode_:Ljava/lang/String;

    .line 425
    iget v8, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    or-int/lit8 v8, v8, 0x40

    iput v8, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    goto/16 :goto_0

    .line 316
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x12 -> :sswitch_3
        0x1a -> :sswitch_4
        0x20 -> :sswitch_5
        0x2a -> :sswitch_6
        0x32 -> :sswitch_7
        0x38 -> :sswitch_8
        0x42 -> :sswitch_9
        0x4a -> :sswitch_a
        0x50 -> :sswitch_b
        0x5a -> :sswitch_c
        0x62 -> :sswitch_d
    .end sparse-switch
.end method

.method public setClient(I)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->client_:I

    .line 128
    iget v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    .line 129
    return-object p0
.end method

.method public setClientName(Ljava/lang/String;)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 146
    if-nez p1, :cond_0

    .line 147
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 149
    :cond_0
    iput-object p1, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->clientName_:Ljava/lang/String;

    .line 150
    iget v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    .line 151
    return-object p0
.end method

.method public setGservicesCountryCode(Ljava/lang/String;)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 168
    if-nez p1, :cond_0

    .line 169
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 171
    :cond_0
    iput-object p1, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->gservicesCountryCode_:Ljava/lang/String;

    .line 172
    iget v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    .line 173
    return-object p0
.end method

.method public setSafesearchLevel(I)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->safesearchLevel_:I

    .line 68
    iget v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    .line 69
    return-object p0
.end method

.method public setSystemTimeMs(J)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 86
    iput-wide p1, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->systemTimeMs_:J

    .line 87
    iget v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    .line 88
    return-object p0
.end method

.method public setTimeZone(Ljava/lang/String;)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 105
    if-nez p1, :cond_0

    .line 106
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 108
    :cond_0
    iput-object p1, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->timeZone_:Ljava/lang/String;

    .line 109
    iget v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    .line 110
    return-object p0
.end method

.method public setUseCompressedResponse(Z)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->useCompressedResponse_:Z

    .line 34
    iget v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    .line 35
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
    .line 209
    iget v1, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 210
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->useCompressedResponse_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->capabilities:[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->capabilities:[I

    array-length v1, v1

    if-lez v1, :cond_1

    .line 213
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->capabilities:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 214
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->capabilities:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->context:Lcom/google/majel/proto/ContextProtos$Context;

    if-eqz v1, :cond_2

    .line 218
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->context:Lcom/google/majel/proto/ContextProtos$Context;

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 220
    :cond_2
    iget v1, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 221
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->safesearchLevel_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 223
    :cond_3
    iget-object v1, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->previewParams:Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    if-eqz v1, :cond_4

    .line 224
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->previewParams:Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 226
    :cond_4
    iget-object v1, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->browserParams:Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    if-eqz v1, :cond_5

    .line 227
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->browserParams:Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 229
    :cond_5
    iget v1, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_6

    .line 230
    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->systemTimeMs_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 232
    :cond_6
    iget v1, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_7

    .line 233
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->timeZone_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 235
    :cond_7
    iget-object v1, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->screenParams:Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    if-eqz v1, :cond_8

    .line 236
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->screenParams:Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 238
    :cond_8
    iget v1, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_9

    .line 239
    const/16 v1, 0xa

    iget v2, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->client_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 241
    :cond_9
    iget v1, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_a

    .line 242
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->clientName_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 244
    :cond_a
    iget v1, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_b

    .line 245
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->gservicesCountryCode_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 247
    :cond_b
    return-void
.end method
