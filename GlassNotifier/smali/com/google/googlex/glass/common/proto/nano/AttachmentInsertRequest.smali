.class public final Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "AttachmentInsertRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;


# instance fields
.field private bitField0_:I

.field private content_:[B

.field private creationTime_:J

.field private description_:Ljava/lang/String;

.field private deviceId_:Ljava/lang/String;

.field private mimeType_:Ljava/lang/String;

.field private name_:Ljava/lang/String;

.field private source_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 179
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->clear()Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;

    .line 180
    return-void
.end method

.method public static emptyArray()[Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;

    sput-object v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;

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

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 379
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 373
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;
    .locals 2

    .prologue
    .line 183
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    .line 184
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->deviceId_:Ljava/lang/String;

    .line 185
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->mimeType_:Ljava/lang/String;

    .line 186
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->content_:[B

    .line 187
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->description_:Ljava/lang/String;

    .line 188
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->name_:Ljava/lang/String;

    .line 189
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->creationTime_:J

    .line 190
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->source_:Ljava/lang/String;

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 192
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->cachedSize:I

    .line 193
    return-object p0
.end method

.method public clearContent()Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->content_:[B

    .line 79
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    .line 80
    return-object p0
.end method

.method public clearCreationTime()Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;
    .locals 2

    .prologue
    .line 144
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->creationTime_:J

    .line 145
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    .line 146
    return-object p0
.end method

.method public clearDescription()Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;
    .locals 1

    .prologue
    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->description_:Ljava/lang/String;

    .line 101
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    .line 102
    return-object p0
.end method

.method public clearDeviceId()Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;
    .locals 1

    .prologue
    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->deviceId_:Ljava/lang/String;

    .line 35
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    .line 36
    return-object p0
.end method

.method public clearMimeType()Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;
    .locals 1

    .prologue
    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->mimeType_:Ljava/lang/String;

    .line 57
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    .line 58
    return-object p0
.end method

.method public clearName()Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;
    .locals 1

    .prologue
    .line 122
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->name_:Ljava/lang/String;

    .line 123
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    .line 124
    return-object p0
.end method

.method public clearSource()Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;
    .locals 1

    .prologue
    .line 163
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->source_:Ljava/lang/String;

    .line 164
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    .line 165
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 285
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 286
    .local v0, "size":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 287
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->deviceId_:Ljava/lang/String;

    .line 288
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 290
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 291
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->mimeType_:Ljava/lang/String;

    .line 292
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 294
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 295
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->content_:[B

    .line 296
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 298
    :cond_2
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 299
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->description_:Ljava/lang/String;

    .line 300
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 302
    :cond_3
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 303
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->name_:Ljava/lang/String;

    .line 304
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 306
    :cond_4
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 307
    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->creationTime_:J

    .line 308
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 310
    :cond_5
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 311
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->source_:Ljava/lang/String;

    .line 312
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 314
    :cond_6
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 198
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 236
    :cond_0
    :goto_0
    return v1

    .line 201
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 204
    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;

    .line 205
    .local v0, "other":Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->deviceId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->deviceId_:Ljava/lang/String;

    .line 206
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 209
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->mimeType_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->mimeType_:Ljava/lang/String;

    .line 210
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 213
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->content_:[B

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->content_:[B

    .line 214
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 217
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->description_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->description_:Ljava/lang/String;

    .line 218
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 221
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->name_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->name_:Ljava/lang/String;

    .line 222
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 225
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->creationTime_:J

    iget-wide v6, v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->creationTime_:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 229
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->source_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->source_:Ljava/lang/String;

    .line 230
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 233
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 234
    :cond_2
    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto/16 :goto_0

    .line 236
    :cond_4
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public getContent()[B
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->content_:[B

    return-object v0
.end method

.method public getCreationTime()J
    .locals 2

    .prologue
    .line 138
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->creationTime_:J

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->description_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->deviceId_:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->mimeType_:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->source_:Ljava/lang/String;

    return-object v0
.end method

.method public hasContent()Z
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

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
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDescription()Z
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDeviceId()Z
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMimeType()Z
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

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
    .line 160
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

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
    .line 241
    const/16 v0, 0x11

    .line 242
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 243
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->deviceId_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 244
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->mimeType_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 245
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->content_:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int v0, v1, v2

    .line 246
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->description_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 247
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->name_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 248
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->creationTime_:J

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->creationTime_:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 249
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->source_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 250
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 251
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 252
    :goto_0
    add-int v0, v2, v1

    .line 253
    return v0

    .line 252
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 322
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 323
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 327
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 328
    :sswitch_0
    return-object p0

    .line 333
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->deviceId_:Ljava/lang/String;

    .line 334
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    goto :goto_0

    .line 338
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->mimeType_:Ljava/lang/String;

    .line 339
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    goto :goto_0

    .line 343
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->content_:[B

    .line 344
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    goto :goto_0

    .line 348
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->description_:Ljava/lang/String;

    .line 349
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    goto :goto_0

    .line 353
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->name_:Ljava/lang/String;

    .line 354
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    goto :goto_0

    .line 358
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->creationTime_:J

    .line 359
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    goto :goto_0

    .line 363
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->source_:Ljava/lang/String;

    .line 364
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    goto :goto_0

    .line 323
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
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
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;

    move-result-object v0

    return-object v0
.end method

.method public setContent([B)Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 83
    if-nez p1, :cond_0

    .line 84
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 86
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->content_:[B

    .line 87
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    .line 88
    return-object p0
.end method

.method public setCreationTime(J)Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 149
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->creationTime_:J

    .line 150
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    .line 151
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;
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
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->description_:Ljava/lang/String;

    .line 109
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    .line 110
    return-object p0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;
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
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->deviceId_:Ljava/lang/String;

    .line 43
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    .line 44
    return-object p0
.end method

.method public setMimeType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;
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
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->mimeType_:Ljava/lang/String;

    .line 65
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    .line 66
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;
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
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->name_:Ljava/lang/String;

    .line 131
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    .line 132
    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;
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
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->source_:Ljava/lang/String;

    .line 172
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    .line 173
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
    .line 259
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 260
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->deviceId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 262
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 263
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->mimeType_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 265
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 266
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->content_:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 268
    :cond_2
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 269
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->description_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 271
    :cond_3
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 272
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->name_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 274
    :cond_4
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 275
    const/4 v0, 0x6

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->creationTime_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 277
    :cond_5
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 278
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentInsertRequest;->source_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 280
    :cond_6
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 281
    return-void
.end method
