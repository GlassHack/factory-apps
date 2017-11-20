.class public final Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BookItem"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;


# instance fields
.field private author_:Ljava/lang/String;

.field private bitField0_:I

.field private bookAppUrl_:Ljava/lang/String;

.field private genre_:Ljava/lang/String;

.field private title_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6289
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 6290
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->clear()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;

    .line 6291
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;
    .locals 2

    .prologue
    .line 6188
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;

    if-nez v0, :cond_1

    .line 6189
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 6191
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;

    if-nez v0, :cond_0

    .line 6192
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;

    .line 6194
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6196
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;

    return-object v0

    .line 6194
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6390
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 6384
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;
    .locals 1

    .prologue
    .line 6294
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->bitField0_:I

    .line 6295
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->author_:Ljava/lang/String;

    .line 6296
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->title_:Ljava/lang/String;

    .line 6297
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->genre_:Ljava/lang/String;

    .line 6298
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->bookAppUrl_:Ljava/lang/String;

    .line 6299
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->cachedSize:I

    .line 6300
    return-object p0
.end method

.method public clearAuthor()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;
    .locals 1

    .prologue
    .line 6218
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->author_:Ljava/lang/String;

    .line 6219
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->bitField0_:I

    .line 6220
    return-object p0
.end method

.method public clearBookAppUrl()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;
    .locals 1

    .prologue
    .line 6284
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->bookAppUrl_:Ljava/lang/String;

    .line 6285
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->bitField0_:I

    .line 6286
    return-object p0
.end method

.method public clearGenre()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;
    .locals 1

    .prologue
    .line 6262
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->genre_:Ljava/lang/String;

    .line 6263
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->bitField0_:I

    .line 6264
    return-object p0
.end method

.method public clearTitle()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;
    .locals 1

    .prologue
    .line 6240
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->title_:Ljava/lang/String;

    .line 6241
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->bitField0_:I

    .line 6242
    return-object p0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6204
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->author_:Ljava/lang/String;

    return-object v0
.end method

.method public getBookAppUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6270
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->bookAppUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6248
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->genre_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 6322
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 6323
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 6324
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->author_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6327
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 6328
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->title_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6331
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 6332
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->genre_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6335
    :cond_2
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 6336
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->bookAppUrl_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6339
    :cond_3
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->cachedSize:I

    .line 6340
    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6226
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAuthor()Z
    .locals 1

    .prologue
    .line 6215
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasBookAppUrl()Z
    .locals 1

    .prologue
    .line 6281
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGenre()Z
    .locals 1

    .prologue
    .line 6259
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

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
    .line 6237
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->bitField0_:I

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
    .line 6182
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6348
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 6349
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 6353
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6354
    :sswitch_0
    return-object p0

    .line 6359
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->author_:Ljava/lang/String;

    .line 6360
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->bitField0_:I

    goto :goto_0

    .line 6364
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->title_:Ljava/lang/String;

    .line 6365
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->bitField0_:I

    goto :goto_0

    .line 6369
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->genre_:Ljava/lang/String;

    .line 6370
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->bitField0_:I

    goto :goto_0

    .line 6374
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->bookAppUrl_:Ljava/lang/String;

    .line 6375
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->bitField0_:I

    goto :goto_0

    .line 6349
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x32 -> :sswitch_4
    .end sparse-switch
.end method

.method public setAuthor(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6207
    if-nez p1, :cond_0

    .line 6208
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6210
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->author_:Ljava/lang/String;

    .line 6211
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->bitField0_:I

    .line 6212
    return-object p0
.end method

.method public setBookAppUrl(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6273
    if-nez p1, :cond_0

    .line 6274
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6276
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->bookAppUrl_:Ljava/lang/String;

    .line 6277
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->bitField0_:I

    .line 6278
    return-object p0
.end method

.method public setGenre(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6251
    if-nez p1, :cond_0

    .line 6252
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6254
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->genre_:Ljava/lang/String;

    .line 6255
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->bitField0_:I

    .line 6256
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6229
    if-nez p1, :cond_0

    .line 6230
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6232
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->title_:Ljava/lang/String;

    .line 6233
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->bitField0_:I

    .line 6234
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
    .line 6306
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 6307
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->author_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6309
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 6310
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->title_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6312
    :cond_1
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 6313
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->genre_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6315
    :cond_2
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 6316
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->bookAppUrl_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6318
    :cond_3
    return-void
.end method
