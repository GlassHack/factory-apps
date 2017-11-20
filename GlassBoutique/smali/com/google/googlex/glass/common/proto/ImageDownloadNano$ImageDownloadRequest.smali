.class public final Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "ImageDownloadNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/ImageDownloadNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImageDownloadRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;,
        Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$CropType;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;


# instance fields
.field private bitField0_:I

.field private clientSupportsWebp_:Z

.field private cropType_:I

.field private requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;

.field private url_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;

    sput-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 159
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->url_:Ljava/lang/String;

    .line 200
    iput v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->cropType_:I

    .line 219
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->clientSupportsWebp_:Z

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 361
    new-instance v0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 355
    new-instance v0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;

    return-object v0
.end method


# virtual methods
.method public clearClientSupportsWebp()Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->clientSupportsWebp_:Z

    .line 233
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->bitField0_:I

    .line 234
    return-object p0
.end method

.method public clearCropType()Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->cropType_:I

    .line 214
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->bitField0_:I

    .line 215
    return-object p0
.end method

.method public clearRequestedDimensions()Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;

    .line 197
    return-object p0
.end method

.method public clearUrl()Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;
    .locals 1

    .prologue
    .line 175
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->url_:Ljava/lang/String;

    .line 176
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->bitField0_:I

    .line 177
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 239
    if-ne p1, p0, :cond_1

    .line 246
    :cond_0
    :goto_0
    return v1

    .line 240
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 241
    check-cast v0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;

    .line 242
    .local v0, "other":Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->url_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->url_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;

    if-nez v3, :cond_3

    .line 243
    :goto_2
    iget v3, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->cropType_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->cropType_:I

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->clientSupportsWebp_:Z

    iget-boolean v4, v0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->clientSupportsWebp_:Z

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 246
    goto :goto_0

    .line 242
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->url_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->url_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;

    .line 243
    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->unknownFieldData:Ljava/util/List;

    .line 246
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getClientSupportsWebp()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->clientSupportsWebp_:Z

    return v0
.end method

.method public getCropType()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->cropType_:I

    return v0
.end method

.method public getRequestedDimensions()Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 279
    const/4 v0, 0x0

    .line 280
    .local v0, "size":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 281
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->url_:Ljava/lang/String;

    .line 282
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;

    if-eqz v1, :cond_1

    .line 285
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;

    .line 286
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 288
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 289
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->cropType_:I

    .line 290
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 292
    :cond_2
    iget v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 293
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->clientSupportsWebp_:Z

    .line 294
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 296
    :cond_3
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 297
    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->cachedSize:I

    .line 298
    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public hasClientSupportsWebp()Z
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCropType()Z
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRequestedDimensions()Z
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUrl()Z
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 250
    const/16 v0, 0x11

    .line 251
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->url_:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 252
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 253
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->cropType_:I

    add-int v0, v1, v3

    .line 254
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->clientSupportsWebp_:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_2
    add-int v0, v3, v1

    .line 255
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_3

    :goto_3
    add-int v0, v1, v2

    .line 256
    return v0

    .line 251
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->url_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 252
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->hashCode()I

    move-result v1

    goto :goto_1

    .line 254
    :cond_2
    const/4 v1, 0x2

    goto :goto_2

    .line 255
    :cond_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_3
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 307
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 311
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    .line 312
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->unknownFieldData:Ljava/util/List;

    .line 315
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v2, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 317
    :sswitch_0
    return-object p0

    .line 322
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->url_:Ljava/lang/String;

    .line 323
    iget v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->bitField0_:I

    goto :goto_0

    .line 327
    :sswitch_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;

    if-nez v2, :cond_2

    .line 328
    new-instance v2, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;

    invoke-direct {v2}, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;-><init>()V

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;

    .line 330
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 334
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 335
    .local v1, "temp":I
    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 337
    :cond_3
    iput v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->cropType_:I

    .line 338
    iget v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->bitField0_:I

    goto :goto_0

    .line 340
    :cond_4
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->cropType_:I

    goto :goto_0

    .line 345
    .end local v1    # "temp":I
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->clientSupportsWebp_:Z

    .line 346
    iget v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->bitField0_:I

    goto :goto_0

    .line 307
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
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
    .line 6
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;

    move-result-object v0

    return-object v0
.end method

.method public setClientSupportsWebp(Z)Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->clientSupportsWebp_:Z

    .line 225
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->bitField0_:I

    .line 226
    return-object p0
.end method

.method public setCropType(I)Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 205
    iput p1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->cropType_:I

    .line 206
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->bitField0_:I

    .line 207
    return-object p0
.end method

.method public setRequestedDimensions(Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;)Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;
    .locals 1
    .param p1, "value"    # Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;

    .prologue
    .line 186
    if-nez p1, :cond_0

    .line 187
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 189
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;

    .line 190
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 164
    if-nez p1, :cond_0

    .line 165
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 167
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->url_:Ljava/lang/String;

    .line 168
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->bitField0_:I

    .line 169
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 262
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->url_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;

    if-eqz v0, :cond_1

    .line 265
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 267
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 268
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->cropType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 270
    :cond_2
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 271
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->clientSupportsWebp_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 273
    :cond_3
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 275
    return-void
.end method
