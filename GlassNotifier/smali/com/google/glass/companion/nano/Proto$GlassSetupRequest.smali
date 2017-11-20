.class public final Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/nano/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlassSetupRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;


# instance fields
.field private bitField0_:I

.field private setupString_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7311
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 7312
    invoke-virtual {p0}, Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;->clear()Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;

    .line 7313
    return-void
.end method

.method public static emptyArray()[Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;
    .locals 2

    .prologue
    .line 7274
    sget-object v0, Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;

    if-nez v0, :cond_1

    .line 7275
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 7277
    :try_start_0
    sget-object v0, Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;

    if-nez v0, :cond_0

    .line 7278
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;

    sput-object v0, Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;

    .line 7280
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7282
    :cond_1
    sget-object v0, Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;

    return-object v0

    .line 7280
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7404
    new-instance v0, Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 7398
    new-instance v0, Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;
    .locals 1

    .prologue
    .line 7316
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;->bitField0_:I

    .line 7317
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;->setupString_:Ljava/lang/String;

    .line 7318
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 7319
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;->cachedSize:I

    .line 7320
    return-object p0
.end method

.method public clearSetupString()Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;
    .locals 1

    .prologue
    .line 7296
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;->setupString_:Ljava/lang/String;

    .line 7297
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;->bitField0_:I

    .line 7298
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 7364
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 7365
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 7366
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;->setupString_:Ljava/lang/String;

    .line 7367
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7369
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 7325
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 7339
    :cond_0
    :goto_0
    return v1

    .line 7328
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 7331
    check-cast v0, Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;

    .line 7332
    .local v0, "other":Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;->setupString_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;->setupString_:Ljava/lang/String;

    .line 7333
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7336
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 7337
    :cond_2
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 7339
    :cond_4
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getSetupString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7290
    iget-object v0, p0, Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;->setupString_:Ljava/lang/String;

    return-object v0
.end method

.method public hasSetupString()Z
    .locals 1

    .prologue
    .line 7293
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;->bitField0_:I

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
    .locals 3

    .prologue
    .line 7344
    const/16 v0, 0x11

    .line 7345
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 7346
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;->setupString_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 7347
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 7348
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 7349
    :goto_0
    add-int v0, v2, v1

    .line 7350
    return v0

    .line 7349
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7377
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 7378
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 7382
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7383
    :sswitch_0
    return-object p0

    .line 7388
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;->setupString_:Ljava/lang/String;

    .line 7389
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;->bitField0_:I

    goto :goto_0

    .line 7378
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 7268
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;

    move-result-object v0

    return-object v0
.end method

.method public setSetupString(Ljava/lang/String;)Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7301
    if-nez p1, :cond_0

    .line 7302
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7304
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;->setupString_:Ljava/lang/String;

    .line 7305
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;->bitField0_:I

    .line 7306
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
    .line 7356
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7357
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;->setupString_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7359
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 7360
    return-void
.end method
