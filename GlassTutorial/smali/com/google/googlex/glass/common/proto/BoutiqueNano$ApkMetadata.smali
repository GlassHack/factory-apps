.class public final Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "BoutiqueNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/BoutiqueNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApkMetadata"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;


# instance fields
.field private bitField0_:I

.field private downloadUrl_:Ljava/lang/String;

.field private isUninstalledByUser_:Z

.field private packageName_:Ljava/lang/String;

.field public permission:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;

.field public registeredVoiceTrigger:[Ljava/lang/String;

.field public unregisteredVoiceTrigger:[Ljava/lang/String;

.field private versionNumber_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 428
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    sput-object v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 429
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 434
    iput v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->versionNumber_:I

    .line 453
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->packageName_:Ljava/lang/String;

    .line 475
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->downloadUrl_:Ljava/lang/String;

    .line 497
    sget-object v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->permission:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;

    .line 500
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->registeredVoiceTrigger:[Ljava/lang/String;

    .line 503
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->unregisteredVoiceTrigger:[Ljava/lang/String;

    .line 506
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->isUninstalledByUser_:Z

    .line 429
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 750
    new-instance v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 744
    new-instance v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    return-object v0
.end method


# virtual methods
.method public clearDownloadUrl()Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;
    .locals 1

    .prologue
    .line 491
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->downloadUrl_:Ljava/lang/String;

    .line 492
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->bitField0_:I

    .line 493
    return-object p0
.end method

.method public clearIsUninstalledByUser()Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;
    .locals 1

    .prologue
    .line 519
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->isUninstalledByUser_:Z

    .line 520
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->bitField0_:I

    .line 521
    return-object p0
.end method

.method public clearPackageName()Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;
    .locals 1

    .prologue
    .line 469
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->packageName_:Ljava/lang/String;

    .line 470
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->bitField0_:I

    .line 471
    return-object p0
.end method

.method public clearVersionNumber()Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;
    .locals 1

    .prologue
    .line 447
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->versionNumber_:I

    .line 448
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->bitField0_:I

    .line 449
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 526
    if-ne p1, p0, :cond_1

    .line 536
    :cond_0
    :goto_0
    return v1

    .line 527
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 528
    check-cast v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    .line 529
    .local v0, "other":Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->versionNumber_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->versionNumber_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->packageName_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->packageName_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 530
    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->downloadUrl_:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->downloadUrl_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 531
    :goto_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->permission:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->permission:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;

    .line 532
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->registeredVoiceTrigger:[Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->registeredVoiceTrigger:[Ljava/lang/String;

    .line 533
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->unregisteredVoiceTrigger:[Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->unregisteredVoiceTrigger:[Ljava/lang/String;

    .line 534
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->isUninstalledByUser_:Z

    iget-boolean v4, v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->isUninstalledByUser_:Z

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 536
    goto :goto_0

    .line 529
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->packageName_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->packageName_:Ljava/lang/String;

    .line 530
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->downloadUrl_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->downloadUrl_:Ljava/lang/String;

    .line 531
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    .line 534
    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->unknownFieldData:Ljava/util/List;

    .line 536
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->downloadUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getIsUninstalledByUser()Z
    .locals 1

    .prologue
    .line 508
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->isUninstalledByUser_:Z

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->packageName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 604
    const/4 v2, 0x0

    .line 605
    .local v2, "size":I
    iget v4, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 606
    const/4 v4, 0x1

    iget v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->versionNumber_:I

    .line 607
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 609
    :cond_0
    iget v4, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 610
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->packageName_:Ljava/lang/String;

    .line 611
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 613
    :cond_1
    iget v4, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    .line 614
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->downloadUrl_:Ljava/lang/String;

    .line 615
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 617
    :cond_2
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->permission:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;

    if-eqz v4, :cond_4

    .line 618
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->permission:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;

    array-length v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_4

    aget-object v1, v5, v4

    .line 619
    .local v1, "element":Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;
    if-eqz v1, :cond_3

    .line 620
    const/4 v7, 0x4

    .line 621
    invoke-static {v7, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v7

    add-int/2addr v2, v7

    .line 618
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 625
    .end local v1    # "element":Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;
    :cond_4
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->registeredVoiceTrigger:[Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->registeredVoiceTrigger:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_6

    .line 626
    const/4 v0, 0x0

    .line 627
    .local v0, "dataSize":I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->registeredVoiceTrigger:[Ljava/lang/String;

    array-length v6, v5

    move v4, v3

    :goto_1
    if-ge v4, v6, :cond_5

    aget-object v1, v5, v4

    .line 629
    .local v1, "element":Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v0, v7

    .line 627
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 631
    .end local v1    # "element":Ljava/lang/String;
    :cond_5
    add-int/2addr v2, v0

    .line 632
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->registeredVoiceTrigger:[Ljava/lang/String;

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 634
    .end local v0    # "dataSize":I
    :cond_6
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->unregisteredVoiceTrigger:[Ljava/lang/String;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->unregisteredVoiceTrigger:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_8

    .line 635
    const/4 v0, 0x0

    .line 636
    .restart local v0    # "dataSize":I
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->unregisteredVoiceTrigger:[Ljava/lang/String;

    array-length v5, v4

    :goto_2
    if-ge v3, v5, :cond_7

    aget-object v1, v4, v3

    .line 638
    .restart local v1    # "element":Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v0, v6

    .line 636
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 640
    .end local v1    # "element":Ljava/lang/String;
    :cond_7
    add-int/2addr v2, v0

    .line 641
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->unregisteredVoiceTrigger:[Ljava/lang/String;

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    .line 643
    .end local v0    # "dataSize":I
    :cond_8
    iget v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_9

    .line 644
    const/4 v3, 0x7

    iget-boolean v4, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->isUninstalledByUser_:Z

    .line 645
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 647
    :cond_9
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->unknownFieldData:Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    .line 648
    iput v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->cachedSize:I

    .line 649
    return v2
.end method

.method public getVersionNumber()I
    .locals 1

    .prologue
    .line 436
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->versionNumber_:I

    return v0
.end method

.method public hasDownloadUrl()Z
    .locals 1

    .prologue
    .line 488
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsUninstalledByUser()Z
    .locals 1

    .prologue
    .line 516
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPackageName()Z
    .locals 1

    .prologue
    .line 466
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVersionNumber()Z
    .locals 1

    .prologue
    .line 444
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->bitField0_:I

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
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 540
    const/16 v1, 0x11

    .line 541
    .local v1, "result":I
    iget v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->versionNumber_:I

    add-int/lit16 v1, v2, 0x20f

    .line 542
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->packageName_:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    :goto_0
    add-int v1, v4, v2

    .line 543
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->downloadUrl_:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 544
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->permission:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;

    if-nez v2, :cond_5

    mul-int/lit8 v1, v1, 0x1f

    .line 550
    :cond_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->registeredVoiceTrigger:[Ljava/lang/String;

    if-nez v2, :cond_7

    mul-int/lit8 v1, v1, 0x1f

    .line 556
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->unregisteredVoiceTrigger:[Ljava/lang/String;

    if-nez v2, :cond_9

    mul-int/lit8 v1, v1, 0x1f

    .line 562
    :cond_2
    mul-int/lit8 v4, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->isUninstalledByUser_:Z

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    :goto_2
    add-int v1, v4, v2

    .line 563
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->unknownFieldData:Ljava/util/List;

    if-nez v4, :cond_c

    :goto_3
    add-int v1, v2, v3

    .line 564
    return v1

    .line 542
    :cond_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->packageName_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 543
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->downloadUrl_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 546
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->permission:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 547
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->permission:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;

    aget-object v2, v2, v0

    if-nez v2, :cond_6

    move v2, v3

    :goto_5
    add-int v1, v4, v2

    .line 546
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 547
    :cond_6
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->permission:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->hashCode()I

    move-result v2

    goto :goto_5

    .line 552
    .end local v0    # "i":I
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_6
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->registeredVoiceTrigger:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 553
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->registeredVoiceTrigger:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_8

    move v2, v3

    :goto_7
    add-int v1, v4, v2

    .line 552
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 553
    :cond_8
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->registeredVoiceTrigger:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_7

    .line 558
    .end local v0    # "i":I
    :cond_9
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_8
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->unregisteredVoiceTrigger:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 559
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->unregisteredVoiceTrigger:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_a

    move v2, v3

    :goto_9
    add-int v1, v4, v2

    .line 558
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 559
    :cond_a
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->unregisteredVoiceTrigger:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_9

    .line 562
    .end local v0    # "i":I
    :cond_b
    const/4 v2, 0x2

    goto :goto_2

    .line 563
    :cond_c
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    goto :goto_3
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;
    .locals 7
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 657
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 658
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 662
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->unknownFieldData:Ljava/util/List;

    if-nez v5, :cond_1

    .line 663
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->unknownFieldData:Ljava/util/List;

    .line 666
    :cond_1
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->unknownFieldData:Ljava/util/List;

    invoke-static {v5, p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 668
    :sswitch_0
    return-object p0

    .line 673
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->versionNumber_:I

    .line 674
    iget v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->bitField0_:I

    goto :goto_0

    .line 678
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->packageName_:Ljava/lang/String;

    .line 679
    iget v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->bitField0_:I

    goto :goto_0

    .line 683
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->downloadUrl_:Ljava/lang/String;

    .line 684
    iget v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->bitField0_:I

    goto :goto_0

    .line 688
    :sswitch_4
    const/16 v5, 0x22

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 689
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->permission:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;

    if-nez v5, :cond_3

    move v1, v4

    .line 690
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;

    .line 691
    .local v2, "newArray":[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->permission:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;

    if-eqz v5, :cond_2

    .line 692
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->permission:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 694
    :cond_2
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->permission:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;

    .line 695
    :goto_2
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->permission:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_4

    .line 696
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->permission:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;

    new-instance v6, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;-><init>()V

    aput-object v6, v5, v1

    .line 697
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->permission:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 698
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 695
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 689
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;
    :cond_3
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->permission:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;

    array-length v1, v5

    goto :goto_1

    .line 701
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;
    :cond_4
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->permission:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;

    new-instance v6, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;-><init>()V

    aput-object v6, v5, v1

    .line 702
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->permission:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 706
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;
    :sswitch_5
    const/16 v5, 0x2a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 707
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->registeredVoiceTrigger:[Ljava/lang/String;

    array-length v1, v5

    .line 708
    .restart local v1    # "i":I
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    .line 709
    .local v2, "newArray":[Ljava/lang/String;
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->registeredVoiceTrigger:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 710
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->registeredVoiceTrigger:[Ljava/lang/String;

    .line 711
    :goto_3
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->registeredVoiceTrigger:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_5

    .line 712
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->registeredVoiceTrigger:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 713
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 711
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 716
    :cond_5
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->registeredVoiceTrigger:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    goto/16 :goto_0

    .line 720
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :sswitch_6
    const/16 v5, 0x32

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 721
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->unregisteredVoiceTrigger:[Ljava/lang/String;

    array-length v1, v5

    .line 722
    .restart local v1    # "i":I
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    .line 723
    .restart local v2    # "newArray":[Ljava/lang/String;
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->unregisteredVoiceTrigger:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 724
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->unregisteredVoiceTrigger:[Ljava/lang/String;

    .line 725
    :goto_4
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->unregisteredVoiceTrigger:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_6

    .line 726
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->unregisteredVoiceTrigger:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 727
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 725
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 730
    :cond_6
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->unregisteredVoiceTrigger:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    goto/16 :goto_0

    .line 734
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->isUninstalledByUser_:Z

    .line 735
    iget v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->bitField0_:I

    goto/16 :goto_0

    .line 658
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
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
    .line 425
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    move-result-object v0

    return-object v0
.end method

.method public setDownloadUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 480
    if-nez p1, :cond_0

    .line 481
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 483
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->downloadUrl_:Ljava/lang/String;

    .line 484
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->bitField0_:I

    .line 485
    return-object p0
.end method

.method public setIsUninstalledByUser(Z)Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 511
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->isUninstalledByUser_:Z

    .line 512
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->bitField0_:I

    .line 513
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 458
    if-nez p1, :cond_0

    .line 459
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 461
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->packageName_:Ljava/lang/String;

    .line 462
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->bitField0_:I

    .line 463
    return-object p0
.end method

.method public setVersionNumber(I)Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 439
    iput p1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->versionNumber_:I

    .line 440
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->bitField0_:I

    .line 441
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 569
    iget v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 570
    const/4 v2, 0x1

    iget v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->versionNumber_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 572
    :cond_0
    iget v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 573
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->packageName_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 575
    :cond_1
    iget v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 576
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->downloadUrl_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 578
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->permission:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;

    if-eqz v2, :cond_4

    .line 579
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->permission:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_4

    aget-object v0, v3, v2

    .line 580
    .local v0, "element":Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;
    if-eqz v0, :cond_3

    .line 581
    const/4 v5, 0x4

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 579
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 585
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->registeredVoiceTrigger:[Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 586
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->registeredVoiceTrigger:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_5

    aget-object v0, v3, v2

    .line 587
    .local v0, "element":Ljava/lang/String;
    const/4 v5, 0x5

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 586
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 590
    .end local v0    # "element":Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->unregisteredVoiceTrigger:[Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 591
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->unregisteredVoiceTrigger:[Ljava/lang/String;

    array-length v3, v2

    :goto_2
    if-ge v1, v3, :cond_6

    aget-object v0, v2, v1

    .line 592
    .restart local v0    # "element":Ljava/lang/String;
    const/4 v4, 0x6

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 591
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 595
    .end local v0    # "element":Ljava/lang/String;
    :cond_6
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_7

    .line 596
    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->isUninstalledByUser_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 598
    :cond_7
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 600
    return-void
.end method
