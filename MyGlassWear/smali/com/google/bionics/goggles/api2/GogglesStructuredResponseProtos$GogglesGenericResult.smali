.class public final Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "GogglesStructuredResponseProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GogglesGenericResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;


# instance fields
.field private bitField0_:I

.field private fifeImageUrl_:Ljava/lang/String;

.field public link:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;

.field private subtitle_:Ljava/lang/String;

.field private title_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 274
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 275
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->clear()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;

    .line 276
    return-void
.end method

.method public static emptyArray()[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;
    .locals 2

    .prologue
    .line 192
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;

    if-nez v0, :cond_1

    .line 193
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 195
    :try_start_0
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;

    if-nez v0, :cond_0

    .line 196
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;

    sput-object v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;

    .line 198
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :cond_1
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;

    return-object v0

    .line 198
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 400
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 394
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->bitField0_:I

    .line 280
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->title_:Ljava/lang/String;

    .line 281
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->subtitle_:Ljava/lang/String;

    .line 282
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->fifeImageUrl_:Ljava/lang/String;

    .line 283
    invoke-static {}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->emptyArray()[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->link:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;

    .line 284
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->cachedSize:I

    .line 285
    return-object p0
.end method

.method public clearFifeImageUrl()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;
    .locals 1

    .prologue
    .line 266
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->fifeImageUrl_:Ljava/lang/String;

    .line 267
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->bitField0_:I

    .line 268
    return-object p0
.end method

.method public clearSubtitle()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;
    .locals 1

    .prologue
    .line 244
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->subtitle_:Ljava/lang/String;

    .line 245
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->bitField0_:I

    .line 246
    return-object p0
.end method

.method public clearTitle()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;
    .locals 1

    .prologue
    .line 222
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->title_:Ljava/lang/String;

    .line 223
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->bitField0_:I

    .line 224
    return-object p0
.end method

.method public getFifeImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->fifeImageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 312
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 313
    .local v2, "size":I
    iget v3, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 314
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->title_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 317
    :cond_0
    iget v3, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1

    .line 318
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->fifeImageUrl_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 321
    :cond_1
    iget v3, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    .line 322
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->subtitle_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 325
    :cond_2
    iget-object v3, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->link:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->link:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;

    array-length v3, v3

    if-lez v3, :cond_4

    .line 326
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->link:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 327
    iget-object v3, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->link:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;

    aget-object v0, v3, v1

    .line 328
    .local v0, "element":Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;
    if-eqz v0, :cond_3

    .line 329
    const/4 v3, 0x7

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 326
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 334
    .end local v0    # "element":Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;
    .end local v1    # "i":I
    :cond_4
    iput v2, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->cachedSize:I

    .line 335
    return v2
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->subtitle_:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public hasFifeImageUrl()Z
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSubtitle()Z
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->bitField0_:I

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
    .line 219
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 343
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 344
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 348
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 349
    :sswitch_0
    return-object p0

    .line 354
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->title_:Ljava/lang/String;

    .line 355
    iget v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->bitField0_:I

    goto :goto_0

    .line 359
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->fifeImageUrl_:Ljava/lang/String;

    .line 360
    iget v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->bitField0_:I

    goto :goto_0

    .line 364
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->subtitle_:Ljava/lang/String;

    .line 365
    iget v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->bitField0_:I

    goto :goto_0

    .line 369
    :sswitch_4
    const/16 v5, 0x3a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 371
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->link:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;

    if-nez v5, :cond_2

    move v1, v4

    .line 372
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;

    .line 374
    .local v2, "newArray":[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;
    if-eqz v1, :cond_1

    .line 375
    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->link:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 377
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 378
    new-instance v5, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;

    invoke-direct {v5}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;-><init>()V

    aput-object v5, v2, v1

    .line 379
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 380
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 377
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 371
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;
    :cond_2
    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->link:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;

    array-length v1, v5

    goto :goto_1

    .line 383
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;
    :cond_3
    new-instance v5, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;

    invoke-direct {v5}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;-><init>()V

    aput-object v5, v2, v1

    .line 384
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 385
    iput-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->link:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;

    goto :goto_0

    .line 344
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x3a -> :sswitch_4
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
    .line 8
    invoke-virtual {p0, p1}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;

    move-result-object v0

    return-object v0
.end method

.method public setFifeImageUrl(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 255
    if-nez p1, :cond_0

    .line 256
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 258
    :cond_0
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->fifeImageUrl_:Ljava/lang/String;

    .line 259
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->bitField0_:I

    .line 260
    return-object p0
.end method

.method public setSubtitle(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 233
    if-nez p1, :cond_0

    .line 234
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 236
    :cond_0
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->subtitle_:Ljava/lang/String;

    .line 237
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->bitField0_:I

    .line 238
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 211
    if-nez p1, :cond_0

    .line 212
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 214
    :cond_0
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->title_:Ljava/lang/String;

    .line 215
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->bitField0_:I

    .line 216
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
    .line 291
    iget v2, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 292
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->title_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 294
    :cond_0
    iget v2, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    .line 295
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->fifeImageUrl_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 297
    :cond_1
    iget v2, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 298
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->subtitle_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 300
    :cond_2
    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->link:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->link:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;

    array-length v2, v2

    if-lez v2, :cond_4

    .line 301
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->link:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 302
    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->link:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;

    aget-object v0, v2, v1

    .line 303
    .local v0, "element":Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;
    if-eqz v0, :cond_3

    .line 304
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 301
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 308
    .end local v0    # "element":Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;
    .end local v1    # "i":I
    :cond_4
    return-void
.end method
