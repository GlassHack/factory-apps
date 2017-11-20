.class public final Lcom/google/googlex/glass/common/proto/nano/Attachment;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Attachment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/googlex/glass/common/proto/nano/Attachment;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/googlex/glass/common/proto/nano/Attachment;


# instance fields
.field private bitField0_:I

.field private clientCachePath_:Ljava/lang/String;

.field private contentType_:Ljava/lang/String;

.field private contentUrl_:Ljava/lang/String;

.field private creationTime_:J

.field private id_:Ljava/lang/String;

.field private isProcessingContent_:Z

.field private source_:Ljava/lang/String;

.field private thumbnailUrl_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 198
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->clear()Lcom/google/googlex/glass/common/proto/nano/Attachment;

    .line 199
    return-void
.end method

.method public static emptyArray()[Lcom/google/googlex/glass/common/proto/nano/Attachment;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/Attachment;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/Attachment;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/nano/Attachment;

    sput-object v0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/Attachment;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/Attachment;

    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/Attachment;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 416
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/Attachment;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/Attachment;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/Attachment;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/nano/Attachment;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 410
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/Attachment;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/Attachment;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/Attachment;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/googlex/glass/common/proto/nano/Attachment;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 202
    iput v2, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    .line 203
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->id_:Ljava/lang/String;

    .line 204
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->contentType_:Ljava/lang/String;

    .line 205
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->contentUrl_:Ljava/lang/String;

    .line 206
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->thumbnailUrl_:Ljava/lang/String;

    .line 207
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->clientCachePath_:Ljava/lang/String;

    .line 208
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->creationTime_:J

    .line 209
    iput-boolean v2, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->isProcessingContent_:Z

    .line 210
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->source_:Ljava/lang/String;

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 212
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->cachedSize:I

    .line 213
    return-object p0
.end method

.method public clearClientCachePath()Lcom/google/googlex/glass/common/proto/nano/Attachment;
    .locals 1

    .prologue
    .line 122
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->clientCachePath_:Ljava/lang/String;

    .line 123
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    .line 124
    return-object p0
.end method

.method public clearContentType()Lcom/google/googlex/glass/common/proto/nano/Attachment;
    .locals 1

    .prologue
    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->contentType_:Ljava/lang/String;

    .line 57
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    .line 58
    return-object p0
.end method

.method public clearContentUrl()Lcom/google/googlex/glass/common/proto/nano/Attachment;
    .locals 1

    .prologue
    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->contentUrl_:Ljava/lang/String;

    .line 79
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    .line 80
    return-object p0
.end method

.method public clearCreationTime()Lcom/google/googlex/glass/common/proto/nano/Attachment;
    .locals 2

    .prologue
    .line 144
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->creationTime_:J

    .line 145
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    .line 146
    return-object p0
.end method

.method public clearId()Lcom/google/googlex/glass/common/proto/nano/Attachment;
    .locals 1

    .prologue
    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->id_:Ljava/lang/String;

    .line 35
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    .line 36
    return-object p0
.end method

.method public clearIsProcessingContent()Lcom/google/googlex/glass/common/proto/nano/Attachment;
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->isProcessingContent_:Z

    .line 164
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    .line 165
    return-object p0
.end method

.method public clearSource()Lcom/google/googlex/glass/common/proto/nano/Attachment;
    .locals 1

    .prologue
    .line 182
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->source_:Ljava/lang/String;

    .line 183
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    .line 184
    return-object p0
.end method

.method public clearThumbnailUrl()Lcom/google/googlex/glass/common/proto/nano/Attachment;
    .locals 1

    .prologue
    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->thumbnailUrl_:Ljava/lang/String;

    .line 101
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    .line 102
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 313
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 314
    .local v0, "size":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 315
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->id_:Ljava/lang/String;

    .line 316
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 318
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 319
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->contentType_:Ljava/lang/String;

    .line 320
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 322
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 323
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->contentUrl_:Ljava/lang/String;

    .line 324
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 326
    :cond_2
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 327
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->thumbnailUrl_:Ljava/lang/String;

    .line 328
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 330
    :cond_3
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 331
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->clientCachePath_:Ljava/lang/String;

    .line 332
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 334
    :cond_4
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 335
    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->creationTime_:J

    .line 336
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 338
    :cond_5
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 339
    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->isProcessingContent_:Z

    .line 340
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 342
    :cond_6
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 343
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->source_:Ljava/lang/String;

    .line 344
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 346
    :cond_7
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 218
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 260
    :cond_0
    :goto_0
    return v1

    .line 221
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/nano/Attachment;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 224
    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/Attachment;

    .line 225
    .local v0, "other":Lcom/google/googlex/glass/common/proto/nano/Attachment;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->id_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->id_:Ljava/lang/String;

    .line 226
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 229
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->contentType_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->contentType_:Ljava/lang/String;

    .line 230
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 233
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->contentUrl_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->contentUrl_:Ljava/lang/String;

    .line 234
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 237
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->thumbnailUrl_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->thumbnailUrl_:Ljava/lang/String;

    .line 238
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 241
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->clientCachePath_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->clientCachePath_:Ljava/lang/String;

    .line 242
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 245
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->creationTime_:J

    iget-wide v6, v0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->creationTime_:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 249
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->isProcessingContent_:Z

    iget-boolean v4, v0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->isProcessingContent_:Z

    if-ne v3, v4, :cond_0

    .line 253
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->source_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->source_:Ljava/lang/String;

    .line 254
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 257
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 258
    :cond_2
    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto/16 :goto_0

    .line 260
    :cond_4
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public getClientCachePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->clientCachePath_:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->contentType_:Ljava/lang/String;

    return-object v0
.end method

.method public getContentUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->contentUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getCreationTime()J
    .locals 2

    .prologue
    .line 138
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->creationTime_:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getIsProcessingContent()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->isProcessingContent_:Z

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->source_:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->thumbnailUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public hasClientCachePath()Z
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasContentType()Z
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasContentUrl()Z
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCreationTime()Z
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsProcessingContent()Z
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSource()Z
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasThumbnailUrl()Z
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 265
    const/16 v0, 0x11

    .line 266
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 267
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->id_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 268
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->contentType_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 269
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->contentUrl_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 270
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->thumbnailUrl_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 271
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->clientCachePath_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 272
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->creationTime_:J

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->creationTime_:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 273
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->isProcessingContent_:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x4cf

    :goto_0
    add-int v0, v2, v1

    .line 274
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->source_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 275
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 276
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x0

    .line 277
    :goto_1
    add-int v0, v2, v1

    .line 278
    return v0

    .line 273
    :cond_1
    const/16 v1, 0x4d5

    goto :goto_0

    .line 277
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/Attachment;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 354
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 355
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 359
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 360
    :sswitch_0
    return-object p0

    .line 365
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->id_:Ljava/lang/String;

    .line 366
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    goto :goto_0

    .line 370
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->contentType_:Ljava/lang/String;

    .line 371
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    goto :goto_0

    .line 375
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->contentUrl_:Ljava/lang/String;

    .line 376
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    goto :goto_0

    .line 380
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->thumbnailUrl_:Ljava/lang/String;

    .line 381
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    goto :goto_0

    .line 385
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->clientCachePath_:Ljava/lang/String;

    .line 386
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    goto :goto_0

    .line 390
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->creationTime_:J

    .line 391
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    goto :goto_0

    .line 395
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->isProcessingContent_:Z

    .line 396
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    goto :goto_0

    .line 400
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->source_:Ljava/lang/String;

    .line 401
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    goto :goto_0

    .line 355
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/Attachment;

    move-result-object v0

    return-object v0
.end method

.method public setClientCachePath(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Attachment;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 127
    if-nez p1, :cond_0

    .line 128
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 130
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->clientCachePath_:Ljava/lang/String;

    .line 131
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    .line 132
    return-object p0
.end method

.method public setContentType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Attachment;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 61
    if-nez p1, :cond_0

    .line 62
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 64
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->contentType_:Ljava/lang/String;

    .line 65
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    .line 66
    return-object p0
.end method

.method public setContentUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Attachment;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 83
    if-nez p1, :cond_0

    .line 84
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 86
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->contentUrl_:Ljava/lang/String;

    .line 87
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    .line 88
    return-object p0
.end method

.method public setCreationTime(J)Lcom/google/googlex/glass/common/proto/nano/Attachment;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 149
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->creationTime_:J

    .line 150
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    .line 151
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Attachment;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 42
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->id_:Ljava/lang/String;

    .line 43
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    .line 44
    return-object p0
.end method

.method public setIsProcessingContent(Z)Lcom/google/googlex/glass/common/proto/nano/Attachment;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->isProcessingContent_:Z

    .line 169
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    .line 170
    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Attachment;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 187
    if-nez p1, :cond_0

    .line 188
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 190
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->source_:Ljava/lang/String;

    .line 191
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    .line 192
    return-object p0
.end method

.method public setThumbnailUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Attachment;
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
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->thumbnailUrl_:Ljava/lang/String;

    .line 109
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    .line 110
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 285
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->id_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 287
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 288
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->contentType_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 290
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 291
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->contentUrl_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 293
    :cond_2
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 294
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->thumbnailUrl_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 296
    :cond_3
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 297
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->clientCachePath_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 299
    :cond_4
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 300
    const/4 v0, 0x6

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->creationTime_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 302
    :cond_5
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 303
    const/4 v0, 0x7

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->isProcessingContent_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 305
    :cond_6
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 306
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Attachment;->source_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 308
    :cond_7
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 309
    return-void
.end method
