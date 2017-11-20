.class public final Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;


# instance fields
.field private bitField0_:I

.field private isAcknowledged_:Z

.field private name_:Ljava/lang/String;

.field private requiresUserAcknowledgement_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 758
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;

    sput-object v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 759
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 764
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->name_:Ljava/lang/String;

    .line 786
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->requiresUserAcknowledgement_:Z

    .line 805
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->isAcknowledged_:Z

    .line 759
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;
    .locals 1

    .prologue
    .line 925
    new-instance v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;
    .locals 1

    .prologue
    .line 919
    new-instance v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;

    return-object v0
.end method


# virtual methods
.method public final clearIsAcknowledged()Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;
    .locals 1

    .prologue
    .line 818
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->isAcknowledged_:Z

    .line 819
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->bitField0_:I

    .line 820
    return-object p0
.end method

.method public final clearName()Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;
    .locals 1

    .prologue
    .line 780
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->name_:Ljava/lang/String;

    .line 781
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->bitField0_:I

    .line 782
    return-object p0
.end method

.method public final clearRequiresUserAcknowledgement()Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;
    .locals 1

    .prologue
    .line 799
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->requiresUserAcknowledgement_:Z

    .line 800
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->bitField0_:I

    .line 801
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 825
    if-ne p1, p0, :cond_1

    .line 831
    :cond_0
    :goto_0
    return v0

    .line 826
    :cond_1
    instance-of v2, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 827
    :cond_2
    check-cast p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;

    .line 828
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->name_:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->name_:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_1
    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->requiresUserAcknowledgement_:Z

    iget-boolean v3, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->requiresUserAcknowledgement_:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->isAcknowledged_:Z

    iget-boolean v3, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->isAcknowledged_:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 831
    goto :goto_0

    .line 828
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->name_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->name_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->unknownFieldData:Ljava/util/List;

    .line 831
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getIsAcknowledged()Z
    .locals 1

    .prologue
    .line 807
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->isAcknowledged_:Z

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequiresUserAcknowledgement()Z
    .locals 1

    .prologue
    .line 788
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->requiresUserAcknowledgement_:Z

    return v0
.end method

.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 860
    const/4 v0, 0x0

    .line 861
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 862
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->name_:Ljava/lang/String;

    .line 863
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 865
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 866
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->requiresUserAcknowledgement_:Z

    .line 867
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 869
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 870
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->isAcknowledged_:Z

    .line 871
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 873
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 874
    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->cachedSize:I

    .line 875
    return v0
.end method

.method public final hasIsAcknowledged()Z
    .locals 1

    .prologue
    .line 815
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasName()Z
    .locals 1

    .prologue
    .line 777
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasRequiresUserAcknowledgement()Z
    .locals 1

    .prologue
    .line 796
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->bitField0_:I

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
    .locals 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 835
    .line 836
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->name_:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 837
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->requiresUserAcknowledgement_:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    add-int/2addr v0, v4

    .line 838
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v4, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->isAcknowledged_:Z

    if-eqz v4, :cond_2

    :goto_2
    add-int/2addr v0, v2

    .line 839
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_3

    :goto_3
    add-int/2addr v0, v1

    .line 840
    return v0

    .line 836
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->name_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v3

    .line 837
    goto :goto_1

    :cond_2
    move v2, v3

    .line 838
    goto :goto_2

    .line 839
    :cond_3
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_3
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;
    .locals 2

    .prologue
    .line 883
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 884
    sparse-switch v0, :sswitch_data_0

    .line 888
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 889
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->unknownFieldData:Ljava/util/List;

    .line 892
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 894
    :sswitch_0
    return-object p0

    .line 899
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->name_:Ljava/lang/String;

    .line 900
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->bitField0_:I

    goto :goto_0

    .line 904
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->requiresUserAcknowledgement_:Z

    .line 905
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->bitField0_:I

    goto :goto_0

    .line 909
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->isAcknowledged_:Z

    .line 910
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->bitField0_:I

    goto :goto_0

    .line 884
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 755
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;

    move-result-object v0

    return-object v0
.end method

.method public final setIsAcknowledged(Z)Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;
    .locals 1

    .prologue
    .line 810
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->isAcknowledged_:Z

    .line 811
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->bitField0_:I

    .line 812
    return-object p0
.end method

.method public final setName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;
    .locals 1

    .prologue
    .line 769
    if-nez p1, :cond_0

    .line 770
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 772
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->name_:Ljava/lang/String;

    .line 773
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->bitField0_:I

    .line 774
    return-object p0
.end method

.method public final setRequiresUserAcknowledgement(Z)Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;
    .locals 1

    .prologue
    .line 791
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->requiresUserAcknowledgement_:Z

    .line 792
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->bitField0_:I

    .line 793
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 845
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 846
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->name_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 848
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 849
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->requiresUserAcknowledgement_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 851
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 852
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->isAcknowledged_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 854
    :cond_2
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 856
    return-void
.end method
