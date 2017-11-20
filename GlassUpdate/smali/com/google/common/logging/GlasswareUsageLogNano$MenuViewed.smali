.class public final Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "GlasswareUsageLogNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/GlasswareUsageLogNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MenuViewed"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;


# instance fields
.field private bitField0_:I

.field private numberOfItems_:I

.field private viewedItems_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 760
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;

    sput-object v0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->EMPTY_ARRAY:[Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 761
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 766
    iput v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->numberOfItems_:I

    .line 785
    iput v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->viewedItems_:I

    .line 761
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 891
    new-instance v0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;

    invoke-direct {v0}, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 885
    new-instance v0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;

    invoke-direct {v0}, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;

    return-object v0
.end method


# virtual methods
.method public clearNumberOfItems()Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;
    .locals 1

    .prologue
    .line 779
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->numberOfItems_:I

    .line 780
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->bitField0_:I

    .line 781
    return-object p0
.end method

.method public clearViewedItems()Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;
    .locals 1

    .prologue
    .line 798
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->viewedItems_:I

    .line 799
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->bitField0_:I

    .line 800
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 805
    if-ne p1, p0, :cond_1

    .line 810
    :cond_0
    :goto_0
    return v1

    .line 806
    :cond_1
    instance-of v3, p1, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 807
    check-cast v0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;

    .line 808
    .local v0, "other":Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;
    iget v3, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->numberOfItems_:I

    iget v4, v0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->numberOfItems_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->viewedItems_:I

    iget v4, v0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->viewedItems_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 810
    goto :goto_0

    .line 808
    :cond_4
    iget-object v3, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->unknownFieldData:Ljava/util/List;

    .line 810
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getNumberOfItems()I
    .locals 1

    .prologue
    .line 768
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->numberOfItems_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 835
    const/4 v0, 0x0

    .line 836
    .local v0, "size":I
    iget v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 837
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->numberOfItems_:I

    .line 838
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 840
    :cond_0
    iget v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 841
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->viewedItems_:I

    .line 842
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 844
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 845
    iput v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->cachedSize:I

    .line 846
    return v0
.end method

.method public getViewedItems()I
    .locals 1

    .prologue
    .line 787
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->viewedItems_:I

    return v0
.end method

.method public hasNumberOfItems()Z
    .locals 1

    .prologue
    .line 776
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasViewedItems()Z
    .locals 1

    .prologue
    .line 795
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->bitField0_:I

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
    .line 814
    const/16 v0, 0x11

    .line 815
    .local v0, "result":I
    iget v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->numberOfItems_:I

    add-int/lit16 v0, v1, 0x20f

    .line 816
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->viewedItems_:I

    add-int v0, v1, v2

    .line 817
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int v0, v2, v1

    .line 818
    return v0

    .line 817
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 854
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 855
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 859
    iget-object v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 860
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->unknownFieldData:Ljava/util/List;

    .line 863
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 865
    :sswitch_0
    return-object p0

    .line 870
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->numberOfItems_:I

    .line 871
    iget v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->bitField0_:I

    goto :goto_0

    .line 875
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->viewedItems_:I

    .line 876
    iget v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->bitField0_:I

    goto :goto_0

    .line 855
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
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
    .line 757
    invoke-virtual {p0, p1}, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;

    move-result-object v0

    return-object v0
.end method

.method public setNumberOfItems(I)Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 771
    iput p1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->numberOfItems_:I

    .line 772
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->bitField0_:I

    .line 773
    return-object p0
.end method

.method public setViewedItems(I)Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 790
    iput p1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->viewedItems_:I

    .line 791
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->bitField0_:I

    .line 792
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
    .line 823
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 824
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->numberOfItems_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 826
    :cond_0
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 827
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->viewedItems_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 829
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 831
    return-void
.end method
