.class public final Lcom/google/glass/companion/Proto$Media;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Media"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$Media;


# instance fields
.field private bitField0_:I

.field private bytes_:[B

.field private mimeType_:Ljava/lang/String;

.field private sha1HashCode_:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7606
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$Media;

    sput-object v0, Lcom/google/glass/companion/Proto$Media;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$Media;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7607
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 7612
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Media;->bytes_:[B

    .line 7634
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Media;->sha1HashCode_:[B

    .line 7656
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Media;->mimeType_:Ljava/lang/String;

    .line 7607
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Media;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7789
    new-instance v0, Lcom/google/glass/companion/Proto$Media;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Media;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$Media;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Media;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$Media;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 7783
    new-instance v0, Lcom/google/glass/companion/Proto$Media;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Media;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Media;

    return-object v0
.end method


# virtual methods
.method public clearBytes()Lcom/google/glass/companion/Proto$Media;
    .locals 1

    .prologue
    .line 7628
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Media;->bytes_:[B

    .line 7629
    iget v0, p0, Lcom/google/glass/companion/Proto$Media;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$Media;->bitField0_:I

    .line 7630
    return-object p0
.end method

.method public clearMimeType()Lcom/google/glass/companion/Proto$Media;
    .locals 1

    .prologue
    .line 7672
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Media;->mimeType_:Ljava/lang/String;

    .line 7673
    iget v0, p0, Lcom/google/glass/companion/Proto$Media;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$Media;->bitField0_:I

    .line 7674
    return-object p0
.end method

.method public clearSha1HashCode()Lcom/google/glass/companion/Proto$Media;
    .locals 1

    .prologue
    .line 7650
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Media;->sha1HashCode_:[B

    .line 7651
    iget v0, p0, Lcom/google/glass/companion/Proto$Media;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$Media;->bitField0_:I

    .line 7652
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 7679
    if-ne p1, p0, :cond_1

    .line 7685
    :cond_0
    :goto_0
    return v1

    .line 7680
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$Media;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 7681
    check-cast v0, Lcom/google/glass/companion/Proto$Media;

    .line 7682
    .local v0, "other":Lcom/google/glass/companion/Proto$Media;
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Media;->bytes_:[B

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Media;->bytes_:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Media;->sha1HashCode_:[B

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Media;->sha1HashCode_:[B

    .line 7683
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Media;->mimeType_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Media;->mimeType_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 7684
    :goto_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Media;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Media;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 7685
    goto :goto_0

    .line 7683
    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Media;->mimeType_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Media;->mimeType_:Ljava/lang/String;

    .line 7684
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Media;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Media;->unknownFieldData:Ljava/util/List;

    .line 7685
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getBytes()[B
    .locals 1

    .prologue
    .line 7614
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Media;->bytes_:[B

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7658
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Media;->mimeType_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 7724
    const/4 v0, 0x0

    .line 7725
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/Proto$Media;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 7726
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Media;->bytes_:[B

    .line 7727
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 7729
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$Media;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 7730
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Media;->sha1HashCode_:[B

    .line 7731
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 7733
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/Proto$Media;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 7734
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Media;->mimeType_:Ljava/lang/String;

    .line 7735
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7737
    :cond_2
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Media;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7738
    iput v0, p0, Lcom/google/glass/companion/Proto$Media;->cachedSize:I

    .line 7739
    return v0
.end method

.method public getSha1HashCode()[B
    .locals 1

    .prologue
    .line 7636
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Media;->sha1HashCode_:[B

    return-object v0
.end method

.method public hasBytes()Z
    .locals 1

    .prologue
    .line 7625
    iget v0, p0, Lcom/google/glass/companion/Proto$Media;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMimeType()Z
    .locals 1

    .prologue
    .line 7669
    iget v0, p0, Lcom/google/glass/companion/Proto$Media;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSha1HashCode()Z
    .locals 1

    .prologue
    .line 7647
    iget v0, p0, Lcom/google/glass/companion/Proto$Media;->bitField0_:I

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
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 7689
    const/16 v1, 0x11

    .line 7690
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Media;->bytes_:[B

    if-nez v2, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    .line 7696
    :cond_0
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Media;->sha1HashCode_:[B

    if-nez v2, :cond_3

    mul-int/lit8 v1, v1, 0x1f

    .line 7702
    :cond_1
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Media;->mimeType_:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v3

    :goto_0
    add-int v1, v4, v2

    .line 7703
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Media;->unknownFieldData:Ljava/util/List;

    if-nez v4, :cond_5

    :goto_1
    add-int v1, v2, v3

    .line 7704
    return v1

    .line 7692
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Media;->bytes_:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 7693
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Media;->bytes_:[B

    aget-byte v4, v4, v0

    add-int v1, v2, v4

    .line 7692
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 7698
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Media;->sha1HashCode_:[B

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 7699
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Media;->sha1HashCode_:[B

    aget-byte v4, v4, v0

    add-int v1, v2, v4

    .line 7698
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 7702
    .end local v0    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Media;->mimeType_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 7703
    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Media;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Media;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7747
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 7748
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 7752
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Media;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 7753
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/Proto$Media;->unknownFieldData:Ljava/util/List;

    .line 7756
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Media;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7758
    :sswitch_0
    return-object p0

    .line 7763
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$Media;->bytes_:[B

    .line 7764
    iget v1, p0, Lcom/google/glass/companion/Proto$Media;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/Proto$Media;->bitField0_:I

    goto :goto_0

    .line 7768
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$Media;->sha1HashCode_:[B

    .line 7769
    iget v1, p0, Lcom/google/glass/companion/Proto$Media;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/glass/companion/Proto$Media;->bitField0_:I

    goto :goto_0

    .line 7773
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$Media;->mimeType_:Ljava/lang/String;

    .line 7774
    iget v1, p0, Lcom/google/glass/companion/Proto$Media;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/glass/companion/Proto$Media;->bitField0_:I

    goto :goto_0

    .line 7748
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 7603
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$Media;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Media;

    move-result-object v0

    return-object v0
.end method

.method public setBytes([B)Lcom/google/glass/companion/Proto$Media;
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 7617
    if-nez p1, :cond_0

    .line 7618
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7620
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Media;->bytes_:[B

    .line 7621
    iget v0, p0, Lcom/google/glass/companion/Proto$Media;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$Media;->bitField0_:I

    .line 7622
    return-object p0
.end method

.method public setMimeType(Ljava/lang/String;)Lcom/google/glass/companion/Proto$Media;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7661
    if-nez p1, :cond_0

    .line 7662
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7664
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Media;->mimeType_:Ljava/lang/String;

    .line 7665
    iget v0, p0, Lcom/google/glass/companion/Proto$Media;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$Media;->bitField0_:I

    .line 7666
    return-object p0
.end method

.method public setSha1HashCode([B)Lcom/google/glass/companion/Proto$Media;
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 7639
    if-nez p1, :cond_0

    .line 7640
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7642
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Media;->sha1HashCode_:[B

    .line 7643
    iget v0, p0, Lcom/google/glass/companion/Proto$Media;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$Media;->bitField0_:I

    .line 7644
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
    .line 7709
    iget v0, p0, Lcom/google/glass/companion/Proto$Media;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7710
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Media;->bytes_:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 7712
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$Media;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 7713
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Media;->sha1HashCode_:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 7715
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/Proto$Media;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 7716
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Media;->mimeType_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7718
    :cond_2
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Media;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 7720
    return-void
.end method
