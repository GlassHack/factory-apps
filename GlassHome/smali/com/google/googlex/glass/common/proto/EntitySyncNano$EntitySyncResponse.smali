.class public final Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "EntitySyncNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/EntitySyncNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EntitySyncResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;,
        Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;


# instance fields
.field private contactsInfo_:Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;

.field public entities:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

.field private selfEntity_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

.field private shareTargetsInfo_:Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;

    sput-object v0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 356
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 663
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->entities:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 356
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 870
    new-instance v0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 864
    new-instance v0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;

    return-object v0
.end method


# virtual methods
.method public clearContactsInfo()Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;
    .locals 1

    .prologue
    .line 681
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->contactsInfo_:Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;

    .line 682
    return-object p0
.end method

.method public clearSelfEntity()Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;
    .locals 1

    .prologue
    .line 719
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->selfEntity_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 720
    return-object p0
.end method

.method public clearShareTargetsInfo()Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;
    .locals 1

    .prologue
    .line 700
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->shareTargetsInfo_:Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;

    .line 701
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 724
    if-ne p1, p0, :cond_1

    .line 731
    :cond_0
    :goto_0
    return v1

    .line 725
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 726
    check-cast v0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;

    .line 727
    .local v0, "other":Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->entities:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->entities:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->contactsInfo_:Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->contactsInfo_:Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;

    if-nez v3, :cond_3

    .line 728
    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->shareTargetsInfo_:Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->shareTargetsInfo_:Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;

    if-nez v3, :cond_3

    .line 729
    :goto_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->selfEntity_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->selfEntity_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v3, :cond_3

    .line 730
    :goto_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 731
    goto :goto_0

    .line 727
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->contactsInfo_:Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->contactsInfo_:Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;

    .line 728
    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->shareTargetsInfo_:Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->shareTargetsInfo_:Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;

    .line 729
    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->selfEntity_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->selfEntity_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 730
    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->unknownFieldData:Ljava/util/List;

    .line 731
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getContactsInfo()Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->contactsInfo_:Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;

    return-object v0
.end method

.method public getSelfEntity()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->selfEntity_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 773
    const/4 v1, 0x0

    .line 774
    .local v1, "size":I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->entities:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v2, :cond_1

    .line 775
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->entities:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 776
    .local v0, "element":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    if-eqz v0, :cond_0

    .line 777
    const/4 v5, 0x1

    .line 778
    invoke-static {v5, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v1, v5

    .line 775
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 782
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->contactsInfo_:Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;

    if-eqz v2, :cond_2

    .line 783
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->contactsInfo_:Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;

    .line 784
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 786
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->shareTargetsInfo_:Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;

    if-eqz v2, :cond_3

    .line 787
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->shareTargetsInfo_:Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;

    .line 788
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 790
    :cond_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->selfEntity_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v2, :cond_4

    .line 791
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->selfEntity_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 792
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 794
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v2

    add-int/2addr v1, v2

    .line 795
    iput v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->cachedSize:I

    .line 796
    return v1
.end method

.method public getShareTargetsInfo()Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->shareTargetsInfo_:Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;

    return-object v0
.end method

.method public hasContactsInfo()Z
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->contactsInfo_:Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSelfEntity()Z
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->selfEntity_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasShareTargetsInfo()Z
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->shareTargetsInfo_:Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;

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

    .line 735
    const/16 v1, 0x11

    .line 736
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->entities:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v2, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 742
    :cond_0
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->contactsInfo_:Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;

    if-nez v2, :cond_3

    move v2, v3

    :goto_0
    add-int v1, v4, v2

    .line 743
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->shareTargetsInfo_:Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;

    if-nez v2, :cond_4

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 744
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->selfEntity_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v2, :cond_5

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 745
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->unknownFieldData:Ljava/util/List;

    if-nez v4, :cond_6

    :goto_3
    add-int v1, v2, v3

    .line 746
    return v1

    .line 738
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->entities:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 739
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->entities:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    aget-object v2, v2, v0

    if-nez v2, :cond_2

    move v2, v3

    :goto_5
    add-int v1, v4, v2

    .line 738
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 739
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->entities:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->hashCode()I

    move-result v2

    goto :goto_5

    .line 742
    .end local v0    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->contactsInfo_:Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->hashCode()I

    move-result v2

    goto :goto_0

    .line 743
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->shareTargetsInfo_:Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;->hashCode()I

    move-result v2

    goto :goto_1

    .line 744
    :cond_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->selfEntity_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->hashCode()I

    move-result v2

    goto :goto_2

    .line 745
    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    goto :goto_3
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;
    .locals 7
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 804
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 805
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 809
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->unknownFieldData:Ljava/util/List;

    if-nez v5, :cond_1

    .line 810
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->unknownFieldData:Ljava/util/List;

    .line 813
    :cond_1
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v5, p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 815
    :sswitch_0
    return-object p0

    .line 820
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 821
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->entities:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v5, :cond_3

    move v1, v4

    .line 822
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 823
    .local v2, "newArray":[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->entities:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v5, :cond_2

    .line 824
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->entities:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 826
    :cond_2
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->entities:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 827
    :goto_2
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->entities:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_4

    .line 828
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->entities:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    new-instance v6, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;-><init>()V

    aput-object v6, v5, v1

    .line 829
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->entities:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 830
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 827
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 821
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_3
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->entities:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    array-length v1, v5

    goto :goto_1

    .line 833
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_4
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->entities:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    new-instance v6, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;-><init>()V

    aput-object v6, v5, v1

    .line 834
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->entities:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 838
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :sswitch_2
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->contactsInfo_:Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;

    if-nez v5, :cond_5

    .line 839
    new-instance v5, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;

    invoke-direct {v5}, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;-><init>()V

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->contactsInfo_:Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;

    .line 841
    :cond_5
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->contactsInfo_:Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 845
    :sswitch_3
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->shareTargetsInfo_:Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;

    if-nez v5, :cond_6

    .line 846
    new-instance v5, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;

    invoke-direct {v5}, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;-><init>()V

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->shareTargetsInfo_:Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;

    .line 848
    :cond_6
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->shareTargetsInfo_:Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 852
    :sswitch_4
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->selfEntity_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v5, :cond_7

    .line 853
    new-instance v5, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-direct {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;-><init>()V

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->selfEntity_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 855
    :cond_7
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->selfEntity_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 805
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
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
    .line 352
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;

    move-result-object v0

    return-object v0
.end method

.method public setContactsInfo(Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;)Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;
    .locals 1
    .param p1, "value"    # Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;

    .prologue
    .line 671
    if-nez p1, :cond_0

    .line 672
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 674
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->contactsInfo_:Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;

    .line 675
    return-object p0
.end method

.method public setSelfEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;
    .locals 1
    .param p1, "value"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .prologue
    .line 709
    if-nez p1, :cond_0

    .line 710
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 712
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->selfEntity_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 713
    return-object p0
.end method

.method public setShareTargetsInfo(Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;)Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;
    .locals 1
    .param p1, "value"    # Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;

    .prologue
    .line 690
    if-nez p1, :cond_0

    .line 691
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 693
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->shareTargetsInfo_:Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;

    .line 694
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 751
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->entities:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v1, :cond_1

    .line 752
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->entities:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 753
    .local v0, "element":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    if-eqz v0, :cond_0

    .line 754
    const/4 v4, 0x1

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 752
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 758
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->contactsInfo_:Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;

    if-eqz v1, :cond_2

    .line 759
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->contactsInfo_:Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 761
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->shareTargetsInfo_:Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;

    if-eqz v1, :cond_3

    .line 762
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->shareTargetsInfo_:Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 764
    :cond_3
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->selfEntity_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v1, :cond_4

    .line 765
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->selfEntity_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 767
    :cond_4
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 769
    return-void
.end method
