.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KnowledgeResult"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;


# instance fields
.field private bitField0_:I

.field public descriptionAttribution:Lcom/google/majel/proto/AttributionProtos$Attribution;

.field private description_:Ljava/lang/String;

.field public fact:[Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;

.field private title_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11297
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 11298
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->clear()Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;

    .line 11299
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;
    .locals 2

    .prologue
    .line 11234
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;

    if-nez v0, :cond_1

    .line 11235
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 11237
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;

    if-nez v0, :cond_0

    .line 11238
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;

    sput-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;

    .line 11240
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11242
    :cond_1
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;

    return-object v0

    .line 11240
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11425
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 11419
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;
    .locals 1

    .prologue
    .line 11302
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->bitField0_:I

    .line 11303
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->title_:Ljava/lang/String;

    .line 11304
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->description_:Ljava/lang/String;

    .line 11305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->descriptionAttribution:Lcom/google/majel/proto/AttributionProtos$Attribution;

    .line 11306
    invoke-static {}, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->fact:[Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;

    .line 11307
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->cachedSize:I

    .line 11308
    return-object p0
.end method

.method public clearDescription()Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;
    .locals 1

    .prologue
    .line 11286
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->description_:Ljava/lang/String;

    .line 11287
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->bitField0_:I

    .line 11288
    return-object p0
.end method

.method public clearTitle()Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;
    .locals 1

    .prologue
    .line 11264
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->title_:Ljava/lang/String;

    .line 11265
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->bitField0_:I

    .line 11266
    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11272
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->description_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 11335
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 11336
    .local v2, "size":I
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 11337
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->title_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 11340
    :cond_0
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 11341
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->description_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 11344
    :cond_1
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->descriptionAttribution:Lcom/google/majel/proto/AttributionProtos$Attribution;

    if-eqz v3, :cond_2

    .line 11345
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->descriptionAttribution:Lcom/google/majel/proto/AttributionProtos$Attribution;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 11348
    :cond_2
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->fact:[Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->fact:[Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;

    array-length v3, v3

    if-lez v3, :cond_4

    .line 11349
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->fact:[Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 11350
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->fact:[Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;

    aget-object v0, v3, v1

    .line 11351
    .local v0, "element":Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;
    if-eqz v0, :cond_3

    .line 11352
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 11349
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11357
    .end local v0    # "element":Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;
    .end local v1    # "i":I
    :cond_4
    iput v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->cachedSize:I

    .line 11358
    return v2
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11250
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDescription()Z
    .locals 1

    .prologue
    .line 11283
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 11261
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->bitField0_:I

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
    .line 11228
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 11366
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 11367
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 11371
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 11372
    :sswitch_0
    return-object p0

    .line 11377
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->title_:Ljava/lang/String;

    .line 11378
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->bitField0_:I

    goto :goto_0

    .line 11382
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->description_:Ljava/lang/String;

    .line 11383
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->bitField0_:I

    goto :goto_0

    .line 11387
    :sswitch_3
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->descriptionAttribution:Lcom/google/majel/proto/AttributionProtos$Attribution;

    if-nez v5, :cond_1

    .line 11388
    new-instance v5, Lcom/google/majel/proto/AttributionProtos$Attribution;

    invoke-direct {v5}, Lcom/google/majel/proto/AttributionProtos$Attribution;-><init>()V

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->descriptionAttribution:Lcom/google/majel/proto/AttributionProtos$Attribution;

    .line 11390
    :cond_1
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->descriptionAttribution:Lcom/google/majel/proto/AttributionProtos$Attribution;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 11394
    :sswitch_4
    const/16 v5, 0x22

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 11396
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->fact:[Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;

    if-nez v5, :cond_3

    move v1, v4

    .line 11397
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;

    .line 11399
    .local v2, "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;
    if-eqz v1, :cond_2

    .line 11400
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->fact:[Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11402
    :cond_2
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_4

    .line 11403
    new-instance v5, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;

    invoke-direct {v5}, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;-><init>()V

    aput-object v5, v2, v1

    .line 11404
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 11405
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 11402
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 11396
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;
    :cond_3
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->fact:[Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;

    array-length v1, v5

    goto :goto_1

    .line 11408
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;
    :cond_4
    new-instance v5, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;

    invoke-direct {v5}, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;-><init>()V

    aput-object v5, v2, v1

    .line 11409
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 11410
    iput-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->fact:[Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;

    goto :goto_0

    .line 11367
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 11275
    if-nez p1, :cond_0

    .line 11276
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11278
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->description_:Ljava/lang/String;

    .line 11279
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->bitField0_:I

    .line 11280
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 11253
    if-nez p1, :cond_0

    .line 11254
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11256
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->title_:Ljava/lang/String;

    .line 11257
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->bitField0_:I

    .line 11258
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
    .line 11314
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 11315
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->title_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 11317
    :cond_0
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 11318
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->description_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 11320
    :cond_1
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->descriptionAttribution:Lcom/google/majel/proto/AttributionProtos$Attribution;

    if-eqz v2, :cond_2

    .line 11321
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->descriptionAttribution:Lcom/google/majel/proto/AttributionProtos$Attribution;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 11323
    :cond_2
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->fact:[Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->fact:[Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;

    array-length v2, v2

    if-lez v2, :cond_4

    .line 11324
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->fact:[Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 11325
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->fact:[Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;

    aget-object v0, v2, v1

    .line 11326
    .local v0, "element":Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;
    if-eqz v0, :cond_3

    .line 11327
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 11324
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11331
    .end local v0    # "element":Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;
    .end local v1    # "i":I
    :cond_4
    return-void
.end method
