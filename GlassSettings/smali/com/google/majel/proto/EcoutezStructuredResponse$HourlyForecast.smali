.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HourlyForecast"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;


# instance fields
.field private bitField0_:I

.field public forecast:[Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

.field private startHour_:I

.field private utcDate_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 940
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 941
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->clear()Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;

    .line 942
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;
    .locals 2

    .prologue
    .line 883
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;

    if-nez v0, :cond_1

    .line 884
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 886
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;

    if-nez v0, :cond_0

    .line 887
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;

    sput-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;

    .line 889
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 891
    :cond_1
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;

    return-object v0

    .line 889
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1053
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1047
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 945
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->bitField0_:I

    .line 946
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->utcDate_:Ljava/lang/String;

    .line 947
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->startHour_:I

    .line 948
    invoke-static {}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;->emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->forecast:[Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    .line 949
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->cachedSize:I

    .line 950
    return-object p0
.end method

.method public clearStartHour()Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;
    .locals 1

    .prologue
    .line 932
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->startHour_:I

    .line 933
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->bitField0_:I

    .line 934
    return-object p0
.end method

.method public clearUtcDate()Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;
    .locals 1

    .prologue
    .line 913
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->utcDate_:Ljava/lang/String;

    .line 914
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->bitField0_:I

    .line 915
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 974
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 975
    .local v2, "size":I
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 976
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->utcDate_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 979
    :cond_0
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 980
    const/4 v3, 0x2

    iget v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->startHour_:I

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 983
    :cond_1
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->forecast:[Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->forecast:[Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    array-length v3, v3

    if-lez v3, :cond_3

    .line 984
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->forecast:[Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 985
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->forecast:[Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    aget-object v0, v3, v1

    .line 986
    .local v0, "element":Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;
    if-eqz v0, :cond_2

    .line 987
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 984
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 992
    .end local v0    # "element":Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;
    .end local v1    # "i":I
    :cond_3
    iput v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->cachedSize:I

    .line 993
    return v2
.end method

.method public getStartHour()I
    .locals 1

    .prologue
    .line 921
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->startHour_:I

    return v0
.end method

.method public getUtcDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->utcDate_:Ljava/lang/String;

    return-object v0
.end method

.method public hasStartHour()Z
    .locals 1

    .prologue
    .line 929
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUtcDate()Z
    .locals 1

    .prologue
    .line 910
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->bitField0_:I

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
    .line 877
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1001
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 1002
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 1006
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1007
    :sswitch_0
    return-object p0

    .line 1012
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->utcDate_:Ljava/lang/String;

    .line 1013
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->bitField0_:I

    goto :goto_0

    .line 1017
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->startHour_:I

    .line 1018
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->bitField0_:I

    goto :goto_0

    .line 1022
    :sswitch_3
    const/16 v5, 0x1a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1024
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->forecast:[Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    if-nez v5, :cond_2

    move v1, v4

    .line 1025
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    .line 1027
    .local v2, "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;
    if-eqz v1, :cond_1

    .line 1028
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->forecast:[Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1030
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 1031
    new-instance v5, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    invoke-direct {v5}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;-><init>()V

    aput-object v5, v2, v1

    .line 1032
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1033
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1030
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1024
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->forecast:[Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    array-length v1, v5

    goto :goto_1

    .line 1036
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;
    :cond_3
    new-instance v5, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    invoke-direct {v5}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;-><init>()V

    aput-object v5, v2, v1

    .line 1037
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1038
    iput-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->forecast:[Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    goto :goto_0

    .line 1002
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public setStartHour(I)Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 924
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->startHour_:I

    .line 925
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->bitField0_:I

    .line 926
    return-object p0
.end method

.method public setUtcDate(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 902
    if-nez p1, :cond_0

    .line 903
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 905
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->utcDate_:Ljava/lang/String;

    .line 906
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->bitField0_:I

    .line 907
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 956
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 957
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->utcDate_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 959
    :cond_0
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 960
    const/4 v2, 0x2

    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->startHour_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 962
    :cond_1
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->forecast:[Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->forecast:[Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 963
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->forecast:[Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 964
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;->forecast:[Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    aget-object v0, v2, v1

    .line 965
    .local v0, "element":Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;
    if-eqz v0, :cond_2

    .line 966
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 963
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 970
    .end local v0    # "element":Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;
    .end local v1    # "i":I
    :cond_3
    return-void
.end method
