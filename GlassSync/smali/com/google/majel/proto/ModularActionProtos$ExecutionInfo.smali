.class public final Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ModularActionProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ModularActionProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExecutionInfo"
.end annotation


# static fields
.field public static final ACTION_ICON_CALL:I = 0x3

.field public static final ACTION_ICON_DEFAULT:I = 0x0

.field public static final ACTION_ICON_EDIT:I = 0x2

.field public static final ACTION_ICON_PREFERRED_APP:I = 0x4

.field public static final ACTION_ICON_SEND:I = 0x1

.field private static volatile _emptyArray:[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;


# instance fields
.field public androidIntentExecutionInfoExtension:Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;

.field public androidProberIntentExecutionInfoExtension:Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;

.field private bitField0_:I

.field private builtInIcon_:I

.field private fallbackGroup_:I

.field private iconUrl_:Ljava/lang/String;

.field public label:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

.field private veUiType_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2309
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2310
    invoke-virtual {p0}, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->clear()Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    .line 2311
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;
    .locals 2

    .prologue
    .line 2208
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    if-nez v0, :cond_1

    .line 2209
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2211
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    if-nez v0, :cond_0

    .line 2212
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    sput-object v0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    .line 2214
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2216
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    return-object v0

    .line 2214
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2455
    new-instance v0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    invoke-direct {v0}, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2449
    new-instance v0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    invoke-direct {v0}, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2314
    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->bitField0_:I

    .line 2315
    iput-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->label:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    .line 2316
    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->builtInIcon_:I

    .line 2317
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->iconUrl_:Ljava/lang/String;

    .line 2318
    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->fallbackGroup_:I

    .line 2319
    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->veUiType_:I

    .line 2320
    iput-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->androidIntentExecutionInfoExtension:Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;

    .line 2321
    iput-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->androidProberIntentExecutionInfoExtension:Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;

    .line 2322
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->cachedSize:I

    .line 2323
    return-object p0
.end method

.method public clearBuiltInIcon()Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;
    .locals 1

    .prologue
    .line 2238
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->builtInIcon_:I

    .line 2239
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->bitField0_:I

    .line 2240
    return-object p0
.end method

.method public clearFallbackGroup()Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;
    .locals 1

    .prologue
    .line 2279
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->fallbackGroup_:I

    .line 2280
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->bitField0_:I

    .line 2281
    return-object p0
.end method

.method public clearIconUrl()Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;
    .locals 1

    .prologue
    .line 2260
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->iconUrl_:Ljava/lang/String;

    .line 2261
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->bitField0_:I

    .line 2262
    return-object p0
.end method

.method public clearVeUiType()Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;
    .locals 1

    .prologue
    .line 2298
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->veUiType_:I

    .line 2299
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->bitField0_:I

    .line 2300
    return-object p0
.end method

.method public getBuiltInIcon()I
    .locals 1

    .prologue
    .line 2227
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->builtInIcon_:I

    return v0
.end method

.method public getFallbackGroup()I
    .locals 1

    .prologue
    .line 2268
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->fallbackGroup_:I

    return v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2246
    iget-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->iconUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2354
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 2355
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->label:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    if-eqz v1, :cond_0

    .line 2356
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->label:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2359
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 2360
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->builtInIcon_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2363
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 2364
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->iconUrl_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2367
    :cond_2
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 2368
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->fallbackGroup_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2371
    :cond_3
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    .line 2372
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->veUiType_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2375
    :cond_4
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->androidIntentExecutionInfoExtension:Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;

    if-eqz v1, :cond_5

    .line 2376
    const/16 v1, 0x3e8

    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->androidIntentExecutionInfoExtension:Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2379
    :cond_5
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->androidProberIntentExecutionInfoExtension:Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;

    if-eqz v1, :cond_6

    .line 2380
    const v1, 0x3b63c52

    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->androidProberIntentExecutionInfoExtension:Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2383
    :cond_6
    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->cachedSize:I

    .line 2384
    return v0
.end method

.method public getVeUiType()I
    .locals 1

    .prologue
    .line 2287
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->veUiType_:I

    return v0
.end method

.method public hasBuiltInIcon()Z
    .locals 1

    .prologue
    .line 2235
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFallbackGroup()Z
    .locals 1

    .prologue
    .line 2276
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIconUrl()Z
    .locals 1

    .prologue
    .line 2257
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVeUiType()Z
    .locals 1

    .prologue
    .line 2295
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

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
    .line 2195
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2392
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2393
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2397
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2398
    :sswitch_0
    return-object p0

    .line 2403
    :sswitch_1
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->label:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    if-nez v1, :cond_1

    .line 2404
    new-instance v1, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    invoke-direct {v1}, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->label:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    .line 2406
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->label:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2410
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->builtInIcon_:I

    .line 2411
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->bitField0_:I

    goto :goto_0

    .line 2415
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->iconUrl_:Ljava/lang/String;

    .line 2416
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->bitField0_:I

    goto :goto_0

    .line 2420
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->fallbackGroup_:I

    .line 2421
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->bitField0_:I

    goto :goto_0

    .line 2425
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->veUiType_:I

    .line 2426
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->bitField0_:I

    goto :goto_0

    .line 2430
    :sswitch_6
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->androidIntentExecutionInfoExtension:Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;

    if-nez v1, :cond_2

    .line 2431
    new-instance v1, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;

    invoke-direct {v1}, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->androidIntentExecutionInfoExtension:Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;

    .line 2433
    :cond_2
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->androidIntentExecutionInfoExtension:Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2437
    :sswitch_7
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->androidProberIntentExecutionInfoExtension:Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;

    if-nez v1, :cond_3

    .line 2438
    new-instance v1, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;

    invoke-direct {v1}, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->androidProberIntentExecutionInfoExtension:Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;

    .line 2440
    :cond_3
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->androidProberIntentExecutionInfoExtension:Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2393
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x2a -> :sswitch_3
        0x30 -> :sswitch_4
        0x38 -> :sswitch_5
        0x1f42 -> :sswitch_6
        0x1db1e292 -> :sswitch_7
    .end sparse-switch
.end method

.method public setBuiltInIcon(I)Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2230
    iput p1, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->builtInIcon_:I

    .line 2231
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->bitField0_:I

    .line 2232
    return-object p0
.end method

.method public setFallbackGroup(I)Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2271
    iput p1, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->fallbackGroup_:I

    .line 2272
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->bitField0_:I

    .line 2273
    return-object p0
.end method

.method public setIconUrl(Ljava/lang/String;)Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2249
    if-nez p1, :cond_0

    .line 2250
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2252
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->iconUrl_:Ljava/lang/String;

    .line 2253
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->bitField0_:I

    .line 2254
    return-object p0
.end method

.method public setVeUiType(I)Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2290
    iput p1, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->veUiType_:I

    .line 2291
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->bitField0_:I

    .line 2292
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
    .line 2329
    iget-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->label:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    if-eqz v0, :cond_0

    .line 2330
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->label:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2332
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 2333
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->builtInIcon_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2335
    :cond_1
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 2336
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->iconUrl_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2338
    :cond_2
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 2339
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->fallbackGroup_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2341
    :cond_3
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 2342
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->veUiType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2344
    :cond_4
    iget-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->androidIntentExecutionInfoExtension:Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;

    if-eqz v0, :cond_5

    .line 2345
    const/16 v0, 0x3e8

    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->androidIntentExecutionInfoExtension:Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2347
    :cond_5
    iget-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->androidProberIntentExecutionInfoExtension:Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;

    if-eqz v0, :cond_6

    .line 2348
    const v0, 0x3b63c52

    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->androidProberIntentExecutionInfoExtension:Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2350
    :cond_6
    return-void
.end method
