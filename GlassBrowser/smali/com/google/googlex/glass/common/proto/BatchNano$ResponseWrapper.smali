.class public final Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "BatchNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/BatchNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResponseWrapper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper$ErrorCode;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;


# instance fields
.field private bitField0_:I

.field private data_:[B

.field private errorCode_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 608
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    sput-object v0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 609
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 623
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->errorCode_:I

    .line 642
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->data_:[B

    .line 609
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 766
    new-instance v0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 760
    new-instance v0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    return-object v0
.end method


# virtual methods
.method public clearData()Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
    .locals 1

    .prologue
    .line 658
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->data_:[B

    .line 659
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->bitField0_:I

    .line 660
    return-object p0
.end method

.method public clearErrorCode()Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
    .locals 1

    .prologue
    .line 636
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->errorCode_:I

    .line 637
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->bitField0_:I

    .line 638
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 665
    if-ne p1, p0, :cond_1

    .line 670
    :cond_0
    :goto_0
    return v1

    .line 666
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 667
    check-cast v0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    .line 668
    .local v0, "other":Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->errorCode_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->errorCode_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->data_:[B

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->data_:[B

    .line 669
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 670
    goto :goto_0

    .line 669
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->unknownFieldData:Ljava/util/List;

    .line 670
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->data_:[B

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 625
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->errorCode_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 700
    const/4 v0, 0x0

    .line 701
    .local v0, "size":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 702
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->errorCode_:I

    .line 703
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 705
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 706
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->data_:[B

    .line 707
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 709
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 710
    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->cachedSize:I

    .line 711
    return v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 655
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasErrorCode()Z
    .locals 1

    .prologue
    .line 633
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->bitField0_:I

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
    .locals 4

    .prologue
    .line 674
    const/16 v1, 0x11

    .line 675
    .local v1, "result":I
    iget v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->errorCode_:I

    add-int/lit16 v1, v2, 0x20f

    .line 676
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->data_:[B

    if-nez v2, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 682
    :cond_0
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    :goto_0
    add-int v1, v3, v2

    .line 683
    return v1

    .line 678
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->data_:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 679
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->data_:[B

    aget-byte v3, v3, v0

    add-int v1, v2, v3

    .line 678
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 682
    .end local v0    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 719
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 720
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 724
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    .line 725
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->unknownFieldData:Ljava/util/List;

    .line 728
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->unknownFieldData:Ljava/util/List;

    invoke-static {v2, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 730
    :sswitch_0
    return-object p0

    .line 735
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 736
    .local v1, "temp":I
    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 742
    :cond_2
    iput v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->errorCode_:I

    .line 743
    iget v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->bitField0_:I

    goto :goto_0

    .line 745
    :cond_3
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->errorCode_:I

    goto :goto_0

    .line 750
    .end local v1    # "temp":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->data_:[B

    .line 751
    iget v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->bitField0_:I

    goto :goto_0

    .line 720
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 605
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    move-result-object v0

    return-object v0
.end method

.method public setData([B)Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 647
    if-nez p1, :cond_0

    .line 648
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 650
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->data_:[B

    .line 651
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->bitField0_:I

    .line 652
    return-object p0
.end method

.method public setErrorCode(I)Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 628
    iput p1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->errorCode_:I

    .line 629
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->bitField0_:I

    .line 630
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
    .line 688
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 689
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->errorCode_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 691
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 692
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->data_:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 694
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 696
    return-void
.end method
