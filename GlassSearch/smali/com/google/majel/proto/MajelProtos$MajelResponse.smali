.class public final Lcom/google/majel/proto/MajelProtos$MajelResponse;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "MajelProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/MajelProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MajelResponse"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/MajelProtos$MajelResponse;


# instance fields
.field private bitField0_:I

.field private debug_:Ljava/lang/String;

.field public peanut:[Lcom/google/majel/proto/PeanutProtos$Peanut;

.field private queryId_:Ljava/lang/String;

.field public setCookie:[Lcom/google/majel/proto/CookieProtos$MajelCookie;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 257
    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MajelResponse;->clear()Lcom/google/majel/proto/MajelProtos$MajelResponse;

    .line 258
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/MajelProtos$MajelResponse;
    .locals 2

    .prologue
    .line 193
    sget-object v0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->_emptyArray:[Lcom/google/majel/proto/MajelProtos$MajelResponse;

    if-nez v0, :cond_1

    .line 194
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 196
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->_emptyArray:[Lcom/google/majel/proto/MajelProtos$MajelResponse;

    if-nez v0, :cond_0

    .line 197
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/MajelProtos$MajelResponse;

    sput-object v0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->_emptyArray:[Lcom/google/majel/proto/MajelProtos$MajelResponse;

    .line 199
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    :cond_1
    sget-object v0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->_emptyArray:[Lcom/google/majel/proto/MajelProtos$MajelResponse;

    return-object v0

    .line 199
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/MajelProtos$MajelResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 407
    new-instance v0, Lcom/google/majel/proto/MajelProtos$MajelResponse;

    invoke-direct {v0}, Lcom/google/majel/proto/MajelProtos$MajelResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/MajelProtos$MajelResponse;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/MajelProtos$MajelResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/MajelProtos$MajelResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 401
    new-instance v0, Lcom/google/majel/proto/MajelProtos$MajelResponse;

    invoke-direct {v0}, Lcom/google/majel/proto/MajelProtos$MajelResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/MajelProtos$MajelResponse;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/MajelProtos$MajelResponse;
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->bitField0_:I

    .line 262
    invoke-static {}, Lcom/google/majel/proto/PeanutProtos$Peanut;->emptyArray()[Lcom/google/majel/proto/PeanutProtos$Peanut;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->peanut:[Lcom/google/majel/proto/PeanutProtos$Peanut;

    .line 263
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->debug_:Ljava/lang/String;

    .line 264
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->queryId_:Ljava/lang/String;

    .line 265
    invoke-static {}, Lcom/google/majel/proto/CookieProtos$MajelCookie;->emptyArray()[Lcom/google/majel/proto/CookieProtos$MajelCookie;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->setCookie:[Lcom/google/majel/proto/CookieProtos$MajelCookie;

    .line 266
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->cachedSize:I

    .line 267
    return-object p0
.end method

.method public clearDebug()Lcom/google/majel/proto/MajelProtos$MajelResponse;
    .locals 1

    .prologue
    .line 226
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->debug_:Ljava/lang/String;

    .line 227
    iget v0, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->bitField0_:I

    .line 228
    return-object p0
.end method

.method public clearQueryId()Lcom/google/majel/proto/MajelProtos$MajelResponse;
    .locals 1

    .prologue
    .line 248
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->queryId_:Ljava/lang/String;

    .line 249
    iget v0, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->bitField0_:I

    .line 250
    return-object p0
.end method

.method public getDebug()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->debug_:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->queryId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 299
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 300
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->peanut:[Lcom/google/majel/proto/PeanutProtos$Peanut;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->peanut:[Lcom/google/majel/proto/PeanutProtos$Peanut;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 301
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->peanut:[Lcom/google/majel/proto/PeanutProtos$Peanut;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 302
    iget-object v3, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->peanut:[Lcom/google/majel/proto/PeanutProtos$Peanut;

    aget-object v0, v3, v1

    .line 303
    .local v0, "element":Lcom/google/majel/proto/PeanutProtos$Peanut;
    if-eqz v0, :cond_0

    .line 304
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 301
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 309
    .end local v0    # "element":Lcom/google/majel/proto/PeanutProtos$Peanut;
    .end local v1    # "i":I
    :cond_1
    iget v3, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 310
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->debug_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 313
    :cond_2
    iget v3, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    .line 314
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->queryId_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 317
    :cond_3
    iget-object v3, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->setCookie:[Lcom/google/majel/proto/CookieProtos$MajelCookie;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->setCookie:[Lcom/google/majel/proto/CookieProtos$MajelCookie;

    array-length v3, v3

    if-lez v3, :cond_5

    .line 318
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->setCookie:[Lcom/google/majel/proto/CookieProtos$MajelCookie;

    array-length v3, v3

    if-ge v1, v3, :cond_5

    .line 319
    iget-object v3, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->setCookie:[Lcom/google/majel/proto/CookieProtos$MajelCookie;

    aget-object v0, v3, v1

    .line 320
    .local v0, "element":Lcom/google/majel/proto/CookieProtos$MajelCookie;
    if-eqz v0, :cond_4

    .line 321
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 318
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 326
    .end local v0    # "element":Lcom/google/majel/proto/CookieProtos$MajelCookie;
    .end local v1    # "i":I
    :cond_5
    iput v2, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->cachedSize:I

    .line 327
    return v2
.end method

.method public hasDebug()Z
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasQueryId()Z
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->bitField0_:I

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
    .line 187
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/MajelProtos$MajelResponse;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/MajelProtos$MajelResponse;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/MajelProtos$MajelResponse;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 335
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 336
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 340
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 341
    :sswitch_0
    return-object p0

    .line 346
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 348
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->peanut:[Lcom/google/majel/proto/PeanutProtos$Peanut;

    if-nez v5, :cond_2

    move v1, v4

    .line 349
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/PeanutProtos$Peanut;

    .line 351
    .local v2, "newArray":[Lcom/google/majel/proto/PeanutProtos$Peanut;
    if-eqz v1, :cond_1

    .line 352
    iget-object v5, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->peanut:[Lcom/google/majel/proto/PeanutProtos$Peanut;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 354
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 355
    new-instance v5, Lcom/google/majel/proto/PeanutProtos$Peanut;

    invoke-direct {v5}, Lcom/google/majel/proto/PeanutProtos$Peanut;-><init>()V

    aput-object v5, v2, v1

    .line 356
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 357
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 354
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 348
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/PeanutProtos$Peanut;
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->peanut:[Lcom/google/majel/proto/PeanutProtos$Peanut;

    array-length v1, v5

    goto :goto_1

    .line 360
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/PeanutProtos$Peanut;
    :cond_3
    new-instance v5, Lcom/google/majel/proto/PeanutProtos$Peanut;

    invoke-direct {v5}, Lcom/google/majel/proto/PeanutProtos$Peanut;-><init>()V

    aput-object v5, v2, v1

    .line 361
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 362
    iput-object v2, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->peanut:[Lcom/google/majel/proto/PeanutProtos$Peanut;

    goto :goto_0

    .line 366
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/PeanutProtos$Peanut;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->debug_:Ljava/lang/String;

    .line 367
    iget v5, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->bitField0_:I

    goto :goto_0

    .line 371
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->queryId_:Ljava/lang/String;

    .line 372
    iget v5, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->bitField0_:I

    goto :goto_0

    .line 376
    :sswitch_4
    const/16 v5, 0x22

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 378
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->setCookie:[Lcom/google/majel/proto/CookieProtos$MajelCookie;

    if-nez v5, :cond_5

    move v1, v4

    .line 379
    .restart local v1    # "i":I
    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/CookieProtos$MajelCookie;

    .line 381
    .local v2, "newArray":[Lcom/google/majel/proto/CookieProtos$MajelCookie;
    if-eqz v1, :cond_4

    .line 382
    iget-object v5, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->setCookie:[Lcom/google/majel/proto/CookieProtos$MajelCookie;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 384
    :cond_4
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_6

    .line 385
    new-instance v5, Lcom/google/majel/proto/CookieProtos$MajelCookie;

    invoke-direct {v5}, Lcom/google/majel/proto/CookieProtos$MajelCookie;-><init>()V

    aput-object v5, v2, v1

    .line 386
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 387
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 384
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 378
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/CookieProtos$MajelCookie;
    :cond_5
    iget-object v5, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->setCookie:[Lcom/google/majel/proto/CookieProtos$MajelCookie;

    array-length v1, v5

    goto :goto_3

    .line 390
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/CookieProtos$MajelCookie;
    :cond_6
    new-instance v5, Lcom/google/majel/proto/CookieProtos$MajelCookie;

    invoke-direct {v5}, Lcom/google/majel/proto/CookieProtos$MajelCookie;-><init>()V

    aput-object v5, v2, v1

    .line 391
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 392
    iput-object v2, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->setCookie:[Lcom/google/majel/proto/CookieProtos$MajelCookie;

    goto/16 :goto_0

    .line 336
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public setDebug(Ljava/lang/String;)Lcom/google/majel/proto/MajelProtos$MajelResponse;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 215
    if-nez p1, :cond_0

    .line 216
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 218
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->debug_:Ljava/lang/String;

    .line 219
    iget v0, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->bitField0_:I

    .line 220
    return-object p0
.end method

.method public setQueryId(Ljava/lang/String;)Lcom/google/majel/proto/MajelProtos$MajelResponse;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 237
    if-nez p1, :cond_0

    .line 238
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 240
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->queryId_:Ljava/lang/String;

    .line 241
    iget v0, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->bitField0_:I

    .line 242
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
    .line 273
    iget-object v2, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->peanut:[Lcom/google/majel/proto/PeanutProtos$Peanut;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->peanut:[Lcom/google/majel/proto/PeanutProtos$Peanut;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 274
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->peanut:[Lcom/google/majel/proto/PeanutProtos$Peanut;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 275
    iget-object v2, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->peanut:[Lcom/google/majel/proto/PeanutProtos$Peanut;

    aget-object v0, v2, v1

    .line 276
    .local v0, "element":Lcom/google/majel/proto/PeanutProtos$Peanut;
    if-eqz v0, :cond_0

    .line 277
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 274
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 281
    .end local v0    # "element":Lcom/google/majel/proto/PeanutProtos$Peanut;
    .end local v1    # "i":I
    :cond_1
    iget v2, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 282
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->debug_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 284
    :cond_2
    iget v2, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    .line 285
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->queryId_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 287
    :cond_3
    iget-object v2, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->setCookie:[Lcom/google/majel/proto/CookieProtos$MajelCookie;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->setCookie:[Lcom/google/majel/proto/CookieProtos$MajelCookie;

    array-length v2, v2

    if-lez v2, :cond_5

    .line 288
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->setCookie:[Lcom/google/majel/proto/CookieProtos$MajelCookie;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 289
    iget-object v2, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->setCookie:[Lcom/google/majel/proto/CookieProtos$MajelCookie;

    aget-object v0, v2, v1

    .line 290
    .local v0, "element":Lcom/google/majel/proto/CookieProtos$MajelCookie;
    if-eqz v0, :cond_4

    .line 291
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 288
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 295
    .end local v0    # "element":Lcom/google/majel/proto/CookieProtos$MajelCookie;
    .end local v1    # "i":I
    :cond_5
    return-void
.end method
