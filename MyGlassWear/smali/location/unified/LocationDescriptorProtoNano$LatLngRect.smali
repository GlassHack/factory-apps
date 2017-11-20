.class public final Llocation/unified/LocationDescriptorProtoNano$LatLngRect;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "LocationDescriptorProtoNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llocation/unified/LocationDescriptorProtoNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LatLngRect"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Llocation/unified/LocationDescriptorProtoNano$LatLngRect;


# instance fields
.field private hi_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

.field private lo_:Llocation/unified/LocationDescriptorProtoNano$LatLng;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 421
    const/4 v0, 0x0

    new-array v0, v0, [Llocation/unified/LocationDescriptorProtoNano$LatLngRect;

    sput-object v0, Llocation/unified/LocationDescriptorProtoNano$LatLngRect;->EMPTY_ARRAY:[Llocation/unified/LocationDescriptorProtoNano$LatLngRect;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 422
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    return-void
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProtoNano$LatLngRect;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 544
    new-instance v0, Llocation/unified/LocationDescriptorProtoNano$LatLngRect;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProtoNano$LatLngRect;-><init>()V

    invoke-virtual {v0, p0}, Llocation/unified/LocationDescriptorProtoNano$LatLngRect;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProtoNano$LatLngRect;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Llocation/unified/LocationDescriptorProtoNano$LatLngRect;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 538
    new-instance v0, Llocation/unified/LocationDescriptorProtoNano$LatLngRect;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProtoNano$LatLngRect;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Llocation/unified/LocationDescriptorProtoNano$LatLngRect;

    return-object v0
.end method


# virtual methods
.method public clearHi()Llocation/unified/LocationDescriptorProtoNano$LatLngRect;
    .locals 1

    .prologue
    .line 459
    const/4 v0, 0x0

    iput-object v0, p0, Llocation/unified/LocationDescriptorProtoNano$LatLngRect;->hi_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    .line 460
    return-object p0
.end method

.method public clearLo()Llocation/unified/LocationDescriptorProtoNano$LatLngRect;
    .locals 1

    .prologue
    .line 440
    const/4 v0, 0x0

    iput-object v0, p0, Llocation/unified/LocationDescriptorProtoNano$LatLngRect;->lo_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    .line 441
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 464
    if-ne p1, p0, :cond_1

    .line 467
    :cond_0
    :goto_0
    return v1

    .line 465
    :cond_1
    instance-of v3, p1, Llocation/unified/LocationDescriptorProtoNano$LatLngRect;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 466
    check-cast v0, Llocation/unified/LocationDescriptorProtoNano$LatLngRect;

    .line 467
    .local v0, "other":Llocation/unified/LocationDescriptorProtoNano$LatLngRect;
    iget-object v3, p0, Llocation/unified/LocationDescriptorProtoNano$LatLngRect;->lo_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    if-nez v3, :cond_4

    iget-object v3, v0, Llocation/unified/LocationDescriptorProtoNano$LatLngRect;->lo_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Llocation/unified/LocationDescriptorProtoNano$LatLngRect;->hi_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    if-nez v3, :cond_5

    iget-object v3, v0, Llocation/unified/LocationDescriptorProtoNano$LatLngRect;->hi_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Llocation/unified/LocationDescriptorProtoNano$LatLngRect;->lo_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    iget-object v4, v0, Llocation/unified/LocationDescriptorProtoNano$LatLngRect;->lo_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    invoke-virtual {v3, v4}, Llocation/unified/LocationDescriptorProtoNano$LatLng;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Llocation/unified/LocationDescriptorProtoNano$LatLngRect;->hi_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    iget-object v4, v0, Llocation/unified/LocationDescriptorProtoNano$LatLngRect;->hi_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    invoke-virtual {v3, v4}, Llocation/unified/LocationDescriptorProtoNano$LatLng;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getHi()Llocation/unified/LocationDescriptorProtoNano$LatLng;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Llocation/unified/LocationDescriptorProtoNano$LatLngRect;->hi_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    return-object v0
.end method

.method public getLo()Llocation/unified/LocationDescriptorProtoNano$LatLng;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Llocation/unified/LocationDescriptorProtoNano$LatLngRect;->lo_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 490
    const/4 v0, 0x0

    .line 491
    .local v0, "size":I
    iget-object v1, p0, Llocation/unified/LocationDescriptorProtoNano$LatLngRect;->lo_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    if-eqz v1, :cond_0

    .line 492
    const/4 v1, 0x1

    iget-object v2, p0, Llocation/unified/LocationDescriptorProtoNano$LatLngRect;->lo_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 495
    :cond_0
    iget-object v1, p0, Llocation/unified/LocationDescriptorProtoNano$LatLngRect;->hi_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    if-eqz v1, :cond_1

    .line 496
    const/4 v1, 0x2

    iget-object v2, p0, Llocation/unified/LocationDescriptorProtoNano$LatLngRect;->hi_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 499
    :cond_1
    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LatLngRect;->cachedSize:I

    .line 500
    return v0
.end method

.method public hasHi()Z
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Llocation/unified/LocationDescriptorProtoNano$LatLngRect;->hi_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLo()Z
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Llocation/unified/LocationDescriptorProtoNano$LatLngRect;->lo_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

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

    .line 472
    const/16 v0, 0x11

    .line 473
    .local v0, "result":I
    iget-object v1, p0, Llocation/unified/LocationDescriptorProtoNano$LatLngRect;->lo_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 474
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Llocation/unified/LocationDescriptorProtoNano$LatLngRect;->hi_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    if-nez v3, :cond_1

    :goto_1
    add-int v0, v1, v2

    .line 475
    return v0

    .line 473
    :cond_0
    iget-object v1, p0, Llocation/unified/LocationDescriptorProtoNano$LatLngRect;->lo_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    invoke-virtual {v1}, Llocation/unified/LocationDescriptorProtoNano$LatLng;->hashCode()I

    move-result v1

    goto :goto_0

    .line 474
    :cond_1
    iget-object v2, p0, Llocation/unified/LocationDescriptorProtoNano$LatLngRect;->hi_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    invoke-virtual {v2}, Llocation/unified/LocationDescriptorProtoNano$LatLng;->hashCode()I

    move-result v2

    goto :goto_1
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
    .line 418
    invoke-virtual {p0, p1}, Llocation/unified/LocationDescriptorProtoNano$LatLngRect;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProtoNano$LatLngRect;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProtoNano$LatLngRect;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 508
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 509
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 513
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 514
    :sswitch_0
    return-object p0

    .line 519
    :sswitch_1
    iget-object v1, p0, Llocation/unified/LocationDescriptorProtoNano$LatLngRect;->lo_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    if-nez v1, :cond_1

    .line 520
    new-instance v1, Llocation/unified/LocationDescriptorProtoNano$LatLng;

    invoke-direct {v1}, Llocation/unified/LocationDescriptorProtoNano$LatLng;-><init>()V

    iput-object v1, p0, Llocation/unified/LocationDescriptorProtoNano$LatLngRect;->lo_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    .line 522
    :cond_1
    iget-object v1, p0, Llocation/unified/LocationDescriptorProtoNano$LatLngRect;->lo_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 526
    :sswitch_2
    iget-object v1, p0, Llocation/unified/LocationDescriptorProtoNano$LatLngRect;->hi_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    if-nez v1, :cond_2

    .line 527
    new-instance v1, Llocation/unified/LocationDescriptorProtoNano$LatLng;

    invoke-direct {v1}, Llocation/unified/LocationDescriptorProtoNano$LatLng;-><init>()V

    iput-object v1, p0, Llocation/unified/LocationDescriptorProtoNano$LatLngRect;->hi_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    .line 529
    :cond_2
    iget-object v1, p0, Llocation/unified/LocationDescriptorProtoNano$LatLngRect;->hi_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 509
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setHi(Llocation/unified/LocationDescriptorProtoNano$LatLng;)Llocation/unified/LocationDescriptorProtoNano$LatLngRect;
    .locals 1
    .param p1, "value"    # Llocation/unified/LocationDescriptorProtoNano$LatLng;

    .prologue
    .line 449
    if-nez p1, :cond_0

    .line 450
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 452
    :cond_0
    iput-object p1, p0, Llocation/unified/LocationDescriptorProtoNano$LatLngRect;->hi_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    .line 453
    return-object p0
.end method

.method public setLo(Llocation/unified/LocationDescriptorProtoNano$LatLng;)Llocation/unified/LocationDescriptorProtoNano$LatLngRect;
    .locals 1
    .param p1, "value"    # Llocation/unified/LocationDescriptorProtoNano$LatLng;

    .prologue
    .line 430
    if-nez p1, :cond_0

    .line 431
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 433
    :cond_0
    iput-object p1, p0, Llocation/unified/LocationDescriptorProtoNano$LatLngRect;->lo_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    .line 434
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
    .line 480
    iget-object v0, p0, Llocation/unified/LocationDescriptorProtoNano$LatLngRect;->lo_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    if-eqz v0, :cond_0

    .line 481
    const/4 v0, 0x1

    iget-object v1, p0, Llocation/unified/LocationDescriptorProtoNano$LatLngRect;->lo_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 483
    :cond_0
    iget-object v0, p0, Llocation/unified/LocationDescriptorProtoNano$LatLngRect;->hi_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    if-eqz v0, :cond_1

    .line 484
    const/4 v0, 0x2

    iget-object v1, p0, Llocation/unified/LocationDescriptorProtoNano$LatLngRect;->hi_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 486
    :cond_1
    return-void
.end method
