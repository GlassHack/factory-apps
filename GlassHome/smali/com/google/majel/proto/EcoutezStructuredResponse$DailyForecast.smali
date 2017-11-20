.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DailyForecast"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;


# instance fields
.field private bitField0_:I

.field private chanceOfPrecipitation_:I

.field public condition:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

.field private highTemp_:I

.field private lowTemp_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 770
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 771
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->clear()Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;

    .line 772
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;
    .locals 2

    .prologue
    .line 697
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;

    if-nez v0, :cond_1

    .line 698
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 700
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;

    if-nez v0, :cond_0

    .line 701
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;

    sput-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;

    .line 703
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 705
    :cond_1
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;

    return-object v0

    .line 703
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 873
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 867
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 775
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->bitField0_:I

    .line 776
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->condition:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    .line 777
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->highTemp_:I

    .line 778
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->lowTemp_:I

    .line 779
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->chanceOfPrecipitation_:I

    .line 780
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->cachedSize:I

    .line 781
    return-object p0
.end method

.method public clearChanceOfPrecipitation()Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;
    .locals 1

    .prologue
    .line 765
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->chanceOfPrecipitation_:I

    .line 766
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->bitField0_:I

    .line 767
    return-object p0
.end method

.method public clearHighTemp()Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;
    .locals 1

    .prologue
    .line 727
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->highTemp_:I

    .line 728
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->bitField0_:I

    .line 729
    return-object p0
.end method

.method public clearLowTemp()Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;
    .locals 1

    .prologue
    .line 746
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->lowTemp_:I

    .line 747
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->bitField0_:I

    .line 748
    return-object p0
.end method

.method public getChanceOfPrecipitation()I
    .locals 1

    .prologue
    .line 754
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->chanceOfPrecipitation_:I

    return v0
.end method

.method public getHighTemp()I
    .locals 1

    .prologue
    .line 716
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->highTemp_:I

    return v0
.end method

.method public getLowTemp()I
    .locals 1

    .prologue
    .line 735
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->lowTemp_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 803
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 804
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->condition:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    if-eqz v1, :cond_0

    .line 805
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->condition:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 808
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 809
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->highTemp_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 812
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 813
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->lowTemp_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 816
    :cond_2
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 817
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->chanceOfPrecipitation_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 820
    :cond_3
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->cachedSize:I

    .line 821
    return v0
.end method

.method public hasChanceOfPrecipitation()Z
    .locals 1

    .prologue
    .line 762
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHighTemp()Z
    .locals 1

    .prologue
    .line 724
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLowTemp()Z
    .locals 1

    .prologue
    .line 743
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

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
    .line 691
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 829
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 830
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 834
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 835
    :sswitch_0
    return-object p0

    .line 840
    :sswitch_1
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->condition:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    if-nez v1, :cond_1

    .line 841
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->condition:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    .line 843
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->condition:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 847
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->highTemp_:I

    .line 848
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->bitField0_:I

    goto :goto_0

    .line 852
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->lowTemp_:I

    .line 853
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->bitField0_:I

    goto :goto_0

    .line 857
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->chanceOfPrecipitation_:I

    .line 858
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->bitField0_:I

    goto :goto_0

    .line 830
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public setChanceOfPrecipitation(I)Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 757
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->chanceOfPrecipitation_:I

    .line 758
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->bitField0_:I

    .line 759
    return-object p0
.end method

.method public setHighTemp(I)Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 719
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->highTemp_:I

    .line 720
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->bitField0_:I

    .line 721
    return-object p0
.end method

.method public setLowTemp(I)Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 738
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->lowTemp_:I

    .line 739
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->bitField0_:I

    .line 740
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
    .line 787
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->condition:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    if-eqz v0, :cond_0

    .line 788
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->condition:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 790
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 791
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->highTemp_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 793
    :cond_1
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 794
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->lowTemp_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 796
    :cond_2
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 797
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->chanceOfPrecipitation_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 799
    :cond_3
    return-void
.end method
