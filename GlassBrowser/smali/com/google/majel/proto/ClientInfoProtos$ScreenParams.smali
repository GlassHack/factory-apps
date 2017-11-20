.class public final Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ClientInfoProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ClientInfoProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScreenParams"
.end annotation


# static fields
.field public static final DPI_BUCKET_HDPI:I = 0x3

.field public static final DPI_BUCKET_LDPI:I = 0x1

.field public static final DPI_BUCKET_MDPI:I = 0x2

.field public static final DPI_BUCKET_TVDPI:I = 0x5

.field public static final DPI_BUCKET_UNKNOWN:I = 0x0

.field public static final DPI_BUCKET_XHDPI:I = 0x4

.field public static final DPI_BUCKET_XXHDPI:I = 0x6

.field private static volatile _emptyArray:[Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;


# instance fields
.field private bitField0_:I

.field private densityDpi_:I

.field private dpiBucket_:I

.field private heightPixels_:I

.field private widthPixels_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 654
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 655
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->clear()Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    .line 656
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;
    .locals 2

    .prologue
    .line 565
    sget-object v0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->_emptyArray:[Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    if-nez v0, :cond_1

    .line 566
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 568
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->_emptyArray:[Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    if-nez v0, :cond_0

    .line 569
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    sput-object v0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->_emptyArray:[Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    .line 571
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->_emptyArray:[Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    return-object v0

    .line 571
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 755
    new-instance v0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    invoke-direct {v0}, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 749
    new-instance v0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    invoke-direct {v0}, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 659
    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->bitField0_:I

    .line 660
    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->widthPixels_:I

    .line 661
    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->heightPixels_:I

    .line 662
    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->densityDpi_:I

    .line 663
    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->dpiBucket_:I

    .line 664
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->cachedSize:I

    .line 665
    return-object p0
.end method

.method public clearDensityDpi()Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;
    .locals 1

    .prologue
    .line 630
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->densityDpi_:I

    .line 631
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->bitField0_:I

    .line 632
    return-object p0
.end method

.method public clearDpiBucket()Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;
    .locals 1

    .prologue
    .line 649
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->dpiBucket_:I

    .line 650
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->bitField0_:I

    .line 651
    return-object p0
.end method

.method public clearHeightPixels()Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;
    .locals 1

    .prologue
    .line 611
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->heightPixels_:I

    .line 612
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->bitField0_:I

    .line 613
    return-object p0
.end method

.method public clearWidthPixels()Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;
    .locals 1

    .prologue
    .line 592
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->widthPixels_:I

    .line 593
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->bitField0_:I

    .line 594
    return-object p0
.end method

.method public getDensityDpi()I
    .locals 1

    .prologue
    .line 619
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->densityDpi_:I

    return v0
.end method

.method public getDpiBucket()I
    .locals 1

    .prologue
    .line 638
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->dpiBucket_:I

    return v0
.end method

.method public getHeightPixels()I
    .locals 1

    .prologue
    .line 600
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->heightPixels_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 687
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 688
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 689
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->widthPixels_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 692
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 693
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->heightPixels_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 696
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 697
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->densityDpi_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 700
    :cond_2
    iget v1, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 701
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->dpiBucket_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 704
    :cond_3
    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->cachedSize:I

    .line 705
    return v0
.end method

.method public getWidthPixels()I
    .locals 1

    .prologue
    .line 581
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->widthPixels_:I

    return v0
.end method

.method public hasDensityDpi()Z
    .locals 1

    .prologue
    .line 627
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDpiBucket()Z
    .locals 1

    .prologue
    .line 646
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHeightPixels()Z
    .locals 1

    .prologue
    .line 608
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWidthPixels()Z
    .locals 1

    .prologue
    .line 589
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

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
    .line 550
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;
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
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->widthPixels_:I

    .line 725
    iget v1, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->bitField0_:I

    goto :goto_0

    .line 729
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->heightPixels_:I

    .line 730
    iget v1, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->bitField0_:I

    goto :goto_0

    .line 734
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->densityDpi_:I

    .line 735
    iget v1, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->bitField0_:I

    goto :goto_0

    .line 739
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->dpiBucket_:I

    .line 740
    iget v1, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->bitField0_:I

    goto :goto_0

    .line 714
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public setDensityDpi(I)Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 622
    iput p1, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->densityDpi_:I

    .line 623
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->bitField0_:I

    .line 624
    return-object p0
.end method

.method public setDpiBucket(I)Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 641
    iput p1, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->dpiBucket_:I

    .line 642
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->bitField0_:I

    .line 643
    return-object p0
.end method

.method public setHeightPixels(I)Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 603
    iput p1, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->heightPixels_:I

    .line 604
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->bitField0_:I

    .line 605
    return-object p0
.end method

.method public setWidthPixels(I)Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 584
    iput p1, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->widthPixels_:I

    .line 585
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->bitField0_:I

    .line 586
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
    .line 671
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 672
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->widthPixels_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 674
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 675
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->heightPixels_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 677
    :cond_1
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 678
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->densityDpi_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 680
    :cond_2
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 681
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;->dpiBucket_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 683
    :cond_3
    return-void
.end method
