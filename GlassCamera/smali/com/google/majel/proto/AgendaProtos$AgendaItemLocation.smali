.class public final Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "AgendaProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/AgendaProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AgendaItemLocation"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;


# instance fields
.field private address_:Ljava/lang/String;

.field private bitField0_:I

.field private lat_:D

.field private lng_:D

.field private name_:Ljava/lang/String;

.field private staticMapUrl_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 308
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 309
    invoke-virtual {p0}, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->clear()Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;

    .line 310
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;
    .locals 2

    .prologue
    .line 191
    sget-object v0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->_emptyArray:[Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;

    if-nez v0, :cond_1

    .line 192
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 194
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->_emptyArray:[Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;

    if-nez v0, :cond_0

    .line 195
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;

    sput-object v0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->_emptyArray:[Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;

    .line 197
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :cond_1
    sget-object v0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->_emptyArray:[Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;

    return-object v0

    .line 197
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 422
    new-instance v0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;

    invoke-direct {v0}, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 416
    new-instance v0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;

    invoke-direct {v0}, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 313
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->bitField0_:I

    .line 314
    iput-wide v1, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->lat_:D

    .line 315
    iput-wide v1, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->lng_:D

    .line 316
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->name_:Ljava/lang/String;

    .line 317
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->address_:Ljava/lang/String;

    .line 318
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->staticMapUrl_:Ljava/lang/String;

    .line 319
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->cachedSize:I

    .line 320
    return-object p0
.end method

.method public clearAddress()Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;
    .locals 1

    .prologue
    .line 281
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->address_:Ljava/lang/String;

    .line 282
    iget v0, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->bitField0_:I

    .line 283
    return-object p0
.end method

.method public clearLat()Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;
    .locals 2

    .prologue
    .line 218
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->lat_:D

    .line 219
    iget v0, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->bitField0_:I

    .line 220
    return-object p0
.end method

.method public clearLng()Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;
    .locals 2

    .prologue
    .line 237
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->lng_:D

    .line 238
    iget v0, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->bitField0_:I

    .line 239
    return-object p0
.end method

.method public clearName()Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;
    .locals 1

    .prologue
    .line 259
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->name_:Ljava/lang/String;

    .line 260
    iget v0, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->bitField0_:I

    .line 261
    return-object p0
.end method

.method public clearStaticMapUrl()Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;
    .locals 1

    .prologue
    .line 303
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->staticMapUrl_:Ljava/lang/String;

    .line 304
    iget v0, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->bitField0_:I

    .line 305
    return-object p0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->address_:Ljava/lang/String;

    return-object v0
.end method

.method public getLat()D
    .locals 2

    .prologue
    .line 207
    iget-wide v0, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->lat_:D

    return-wide v0
.end method

.method public getLng()D
    .locals 2

    .prologue
    .line 226
    iget-wide v0, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->lng_:D

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 345
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 346
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 347
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->lat_:D

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 350
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 351
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->lng_:D

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 354
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 355
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->name_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 358
    :cond_2
    iget v1, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 359
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->address_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 362
    :cond_3
    iget v1, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 363
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->staticMapUrl_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 366
    :cond_4
    iput v0, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->cachedSize:I

    .line 367
    return v0
.end method

.method public getStaticMapUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->staticMapUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAddress()Z
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLat()Z
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLng()Z
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStaticMapUrl()Z
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

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
    .line 185
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;
    .locals 3
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 375
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 376
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 380
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 381
    :sswitch_0
    return-object p0

    .line 386
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->lat_:D

    .line 387
    iget v1, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->bitField0_:I

    goto :goto_0

    .line 391
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->lng_:D

    .line 392
    iget v1, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->bitField0_:I

    goto :goto_0

    .line 396
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->name_:Ljava/lang/String;

    .line 397
    iget v1, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->bitField0_:I

    goto :goto_0

    .line 401
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->address_:Ljava/lang/String;

    .line 402
    iget v1, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->bitField0_:I

    goto :goto_0

    .line 406
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->staticMapUrl_:Ljava/lang/String;

    .line 407
    iget v1, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->bitField0_:I

    goto :goto_0

    .line 376
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
        0x11 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public setAddress(Ljava/lang/String;)Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 270
    if-nez p1, :cond_0

    .line 271
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 273
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->address_:Ljava/lang/String;

    .line 274
    iget v0, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->bitField0_:I

    .line 275
    return-object p0
.end method

.method public setLat(D)Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 210
    iput-wide p1, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->lat_:D

    .line 211
    iget v0, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->bitField0_:I

    .line 212
    return-object p0
.end method

.method public setLng(D)Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 229
    iput-wide p1, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->lng_:D

    .line 230
    iget v0, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->bitField0_:I

    .line 231
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 248
    if-nez p1, :cond_0

    .line 249
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 251
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->name_:Ljava/lang/String;

    .line 252
    iget v0, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->bitField0_:I

    .line 253
    return-object p0
.end method

.method public setStaticMapUrl(Ljava/lang/String;)Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 292
    if-nez p1, :cond_0

    .line 293
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 295
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->staticMapUrl_:Ljava/lang/String;

    .line 296
    iget v0, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->bitField0_:I

    .line 297
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
    .line 326
    iget v0, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 327
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->lat_:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 329
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 330
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->lng_:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 332
    :cond_1
    iget v0, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 333
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->name_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 335
    :cond_2
    iget v0, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 336
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->address_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 338
    :cond_3
    iget v0, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 339
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;->staticMapUrl_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 341
    :cond_4
    return-void
.end method
