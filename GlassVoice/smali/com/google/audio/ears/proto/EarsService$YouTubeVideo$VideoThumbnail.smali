.class public final Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EarsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoThumbnail"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;


# instance fields
.field private bitField0_:I

.field private height_:I

.field private url_:Ljava/lang/String;

.field private width_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2772
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2773
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->clear()Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;

    .line 2774
    return-void
.end method

.method public static emptyArray()[Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;
    .locals 2

    .prologue
    .line 2699
    sget-object v0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;

    if-nez v0, :cond_1

    .line 2700
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2702
    :try_start_0
    sget-object v0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;

    if-nez v0, :cond_0

    .line 2703
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;

    sput-object v0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;

    .line 2705
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2707
    :cond_1
    sget-object v0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;

    return-object v0

    .line 2705
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2860
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2854
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2777
    iput v1, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->bitField0_:I

    .line 2778
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->url_:Ljava/lang/String;

    .line 2779
    iput v1, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->width_:I

    .line 2780
    iput v1, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->height_:I

    .line 2781
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->cachedSize:I

    .line 2782
    return-object p0
.end method

.method public clearHeight()Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;
    .locals 1

    .prologue
    .line 2767
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->height_:I

    .line 2768
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->bitField0_:I

    .line 2769
    return-object p0
.end method

.method public clearUrl()Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;
    .locals 1

    .prologue
    .line 2729
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->url_:Ljava/lang/String;

    .line 2730
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->bitField0_:I

    .line 2731
    return-object p0
.end method

.method public clearWidth()Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;
    .locals 1

    .prologue
    .line 2748
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->width_:I

    .line 2749
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->bitField0_:I

    .line 2750
    return-object p0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 2756
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->height_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2801
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 2802
    .local v0, "size":I
    iget v1, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 2803
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->url_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2806
    :cond_0
    iget v1, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 2807
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->width_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2810
    :cond_1
    iget v1, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 2811
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->height_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2814
    :cond_2
    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->cachedSize:I

    .line 2815
    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2715
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 2737
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->width_:I

    return v0
.end method

.method public hasHeight()Z
    .locals 1

    .prologue
    .line 2764
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUrl()Z
    .locals 1

    .prologue
    .line 2726
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

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
    .line 2745
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2823
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2824
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2828
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2829
    :sswitch_0
    return-object p0

    .line 2834
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->url_:Ljava/lang/String;

    .line 2835
    iget v1, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->bitField0_:I

    goto :goto_0

    .line 2839
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->width_:I

    .line 2840
    iget v1, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->bitField0_:I

    goto :goto_0

    .line 2844
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->height_:I

    .line 2845
    iget v1, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->bitField0_:I

    goto :goto_0

    .line 2824
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
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
    .line 2693
    invoke-virtual {p0, p1}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;

    move-result-object v0

    return-object v0
.end method

.method public setHeight(I)Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2759
    iput p1, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->height_:I

    .line 2760
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->bitField0_:I

    .line 2761
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2718
    if-nez p1, :cond_0

    .line 2719
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2721
    :cond_0
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->url_:Ljava/lang/String;

    .line 2722
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->bitField0_:I

    .line 2723
    return-object p0
.end method

.method public setWidth(I)Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2740
    iput p1, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->width_:I

    .line 2741
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->bitField0_:I

    .line 2742
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
    .line 2788
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2789
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->url_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2791
    :cond_0
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 2792
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->width_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2794
    :cond_1
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 2795
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->height_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2797
    :cond_2
    return-void
.end method
