.class public final Llocation/unified/LocationDescriptorProto$FieldOfView;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "LocationDescriptorProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llocation/unified/LocationDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldOfView"
.end annotation


# static fields
.field private static volatile _emptyArray:[Llocation/unified/LocationDescriptorProto$FieldOfView;


# instance fields
.field private bitField0_:I

.field private fieldOfViewXDegrees_:F

.field private fieldOfViewYDegrees_:F

.field private screenWidthPixels_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 662
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 663
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$FieldOfView;->clear()Llocation/unified/LocationDescriptorProto$FieldOfView;

    .line 664
    return-void
.end method

.method public static emptyArray()[Llocation/unified/LocationDescriptorProto$FieldOfView;
    .locals 2

    .prologue
    .line 592
    sget-object v0, Llocation/unified/LocationDescriptorProto$FieldOfView;->_emptyArray:[Llocation/unified/LocationDescriptorProto$FieldOfView;

    if-nez v0, :cond_1

    .line 593
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 595
    :try_start_0
    sget-object v0, Llocation/unified/LocationDescriptorProto$FieldOfView;->_emptyArray:[Llocation/unified/LocationDescriptorProto$FieldOfView;

    if-nez v0, :cond_0

    .line 596
    const/4 v0, 0x0

    new-array v0, v0, [Llocation/unified/LocationDescriptorProto$FieldOfView;

    sput-object v0, Llocation/unified/LocationDescriptorProto$FieldOfView;->_emptyArray:[Llocation/unified/LocationDescriptorProto$FieldOfView;

    .line 598
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 600
    :cond_1
    sget-object v0, Llocation/unified/LocationDescriptorProto$FieldOfView;->_emptyArray:[Llocation/unified/LocationDescriptorProto$FieldOfView;

    return-object v0

    .line 598
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProto$FieldOfView;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 750
    new-instance v0, Llocation/unified/LocationDescriptorProto$FieldOfView;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProto$FieldOfView;-><init>()V

    invoke-virtual {v0, p0}, Llocation/unified/LocationDescriptorProto$FieldOfView;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProto$FieldOfView;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Llocation/unified/LocationDescriptorProto$FieldOfView;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 744
    new-instance v0, Llocation/unified/LocationDescriptorProto$FieldOfView;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProto$FieldOfView;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Llocation/unified/LocationDescriptorProto$FieldOfView;

    return-object v0
.end method


# virtual methods
.method public clear()Llocation/unified/LocationDescriptorProto$FieldOfView;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 667
    iput v1, p0, Llocation/unified/LocationDescriptorProto$FieldOfView;->bitField0_:I

    .line 668
    iput v0, p0, Llocation/unified/LocationDescriptorProto$FieldOfView;->fieldOfViewXDegrees_:F

    .line 669
    iput v0, p0, Llocation/unified/LocationDescriptorProto$FieldOfView;->fieldOfViewYDegrees_:F

    .line 670
    iput v1, p0, Llocation/unified/LocationDescriptorProto$FieldOfView;->screenWidthPixels_:I

    .line 671
    const/4 v0, -0x1

    iput v0, p0, Llocation/unified/LocationDescriptorProto$FieldOfView;->cachedSize:I

    .line 672
    return-object p0
.end method

.method public clearFieldOfViewXDegrees()Llocation/unified/LocationDescriptorProto$FieldOfView;
    .locals 1

    .prologue
    .line 619
    const/4 v0, 0x0

    iput v0, p0, Llocation/unified/LocationDescriptorProto$FieldOfView;->fieldOfViewXDegrees_:F

    .line 620
    iget v0, p0, Llocation/unified/LocationDescriptorProto$FieldOfView;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Llocation/unified/LocationDescriptorProto$FieldOfView;->bitField0_:I

    .line 621
    return-object p0
.end method

.method public clearFieldOfViewYDegrees()Llocation/unified/LocationDescriptorProto$FieldOfView;
    .locals 1

    .prologue
    .line 638
    const/4 v0, 0x0

    iput v0, p0, Llocation/unified/LocationDescriptorProto$FieldOfView;->fieldOfViewYDegrees_:F

    .line 639
    iget v0, p0, Llocation/unified/LocationDescriptorProto$FieldOfView;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Llocation/unified/LocationDescriptorProto$FieldOfView;->bitField0_:I

    .line 640
    return-object p0
.end method

.method public clearScreenWidthPixels()Llocation/unified/LocationDescriptorProto$FieldOfView;
    .locals 1

    .prologue
    .line 657
    const/4 v0, 0x0

    iput v0, p0, Llocation/unified/LocationDescriptorProto$FieldOfView;->screenWidthPixels_:I

    .line 658
    iget v0, p0, Llocation/unified/LocationDescriptorProto$FieldOfView;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Llocation/unified/LocationDescriptorProto$FieldOfView;->bitField0_:I

    .line 659
    return-object p0
.end method

.method public getFieldOfViewXDegrees()F
    .locals 1

    .prologue
    .line 608
    iget v0, p0, Llocation/unified/LocationDescriptorProto$FieldOfView;->fieldOfViewXDegrees_:F

    return v0
.end method

.method public getFieldOfViewYDegrees()F
    .locals 1

    .prologue
    .line 627
    iget v0, p0, Llocation/unified/LocationDescriptorProto$FieldOfView;->fieldOfViewYDegrees_:F

    return v0
.end method

.method public getScreenWidthPixels()I
    .locals 1

    .prologue
    .line 646
    iget v0, p0, Llocation/unified/LocationDescriptorProto$FieldOfView;->screenWidthPixels_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 691
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 692
    .local v0, "size":I
    iget v1, p0, Llocation/unified/LocationDescriptorProto$FieldOfView;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 693
    const/4 v1, 0x1

    iget v2, p0, Llocation/unified/LocationDescriptorProto$FieldOfView;->fieldOfViewXDegrees_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 696
    :cond_0
    iget v1, p0, Llocation/unified/LocationDescriptorProto$FieldOfView;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 697
    const/4 v1, 0x2

    iget v2, p0, Llocation/unified/LocationDescriptorProto$FieldOfView;->fieldOfViewYDegrees_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 700
    :cond_1
    iget v1, p0, Llocation/unified/LocationDescriptorProto$FieldOfView;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 701
    const/4 v1, 0x3

    iget v2, p0, Llocation/unified/LocationDescriptorProto$FieldOfView;->screenWidthPixels_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 704
    :cond_2
    iput v0, p0, Llocation/unified/LocationDescriptorProto$FieldOfView;->cachedSize:I

    .line 705
    return v0
.end method

.method public hasFieldOfViewXDegrees()Z
    .locals 1

    .prologue
    .line 616
    iget v0, p0, Llocation/unified/LocationDescriptorProto$FieldOfView;->bitField0_:I

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
    .line 635
    iget v0, p0, Llocation/unified/LocationDescriptorProto$FieldOfView;->bitField0_:I

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
    .line 654
    iget v0, p0, Llocation/unified/LocationDescriptorProto$FieldOfView;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 586
    invoke-virtual {p0, p1}, Llocation/unified/LocationDescriptorProto$FieldOfView;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProto$FieldOfView;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProto$FieldOfView;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 713
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 714
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 718
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 719
    :sswitch_0
    return-object p0

    .line 724
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Llocation/unified/LocationDescriptorProto$FieldOfView;->fieldOfViewXDegrees_:F

    .line 725
    iget v1, p0, Llocation/unified/LocationDescriptorProto$FieldOfView;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Llocation/unified/LocationDescriptorProto$FieldOfView;->bitField0_:I

    goto :goto_0

    .line 729
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Llocation/unified/LocationDescriptorProto$FieldOfView;->fieldOfViewYDegrees_:F

    .line 730
    iget v1, p0, Llocation/unified/LocationDescriptorProto$FieldOfView;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Llocation/unified/LocationDescriptorProto$FieldOfView;->bitField0_:I

    goto :goto_0

    .line 734
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Llocation/unified/LocationDescriptorProto$FieldOfView;->screenWidthPixels_:I

    .line 735
    iget v1, p0, Llocation/unified/LocationDescriptorProto$FieldOfView;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Llocation/unified/LocationDescriptorProto$FieldOfView;->bitField0_:I

    goto :goto_0

    .line 714
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public setFieldOfViewXDegrees(F)Llocation/unified/LocationDescriptorProto$FieldOfView;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 611
    iput p1, p0, Llocation/unified/LocationDescriptorProto$FieldOfView;->fieldOfViewXDegrees_:F

    .line 612
    iget v0, p0, Llocation/unified/LocationDescriptorProto$FieldOfView;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Llocation/unified/LocationDescriptorProto$FieldOfView;->bitField0_:I

    .line 613
    return-object p0
.end method

.method public setFieldOfViewYDegrees(F)Llocation/unified/LocationDescriptorProto$FieldOfView;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 630
    iput p1, p0, Llocation/unified/LocationDescriptorProto$FieldOfView;->fieldOfViewYDegrees_:F

    .line 631
    iget v0, p0, Llocation/unified/LocationDescriptorProto$FieldOfView;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Llocation/unified/LocationDescriptorProto$FieldOfView;->bitField0_:I

    .line 632
    return-object p0
.end method

.method public setScreenWidthPixels(I)Llocation/unified/LocationDescriptorProto$FieldOfView;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 649
    iput p1, p0, Llocation/unified/LocationDescriptorProto$FieldOfView;->screenWidthPixels_:I

    .line 650
    iget v0, p0, Llocation/unified/LocationDescriptorProto$FieldOfView;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Llocation/unified/LocationDescriptorProto$FieldOfView;->bitField0_:I

    .line 651
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
    .line 678
    iget v0, p0, Llocation/unified/LocationDescriptorProto$FieldOfView;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 679
    const/4 v0, 0x1

    iget v1, p0, Llocation/unified/LocationDescriptorProto$FieldOfView;->fieldOfViewXDegrees_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 681
    :cond_0
    iget v0, p0, Llocation/unified/LocationDescriptorProto$FieldOfView;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 682
    const/4 v0, 0x2

    iget v1, p0, Llocation/unified/LocationDescriptorProto$FieldOfView;->fieldOfViewYDegrees_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 684
    :cond_1
    iget v0, p0, Llocation/unified/LocationDescriptorProto$FieldOfView;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 685
    const/4 v0, 0x3

    iget v1, p0, Llocation/unified/LocationDescriptorProto$FieldOfView;->screenWidthPixels_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 687
    :cond_2
    return-void
.end method
