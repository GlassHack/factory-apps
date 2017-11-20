.class public final Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "GlasswareUsageLogNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/GlasswareUsageLogNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BundleViewed"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;


# instance fields
.field private bitField0_:I

.field private numberOfItems_:I

.field private viewedItems_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 621
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;

    sput-object v0, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->EMPTY_ARRAY:[Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 622
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 627
    iput v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->numberOfItems_:I

    .line 646
    iput v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->viewedItems_:I

    .line 622
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 752
    new-instance v0, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;

    invoke-direct {v0}, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 746
    new-instance v0, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;

    invoke-direct {v0}, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;

    return-object v0
.end method


# virtual methods
.method public clearNumberOfItems()Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;
    .locals 1

    .prologue
    .line 640
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->numberOfItems_:I

    .line 641
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->bitField0_:I

    .line 642
    return-object p0
.end method

.method public clearViewedItems()Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;
    .locals 1

    .prologue
    .line 659
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->viewedItems_:I

    .line 660
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->bitField0_:I

    .line 661
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 666
    if-ne p1, p0, :cond_1

    .line 671
    :cond_0
    :goto_0
    return v1

    .line 667
    :cond_1
    instance-of v3, p1, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 668
    check-cast v0, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;

    .line 669
    .local v0, "other":Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;
    iget v3, p0, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->numberOfItems_:I

    iget v4, v0, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->numberOfItems_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->viewedItems_:I

    iget v4, v0, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->viewedItems_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 671
    goto :goto_0

    .line 669
    :cond_4
    iget-object v3, p0, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->unknownFieldData:Ljava/util/List;

    .line 671
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getNumberOfItems()I
    .locals 1

    .prologue
    .line 629
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->numberOfItems_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 696
    const/4 v0, 0x0

    .line 697
    .local v0, "size":I
    iget v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 698
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->numberOfItems_:I

    .line 699
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 701
    :cond_0
    iget v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 702
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->viewedItems_:I

    .line 703
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 705
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 706
    iput v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->cachedSize:I

    .line 707
    return v0
.end method

.method public getViewedItems()I
    .locals 1

    .prologue
    .line 648
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->viewedItems_:I

    return v0
.end method

.method public hasNumberOfItems()Z
    .locals 1

    .prologue
    .line 637
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->bitField0_:I

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
    .line 656
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->bitField0_:I

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
    .line 675
    const/16 v0, 0x11

    .line 676
    .local v0, "result":I
    iget v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->numberOfItems_:I

    add-int/lit16 v0, v1, 0x20f

    .line 677
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->viewedItems_:I

    add-int v0, v1, v2

    .line 678
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int v0, v2, v1

    .line 679
    return v0

    .line 678
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 715
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 716
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 720
    iget-object v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 721
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->unknownFieldData:Ljava/util/List;

    .line 724
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 726
    :sswitch_0
    return-object p0

    .line 731
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->numberOfItems_:I

    .line 732
    iget v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->bitField0_:I

    goto :goto_0

    .line 736
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->viewedItems_:I

    .line 737
    iget v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->bitField0_:I

    goto :goto_0

    .line 716
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
    .line 618
    invoke-virtual {p0, p1}, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;

    move-result-object v0

    return-object v0
.end method

.method public setNumberOfItems(I)Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 632
    iput p1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->numberOfItems_:I

    .line 633
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->bitField0_:I

    .line 634
    return-object p0
.end method

.method public setViewedItems(I)Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 651
    iput p1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->viewedItems_:I

    .line 652
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->bitField0_:I

    .line 653
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
    .line 684
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 685
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->numberOfItems_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 687
    :cond_0
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 688
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->viewedItems_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 690
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 692
    return-void
.end method
