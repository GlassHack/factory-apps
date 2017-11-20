.class public final Llocation/unified/LocationDescriptorProtoNano$LatLng;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "LocationDescriptorProtoNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llocation/unified/LocationDescriptorProtoNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LatLng"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Llocation/unified/LocationDescriptorProtoNano$LatLng;


# instance fields
.field private bitField0_:I

.field private latitudeE7_:I

.field private longitudeE7_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    new-array v0, v0, [Llocation/unified/LocationDescriptorProtoNano$LatLng;

    sput-object v0, Llocation/unified/LocationDescriptorProtoNano$LatLng;->EMPTY_ARRAY:[Llocation/unified/LocationDescriptorProtoNano$LatLng;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 293
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 298
    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LatLng;->latitudeE7_:I

    .line 317
    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LatLng;->longitudeE7_:I

    .line 293
    return-void
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProtoNano$LatLng;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 413
    new-instance v0, Llocation/unified/LocationDescriptorProtoNano$LatLng;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProtoNano$LatLng;-><init>()V

    invoke-virtual {v0, p0}, Llocation/unified/LocationDescriptorProtoNano$LatLng;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProtoNano$LatLng;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Llocation/unified/LocationDescriptorProtoNano$LatLng;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 407
    new-instance v0, Llocation/unified/LocationDescriptorProtoNano$LatLng;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProtoNano$LatLng;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Llocation/unified/LocationDescriptorProtoNano$LatLng;

    return-object v0
.end method


# virtual methods
.method public clearLatitudeE7()Llocation/unified/LocationDescriptorProtoNano$LatLng;
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x0

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LatLng;->latitudeE7_:I

    .line 312
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LatLng;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LatLng;->bitField0_:I

    .line 313
    return-object p0
.end method

.method public clearLongitudeE7()Llocation/unified/LocationDescriptorProtoNano$LatLng;
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x0

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LatLng;->longitudeE7_:I

    .line 331
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LatLng;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LatLng;->bitField0_:I

    .line 332
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 337
    if-ne p1, p0, :cond_1

    .line 340
    :cond_0
    :goto_0
    return v1

    .line 338
    :cond_1
    instance-of v3, p1, Llocation/unified/LocationDescriptorProtoNano$LatLng;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 339
    check-cast v0, Llocation/unified/LocationDescriptorProtoNano$LatLng;

    .line 340
    .local v0, "other":Llocation/unified/LocationDescriptorProtoNano$LatLng;
    iget v3, p0, Llocation/unified/LocationDescriptorProtoNano$LatLng;->latitudeE7_:I

    iget v4, v0, Llocation/unified/LocationDescriptorProtoNano$LatLng;->latitudeE7_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Llocation/unified/LocationDescriptorProtoNano$LatLng;->longitudeE7_:I

    iget v4, v0, Llocation/unified/LocationDescriptorProtoNano$LatLng;->longitudeE7_:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getLatitudeE7()I
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LatLng;->latitudeE7_:I

    return v0
.end method

.method public getLongitudeE7()I
    .locals 1

    .prologue
    .line 319
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LatLng;->longitudeE7_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 363
    const/4 v0, 0x0

    .line 364
    .local v0, "size":I
    iget v1, p0, Llocation/unified/LocationDescriptorProtoNano$LatLng;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 365
    const/4 v1, 0x1

    iget v2, p0, Llocation/unified/LocationDescriptorProtoNano$LatLng;->latitudeE7_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeSFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 368
    :cond_0
    iget v1, p0, Llocation/unified/LocationDescriptorProtoNano$LatLng;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 369
    const/4 v1, 0x2

    iget v2, p0, Llocation/unified/LocationDescriptorProtoNano$LatLng;->longitudeE7_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeSFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 372
    :cond_1
    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LatLng;->cachedSize:I

    .line 373
    return v0
.end method

.method public hasLatitudeE7()Z
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LatLng;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLongitudeE7()Z
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LatLng;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 345
    const/16 v0, 0x11

    .line 346
    .local v0, "result":I
    iget v1, p0, Llocation/unified/LocationDescriptorProtoNano$LatLng;->latitudeE7_:I

    add-int/lit16 v0, v1, 0x20f

    .line 347
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Llocation/unified/LocationDescriptorProtoNano$LatLng;->longitudeE7_:I

    add-int v0, v1, v2

    .line 348
    return v0
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
    .line 289
    invoke-virtual {p0, p1}, Llocation/unified/LocationDescriptorProtoNano$LatLng;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProtoNano$LatLng;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProtoNano$LatLng;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 382
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 386
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 387
    :sswitch_0
    return-object p0

    .line 392
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readSFixed32()I

    move-result v1

    iput v1, p0, Llocation/unified/LocationDescriptorProtoNano$LatLng;->latitudeE7_:I

    .line 393
    iget v1, p0, Llocation/unified/LocationDescriptorProtoNano$LatLng;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Llocation/unified/LocationDescriptorProtoNano$LatLng;->bitField0_:I

    goto :goto_0

    .line 397
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readSFixed32()I

    move-result v1

    iput v1, p0, Llocation/unified/LocationDescriptorProtoNano$LatLng;->longitudeE7_:I

    .line 398
    iget v1, p0, Llocation/unified/LocationDescriptorProtoNano$LatLng;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Llocation/unified/LocationDescriptorProtoNano$LatLng;->bitField0_:I

    goto :goto_0

    .line 382
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
    .end sparse-switch
.end method

.method public setLatitudeE7(I)Llocation/unified/LocationDescriptorProtoNano$LatLng;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 303
    iput p1, p0, Llocation/unified/LocationDescriptorProtoNano$LatLng;->latitudeE7_:I

    .line 304
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LatLng;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LatLng;->bitField0_:I

    .line 305
    return-object p0
.end method

.method public setLongitudeE7(I)Llocation/unified/LocationDescriptorProtoNano$LatLng;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 322
    iput p1, p0, Llocation/unified/LocationDescriptorProtoNano$LatLng;->longitudeE7_:I

    .line 323
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LatLng;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LatLng;->bitField0_:I

    .line 324
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LatLng;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 354
    const/4 v0, 0x1

    iget v1, p0, Llocation/unified/LocationDescriptorProtoNano$LatLng;->latitudeE7_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed32(II)V

    .line 356
    :cond_0
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LatLng;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 357
    const/4 v0, 0x2

    iget v1, p0, Llocation/unified/LocationDescriptorProtoNano$LatLng;->longitudeE7_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed32(II)V

    .line 359
    :cond_1
    return-void
.end method
