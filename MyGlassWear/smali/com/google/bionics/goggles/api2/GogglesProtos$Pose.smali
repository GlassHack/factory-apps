.class public final Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "GogglesProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bionics/goggles/api2/GogglesProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Pose"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;


# instance fields
.field private altitudeMeters_:F

.field private bitField0_:I

.field private latDegrees_:D

.field private latLngAccuracyMeters_:F

.field private lngDegrees_:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1238
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1239
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->clear()Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;

    .line 1240
    return-void
.end method

.method public static emptyArray()[Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;
    .locals 2

    .prologue
    .line 1149
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;

    if-nez v0, :cond_1

    .line 1150
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1152
    :try_start_0
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;

    if-nez v0, :cond_0

    .line 1153
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;

    sput-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;

    .line 1155
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1157
    :cond_1
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;

    return-object v0

    .line 1155
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1339
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1333
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 1243
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->bitField0_:I

    .line 1244
    iput-wide v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->latDegrees_:D

    .line 1245
    iput-wide v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->lngDegrees_:D

    .line 1246
    iput v3, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->latLngAccuracyMeters_:F

    .line 1247
    iput v3, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->altitudeMeters_:F

    .line 1248
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->cachedSize:I

    .line 1249
    return-object p0
.end method

.method public clearAltitudeMeters()Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;
    .locals 1

    .prologue
    .line 1233
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->altitudeMeters_:F

    .line 1234
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->bitField0_:I

    .line 1235
    return-object p0
.end method

.method public clearLatDegrees()Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;
    .locals 2

    .prologue
    .line 1176
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->latDegrees_:D

    .line 1177
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->bitField0_:I

    .line 1178
    return-object p0
.end method

.method public clearLatLngAccuracyMeters()Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;
    .locals 1

    .prologue
    .line 1214
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->latLngAccuracyMeters_:F

    .line 1215
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->bitField0_:I

    .line 1216
    return-object p0
.end method

.method public clearLngDegrees()Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;
    .locals 2

    .prologue
    .line 1195
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->lngDegrees_:D

    .line 1196
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->bitField0_:I

    .line 1197
    return-object p0
.end method

.method public getAltitudeMeters()F
    .locals 1

    .prologue
    .line 1222
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->altitudeMeters_:F

    return v0
.end method

.method public getLatDegrees()D
    .locals 2

    .prologue
    .line 1165
    iget-wide v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->latDegrees_:D

    return-wide v0
.end method

.method public getLatLngAccuracyMeters()F
    .locals 1

    .prologue
    .line 1203
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->latLngAccuracyMeters_:F

    return v0
.end method

.method public getLngDegrees()D
    .locals 2

    .prologue
    .line 1184
    iget-wide v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->lngDegrees_:D

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 1271
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1272
    .local v0, "size":I
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1273
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->latDegrees_:D

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 1276
    :cond_0
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1277
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->lngDegrees_:D

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 1280
    :cond_1
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 1281
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->latLngAccuracyMeters_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1284
    :cond_2
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 1285
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->altitudeMeters_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1288
    :cond_3
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->cachedSize:I

    .line 1289
    return v0
.end method

.method public hasAltitudeMeters()Z
    .locals 1

    .prologue
    .line 1230
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLatDegrees()Z
    .locals 1

    .prologue
    .line 1173
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLatLngAccuracyMeters()Z
    .locals 1

    .prologue
    .line 1211
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLngDegrees()Z
    .locals 1

    .prologue
    .line 1192
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;
    .locals 3
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1297
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1298
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1302
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1303
    :sswitch_0
    return-object p0

    .line 1308
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->latDegrees_:D

    .line 1309
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->bitField0_:I

    goto :goto_0

    .line 1313
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->lngDegrees_:D

    .line 1314
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->bitField0_:I

    goto :goto_0

    .line 1318
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->latLngAccuracyMeters_:F

    .line 1319
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->bitField0_:I

    goto :goto_0

    .line 1323
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->altitudeMeters_:F

    .line 1324
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->bitField0_:I

    goto :goto_0

    .line 1298
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
        0x11 -> :sswitch_2
        0x1d -> :sswitch_3
        0x25 -> :sswitch_4
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
    .line 1143
    invoke-virtual {p0, p1}, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;

    move-result-object v0

    return-object v0
.end method

.method public setAltitudeMeters(F)Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1225
    iput p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->altitudeMeters_:F

    .line 1226
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->bitField0_:I

    .line 1227
    return-object p0
.end method

.method public setLatDegrees(D)Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 1168
    iput-wide p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->latDegrees_:D

    .line 1169
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->bitField0_:I

    .line 1170
    return-object p0
.end method

.method public setLatLngAccuracyMeters(F)Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1206
    iput p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->latLngAccuracyMeters_:F

    .line 1207
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->bitField0_:I

    .line 1208
    return-object p0
.end method

.method public setLngDegrees(D)Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 1187
    iput-wide p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->lngDegrees_:D

    .line 1188
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->bitField0_:I

    .line 1189
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1255
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1256
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->latDegrees_:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 1258
    :cond_0
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1259
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->lngDegrees_:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 1261
    :cond_1
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 1262
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->latLngAccuracyMeters_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1264
    :cond_2
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 1265
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->altitudeMeters_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1267
    :cond_3
    return-void
.end method
