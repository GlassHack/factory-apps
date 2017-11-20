.class public final Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


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
.method public final clearCenter()Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    .locals 1

    .prologue
    .line 609
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center_:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    .line 610
    return-object p0
.end method

.method public final clearHeight()Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
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

.method public final clearId()Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
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

.method public final clearLatSpan()Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
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

.method public final clearLngSpan()Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
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

.method public final clearType()Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
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

.method public final clearUri()Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
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

.method public final clearWidth()Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
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

.method public final clearZoom()Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
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
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 677
    if-ne p1, p0, :cond_1

    .line 691
    :cond_0
    :goto_0
    return v0

    .line 678
    :cond_1
    instance-of v2, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 679
    :cond_2
    check-cast p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    .line 680
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id_:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id_:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_1
    iget v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type_:I

    iget v3, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type_:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri_:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 682
    :goto_2
    iget v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width_:I

    iget v3, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width_:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height_:I

    iget v3, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height_:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center_:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center_:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-nez v2, :cond_3

    .line 685
    :goto_3
    iget v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom_:F

    iget v3, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom_:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan_:D

    iget-wide v4, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan_:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan_:D

    iget-wide v4, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan_:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    iget-object v3, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    .line 689
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    iget-object v3, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    .line 690
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 691
    goto :goto_0

    .line 680
    :cond_4
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri_:Ljava/lang/String;

    .line 682
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center_:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    iget-object v3, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center_:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    .line 685
    invoke-virtual {v2, v3}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    .line 690
    :cond_7
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->unknownFieldData:Ljava/util/List;

    .line 691
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_0
.end method

.method public final getCenter()Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center_:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    return-object v0
.end method

.method public final getHeight()I
    .locals 1

    .prologue
    .line 577
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height_:I

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public final getLatSpan()D
    .locals 2

    .prologue
    .line 634
    iget-wide v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan_:D

    return-wide v0
.end method

.method public final getLngSpan()D
    .locals 2

    .prologue
    .line 653
    iget-wide v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan_:D

    return-wide v0
.end method

.method public final getSerializedSize()I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 770
    .line 771
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_c

    .line 772
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id_:Ljava/lang/String;

    .line 773
    invoke-static {v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    .line 775
    :goto_0
    iget v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 776
    const/4 v2, 0x2

    iget v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type_:I

    .line 777
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 779
    :cond_0
    iget v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_1

    .line 780
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width_:I

    .line 781
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 783
    :cond_1
    iget v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_2

    .line 784
    const/4 v2, 0x4

    iget v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height_:I

    .line 785
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 787
    :cond_2
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center_:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-eqz v2, :cond_3

    .line 788
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center_:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    .line 789
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 791
    :cond_3
    iget v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_4

    .line 792
    const/4 v2, 0x6

    iget v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom_:F

    .line 793
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v0, v2

    .line 795
    :cond_4
    iget v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_5

    .line 796
    const/16 v2, 0x8

    iget-wide v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan_:D

    .line 797
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 799
    :cond_5
    iget v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_6

    .line 800
    const/16 v2, 0x9

    iget-wide v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan_:D

    .line 801
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 803
    :cond_6
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    if-eqz v2, :cond_8

    .line 804
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_8

    aget-object v5, v3, v2

    .line 805
    if-eqz v5, :cond_7

    .line 806
    const/16 v6, 0xa

    .line 807
    invoke-static {v6, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v0, v5

    .line 804
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 811
    :cond_8
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    if-eqz v2, :cond_a

    .line 812
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    array-length v3, v2

    :goto_2
    if-ge v1, v3, :cond_a

    aget-object v4, v2, v1

    .line 813
    if-eqz v4, :cond_9

    .line 814
    const/16 v5, 0xb

    .line 815
    invoke-static {v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v0, v4

    .line 812
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 819
    :cond_a
    iget v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_b

    .line 820
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri_:Ljava/lang/String;

    .line 821
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 823
    :cond_b
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 824
    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->cachedSize:I

    .line 825
    return v0

    :cond_c
    move v0, v1

    goto/16 :goto_0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 517
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type_:I

    return v0
.end method

.method public final getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri_:Ljava/lang/String;

    return-object v0
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 558
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width_:I

    return v0
.end method

.method public final getZoom()F
    .locals 1

    .prologue
    .line 615
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom_:F

    return v0
.end method

.method public final hasCenter()Z
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

.method public final hasHeight()Z
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

.method public final hasId()Z
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

.method public final hasLatSpan()Z
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

.method public final hasLngSpan()Z
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

.method public final hasType()Z
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

.method public final hasUri()Z
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

.method public final hasWidth()Z
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

.method public final hasZoom()Z
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

.method public final hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    const/4 v1, 0x0

    .line 695
    .line 696
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id_:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 697
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type_:I

    add-int/2addr v0, v2

    .line 698
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri_:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 699
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width_:I

    add-int/2addr v0, v2

    .line 700
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height_:I

    add-int/2addr v0, v2

    .line 701
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center_:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 702
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom_:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 703
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan_:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan_:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 704
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan_:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan_:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 705
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    if-nez v2, :cond_5

    mul-int/lit8 v2, v0, 0x1f

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    if-nez v0, :cond_7

    mul-int/lit8 v2, v2, 0x1f

    .line 717
    :cond_1
    mul-int/lit8 v0, v2, 0x1f

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_9

    :goto_3
    add-int/2addr v0, v1

    .line 718
    return v0

    .line 696
    :cond_2
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 698
    :cond_3
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 701
    :cond_4
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center_:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-virtual {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_5
    move v2, v0

    move v0, v1

    .line 707
    :goto_4
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 708
    mul-int/lit8 v3, v2, 0x1f

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    aget-object v2, v2, v0

    if-nez v2, :cond_6

    move v2, v1

    :goto_5
    add-int/2addr v2, v3

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

    :cond_7
    move v0, v1

    .line 713
    :goto_6
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 714
    mul-int/lit8 v3, v2, 0x1f

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    aget-object v2, v2, v0

    if-nez v2, :cond_8

    move v2, v1

    :goto_7
    add-int/2addr v2, v3

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
    :cond_9
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_3
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 833
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 834
    sparse-switch v0, :sswitch_data_0

    .line 838
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    .line 839
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->unknownFieldData:Ljava/util/List;

    .line 842
    :cond_1
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v2, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 844
    :sswitch_0
    return-object p0

    .line 849
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id_:Ljava/lang/String;

    .line 850
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    goto :goto_0

    .line 854
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 855
    if-eq v0, v4, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 857
    :cond_2
    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type_:I

    .line 858
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    goto :goto_0

    .line 860
    :cond_3
    iput v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type_:I

    goto :goto_0

    .line 865
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width_:I

    .line 866
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    goto :goto_0

    .line 870
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height_:I

    .line 871
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    goto :goto_0

    .line 875
    :sswitch_5
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center_:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-nez v0, :cond_4

    .line 876
    new-instance v0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-direct {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;-><init>()V

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center_:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    .line 878
    :cond_4
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center_:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 882
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom_:F

    .line 883
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    goto :goto_0

    .line 887
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan_:D

    .line 888
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    goto/16 :goto_0

    .line 892
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan_:D

    .line 893
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    goto/16 :goto_0

    .line 897
    :sswitch_9
    const/16 v0, 0x52

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 898
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    if-nez v0, :cond_6

    move v0, v1

    .line 899
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    .line 900
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    if-eqz v3, :cond_5

    .line 901
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 903
    :cond_5
    iput-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    .line 904
    :goto_2
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_7

    .line 905
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    new-instance v3, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    invoke-direct {v3}, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;-><init>()V

    aput-object v3, v2, v0

    .line 906
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 907
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 904
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 898
    :cond_6
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    array-length v0, v0

    goto :goto_1

    .line 910
    :cond_7
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    new-instance v3, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    invoke-direct {v3}, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;-><init>()V

    aput-object v3, v2, v0

    .line 911
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 915
    :sswitch_a
    const/16 v0, 0x5a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 916
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    if-nez v0, :cond_9

    move v0, v1

    .line 917
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    .line 918
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    if-eqz v3, :cond_8

    .line 919
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 921
    :cond_8
    iput-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    .line 922
    :goto_4
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_a

    .line 923
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    new-instance v3, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    invoke-direct {v3}, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;-><init>()V

    aput-object v3, v2, v0

    .line 924
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 925
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 922
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 916
    :cond_9
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    array-length v0, v0

    goto :goto_3

    .line 928
    :cond_a
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    new-instance v3, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    invoke-direct {v3}, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;-><init>()V

    aput-object v3, v2, v0

    .line 929
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 933
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri_:Ljava/lang/String;

    .line 934
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

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

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 479
    invoke-virtual {p0, p1}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    move-result-object v0

    return-object v0
.end method

.method public final setCenter(Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    .locals 1

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

.method public final setHeight(I)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    .locals 1

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

.method public final setId(Ljava/lang/String;)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    .locals 1

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

.method public final setLatSpan(D)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    .locals 1

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

.method public final setLngSpan(D)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    .locals 1

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

.method public final setType(I)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    .locals 1

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

.method public final setUri(Ljava/lang/String;)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    .locals 1

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

.method public final setWidth(I)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    .locals 1

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

.method public final setZoom(F)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    .locals 1

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

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 723
    iget v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 724
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 726
    :cond_0
    iget v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 727
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 729
    :cond_1
    iget v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_2

    .line 730
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 732
    :cond_2
    iget v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_3

    .line 733
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 735
    :cond_3
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center_:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-eqz v1, :cond_4

    .line 736
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center_:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 738
    :cond_4
    iget v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 739
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom_:F

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 741
    :cond_5
    iget v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 742
    const/16 v1, 0x8

    iget-wide v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan_:D

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 744
    :cond_6
    iget v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 745
    const/16 v1, 0x9

    iget-wide v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan_:D

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 747
    :cond_7
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    if-eqz v1, :cond_9

    .line 748
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_9

    aget-object v4, v2, v1

    .line 749
    if-eqz v4, :cond_8

    .line 750
    const/16 v5, 0xa

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 748
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 754
    :cond_9
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    if-eqz v1, :cond_b

    .line 755
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_b

    aget-object v3, v1, v0

    .line 756
    if-eqz v3, :cond_a

    .line 757
    const/16 v4, 0xb

    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 755
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 761
    :cond_b
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_c

    .line 762
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 764
    :cond_c
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 766
    return-void
.end method
