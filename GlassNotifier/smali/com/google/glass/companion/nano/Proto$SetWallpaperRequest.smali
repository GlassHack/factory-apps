.class public final Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/nano/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetWallpaperRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;


# instance fields
.field private bitField0_:I

.field private id_:I

.field public wallpaper:Lcom/google/glass/companion/nano/Proto$Media;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10255
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 10256
    invoke-virtual {p0}, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->clear()Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;

    .line 10257
    return-void
.end method

.method public static emptyArray()[Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;
    .locals 2

    .prologue
    .line 10218
    sget-object v0, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;

    if-nez v0, :cond_1

    .line 10219
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 10221
    :try_start_0
    sget-object v0, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;

    if-nez v0, :cond_0

    .line 10222
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;

    sput-object v0, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;

    .line 10224
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10226
    :cond_1
    sget-object v0, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;

    return-object v0

    .line 10224
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10374
    new-instance v0, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 10368
    new-instance v0, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 10260
    iput v0, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->bitField0_:I

    .line 10261
    iput v0, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->id_:I

    .line 10262
    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->wallpaper:Lcom/google/glass/companion/nano/Proto$Media;

    .line 10263
    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 10264
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->cachedSize:I

    .line 10265
    return-object p0
.end method

.method public clearId()Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;
    .locals 1

    .prologue
    .line 10240
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->id_:I

    .line 10241
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->bitField0_:I

    .line 10242
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 10323
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 10324
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 10325
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->id_:I

    .line 10326
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10328
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->wallpaper:Lcom/google/glass/companion/nano/Proto$Media;

    if-eqz v1, :cond_1

    .line 10329
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->wallpaper:Lcom/google/glass/companion/nano/Proto$Media;

    .line 10330
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10332
    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 10270
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 10293
    :cond_0
    :goto_0
    return v1

    .line 10273
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 10276
    check-cast v0, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;

    .line 10277
    .local v0, "other":Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->id_:I

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->id_:I

    if-ne v3, v4, :cond_0

    .line 10281
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->wallpaper:Lcom/google/glass/companion/nano/Proto$Media;

    if-nez v3, :cond_5

    .line 10282
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->wallpaper:Lcom/google/glass/companion/nano/Proto$Media;

    if-nez v3, :cond_0

    .line 10290
    :cond_2
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 10291
    :cond_3
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .line 10286
    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->wallpaper:Lcom/google/glass/companion/nano/Proto$Media;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->wallpaper:Lcom/google/glass/companion/nano/Proto$Media;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/nano/Proto$Media;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 10293
    :cond_6
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 10234
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->id_:I

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 10237
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 10298
    const/16 v0, 0x11

    .line 10299
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 10300
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->id_:I

    add-int v0, v1, v3

    .line 10301
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->wallpaper:Lcom/google/glass/companion/nano/Proto$Media;

    if-nez v1, :cond_1

    move v1, v2

    .line 10302
    :goto_0
    add-int v0, v3, v1

    .line 10303
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 10304
    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 10305
    :cond_0
    :goto_1
    add-int v0, v1, v2

    .line 10306
    return v0

    .line 10302
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->wallpaper:Lcom/google/glass/companion/nano/Proto$Media;

    invoke-virtual {v1}, Lcom/google/glass/companion/nano/Proto$Media;->hashCode()I

    move-result v1

    goto :goto_0

    .line 10305
    :cond_2
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v2}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10340
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 10341
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 10345
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 10346
    :sswitch_0
    return-object p0

    .line 10351
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->id_:I

    .line 10352
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->bitField0_:I

    goto :goto_0

    .line 10356
    :sswitch_2
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->wallpaper:Lcom/google/glass/companion/nano/Proto$Media;

    if-nez v1, :cond_1

    .line 10357
    new-instance v1, Lcom/google/glass/companion/nano/Proto$Media;

    invoke-direct {v1}, Lcom/google/glass/companion/nano/Proto$Media;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->wallpaper:Lcom/google/glass/companion/nano/Proto$Media;

    .line 10359
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->wallpaper:Lcom/google/glass/companion/nano/Proto$Media;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 10341
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10212
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;

    move-result-object v0

    return-object v0
.end method

.method public setId(I)Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 10245
    iput p1, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->id_:I

    .line 10246
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->bitField0_:I

    .line 10247
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10312
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 10313
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->id_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10315
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->wallpaper:Lcom/google/glass/companion/nano/Proto$Media;

    if-eqz v0, :cond_1

    .line 10316
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->wallpaper:Lcom/google/glass/companion/nano/Proto$Media;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 10318
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 10319
    return-void
.end method
