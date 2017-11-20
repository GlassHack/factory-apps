.class public final Lcom/google/glass/companion/Proto$GetWallpaperInfo;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$GetWallpaperInfo;


# instance fields
.field private bitField0_:I

.field private sha1HashCode_:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8603
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$GetWallpaperInfo;

    sput-object v0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$GetWallpaperInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8604
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8609
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->sha1HashCode_:[B

    .line 8604
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GetWallpaperInfo;
    .locals 1

    .prologue
    .line 8709
    new-instance v0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$GetWallpaperInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GetWallpaperInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$GetWallpaperInfo;
    .locals 1

    .prologue
    .line 8703
    new-instance v0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$GetWallpaperInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;

    return-object v0
.end method


# virtual methods
.method public final clearSha1HashCode()Lcom/google/glass/companion/Proto$GetWallpaperInfo;
    .locals 1

    .prologue
    .line 8625
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->sha1HashCode_:[B

    .line 8626
    iget v0, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->bitField0_:I

    .line 8627
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 8632
    if-ne p1, p0, :cond_1

    .line 8636
    :cond_0
    :goto_0
    return v0

    .line 8633
    :cond_1
    instance-of v2, p1, Lcom/google/glass/companion/Proto$GetWallpaperInfo;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 8634
    :cond_2
    check-cast p1, Lcom/google/glass/companion/Proto$GetWallpaperInfo;

    .line 8635
    iget-object v2, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->sha1HashCode_:[B

    iget-object v3, p1, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->sha1HashCode_:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 8636
    goto :goto_0

    .line 8635
    :cond_4
    iget-object v2, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->unknownFieldData:Ljava/util/List;

    .line 8636
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 8662
    const/4 v0, 0x0

    .line 8663
    iget v1, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 8664
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->sha1HashCode_:[B

    .line 8665
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 8667
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8668
    iput v0, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->cachedSize:I

    .line 8669
    return v0
.end method

.method public final getSha1HashCode()[B
    .locals 1

    .prologue
    .line 8611
    iget-object v0, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->sha1HashCode_:[B

    return-object v0
.end method

.method public final hasSha1HashCode()Z
    .locals 1

    .prologue
    .line 8622
    iget v0, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->bitField0_:I

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

    .line 8640
    const/16 v0, 0x11

    .line 8641
    iget-object v2, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->sha1HashCode_:[B

    if-nez v2, :cond_1

    const/16 v2, 0x20f

    .line 8647
    :cond_0
    mul-int/lit8 v0, v2, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_2

    :goto_0
    add-int/2addr v0, v1

    .line 8648
    return v0

    :cond_1
    move v2, v0

    move v0, v1

    .line 8643
    :goto_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->sha1HashCode_:[B

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 8644
    mul-int/lit8 v2, v2, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->sha1HashCode_:[B

    aget-byte v3, v3, v0

    add-int/2addr v2, v3

    .line 8643
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 8647
    :cond_2
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GetWallpaperInfo;
    .locals 2

    .prologue
    .line 8677
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 8678
    sparse-switch v0, :sswitch_data_0

    .line 8682
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 8683
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->unknownFieldData:Ljava/util/List;

    .line 8686
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8688
    :sswitch_0
    return-object p0

    .line 8693
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->sha1HashCode_:[B

    .line 8694
    iget v0, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->bitField0_:I

    goto :goto_0

    .line 8678
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 8600
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GetWallpaperInfo;

    move-result-object v0

    return-object v0
.end method

.method public final setSha1HashCode([B)Lcom/google/glass/companion/Proto$GetWallpaperInfo;
    .locals 1

    .prologue
    .line 8614
    if-nez p1, :cond_0

    .line 8615
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8617
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->sha1HashCode_:[B

    .line 8618
    iget v0, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->bitField0_:I

    .line 8619
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 8653
    iget v0, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 8654
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->sha1HashCode_:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 8656
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 8658
    return-void
.end method
