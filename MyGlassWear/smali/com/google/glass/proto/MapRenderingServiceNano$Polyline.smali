.class public final Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "MapRenderingServiceNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/proto/MapRenderingServiceNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Polyline"
.end annotation


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
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

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
.method public clearColorArgb()Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
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

.method public clearWidth()Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
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
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 348
    if-ne p1, p0, :cond_1

    .line 354
    :cond_0
    :goto_0
    return v1

    .line 349
    :cond_1
    instance-of v3, p1, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 350
    check-cast v0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    .line 351
    .local v0, "other":Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    iget-object v4, v0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->width_:F

    iget v4, v0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->width_:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->colorArgb_:I

    iget v4, v0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->colorArgb_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 354
    goto :goto_0

    .line 351
    :cond_4
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->unknownFieldData:Ljava/util/List;

    .line 354
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getColorArgb()I
    .locals 1

    .prologue
    .line 330
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->colorArgb_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 392
    const/4 v1, 0x0

    .line 393
    .local v1, "size":I
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-eqz v2, :cond_1

    .line 394
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 395
    .local v0, "element":Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;
    if-eqz v0, :cond_0

    .line 396
    const/4 v5, 0x1

    .line 397
    invoke-static {v5, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v1, v5

    .line 394
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 401
    .end local v0    # "element":Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;
    :cond_1
    iget v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 402
    const/4 v2, 0x2

    iget v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->width_:F

    .line 403
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v1, v2

    .line 405
    :cond_2
    iget v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    .line 406
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->colorArgb_:I

    .line 407
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 409
    :cond_3
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->unknownFieldData:Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v2

    add-int/2addr v1, v2

    .line 410
    iput v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->cachedSize:I

    .line 411
    return v1
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->width_:F

    return v0
.end method

.method public hasColorArgb()Z
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

.method public hasWidth()Z
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

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 358
    const/16 v1, 0x11

    .line 359
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-nez v2, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 365
    :cond_0
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->width_:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    add-int v1, v2, v4

    .line 366
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->colorArgb_:I

    add-int v1, v2, v4

    .line 367
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->unknownFieldData:Ljava/util/List;

    if-nez v4, :cond_3

    :goto_0
    add-int v1, v2, v3

    .line 368
    return v1

    .line 361
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 362
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    aget-object v2, v2, v0

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v4, v2

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
    .end local v0    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
    .locals 7
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 419
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 420
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 424
    iget-object v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->unknownFieldData:Ljava/util/List;

    if-nez v5, :cond_1

    .line 425
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->unknownFieldData:Ljava/util/List;

    .line 428
    :cond_1
    iget-object v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->unknownFieldData:Ljava/util/List;

    invoke-static {v5, p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 430
    :sswitch_0
    return-object p0

    .line 435
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 436
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-nez v5, :cond_3

    move v1, v4

    .line 437
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    .line 438
    .local v2, "newArray":[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;
    iget-object v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-eqz v5, :cond_2

    .line 439
    iget-object v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 441
    :cond_2
    iput-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    .line 442
    :goto_2
    iget-object v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_4

    .line 443
    iget-object v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    new-instance v6, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-direct {v6}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;-><init>()V

    aput-object v6, v5, v1

    .line 444
    iget-object v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 445
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 442
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 436
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;
    :cond_3
    iget-object v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    array-length v1, v5

    goto :goto_1

    .line 448
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;
    :cond_4
    iget-object v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    new-instance v6, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-direct {v6}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;-><init>()V

    aput-object v6, v5, v1

    .line 449
    iget-object v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 453
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v5

    iput v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->width_:F

    .line 454
    iget v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->bitField0_:I

    goto :goto_0

    .line 458
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFixed32()I

    move-result v5

    iput v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->colorArgb_:I

    .line 459
    iget v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->bitField0_:I

    goto :goto_0

    .line 420
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
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
    .line 297
    invoke-virtual {p0, p1}, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    move-result-object v0

    return-object v0
.end method

.method public setColorArgb(I)Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
    .locals 1
    .param p1, "value"    # I

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

.method public setWidth(F)Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
    .locals 1
    .param p1, "value"    # F

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

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 373
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-eqz v1, :cond_1

    .line 374
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 375
    .local v0, "element":Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;
    if-eqz v0, :cond_0

    .line 376
    const/4 v4, 0x1

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 374
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 380
    .end local v0    # "element":Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;
    :cond_1
    iget v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 381
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->width_:F

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 383
    :cond_2
    iget v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 384
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->colorArgb_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed32(II)V

    .line 386
    :cond_3
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 388
    return-void
.end method
