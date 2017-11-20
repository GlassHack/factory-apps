.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WeatherState"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;


# instance fields
.field private bitField0_:I

.field private chanceOfPrecipitation_:I

.field public condition:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

.field private humidity_:I

.field private temp_:I

.field private windDirection_:I

.field private windSpeed_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 558
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 559
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->clear()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    .line 560
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;
    .locals 2

    .prologue
    .line 447
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    if-nez v0, :cond_1

    .line 448
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 450
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    if-nez v0, :cond_0

    .line 451
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    sput-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    .line 453
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    :cond_1
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    return-object v0

    .line 453
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 687
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 681
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 563
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->bitField0_:I

    .line 564
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->condition:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    .line 565
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->temp_:I

    .line 566
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->windDirection_:I

    .line 567
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->windSpeed_:I

    .line 568
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->humidity_:I

    .line 569
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->chanceOfPrecipitation_:I

    .line 570
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->cachedSize:I

    .line 571
    return-object p0
.end method

.method public clearChanceOfPrecipitation()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;
    .locals 1

    .prologue
    .line 553
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->chanceOfPrecipitation_:I

    .line 554
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->bitField0_:I

    .line 555
    return-object p0
.end method

.method public clearHumidity()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;
    .locals 1

    .prologue
    .line 534
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->humidity_:I

    .line 535
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->bitField0_:I

    .line 536
    return-object p0
.end method

.method public clearTemp()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;
    .locals 1

    .prologue
    .line 477
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->temp_:I

    .line 478
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->bitField0_:I

    .line 479
    return-object p0
.end method

.method public clearWindDirection()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;
    .locals 1

    .prologue
    .line 496
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->windDirection_:I

    .line 497
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->bitField0_:I

    .line 498
    return-object p0
.end method

.method public clearWindSpeed()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;
    .locals 1

    .prologue
    .line 515
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->windSpeed_:I

    .line 516
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->bitField0_:I

    .line 517
    return-object p0
.end method

.method public getChanceOfPrecipitation()I
    .locals 1

    .prologue
    .line 542
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->chanceOfPrecipitation_:I

    return v0
.end method

.method public getHumidity()I
    .locals 1

    .prologue
    .line 523
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->humidity_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 599
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 600
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->condition:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    if-eqz v1, :cond_0

    .line 601
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->condition:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 604
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 605
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->temp_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 608
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 609
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->windDirection_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 612
    :cond_2
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 613
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->windSpeed_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 616
    :cond_3
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    .line 617
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->humidity_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 620
    :cond_4
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_5

    .line 621
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->chanceOfPrecipitation_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 624
    :cond_5
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->cachedSize:I

    .line 625
    return v0
.end method

.method public getTemp()I
    .locals 1

    .prologue
    .line 466
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->temp_:I

    return v0
.end method

.method public getWindDirection()I
    .locals 1

    .prologue
    .line 485
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->windDirection_:I

    return v0
.end method

.method public getWindSpeed()I
    .locals 1

    .prologue
    .line 504
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->windSpeed_:I

    return v0
.end method

.method public hasChanceOfPrecipitation()Z
    .locals 1

    .prologue
    .line 550
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHumidity()Z
    .locals 1

    .prologue
    .line 531
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTemp()Z
    .locals 1

    .prologue
    .line 474
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWindDirection()Z
    .locals 1

    .prologue
    .line 493
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWindSpeed()Z
    .locals 1

    .prologue
    .line 512
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->bitField0_:I

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
    .line 441
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 633
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 634
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 638
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 639
    :sswitch_0
    return-object p0

    .line 644
    :sswitch_1
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->condition:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    if-nez v1, :cond_1

    .line 645
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->condition:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    .line 647
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->condition:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 651
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->temp_:I

    .line 652
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->bitField0_:I

    goto :goto_0

    .line 656
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->windDirection_:I

    .line 657
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->bitField0_:I

    goto :goto_0

    .line 661
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->windSpeed_:I

    .line 662
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->bitField0_:I

    goto :goto_0

    .line 666
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->humidity_:I

    .line 667
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->bitField0_:I

    goto :goto_0

    .line 671
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->chanceOfPrecipitation_:I

    .line 672
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->bitField0_:I

    goto :goto_0

    .line 634
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

.method public setChanceOfPrecipitation(I)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 545
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->chanceOfPrecipitation_:I

    .line 546
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->bitField0_:I

    .line 547
    return-object p0
.end method

.method public setHumidity(I)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 526
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->humidity_:I

    .line 527
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->bitField0_:I

    .line 528
    return-object p0
.end method

.method public setTemp(I)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 469
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->temp_:I

    .line 470
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->bitField0_:I

    .line 471
    return-object p0
.end method

.method public setWindDirection(I)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 488
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->windDirection_:I

    .line 489
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->bitField0_:I

    .line 490
    return-object p0
.end method

.method public setWindSpeed(I)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 507
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->windSpeed_:I

    .line 508
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->bitField0_:I

    .line 509
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
    .line 577
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->condition:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    if-eqz v0, :cond_0

    .line 578
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->condition:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 580
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 581
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->temp_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 583
    :cond_1
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 584
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->windDirection_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 586
    :cond_2
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 587
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->windSpeed_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 589
    :cond_3
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 590
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->humidity_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 592
    :cond_4
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    .line 593
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->chanceOfPrecipitation_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 595
    :cond_5
    return-void
.end method
