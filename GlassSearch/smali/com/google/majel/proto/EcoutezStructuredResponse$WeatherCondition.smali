.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WeatherCondition"
.end annotation


# static fields
.field public static final CONDITION_TYPE_CLEAR:I = 0xa

.field public static final CONDITION_TYPE_CLOUDY:I = 0x2f

.field public static final CONDITION_TYPE_FOG:I = 0x55

.field public static final CONDITION_TYPE_HEAVY_RAIN:I = 0x57

.field public static final CONDITION_TYPE_HEAVY_SNOW:I = 0x58

.field public static final CONDITION_TYPE_LIGHT_RAIN:I = 0xa2

.field public static final CONDITION_TYPE_LIGHT_SNOW:I = 0x94

.field public static final CONDITION_TYPE_MIST:I = 0x102

.field public static final CONDITION_TYPE_PARTLY_CLOUDY:I = 0x106

.field public static final CONDITION_TYPE_RAIN:I = 0x5e

.field public static final CONDITION_TYPE_SLEET:I = 0x91

.field public static final CONDITION_TYPE_SNOW:I = 0x75

.field public static final CONDITION_TYPE_SUNNY:I = 0x8a

.field public static final CONDITION_TYPE_THUNDERSTORM:I = 0x8b

.field public static final CONDITION_TYPE_UNKNOWN:I = 0x0

.field public static final CONDITION_TYPE_WINDY:I = 0x123

.field private static volatile _emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;


# instance fields
.field private bitField0_:I

.field private imageHeight_:I

.field private imageUrl_:Ljava/lang/String;

.field private imageWidth_:I

.field private text_:Ljava/lang/String;

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 324
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->clear()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    .line 325
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;
    .locals 2

    .prologue
    .line 209
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    if-nez v0, :cond_1

    .line 210
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 212
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    if-nez v0, :cond_0

    .line 213
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    sput-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    .line 215
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :cond_1
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    return-object v0

    .line 215
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 437
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 431
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 328
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->bitField0_:I

    .line 329
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->type_:I

    .line 330
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->text_:Ljava/lang/String;

    .line 331
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->imageUrl_:Ljava/lang/String;

    .line 332
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->imageWidth_:I

    .line 333
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->imageHeight_:I

    .line 334
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->cachedSize:I

    .line 335
    return-object p0
.end method

.method public clearImageHeight()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->imageHeight_:I

    .line 319
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->bitField0_:I

    .line 320
    return-object p0
.end method

.method public clearImageUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;
    .locals 1

    .prologue
    .line 280
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->imageUrl_:Ljava/lang/String;

    .line 281
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->bitField0_:I

    .line 282
    return-object p0
.end method

.method public clearImageWidth()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->imageWidth_:I

    .line 300
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->bitField0_:I

    .line 301
    return-object p0
.end method

.method public clearText()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;
    .locals 1

    .prologue
    .line 258
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->text_:Ljava/lang/String;

    .line 259
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->bitField0_:I

    .line 260
    return-object p0
.end method

.method public clearType()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->type_:I

    .line 237
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->bitField0_:I

    .line 238
    return-object p0
.end method

.method public getImageHeight()I
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->imageHeight_:I

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->imageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->imageWidth_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 360
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 361
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 362
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->type_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 365
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 366
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->text_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 369
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 370
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->imageUrl_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 373
    :cond_2
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 374
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->imageWidth_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 377
    :cond_3
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 378
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->imageHeight_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 381
    :cond_4
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->cachedSize:I

    .line 382
    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->text_:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->type_:I

    return v0
.end method

.method public hasImageHeight()Z
    .locals 1

    .prologue
    .line 315
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasImageUrl()Z
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasImageWidth()Z
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->bitField0_:I

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
    .line 185
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 390
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 391
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 395
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 396
    :sswitch_0
    return-object p0

    .line 401
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->type_:I

    .line 402
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->bitField0_:I

    goto :goto_0

    .line 406
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->text_:Ljava/lang/String;

    .line 407
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->bitField0_:I

    goto :goto_0

    .line 411
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->imageUrl_:Ljava/lang/String;

    .line 412
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->bitField0_:I

    goto :goto_0

    .line 416
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->imageWidth_:I

    .line 417
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->bitField0_:I

    goto :goto_0

    .line 421
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->imageHeight_:I

    .line 422
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->bitField0_:I

    goto :goto_0

    .line 391
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public setImageHeight(I)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 310
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->imageHeight_:I

    .line 311
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->bitField0_:I

    .line 312
    return-object p0
.end method

.method public setImageUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 269
    if-nez p1, :cond_0

    .line 270
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 272
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->imageUrl_:Ljava/lang/String;

    .line 273
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->bitField0_:I

    .line 274
    return-object p0
.end method

.method public setImageWidth(I)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 291
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->imageWidth_:I

    .line 292
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->bitField0_:I

    .line 293
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 247
    if-nez p1, :cond_0

    .line 248
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 250
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->text_:Ljava/lang/String;

    .line 251
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->bitField0_:I

    .line 252
    return-object p0
.end method

.method public setType(I)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 228
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->type_:I

    .line 229
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->bitField0_:I

    .line 230
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
    .line 341
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 342
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->type_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 344
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 345
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->text_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 347
    :cond_1
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 348
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->imageUrl_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 350
    :cond_2
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 351
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->imageWidth_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 353
    :cond_3
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 354
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherCondition;->imageHeight_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 356
    :cond_4
    return-void
.end method
