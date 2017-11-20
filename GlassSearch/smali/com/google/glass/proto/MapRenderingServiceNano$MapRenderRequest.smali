.class public final Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "MapRenderingServiceNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/proto/MapRenderingServiceNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MapRenderRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest$Type;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;


# instance fields
.field private bitField0_:I

.field private center_:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

.field private height_:I

.field private id_:Ljava/lang/String;

.field private latSpan_:D

.field private lngSpan_:D

.field public marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

.field public polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

.field private type_:I

.field private uri_:Ljava/lang/String;

.field private width_:I

.field private zoom_:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 482
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    sput-object v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->EMPTY_ARRAY:[Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 483
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 493
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id_:Ljava/lang/String;

    .line 515
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type_:I

    .line 534
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri_:Ljava/lang/String;

    .line 556
    iput v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width_:I

    .line 575
    iput v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height_:I

    .line 613
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom_:F

    .line 632
    iput-wide v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan_:D

    .line 651
    iput-wide v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan_:D

    .line 670
    sget-object v0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->EMPTY_ARRAY:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    .line 673
    sget-object v0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->EMPTY_ARRAY:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    .line 483
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 949
    new-instance v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    invoke-direct {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 943
    new-instance v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    invoke-direct {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    return-object v0
.end method


# virtual methods
.method public clearCenter()Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    .locals 1

    .prologue
    .line 609
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center_:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    .line 610
    return-object p0
.end method

.method public clearHeight()Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    .locals 1

    .prologue
    .line 588
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height_:I

    .line 589
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    .line 590
    return-object p0
.end method

.method public clearId()Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    .locals 1

    .prologue
    .line 509
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id_:Ljava/lang/String;

    .line 510
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    .line 511
    return-object p0
.end method

.method public clearLatSpan()Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    .locals 2

    .prologue
    .line 645
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan_:D

    .line 646
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    .line 647
    return-object p0
.end method

.method public clearLngSpan()Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    .locals 2

    .prologue
    .line 664
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan_:D

    .line 665
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    .line 666
    return-object p0
.end method

.method public clearType()Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    .locals 1

    .prologue
    .line 528
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type_:I

    .line 529
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    .line 530
    return-object p0
.end method

.method public clearUri()Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    .locals 1

    .prologue
    .line 550
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri_:Ljava/lang/String;

    .line 551
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    .line 552
    return-object p0
.end method

.method public clearWidth()Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    .locals 1

    .prologue
    .line 569
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width_:I

    .line 570
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    .line 571
    return-object p0
.end method

.method public clearZoom()Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    .locals 1

    .prologue
    .line 626
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom_:F

    .line 627
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    .line 628
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 677
    if-ne p1, p0, :cond_1

    .line 691
    :cond_0
    :goto_0
    return v1

    .line 678
    :cond_1
    instance-of v3, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 679
    check-cast v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    .line 680
    .local v0, "other":Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type_:I

    iget v4, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri_:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 682
    :goto_2
    iget v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width_:I

    iget v4, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height_:I

    iget v4, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center_:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center_:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-nez v3, :cond_3

    .line 685
    :goto_3
    iget v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom_:F

    iget v4, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom_:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan_:D

    iget-wide v5, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan_:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan_:D

    iget-wide v5, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan_:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    iget-object v4, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    .line 689
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    iget-object v4, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    .line 690
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 691
    goto :goto_0

    .line 680
    :cond_4
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri_:Ljava/lang/String;

    .line 682
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center_:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    iget-object v4, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center_:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    .line 685
    invoke-virtual {v3, v4}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    .line 690
    :cond_7
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->unknownFieldData:Ljava/util/List;

    .line 691
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_0
.end method

.method public getCenter()Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center_:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 577
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height_:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getLatSpan()D
    .locals 2

    .prologue
    .line 634
    iget-wide v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan_:D

    return-wide v0
.end method

.method public getLngSpan()D
    .locals 2

    .prologue
    .line 653
    iget-wide v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan_:D

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 770
    const/4 v1, 0x0

    .line 771
    .local v1, "size":I
    iget v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 772
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id_:Ljava/lang/String;

    .line 773
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v1, v3

    .line 775
    :cond_0
    iget v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 776
    const/4 v3, 0x2

    iget v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type_:I

    .line 777
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 779
    :cond_1
    iget v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_2

    .line 780
    const/4 v3, 0x3

    iget v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width_:I

    .line 781
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 783
    :cond_2
    iget v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_3

    .line 784
    const/4 v3, 0x4

    iget v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height_:I

    .line 785
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 787
    :cond_3
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center_:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-eqz v3, :cond_4

    .line 788
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center_:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    .line 789
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v1, v3

    .line 791
    :cond_4
    iget v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_5

    .line 792
    const/4 v3, 0x6

    iget v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom_:F

    .line 793
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v3

    add-int/2addr v1, v3

    .line 795
    :cond_5
    iget v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_6

    .line 796
    const/16 v3, 0x8

    iget-wide v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan_:D

    .line 797
    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v3

    add-int/2addr v1, v3

    .line 799
    :cond_6
    iget v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_7

    .line 800
    const/16 v3, 0x9

    iget-wide v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan_:D

    .line 801
    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v3

    add-int/2addr v1, v3

    .line 803
    :cond_7
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    if-eqz v3, :cond_9

    .line 804
    iget-object v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_9

    aget-object v0, v4, v3

    .line 805
    .local v0, "element":Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
    if-eqz v0, :cond_8

    .line 806
    const/16 v6, 0xa

    .line 807
    invoke-static {v6, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v1, v6

    .line 804
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 811
    .end local v0    # "element":Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
    :cond_9
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    if-eqz v3, :cond_b

    .line 812
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_b

    aget-object v0, v3, v2

    .line 813
    .local v0, "element":Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
    if-eqz v0, :cond_a

    .line 814
    const/16 v5, 0xb

    .line 815
    invoke-static {v5, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v1, v5

    .line 812
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 819
    .end local v0    # "element":Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
    :cond_b
    iget v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_c

    .line 820
    const/16 v2, 0xc

    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri_:Ljava/lang/String;

    .line 821
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    .line 823
    :cond_c
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v2

    add-int/2addr v1, v2

    .line 824
    iput v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->cachedSize:I

    .line 825
    return v1
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 517
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type_:I

    return v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri_:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 558
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width_:I

    return v0
.end method

.method public getZoom()F
    .locals 1

    .prologue
    .line 615
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom_:F

    return v0
.end method

.method public hasCenter()Z
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center_:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHeight()Z
    .locals 1

    .prologue
    .line 585
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 506
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLatSpan()Z
    .locals 1

    .prologue
    .line 642
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLngSpan()Z
    .locals 1

    .prologue
    .line 661
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 525
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUri()Z
    .locals 1

    .prologue
    .line 547
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWidth()Z
    .locals 1

    .prologue
    .line 566
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasZoom()Z
    .locals 1

    .prologue
    .line 623
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

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
    const/16 v8, 0x20

    const/4 v3, 0x0

    .line 695
    const/16 v1, 0x11

    .line 696
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id_:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_0
    add-int/lit16 v1, v2, 0x20f

    .line 697
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type_:I

    add-int v1, v2, v4

    .line 698
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri_:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 699
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width_:I

    add-int v1, v2, v4

    .line 700
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height_:I

    add-int v1, v2, v4

    .line 701
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center_:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-nez v2, :cond_4

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 702
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom_:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    add-int v1, v2, v4

    .line 703
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan_:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan_:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 704
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan_:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan_:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 705
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    if-nez v2, :cond_5

    mul-int/lit8 v1, v1, 0x1f

    .line 711
    :cond_0
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    if-nez v2, :cond_7

    mul-int/lit8 v1, v1, 0x1f

    .line 717
    :cond_1
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->unknownFieldData:Ljava/util/List;

    if-nez v4, :cond_9

    :goto_3
    add-int v1, v2, v3

    .line 718
    return v1

    .line 696
    :cond_2
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 698
    :cond_3
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 701
    :cond_4
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center_:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-virtual {v2}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->hashCode()I

    move-result v2

    goto :goto_2

    .line 707
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 708
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    aget-object v2, v2, v0

    if-nez v2, :cond_6

    move v2, v3

    :goto_5
    add-int v1, v4, v2

    .line 707
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 708
    :cond_6
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->hashCode()I

    move-result v2

    goto :goto_5

    .line 713
    .end local v0    # "i":I
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_6
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 714
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    aget-object v2, v2, v0

    if-nez v2, :cond_8

    move v2, v3

    :goto_7
    add-int v1, v4, v2

    .line 713
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 714
    :cond_8
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->hashCode()I

    move-result v2

    goto :goto_7

    .line 717
    .end local v0    # "i":I
    :cond_9
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    goto :goto_3
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    .locals 9
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 833
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 834
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 838
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->unknownFieldData:Ljava/util/List;

    if-nez v6, :cond_1

    .line 839
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->unknownFieldData:Ljava/util/List;

    .line 842
    :cond_1
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v6, p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 844
    :sswitch_0
    return-object p0

    .line 849
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id_:Ljava/lang/String;

    .line 850
    iget v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    goto :goto_0

    .line 854
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 855
    .local v4, "temp":I
    if-eq v4, v8, :cond_2

    const/4 v6, 0x2

    if-ne v4, v6, :cond_3

    .line 857
    :cond_2
    iput v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type_:I

    .line 858
    iget v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    goto :goto_0

    .line 860
    :cond_3
    iput v8, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type_:I

    goto :goto_0

    .line 865
    .end local v4    # "temp":I
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width_:I

    .line 866
    iget v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    goto :goto_0

    .line 870
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height_:I

    .line 871
    iget v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    goto :goto_0

    .line 875
    :sswitch_5
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center_:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-nez v6, :cond_4

    .line 876
    new-instance v6, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-direct {v6}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;-><init>()V

    iput-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center_:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    .line 878
    :cond_4
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center_:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 882
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v6

    iput v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom_:F

    .line 883
    iget v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    goto :goto_0

    .line 887
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan_:D

    .line 888
    iget v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    or-int/lit8 v6, v6, 0x40

    iput v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    goto/16 :goto_0

    .line 892
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan_:D

    .line 893
    iget v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    or-int/lit16 v6, v6, 0x80

    iput v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    goto/16 :goto_0

    .line 897
    :sswitch_9
    const/16 v6, 0x52

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 898
    .local v0, "arrayLength":I
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    if-nez v6, :cond_6

    move v1, v5

    .line 899
    .local v1, "i":I
    :goto_1
    add-int v6, v1, v0

    new-array v2, v6, [Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    .line 900
    .local v2, "newArray":[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    if-eqz v6, :cond_5

    .line 901
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 903
    :cond_5
    iput-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    .line 904
    :goto_2
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_7

    .line 905
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    new-instance v7, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    invoke-direct {v7}, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;-><init>()V

    aput-object v7, v6, v1

    .line 906
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 907
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 904
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 898
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
    :cond_6
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    array-length v1, v6

    goto :goto_1

    .line 910
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
    :cond_7
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    new-instance v7, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    invoke-direct {v7}, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;-><init>()V

    aput-object v7, v6, v1

    .line 911
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 915
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
    :sswitch_a
    const/16 v6, 0x5a

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 916
    .restart local v0    # "arrayLength":I
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    if-nez v6, :cond_9

    move v1, v5

    .line 917
    .restart local v1    # "i":I
    :goto_3
    add-int v6, v1, v0

    new-array v2, v6, [Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    .line 918
    .local v2, "newArray":[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    if-eqz v6, :cond_8

    .line 919
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 921
    :cond_8
    iput-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    .line 922
    :goto_4
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_a

    .line 923
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    new-instance v7, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    invoke-direct {v7}, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;-><init>()V

    aput-object v7, v6, v1

    .line 924
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 925
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 922
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 916
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
    :cond_9
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    array-length v1, v6

    goto :goto_3

    .line 928
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
    :cond_a
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    new-instance v7, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    invoke-direct {v7}, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;-><init>()V

    aput-object v7, v6, v1

    .line 929
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 933
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri_:Ljava/lang/String;

    .line 934
    iget v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    goto/16 :goto_0

    .line 834
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x35 -> :sswitch_6
        0x41 -> :sswitch_7
        0x49 -> :sswitch_8
        0x52 -> :sswitch_9
        0x5a -> :sswitch_a
        0x62 -> :sswitch_b
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
    .line 479
    invoke-virtual {p0, p1}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    move-result-object v0

    return-object v0
.end method

.method public setCenter(Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    .locals 1
    .param p1, "value"    # Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    .prologue
    .line 599
    if-nez p1, :cond_0

    .line 600
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 602
    :cond_0
    iput-object p1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center_:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    .line 603
    return-object p0
.end method

.method public setHeight(I)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 580
    iput p1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height_:I

    .line 581
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    .line 582
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 498
    if-nez p1, :cond_0

    .line 499
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 501
    :cond_0
    iput-object p1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id_:Ljava/lang/String;

    .line 502
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    .line 503
    return-object p0
.end method

.method public setLatSpan(D)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 637
    iput-wide p1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan_:D

    .line 638
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    .line 639
    return-object p0
.end method

.method public setLngSpan(D)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 656
    iput-wide p1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan_:D

    .line 657
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    .line 658
    return-object p0
.end method

.method public setType(I)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 520
    iput p1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type_:I

    .line 521
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    .line 522
    return-object p0
.end method

.method public setUri(Ljava/lang/String;)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 539
    if-nez p1, :cond_0

    .line 540
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 542
    :cond_0
    iput-object p1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri_:Ljava/lang/String;

    .line 543
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    .line 544
    return-object p0
.end method

.method public setWidth(I)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 561
    iput p1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width_:I

    .line 562
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    .line 563
    return-object p0
.end method

.method public setZoom(F)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 618
    iput p1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom_:F

    .line 619
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    .line 620
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

    .line 723
    iget v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 724
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 726
    :cond_0
    iget v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 727
    const/4 v2, 0x2

    iget v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 729
    :cond_1
    iget v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_2

    .line 730
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 732
    :cond_2
    iget v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_3

    .line 733
    const/4 v2, 0x4

    iget v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 735
    :cond_3
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center_:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-eqz v2, :cond_4

    .line 736
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center_:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 738
    :cond_4
    iget v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_5

    .line 739
    const/4 v2, 0x6

    iget v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom_:F

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 741
    :cond_5
    iget v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_6

    .line 742
    const/16 v2, 0x8

    iget-wide v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan_:D

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 744
    :cond_6
    iget v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_7

    .line 745
    const/16 v2, 0x9

    iget-wide v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan_:D

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 747
    :cond_7
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    if-eqz v2, :cond_9

    .line 748
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_9

    aget-object v0, v3, v2

    .line 749
    .local v0, "element":Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
    if-eqz v0, :cond_8

    .line 750
    const/16 v5, 0xa

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 748
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 754
    .end local v0    # "element":Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
    :cond_9
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    if-eqz v2, :cond_b

    .line 755
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_b

    aget-object v0, v2, v1

    .line 756
    .local v0, "element":Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
    if-eqz v0, :cond_a

    .line 757
    const/16 v4, 0xb

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 755
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 761
    .end local v0    # "element":Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
    :cond_b
    iget v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_c

    .line 762
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 764
    :cond_c
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 766
    return-void
.end method
