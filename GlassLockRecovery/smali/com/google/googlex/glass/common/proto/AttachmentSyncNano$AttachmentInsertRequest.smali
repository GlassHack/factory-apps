.class public final Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "AttachmentSyncNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/AttachmentSyncNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AttachmentInsertRequest"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;


# instance fields
.field private bitField0_:I

.field private content_:[B

.field private creationTime_:J

.field private description_:Ljava/lang/String;

.field private deviceId_:Ljava/lang/String;

.field private mimeType_:Ljava/lang/String;

.field private name_:Ljava/lang/String;

.field private source_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 486
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;

    sput-object v0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 487
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 492
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->deviceId_:Ljava/lang/String;

    .line 514
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->mimeType_:Ljava/lang/String;

    .line 536
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->content_:[B

    .line 558
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->description_:Ljava/lang/String;

    .line 580
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->name_:Ljava/lang/String;

    .line 602
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->creationTime_:J

    .line 621
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->source_:Ljava/lang/String;

    .line 487
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 805
    new-instance v0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 799
    new-instance v0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;

    return-object v0
.end method


# virtual methods
.method public clearContent()Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;
    .locals 1

    .prologue
    .line 552
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->content_:[B

    .line 553
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    .line 554
    return-object p0
.end method

.method public clearCreationTime()Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;
    .locals 2

    .prologue
    .line 615
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->creationTime_:J

    .line 616
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    .line 617
    return-object p0
.end method

.method public clearDescription()Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;
    .locals 1

    .prologue
    .line 574
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->description_:Ljava/lang/String;

    .line 575
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    .line 576
    return-object p0
.end method

.method public clearDeviceId()Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;
    .locals 1

    .prologue
    .line 508
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->deviceId_:Ljava/lang/String;

    .line 509
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    .line 510
    return-object p0
.end method

.method public clearMimeType()Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;
    .locals 1

    .prologue
    .line 530
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->mimeType_:Ljava/lang/String;

    .line 531
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    .line 532
    return-object p0
.end method

.method public clearName()Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;
    .locals 1

    .prologue
    .line 596
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->name_:Ljava/lang/String;

    .line 597
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    .line 598
    return-object p0
.end method

.method public clearSource()Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;
    .locals 1

    .prologue
    .line 637
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->source_:Ljava/lang/String;

    .line 638
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    .line 639
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 644
    if-ne p1, p0, :cond_1

    .line 654
    :cond_0
    :goto_0
    return v1

    .line 645
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 646
    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;

    .line 647
    .local v0, "other":Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->deviceId_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->deviceId_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->mimeType_:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->mimeType_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 648
    :goto_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->content_:[B

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->content_:[B

    .line 649
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->description_:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->description_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 650
    :goto_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->name_:Ljava/lang/String;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->name_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 651
    :goto_4
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->creationTime_:J

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->creationTime_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->source_:Ljava/lang/String;

    if-nez v3, :cond_8

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->source_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 653
    :goto_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_9

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 654
    goto :goto_0

    .line 647
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->deviceId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->deviceId_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->mimeType_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->mimeType_:Ljava/lang/String;

    .line 648
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    .line 649
    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->description_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->description_:Ljava/lang/String;

    .line 650
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->name_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->name_:Ljava/lang/String;

    .line 651
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->source_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->source_:Ljava/lang/String;

    .line 653
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_5

    :cond_9
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->unknownFieldData:Ljava/util/List;

    .line 654
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_0
.end method

.method public getContent()[B
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->content_:[B

    return-object v0
.end method

.method public getCreationTime()J
    .locals 2

    .prologue
    .line 604
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->creationTime_:J

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->description_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->deviceId_:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->mimeType_:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 704
    const/4 v0, 0x0

    .line 705
    .local v0, "size":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 706
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->deviceId_:Ljava/lang/String;

    .line 707
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 709
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 710
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->mimeType_:Ljava/lang/String;

    .line 711
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 713
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 714
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->content_:[B

    .line 715
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 717
    :cond_2
    iget v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 718
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->description_:Ljava/lang/String;

    .line 719
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 721
    :cond_3
    iget v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 722
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->name_:Ljava/lang/String;

    .line 723
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 725
    :cond_4
    iget v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 726
    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->creationTime_:J

    .line 727
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 729
    :cond_5
    iget v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 730
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->source_:Ljava/lang/String;

    .line 731
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 733
    :cond_6
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 734
    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->cachedSize:I

    .line 735
    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->source_:Ljava/lang/String;

    return-object v0
.end method

.method public hasContent()Z
    .locals 1

    .prologue
    .line 549
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCreationTime()Z
    .locals 1

    .prologue
    .line 612
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDescription()Z
    .locals 1

    .prologue
    .line 571
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDeviceId()Z
    .locals 1

    .prologue
    .line 505
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

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
    .line 527
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 593
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSource()Z
    .locals 1

    .prologue
    .line 634
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 658
    const/16 v1, 0x11

    .line 659
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->deviceId_:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    add-int/lit16 v1, v2, 0x20f

    .line 660
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->mimeType_:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 661
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->content_:[B

    if-nez v2, :cond_3

    mul-int/lit8 v1, v1, 0x1f

    .line 667
    :cond_0
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->description_:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 668
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->name_:Ljava/lang/String;

    if-nez v2, :cond_5

    move v2, v3

    :goto_3
    add-int v1, v4, v2

    .line 669
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->creationTime_:J

    iget-wide v6, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->creationTime_:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 670
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->source_:Ljava/lang/String;

    if-nez v2, :cond_6

    move v2, v3

    :goto_4
    add-int v1, v4, v2

    .line 671
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->unknownFieldData:Ljava/util/List;

    if-nez v4, :cond_7

    :goto_5
    add-int v1, v2, v3

    .line 672
    return v1

    .line 659
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->deviceId_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 660
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->mimeType_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 663
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->content_:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 664
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->content_:[B

    aget-byte v4, v4, v0

    add-int v1, v2, v4

    .line 663
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 667
    .end local v0    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->description_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 668
    :cond_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->name_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 670
    :cond_6
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->source_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    .line 671
    :cond_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    goto :goto_5
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 743
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 744
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 748
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 749
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->unknownFieldData:Ljava/util/List;

    .line 752
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 754
    :sswitch_0
    return-object p0

    .line 759
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->deviceId_:Ljava/lang/String;

    .line 760
    iget v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    goto :goto_0

    .line 764
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->mimeType_:Ljava/lang/String;

    .line 765
    iget v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    goto :goto_0

    .line 769
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->content_:[B

    .line 770
    iget v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    goto :goto_0

    .line 774
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->description_:Ljava/lang/String;

    .line 775
    iget v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    goto :goto_0

    .line 779
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->name_:Ljava/lang/String;

    .line 780
    iget v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    goto :goto_0

    .line 784
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->creationTime_:J

    .line 785
    iget v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    goto :goto_0

    .line 789
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->source_:Ljava/lang/String;

    .line 790
    iget v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    goto :goto_0

    .line 744
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
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
    .line 483
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;

    move-result-object v0

    return-object v0
.end method

.method public setContent([B)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 541
    if-nez p1, :cond_0

    .line 542
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 544
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->content_:[B

    .line 545
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    .line 546
    return-object p0
.end method

.method public setCreationTime(J)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 607
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->creationTime_:J

    .line 608
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    .line 609
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 563
    if-nez p1, :cond_0

    .line 564
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 566
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->description_:Ljava/lang/String;

    .line 567
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    .line 568
    return-object p0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 497
    if-nez p1, :cond_0

    .line 498
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 500
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->deviceId_:Ljava/lang/String;

    .line 501
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    .line 502
    return-object p0
.end method

.method public setMimeType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 519
    if-nez p1, :cond_0

    .line 520
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 522
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->mimeType_:Ljava/lang/String;

    .line 523
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    .line 524
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 585
    if-nez p1, :cond_0

    .line 586
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 588
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->name_:Ljava/lang/String;

    .line 589
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    .line 590
    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 626
    if-nez p1, :cond_0

    .line 627
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 629
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->source_:Ljava/lang/String;

    .line 630
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    .line 631
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 677
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 678
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->deviceId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 680
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 681
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->mimeType_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 683
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 684
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->content_:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 686
    :cond_2
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 687
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->description_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 689
    :cond_3
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 690
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->name_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 692
    :cond_4
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 693
    const/4 v0, 0x6

    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->creationTime_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 695
    :cond_5
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 696
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->source_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 698
    :cond_6
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 700
    return-void
.end method
