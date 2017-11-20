.class public final Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "GogglesStructuredResponseProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Word"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;


# instance fields
.field private bitField0_:I

.field public box:Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;

.field public characterBoxes:[Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;

.field private text_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1208
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1209
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;->clear()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;

    .line 1210
    return-void
.end method

.method public static emptyArray()[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;
    .locals 2

    .prologue
    .line 1167
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;

    if-nez v0, :cond_1

    .line 1168
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1170
    :try_start_0
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;

    if-nez v0, :cond_0

    .line 1171
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;

    sput-object v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;

    .line 1173
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1175
    :cond_1
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;

    return-object v0

    .line 1173
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1323
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1317
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;
    .locals 1

    .prologue
    .line 1213
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;->bitField0_:I

    .line 1214
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;->text_:Ljava/lang/String;

    .line 1215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;->box:Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;

    .line 1216
    invoke-static {}, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->emptyArray()[Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;->characterBoxes:[Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;

    .line 1217
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;->cachedSize:I

    .line 1218
    return-object p0
.end method

.method public clearText()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;
    .locals 1

    .prologue
    .line 1197
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;->text_:Ljava/lang/String;

    .line 1198
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;->bitField0_:I

    .line 1199
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 1242
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 1243
    .local v2, "size":I
    iget v3, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 1244
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;->text_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1247
    :cond_0
    iget-object v3, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;->box:Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;

    if-eqz v3, :cond_1

    .line 1248
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;->box:Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1251
    :cond_1
    iget-object v3, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;->characterBoxes:[Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;->characterBoxes:[Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;

    array-length v3, v3

    if-lez v3, :cond_3

    .line 1252
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;->characterBoxes:[Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 1253
    iget-object v3, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;->characterBoxes:[Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;

    aget-object v0, v3, v1

    .line 1254
    .local v0, "element":Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;
    if-eqz v0, :cond_2

    .line 1255
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1252
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1260
    .end local v0    # "element":Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;
    .end local v1    # "i":I
    :cond_3
    iput v2, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;->cachedSize:I

    .line 1261
    return v2
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;->text_:Ljava/lang/String;

    return-object v0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 1194
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1269
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 1270
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 1274
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1275
    :sswitch_0
    return-object p0

    .line 1280
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;->text_:Ljava/lang/String;

    .line 1281
    iget v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;->bitField0_:I

    goto :goto_0

    .line 1285
    :sswitch_2
    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;->box:Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;

    if-nez v5, :cond_1

    .line 1286
    new-instance v5, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;

    invoke-direct {v5}, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;-><init>()V

    iput-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;->box:Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;

    .line 1288
    :cond_1
    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;->box:Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1292
    :sswitch_3
    const/16 v5, 0x1a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1294
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;->characterBoxes:[Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;

    if-nez v5, :cond_3

    move v1, v4

    .line 1295
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;

    .line 1297
    .local v2, "newArray":[Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;
    if-eqz v1, :cond_2

    .line 1298
    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;->characterBoxes:[Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1300
    :cond_2
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_4

    .line 1301
    new-instance v5, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;

    invoke-direct {v5}, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;-><init>()V

    aput-object v5, v2, v1

    .line 1302
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1303
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1300
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1294
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;
    :cond_3
    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;->characterBoxes:[Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;

    array-length v1, v5

    goto :goto_1

    .line 1306
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;
    :cond_4
    new-instance v5, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;

    invoke-direct {v5}, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;-><init>()V

    aput-object v5, v2, v1

    .line 1307
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1308
    iput-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;->characterBoxes:[Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;

    goto :goto_0

    .line 1270
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 1161
    invoke-virtual {p0, p1}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1186
    if-nez p1, :cond_0

    .line 1187
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1189
    :cond_0
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;->text_:Ljava/lang/String;

    .line 1190
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;->bitField0_:I

    .line 1191
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
    .line 1224
    iget v2, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 1225
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;->text_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1227
    :cond_0
    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;->box:Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;

    if-eqz v2, :cond_1

    .line 1228
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;->box:Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1230
    :cond_1
    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;->characterBoxes:[Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;->characterBoxes:[Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 1231
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;->characterBoxes:[Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 1232
    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText$Word;->characterBoxes:[Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;

    aget-object v0, v2, v1

    .line 1233
    .local v0, "element":Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;
    if-eqz v0, :cond_2

    .line 1234
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1231
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1238
    .end local v0    # "element":Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;
    .end local v1    # "i":I
    :cond_3
    return-void
.end method
