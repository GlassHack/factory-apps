.class public final Lcom/google/glass/companion/Proto$AndroidDeviceInfo;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AndroidDeviceInfo"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$AndroidDeviceInfo;


# instance fields
.field private bitField0_:I

.field private sdkVersion_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7624
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$AndroidDeviceInfo;

    sput-object v0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$AndroidDeviceInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7625
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 7630
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->sdkVersion_:I

    .line 7625
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$AndroidDeviceInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7722
    new-instance v0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$AndroidDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$AndroidDeviceInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 7716
    new-instance v0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;

    return-object v0
.end method


# virtual methods
.method public clearSdkVersion()Lcom/google/glass/companion/Proto$AndroidDeviceInfo;
    .locals 1

    .prologue
    .line 7643
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->sdkVersion_:I

    .line 7644
    iget v0, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->bitField0_:I

    .line 7645
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 7650
    if-ne p1, p0, :cond_1

    .line 7654
    :cond_0
    :goto_0
    return v1

    .line 7651
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 7652
    check-cast v0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;

    .line 7653
    .local v0, "other":Lcom/google/glass/companion/Proto$AndroidDeviceInfo;
    iget v3, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->sdkVersion_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->sdkVersion_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 7654
    goto :goto_0

    .line 7653
    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->unknownFieldData:Ljava/util/List;

    .line 7654
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getSdkVersion()I
    .locals 1

    .prologue
    .line 7632
    iget v0, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->sdkVersion_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 7675
    const/4 v0, 0x0

    .line 7676
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 7677
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->sdkVersion_:I

    .line 7678
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7680
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7681
    iput v0, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->cachedSize:I

    .line 7682
    return v0
.end method

.method public hasSdkVersion()Z
    .locals 1

    .prologue
    .line 7640
    iget v0, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->bitField0_:I

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
    .locals 3

    .prologue
    .line 7658
    const/16 v0, 0x11

    .line 7659
    .local v0, "result":I
    iget v1, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->sdkVersion_:I

    add-int/lit16 v0, v1, 0x20f

    .line 7660
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int v0, v2, v1

    .line 7661
    return v0

    .line 7660
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$AndroidDeviceInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7690
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 7691
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 7695
    iget-object v1, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 7696
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->unknownFieldData:Ljava/util/List;

    .line 7699
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7701
    :sswitch_0
    return-object p0

    .line 7706
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->sdkVersion_:I

    .line 7707
    iget v1, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->bitField0_:I

    goto :goto_0

    .line 7691
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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
    .line 7621
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$AndroidDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public setSdkVersion(I)Lcom/google/glass/companion/Proto$AndroidDeviceInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 7635
    iput p1, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->sdkVersion_:I

    .line 7636
    iget v0, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->bitField0_:I

    .line 7637
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
    .line 7666
    iget v0, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7667
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->sdkVersion_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7669
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 7671
    return-void
.end method
