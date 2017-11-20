.class public final Llocation/unified/LocationDescriptorProtoNano$FieldOfView;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "LocationDescriptorProtoNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llocation/unified/LocationDescriptorProtoNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldOfView"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Llocation/unified/LocationDescriptorProtoNano$FieldOfView;


# instance fields
.field private bitField0_:I

.field private fieldOfViewXDegrees_:F

.field private fieldOfViewYDegrees_:F

.field private screenWidthPixels_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 552
    const/4 v0, 0x0

    new-array v0, v0, [Llocation/unified/LocationDescriptorProtoNano$FieldOfView;

    sput-object v0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->EMPTY_ARRAY:[Llocation/unified/LocationDescriptorProtoNano$FieldOfView;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 553
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 558
    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->fieldOfViewXDegrees_:F

    .line 577
    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->fieldOfViewYDegrees_:F

    .line 596
    const/4 v0, 0x0

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->screenWidthPixels_:I

    .line 553
    return-void
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProtoNano$FieldOfView;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 706
    new-instance v0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;-><init>()V

    invoke-virtual {v0, p0}, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProtoNano$FieldOfView;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Llocation/unified/LocationDescriptorProtoNano$FieldOfView;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 700
    new-instance v0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;

    return-object v0
.end method


# virtual methods
.method public clearFieldOfViewXDegrees()Llocation/unified/LocationDescriptorProtoNano$FieldOfView;
    .locals 1

    .prologue
    .line 571
    const/4 v0, 0x0

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->fieldOfViewXDegrees_:F

    .line 572
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->bitField0_:I

    .line 573
    return-object p0
.end method

.method public clearFieldOfViewYDegrees()Llocation/unified/LocationDescriptorProtoNano$FieldOfView;
    .locals 1

    .prologue
    .line 590
    const/4 v0, 0x0

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->fieldOfViewYDegrees_:F

    .line 591
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->bitField0_:I

    .line 592
    return-object p0
.end method

.method public clearScreenWidthPixels()Llocation/unified/LocationDescriptorProtoNano$FieldOfView;
    .locals 1

    .prologue
    .line 609
    const/4 v0, 0x0

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->screenWidthPixels_:I

    .line 610
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->bitField0_:I

    .line 611
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 616
    if-ne p1, p0, :cond_1

    .line 619
    :cond_0
    :goto_0
    return v1

    .line 617
    :cond_1
    instance-of v3, p1, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 618
    check-cast v0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;

    .line 619
    .local v0, "other":Llocation/unified/LocationDescriptorProtoNano$FieldOfView;
    iget v3, p0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->fieldOfViewXDegrees_:F

    iget v4, v0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->fieldOfViewXDegrees_:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, p0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->fieldOfViewYDegrees_:F

    iget v4, v0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->fieldOfViewYDegrees_:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, p0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->screenWidthPixels_:I

    iget v4, v0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->screenWidthPixels_:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getFieldOfViewXDegrees()F
    .locals 1

    .prologue
    .line 560
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->fieldOfViewXDegrees_:F

    return v0
.end method

.method public getFieldOfViewYDegrees()F
    .locals 1

    .prologue
    .line 579
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->fieldOfViewYDegrees_:F

    return v0
.end method

.method public getScreenWidthPixels()I
    .locals 1

    .prologue
    .line 598
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->screenWidthPixels_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 647
    const/4 v0, 0x0

    .line 648
    .local v0, "size":I
    iget v1, p0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 649
    const/4 v1, 0x1

    iget v2, p0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->fieldOfViewXDegrees_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 652
    :cond_0
    iget v1, p0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 653
    const/4 v1, 0x2

    iget v2, p0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->fieldOfViewYDegrees_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 656
    :cond_1
    iget v1, p0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 657
    const/4 v1, 0x3

    iget v2, p0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->screenWidthPixels_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 660
    :cond_2
    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->cachedSize:I

    .line 661
    return v0
.end method

.method public hasFieldOfViewXDegrees()Z
    .locals 1

    .prologue
    .line 568
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFieldOfViewYDegrees()Z
    .locals 1

    .prologue
    .line 587
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasScreenWidthPixels()Z
    .locals 1

    .prologue
    .line 606
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

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
    .line 625
    const/16 v0, 0x11

    .line 626
    .local v0, "result":I
    iget v1, p0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->fieldOfViewXDegrees_:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 627
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->fieldOfViewYDegrees_:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 628
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->screenWidthPixels_:I

    add-int v0, v1, v2

    .line 629
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "x0"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 549
    invoke-virtual {p0, p1}, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProtoNano$FieldOfView;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProtoNano$FieldOfView;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 669
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 670
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 674
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 675
    :sswitch_0
    return-object p0

    .line 680
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->fieldOfViewXDegrees_:F

    .line 681
    iget v1, p0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->bitField0_:I

    goto :goto_0

    .line 685
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->fieldOfViewYDegrees_:F

    .line 686
    iget v1, p0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->bitField0_:I

    goto :goto_0

    .line 690
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->screenWidthPixels_:I

    .line 691
    iget v1, p0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->bitField0_:I

    goto :goto_0

    .line 670
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public setFieldOfViewXDegrees(F)Llocation/unified/LocationDescriptorProtoNano$FieldOfView;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 563
    iput p1, p0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->fieldOfViewXDegrees_:F

    .line 564
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->bitField0_:I

    .line 565
    return-object p0
.end method

.method public setFieldOfViewYDegrees(F)Llocation/unified/LocationDescriptorProtoNano$FieldOfView;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 582
    iput p1, p0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->fieldOfViewYDegrees_:F

    .line 583
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->bitField0_:I

    .line 584
    return-object p0
.end method

.method public setScreenWidthPixels(I)Llocation/unified/LocationDescriptorProtoNano$FieldOfView;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 601
    iput p1, p0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->screenWidthPixels_:I

    .line 602
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->bitField0_:I

    .line 603
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 634
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 635
    const/4 v0, 0x1

    iget v1, p0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->fieldOfViewXDegrees_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 637
    :cond_0
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 638
    const/4 v0, 0x2

    iget v1, p0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->fieldOfViewYDegrees_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 640
    :cond_1
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 641
    const/4 v0, 0x3

    iget v1, p0, Llocation/unified/LocationDescriptorProtoNano$FieldOfView;->screenWidthPixels_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 643
    :cond_2
    return-void
.end method
