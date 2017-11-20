.class public final Lcom/google/glass/companion/Proto$GlassSetupResponse;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$GlassSetupResponse;


# instance fields
.field private bitField0_:I

.field private setupStatus_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6394
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$GlassSetupResponse;

    sput-object v0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$GlassSetupResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6395
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 6405
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->setupStatus_:I

    .line 6395
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassSetupResponse;
    .locals 1

    .prologue
    .line 6503
    new-instance v0, Lcom/google/glass/companion/Proto$GlassSetupResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$GlassSetupResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$GlassSetupResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassSetupResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$GlassSetupResponse;
    .locals 1

    .prologue
    .line 6497
    new-instance v0, Lcom/google/glass/companion/Proto$GlassSetupResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$GlassSetupResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$GlassSetupResponse;

    return-object v0
.end method


# virtual methods
.method public final clearSetupStatus()Lcom/google/glass/companion/Proto$GlassSetupResponse;
    .locals 1

    .prologue
    .line 6418
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->setupStatus_:I

    .line 6419
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->bitField0_:I

    .line 6420
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 6425
    if-ne p1, p0, :cond_1

    .line 6429
    :cond_0
    :goto_0
    return v0

    .line 6426
    :cond_1
    instance-of v2, p1, Lcom/google/glass/companion/Proto$GlassSetupResponse;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 6427
    :cond_2
    check-cast p1, Lcom/google/glass/companion/Proto$GlassSetupResponse;

    .line 6428
    iget v2, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->setupStatus_:I

    iget v3, p1, Lcom/google/glass/companion/Proto$GlassSetupResponse;->setupStatus_:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/glass/companion/Proto$GlassSetupResponse;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 6429
    goto :goto_0

    .line 6428
    :cond_4
    iget-object v2, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$GlassSetupResponse;->unknownFieldData:Ljava/util/List;

    .line 6429
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 6450
    const/4 v0, 0x0

    .line 6451
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 6452
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->setupStatus_:I

    .line 6453
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6455
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6456
    iput v0, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->cachedSize:I

    .line 6457
    return v0
.end method

.method public final getSetupStatus()I
    .locals 1

    .prologue
    .line 6407
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->setupStatus_:I

    return v0
.end method

.method public final hasSetupStatus()Z
    .locals 1

    .prologue
    .line 6415
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->bitField0_:I

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
    .locals 2

    .prologue
    .line 6433
    .line 6434
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->setupStatus_:I

    add-int/lit16 v0, v0, 0x20f

    .line 6435
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->unknownFieldData:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 6436
    return v0

    .line 6435
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassSetupResponse;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 6465
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 6466
    sparse-switch v0, :sswitch_data_0

    .line 6470
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 6471
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->unknownFieldData:Ljava/util/List;

    .line 6474
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6476
    :sswitch_0
    return-object p0

    .line 6481
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 6482
    if-eq v0, v2, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 6484
    :cond_2
    iput v0, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->setupStatus_:I

    .line 6485
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->bitField0_:I

    goto :goto_0

    .line 6487
    :cond_3
    iput v2, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->setupStatus_:I

    goto :goto_0

    .line 6466
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 6391
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$GlassSetupResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassSetupResponse;

    move-result-object v0

    return-object v0
.end method

.method public final setSetupStatus(I)Lcom/google/glass/companion/Proto$GlassSetupResponse;
    .locals 1

    .prologue
    .line 6410
    iput p1, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->setupStatus_:I

    .line 6411
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->bitField0_:I

    .line 6412
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 6441
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 6442
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->setupStatus_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6444
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 6446
    return-void
.end method
