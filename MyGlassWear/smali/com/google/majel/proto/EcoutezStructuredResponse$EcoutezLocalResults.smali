.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EcoutezLocalResults"
.end annotation


# static fields
.field public static final ACTION_TYPE_CALL:I = 0x4

.field public static final ACTION_TYPE_DIRECTIONS:I = 0x2

.field public static final ACTION_TYPE_MAP:I = 0x1

.field public static final ACTION_TYPE_NAVIGATION:I = 0x3

.field public static final ACTION_TYPE_REMINDER:I = 0x5

.field private static volatile _emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;


# instance fields
.field private actionType_:I

.field private bitField0_:I

.field public localResult:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

.field private mapsUrl_:Ljava/lang/String;

.field public origin:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

.field private previewImageUrl_:Ljava/lang/String;

.field private previewImage_:[B

.field private transportationMethod_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6197
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 6198
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->clear()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    .line 6199
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;
    .locals 2

    .prologue
    .line 6074
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    if-nez v0, :cond_1

    .line 6075
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 6077
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    if-nez v0, :cond_0

    .line 6078
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    sput-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    .line 6080
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6082
    :cond_1
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    return-object v0

    .line 6080
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6387
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 6381
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6202
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->bitField0_:I

    .line 6203
    invoke-static {}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->localResult:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    .line 6204
    invoke-static {}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->origin:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    .line 6205
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->previewImageUrl_:Ljava/lang/String;

    .line 6206
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->previewImage_:[B

    .line 6207
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->mapsUrl_:Ljava/lang/String;

    .line 6208
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->actionType_:I

    .line 6209
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->transportationMethod_:I

    .line 6210
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->cachedSize:I

    .line 6211
    return-object p0
.end method

.method public clearActionType()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;
    .locals 1

    .prologue
    .line 6173
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->actionType_:I

    .line 6174
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->bitField0_:I

    .line 6175
    return-object p0
.end method

.method public clearMapsUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;
    .locals 1

    .prologue
    .line 6154
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->mapsUrl_:Ljava/lang/String;

    .line 6155
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->bitField0_:I

    .line 6156
    return-object p0
.end method

.method public clearPreviewImage()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;
    .locals 1

    .prologue
    .line 6132
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->previewImage_:[B

    .line 6133
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->bitField0_:I

    .line 6134
    return-object p0
.end method

.method public clearPreviewImageUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;
    .locals 1

    .prologue
    .line 6110
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->previewImageUrl_:Ljava/lang/String;

    .line 6111
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->bitField0_:I

    .line 6112
    return-object p0
.end method

.method public clearTransportationMethod()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;
    .locals 1

    .prologue
    .line 6192
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->transportationMethod_:I

    .line 6193
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->bitField0_:I

    .line 6194
    return-object p0
.end method

.method public getActionType()I
    .locals 1

    .prologue
    .line 6162
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->actionType_:I

    return v0
.end method

.method public getMapsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6140
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->mapsUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewImage()[B
    .locals 1

    .prologue
    .line 6118
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->previewImage_:[B

    return-object v0
.end method

.method public getPreviewImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6096
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->previewImageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 6252
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 6253
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->localResult:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->localResult:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 6254
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->localResult:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 6255
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->localResult:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    aget-object v0, v3, v1

    .line 6256
    .local v0, "element":Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    if-eqz v0, :cond_0

    .line 6257
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 6254
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6262
    .end local v0    # "element":Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .end local v1    # "i":I
    :cond_1
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 6263
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->previewImageUrl_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 6266
    :cond_2
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    .line 6267
    const/4 v3, 0x3

    iget v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->actionType_:I

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 6270
    :cond_3
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->origin:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->origin:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    array-length v3, v3

    if-lez v3, :cond_5

    .line 6271
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->origin:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    array-length v3, v3

    if-ge v1, v3, :cond_5

    .line 6272
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->origin:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    aget-object v0, v3, v1

    .line 6273
    .restart local v0    # "element":Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    if-eqz v0, :cond_4

    .line 6274
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 6271
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6279
    .end local v0    # "element":Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .end local v1    # "i":I
    :cond_5
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_6

    .line 6280
    const/4 v3, 0x5

    iget v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->transportationMethod_:I

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 6283
    :cond_6
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_7

    .line 6284
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->mapsUrl_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 6287
    :cond_7
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_8

    .line 6288
    const/4 v3, 0x7

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->previewImage_:[B

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v3

    add-int/2addr v2, v3

    .line 6291
    :cond_8
    iput v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->cachedSize:I

    .line 6292
    return v2
.end method

.method public getTransportationMethod()I
    .locals 1

    .prologue
    .line 6181
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->transportationMethod_:I

    return v0
.end method

.method public hasActionType()Z
    .locals 1

    .prologue
    .line 6170
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMapsUrl()Z
    .locals 1

    .prologue
    .line 6151
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPreviewImage()Z
    .locals 1

    .prologue
    .line 6129
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPreviewImageUrl()Z
    .locals 1

    .prologue
    .line 6107
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTransportationMethod()Z
    .locals 1

    .prologue
    .line 6189
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

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
    .line 6061
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 6300
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 6301
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 6305
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 6306
    :sswitch_0
    return-object p0

    .line 6311
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 6313
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->localResult:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    if-nez v5, :cond_2

    move v1, v4

    .line 6314
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    .line 6316
    .local v2, "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    if-eqz v1, :cond_1

    .line 6317
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->localResult:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6319
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 6320
    new-instance v5, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    invoke-direct {v5}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;-><init>()V

    aput-object v5, v2, v1

    .line 6321
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 6322
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 6319
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 6313
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->localResult:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    array-length v1, v5

    goto :goto_1

    .line 6325
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    :cond_3
    new-instance v5, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    invoke-direct {v5}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;-><init>()V

    aput-object v5, v2, v1

    .line 6326
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 6327
    iput-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->localResult:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    goto :goto_0

    .line 6331
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->previewImageUrl_:Ljava/lang/String;

    .line 6332
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->bitField0_:I

    goto :goto_0

    .line 6336
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->actionType_:I

    .line 6337
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->bitField0_:I

    goto :goto_0

    .line 6341
    :sswitch_4
    const/16 v5, 0x22

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 6343
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->origin:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    if-nez v5, :cond_5

    move v1, v4

    .line 6344
    .restart local v1    # "i":I
    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    .line 6346
    .restart local v2    # "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    if-eqz v1, :cond_4

    .line 6347
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->origin:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6349
    :cond_4
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_6

    .line 6350
    new-instance v5, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    invoke-direct {v5}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;-><init>()V

    aput-object v5, v2, v1

    .line 6351
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 6352
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 6349
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 6343
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    :cond_5
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->origin:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    array-length v1, v5

    goto :goto_3

    .line 6355
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    :cond_6
    new-instance v5, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    invoke-direct {v5}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;-><init>()V

    aput-object v5, v2, v1

    .line 6356
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 6357
    iput-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->origin:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    goto/16 :goto_0

    .line 6361
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->transportationMethod_:I

    .line 6362
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->bitField0_:I

    goto/16 :goto_0

    .line 6366
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->mapsUrl_:Ljava/lang/String;

    .line 6367
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->bitField0_:I

    goto/16 :goto_0

    .line 6371
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->previewImage_:[B

    .line 6372
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->bitField0_:I

    goto/16 :goto_0

    .line 6301
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch
.end method

.method public setActionType(I)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6165
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->actionType_:I

    .line 6166
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->bitField0_:I

    .line 6167
    return-object p0
.end method

.method public setMapsUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6143
    if-nez p1, :cond_0

    .line 6144
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6146
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->mapsUrl_:Ljava/lang/String;

    .line 6147
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->bitField0_:I

    .line 6148
    return-object p0
.end method

.method public setPreviewImage([B)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 6121
    if-nez p1, :cond_0

    .line 6122
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6124
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->previewImage_:[B

    .line 6125
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->bitField0_:I

    .line 6126
    return-object p0
.end method

.method public setPreviewImageUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6099
    if-nez p1, :cond_0

    .line 6100
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6102
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->previewImageUrl_:Ljava/lang/String;

    .line 6103
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->bitField0_:I

    .line 6104
    return-object p0
.end method

.method public setTransportationMethod(I)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6184
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->transportationMethod_:I

    .line 6185
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->bitField0_:I

    .line 6186
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
    .line 6217
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->localResult:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->localResult:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 6218
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->localResult:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 6219
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->localResult:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    aget-object v0, v2, v1

    .line 6220
    .local v0, "element":Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    if-eqz v0, :cond_0

    .line 6221
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 6218
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6225
    .end local v0    # "element":Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .end local v1    # "i":I
    :cond_1
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 6226
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->previewImageUrl_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6228
    :cond_2
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    .line 6229
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->actionType_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6231
    :cond_3
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->origin:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->origin:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    array-length v2, v2

    if-lez v2, :cond_5

    .line 6232
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->origin:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 6233
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->origin:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    aget-object v0, v2, v1

    .line 6234
    .restart local v0    # "element":Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    if-eqz v0, :cond_4

    .line 6235
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 6232
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6239
    .end local v0    # "element":Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .end local v1    # "i":I
    :cond_5
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_6

    .line 6240
    const/4 v2, 0x5

    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->transportationMethod_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6242
    :cond_6
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_7

    .line 6243
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->mapsUrl_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6245
    :cond_7
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_8

    .line 6246
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;->previewImage_:[B

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 6248
    :cond_8
    return-void
.end method
