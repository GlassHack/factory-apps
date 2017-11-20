.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WeatherResult"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;


# instance fields
.field private bitField0_:I

.field public current:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

.field public dailyForecast:[Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;

.field private forecastStartDate_:Ljava/lang/String;

.field public hourlyForecast:Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;

.field private inMetricUnits_:Z

.field public location:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1129
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1130
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->clear()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;

    .line 1131
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;
    .locals 2

    .prologue
    .line 1063
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;

    if-nez v0, :cond_1

    .line 1064
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1066
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;

    if-nez v0, :cond_0

    .line 1067
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;

    sput-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;

    .line 1069
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1071
    :cond_1
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;

    return-object v0

    .line 1069
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1287
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1281
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1134
    iput v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->bitField0_:I

    .line 1135
    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->location:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;

    .line 1136
    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->current:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    .line 1137
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->forecastStartDate_:Ljava/lang/String;

    .line 1138
    invoke-static {}, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;->emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->dailyForecast:[Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;

    .line 1139
    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->hourlyForecast:Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;

    .line 1140
    iput-boolean v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->inMetricUnits_:Z

    .line 1141
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->cachedSize:I

    .line 1142
    return-object p0
.end method

.method public clearForecastStartDate()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;
    .locals 1

    .prologue
    .line 1099
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->forecastStartDate_:Ljava/lang/String;

    .line 1100
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->bitField0_:I

    .line 1101
    return-object p0
.end method

.method public clearInMetricUnits()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;
    .locals 1

    .prologue
    .line 1124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->inMetricUnits_:Z

    .line 1125
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->bitField0_:I

    .line 1126
    return-object p0
.end method

.method public getForecastStartDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->forecastStartDate_:Ljava/lang/String;

    return-object v0
.end method

.method public getInMetricUnits()Z
    .locals 1

    .prologue
    .line 1113
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->inMetricUnits_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 1175
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 1176
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->location:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;

    if-eqz v3, :cond_0

    .line 1177
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->location:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1180
    :cond_0
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->current:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    if-eqz v3, :cond_1

    .line 1181
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->current:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1184
    :cond_1
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 1185
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->forecastStartDate_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1188
    :cond_2
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->dailyForecast:[Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->dailyForecast:[Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;

    array-length v3, v3

    if-lez v3, :cond_4

    .line 1189
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->dailyForecast:[Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 1190
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->dailyForecast:[Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;

    aget-object v0, v3, v1

    .line 1191
    .local v0, "element":Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;
    if-eqz v0, :cond_3

    .line 1192
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1189
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1197
    .end local v0    # "element":Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;
    .end local v1    # "i":I
    :cond_4
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->hourlyForecast:Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;

    if-eqz v3, :cond_5

    .line 1198
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->hourlyForecast:Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1201
    :cond_5
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_6

    .line 1202
    const/4 v3, 0x6

    iget-boolean v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->inMetricUnits_:Z

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 1205
    :cond_6
    iput v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->cachedSize:I

    .line 1206
    return v2
.end method

.method public hasForecastStartDate()Z
    .locals 1

    .prologue
    .line 1096
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInMetricUnits()Z
    .locals 1

    .prologue
    .line 1121
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->bitField0_:I

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
    .line 1057
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1214
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 1215
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 1219
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1220
    :sswitch_0
    return-object p0

    .line 1225
    :sswitch_1
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->location:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;

    if-nez v5, :cond_1

    .line 1226
    new-instance v5, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;

    invoke-direct {v5}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;-><init>()V

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->location:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;

    .line 1228
    :cond_1
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->location:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1232
    :sswitch_2
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->current:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    if-nez v5, :cond_2

    .line 1233
    new-instance v5, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    invoke-direct {v5}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;-><init>()V

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->current:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    .line 1235
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->current:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1239
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->forecastStartDate_:Ljava/lang/String;

    .line 1240
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->bitField0_:I

    goto :goto_0

    .line 1244
    :sswitch_4
    const/16 v5, 0x22

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1246
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->dailyForecast:[Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;

    if-nez v5, :cond_4

    move v1, v4

    .line 1247
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;

    .line 1249
    .local v2, "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;
    if-eqz v1, :cond_3

    .line 1250
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->dailyForecast:[Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1252
    :cond_3
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_5

    .line 1253
    new-instance v5, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;

    invoke-direct {v5}, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;-><init>()V

    aput-object v5, v2, v1

    .line 1254
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1255
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1252
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1246
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;
    :cond_4
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->dailyForecast:[Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;

    array-length v1, v5

    goto :goto_1

    .line 1258
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;
    :cond_5
    new-instance v5, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;

    invoke-direct {v5}, Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;-><init>()V

    aput-object v5, v2, v1

    .line 1259
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1260
    iput-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->dailyForecast:[Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;

    goto :goto_0

    .line 1264
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;
    :sswitch_5
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->hourlyForecast:Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;

    if-nez v5, :cond_6

    .line 1265
    new-instance v5, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;

    invoke-direct {v5}, Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;-><init>()V

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->hourlyForecast:Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;

    .line 1267
    :cond_6
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->hourlyForecast:Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1271
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->inMetricUnits_:Z

    .line 1272
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->bitField0_:I

    goto/16 :goto_0

    .line 1215
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

.method public setForecastStartDate(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1088
    if-nez p1, :cond_0

    .line 1089
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1091
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->forecastStartDate_:Ljava/lang/String;

    .line 1092
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->bitField0_:I

    .line 1093
    return-object p0
.end method

.method public setInMetricUnits(Z)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1116
    iput-boolean p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->inMetricUnits_:Z

    .line 1117
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->bitField0_:I

    .line 1118
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
    .line 1148
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->location:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;

    if-eqz v2, :cond_0

    .line 1149
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->location:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1151
    :cond_0
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->current:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    if-eqz v2, :cond_1

    .line 1152
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->current:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherState;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1154
    :cond_1
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 1155
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->forecastStartDate_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1157
    :cond_2
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->dailyForecast:[Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->dailyForecast:[Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;

    array-length v2, v2

    if-lez v2, :cond_4

    .line 1158
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->dailyForecast:[Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 1159
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->dailyForecast:[Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;

    aget-object v0, v2, v1

    .line 1160
    .local v0, "element":Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;
    if-eqz v0, :cond_3

    .line 1161
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1158
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1165
    .end local v0    # "element":Lcom/google/majel/proto/EcoutezStructuredResponse$DailyForecast;
    .end local v1    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->hourlyForecast:Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;

    if-eqz v2, :cond_5

    .line 1166
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->hourlyForecast:Lcom/google/majel/proto/EcoutezStructuredResponse$HourlyForecast;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1168
    :cond_5
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_6

    .line 1169
    const/4 v2, 0x6

    iget-boolean v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;->inMetricUnits_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1171
    :cond_6
    return-void
.end method
