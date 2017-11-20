.class public final Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;


# instance fields
.field private bitField0_:I

.field private data_:[B

.field private fingerprint_:J

.field private status_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;

    sput-object v0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 249
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->status_:I

    .line 268
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->data_:[B

    .line 290
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->fingerprint_:J

    .line 238
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;
    .locals 1

    .prologue
    .line 422
    new-instance v0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;
    .locals 1

    .prologue
    .line 416
    new-instance v0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;

    return-object v0
.end method


# virtual methods
.method public final clearData()Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;
    .locals 1

    .prologue
    .line 284
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->data_:[B

    .line 285
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->bitField0_:I

    .line 286
    return-object p0
.end method

.method public final clearFingerprint()Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;
    .locals 2

    .prologue
    .line 303
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->fingerprint_:J

    .line 304
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->bitField0_:I

    .line 305
    return-object p0
.end method

.method public final clearStatus()Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->status_:I

    .line 263
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->bitField0_:I

    .line 264
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 310
    if-ne p1, p0, :cond_1

    .line 316
    :cond_0
    :goto_0
    return v0

    .line 311
    :cond_1
    instance-of v2, p1, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 312
    :cond_2
    check-cast p1, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;

    .line 313
    iget v2, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->status_:I

    iget v3, p1, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->status_:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->data_:[B

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->data_:[B

    .line 314
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->fingerprint_:J

    iget-wide v4, p1, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->fingerprint_:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 316
    goto :goto_0

    .line 314
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->unknownFieldData:Ljava/util/List;

    .line 316
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getData()[B
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->data_:[B

    return-object v0
.end method

.method public final getFingerprint()J
    .locals 2

    .prologue
    .line 292
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->fingerprint_:J

    return-wide v0
.end method

.method public final getSerializedSize()I
    .locals 4

    .prologue
    .line 350
    const/4 v0, 0x0

    .line 351
    iget v1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 352
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->status_:I

    .line 353
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 355
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 356
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->data_:[B

    .line 357
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 359
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 360
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->fingerprint_:J

    .line 361
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 363
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 364
    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->cachedSize:I

    .line 365
    return v0
.end method

.method public final getStatus()I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->status_:I

    return v0
.end method

.method public final hasData()Z
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasFingerprint()Z
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasStatus()Z
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 320
    .line 321
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->status_:I

    add-int/lit16 v0, v0, 0x20f

    .line 322
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->data_:[B

    if-nez v2, :cond_1

    mul-int/lit8 v2, v0, 0x1f

    .line 328
    :cond_0
    mul-int/lit8 v0, v2, 0x1f

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->fingerprint_:J

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->fingerprint_:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 329
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_2

    :goto_0
    add-int/2addr v0, v1

    .line 330
    return v0

    :cond_1
    move v2, v0

    move v0, v1

    .line 324
    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->data_:[B

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 325
    mul-int/lit8 v2, v2, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->data_:[B

    aget-byte v3, v3, v0

    add-int/2addr v2, v3

    .line 324
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 329
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;
    .locals 2

    .prologue
    .line 373
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 374
    sparse-switch v0, :sswitch_data_0

    .line 378
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 379
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->unknownFieldData:Ljava/util/List;

    .line 382
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 384
    :sswitch_0
    return-object p0

    .line 389
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 390
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 393
    :cond_2
    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->status_:I

    .line 394
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->bitField0_:I

    goto :goto_0

    .line 396
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->status_:I

    goto :goto_0

    .line 401
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->data_:[B

    .line 402
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->bitField0_:I

    goto :goto_0

    .line 406
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFixed64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->fingerprint_:J

    .line 407
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->bitField0_:I

    goto :goto_0

    .line 374
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x19 -> :sswitch_3
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public final setData([B)Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;
    .locals 1

    .prologue
    .line 273
    if-nez p1, :cond_0

    .line 274
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 276
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->data_:[B

    .line 277
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->bitField0_:I

    .line 278
    return-object p0
.end method

.method public final setFingerprint(J)Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;
    .locals 1

    .prologue
    .line 295
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->fingerprint_:J

    .line 296
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->bitField0_:I

    .line 297
    return-object p0
.end method

.method public final setStatus(I)Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;
    .locals 1

    .prologue
    .line 254
    iput p1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->status_:I

    .line 255
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->bitField0_:I

    .line 256
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 335
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 336
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->status_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 338
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 339
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->data_:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 341
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 342
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->fingerprint_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64(IJ)V

    .line 344
    :cond_2
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 346
    return-void
.end method
