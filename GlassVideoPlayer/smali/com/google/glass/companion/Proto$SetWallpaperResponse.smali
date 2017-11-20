.class public final Lcom/google/glass/companion/Proto$SetWallpaperResponse;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$SetWallpaperResponse;


# instance fields
.field private bitField0_:I

.field private id_:I

.field private update_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8449
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    sput-object v0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8450
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8462
    iput v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->id_:I

    .line 8481
    iput v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->update_:I

    .line 8450
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$SetWallpaperResponse;
    .locals 1

    .prologue
    .line 8595
    new-instance v0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$SetWallpaperResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$SetWallpaperResponse;
    .locals 1

    .prologue
    .line 8589
    new-instance v0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$SetWallpaperResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    return-object v0
.end method


# virtual methods
.method public final clearId()Lcom/google/glass/companion/Proto$SetWallpaperResponse;
    .locals 1

    .prologue
    .line 8475
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->id_:I

    .line 8476
    iget v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->bitField0_:I

    .line 8477
    return-object p0
.end method

.method public final clearUpdate()Lcom/google/glass/companion/Proto$SetWallpaperResponse;
    .locals 1

    .prologue
    .line 8494
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->update_:I

    .line 8495
    iget v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->bitField0_:I

    .line 8496
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 8501
    if-ne p1, p0, :cond_1

    .line 8506
    :cond_0
    :goto_0
    return v0

    .line 8502
    :cond_1
    instance-of v2, p1, Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 8503
    :cond_2
    check-cast p1, Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    .line 8504
    iget v2, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->id_:I

    iget v3, p1, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->id_:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->update_:I

    iget v3, p1, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->update_:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 8506
    goto :goto_0

    .line 8504
    :cond_4
    iget-object v2, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->unknownFieldData:Ljava/util/List;

    .line 8506
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getId()I
    .locals 1

    .prologue
    .line 8464
    iget v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->id_:I

    return v0
.end method

.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 8531
    const/4 v0, 0x0

    .line 8532
    iget v1, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 8533
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->id_:I

    .line 8534
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8536
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 8537
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->update_:I

    .line 8538
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8540
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8541
    iput v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->cachedSize:I

    .line 8542
    return v0
.end method

.method public final getUpdate()I
    .locals 1

    .prologue
    .line 8483
    iget v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->update_:I

    return v0
.end method

.method public final hasId()Z
    .locals 1

    .prologue
    .line 8472
    iget v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasUpdate()Z
    .locals 1

    .prologue
    .line 8491
    iget v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 8510
    .line 8511
    iget v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->id_:I

    add-int/lit16 v0, v0, 0x20f

    .line 8512
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->update_:I

    add-int/2addr v0, v1

    .line 8513
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->unknownFieldData:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 8514
    return v0

    .line 8513
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$SetWallpaperResponse;
    .locals 2

    .prologue
    .line 8550
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 8551
    sparse-switch v0, :sswitch_data_0

    .line 8555
    iget-object v1, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 8556
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->unknownFieldData:Ljava/util/List;

    .line 8559
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8561
    :sswitch_0
    return-object p0

    .line 8566
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->id_:I

    .line 8567
    iget v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->bitField0_:I

    goto :goto_0

    .line 8571
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 8572
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 8576
    :cond_2
    iput v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->update_:I

    .line 8577
    iget v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->bitField0_:I

    goto :goto_0

    .line 8579
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->update_:I

    goto :goto_0

    .line 8551
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 8446
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    move-result-object v0

    return-object v0
.end method

.method public final setId(I)Lcom/google/glass/companion/Proto$SetWallpaperResponse;
    .locals 1

    .prologue
    .line 8467
    iput p1, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->id_:I

    .line 8468
    iget v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->bitField0_:I

    .line 8469
    return-object p0
.end method

.method public final setUpdate(I)Lcom/google/glass/companion/Proto$SetWallpaperResponse;
    .locals 1

    .prologue
    .line 8486
    iput p1, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->update_:I

    .line 8487
    iget v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->bitField0_:I

    .line 8488
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 8519
    iget v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 8520
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->id_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8522
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 8523
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->update_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8525
    :cond_1
    iget-object v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 8527
    return-void
.end method
