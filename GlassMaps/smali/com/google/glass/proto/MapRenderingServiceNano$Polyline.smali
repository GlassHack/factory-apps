.class public final Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;


# instance fields
.field private bitField0_:I

.field private colorArgb_:I

.field public vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

.field private width_:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    sput-object v0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->EMPTY_ARRAY:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 306
    sget-object v0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->EMPTY_ARRAY:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    .line 309
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->width_:F

    .line 328
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->colorArgb_:I

    .line 301
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
    .locals 1

    .prologue
    .line 474
    new-instance v0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    invoke-direct {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
    .locals 1

    .prologue
    .line 468
    new-instance v0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    invoke-direct {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    return-object v0
.end method


# virtual methods
.method public final clearColorArgb()Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->colorArgb_:I

    .line 342
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->bitField0_:I

    .line 343
    return-object p0
.end method

.method public final clearWidth()Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->width_:F

    .line 323
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->bitField0_:I

    .line 324
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 348
    if-ne p1, p0, :cond_1

    .line 354
    :cond_0
    :goto_0
    return v0

    .line 349
    :cond_1
    instance-of v2, p1, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 350
    :cond_2
    check-cast p1, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    .line 351
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    iget-object v3, p1, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->width_:F

    iget v3, p1, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->width_:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->colorArgb_:I

    iget v3, p1, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->colorArgb_:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 354
    goto :goto_0

    .line 351
    :cond_4
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->unknownFieldData:Ljava/util/List;

    .line 354
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getColorArgb()I
    .locals 1

    .prologue
    .line 330
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->colorArgb_:I

    return v0
.end method

.method public final getSerializedSize()I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 392
    .line 393
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-eqz v1, :cond_1

    .line 394
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 395
    if-eqz v4, :cond_0

    .line 396
    const/4 v5, 0x1

    .line 397
    invoke-static {v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v0, v4

    .line 394
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 401
    :cond_1
    iget v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 402
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->width_:F

    .line 403
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 405
    :cond_2
    iget v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 406
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->colorArgb_:I

    .line 407
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 409
    :cond_3
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 410
    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->cachedSize:I

    .line 411
    return v0
.end method

.method public final getWidth()F
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->width_:F

    return v0
.end method

.method public final hasColorArgb()Z
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasWidth()Z
    .locals 1

    .prologue
    .line 319
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->bitField0_:I

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
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 358
    const/16 v0, 0x11

    .line 359
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-nez v2, :cond_1

    const/16 v2, 0x20f

    .line 365
    :cond_0
    mul-int/lit8 v0, v2, 0x1f

    iget v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->width_:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 366
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->colorArgb_:I

    add-int/2addr v0, v2

    .line 367
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_3

    :goto_0
    add-int/2addr v0, v1

    .line 368
    return v0

    :cond_1
    move v2, v0

    move v0, v1

    .line 361
    :goto_1
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 362
    mul-int/lit8 v3, v2, 0x1f

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    aget-object v2, v2, v0

    if-nez v2, :cond_2

    move v2, v1

    :goto_2
    add-int/2addr v2, v3

    .line 361
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 362
    :cond_2
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->hashCode()I

    move-result v2

    goto :goto_2

    .line 367
    :cond_3
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 419
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 420
    sparse-switch v0, :sswitch_data_0

    .line 424
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    .line 425
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->unknownFieldData:Ljava/util/List;

    .line 428
    :cond_1
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->unknownFieldData:Ljava/util/List;

    invoke-static {v2, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 430
    :sswitch_0
    return-object p0

    .line 435
    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 436
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-nez v0, :cond_3

    move v0, v1

    .line 437
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    .line 438
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-eqz v3, :cond_2

    .line 439
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 441
    :cond_2
    iput-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    .line 442
    :goto_2
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_4

    .line 443
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    new-instance v3, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-direct {v3}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;-><init>()V

    aput-object v3, v2, v0

    .line 444
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 445
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 442
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 436
    :cond_3
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    array-length v0, v0

    goto :goto_1

    .line 448
    :cond_4
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    new-instance v3, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-direct {v3}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;-><init>()V

    aput-object v3, v2, v0

    .line 449
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 453
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->width_:F

    .line 454
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->bitField0_:I

    goto :goto_0

    .line 458
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFixed32()I

    move-result v0

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->colorArgb_:I

    .line 459
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->bitField0_:I

    goto :goto_0

    .line 420
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 297
    invoke-virtual {p0, p1}, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    move-result-object v0

    return-object v0
.end method

.method public final setColorArgb(I)Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
    .locals 1

    .prologue
    .line 333
    iput p1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->colorArgb_:I

    .line 334
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->bitField0_:I

    .line 335
    return-object p0
.end method

.method public final setWidth(F)Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
    .locals 1

    .prologue
    .line 314
    iput p1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->width_:F

    .line 315
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->bitField0_:I

    .line 316
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5

    .prologue
    .line 373
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-eqz v0, :cond_1

    .line 374
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 375
    if-eqz v3, :cond_0

    .line 376
    const/4 v4, 0x1

    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 374
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 380
    :cond_1
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 381
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->width_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 383
    :cond_2
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 384
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->colorArgb_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed32(II)V

    .line 386
    :cond_3
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 388
    return-void
.end method
