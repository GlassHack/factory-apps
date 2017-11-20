.class public final Lcom/google/glass/companion/Proto$OpenEndedInputRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OpenEndedInputRequest"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$OpenEndedInputRequest;


# instance fields
.field private bitField0_:I

.field private control_:I

.field private currentInput_:Ljava/lang/String;

.field private prompt_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8313
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    sput-object v0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8314
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8319
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->control_:I

    .line 8338
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->prompt_:Ljava/lang/String;

    .line 8360
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->currentInput_:Ljava/lang/String;

    .line 8314
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$OpenEndedInputRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8489
    new-instance v0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$OpenEndedInputRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 8483
    new-instance v0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    return-object v0
.end method


# virtual methods
.method public clearControl()Lcom/google/glass/companion/Proto$OpenEndedInputRequest;
    .locals 1

    .prologue
    .line 8332
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->control_:I

    .line 8333
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->bitField0_:I

    .line 8334
    return-object p0
.end method

.method public clearCurrentInput()Lcom/google/glass/companion/Proto$OpenEndedInputRequest;
    .locals 1

    .prologue
    .line 8376
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->currentInput_:Ljava/lang/String;

    .line 8377
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->bitField0_:I

    .line 8378
    return-object p0
.end method

.method public clearPrompt()Lcom/google/glass/companion/Proto$OpenEndedInputRequest;
    .locals 1

    .prologue
    .line 8354
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->prompt_:Ljava/lang/String;

    .line 8355
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->bitField0_:I

    .line 8356
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 8383
    if-ne p1, p0, :cond_1

    .line 8389
    :cond_0
    :goto_0
    return v1

    .line 8384
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 8385
    check-cast v0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    .line 8386
    .local v0, "other":Lcom/google/glass/companion/Proto$OpenEndedInputRequest;
    iget v3, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->control_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->control_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->prompt_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->prompt_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 8387
    :goto_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->currentInput_:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->currentInput_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 8388
    :goto_2
    iget-object v3, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 8389
    goto :goto_0

    .line 8386
    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->prompt_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->prompt_:Ljava/lang/String;

    .line 8387
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->currentInput_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->currentInput_:Ljava/lang/String;

    .line 8388
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->unknownFieldData:Ljava/util/List;

    .line 8389
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getControl()I
    .locals 1

    .prologue
    .line 8321
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->control_:I

    return v0
.end method

.method public getCurrentInput()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8362
    iget-object v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->currentInput_:Ljava/lang/String;

    return-object v0
.end method

.method public getPrompt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8340
    iget-object v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->prompt_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 8418
    const/4 v0, 0x0

    .line 8419
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 8420
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->control_:I

    .line 8421
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8423
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 8424
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->prompt_:Ljava/lang/String;

    .line 8425
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8427
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 8428
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->currentInput_:Ljava/lang/String;

    .line 8429
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8431
    :cond_2
    iget-object v1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8432
    iput v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->cachedSize:I

    .line 8433
    return v0
.end method

.method public hasControl()Z
    .locals 1

    .prologue
    .line 8329
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCurrentInput()Z
    .locals 1

    .prologue
    .line 8373
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrompt()Z
    .locals 1

    .prologue
    .line 8351
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

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

    .line 8393
    const/16 v0, 0x11

    .line 8394
    .local v0, "result":I
    iget v1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->control_:I

    add-int/lit16 v0, v1, 0x20f

    .line 8395
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->prompt_:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int v0, v3, v1

    .line 8396
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->currentInput_:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 8397
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_2

    :goto_2
    add-int v0, v1, v2

    .line 8398
    return v0

    .line 8395
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->prompt_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 8396
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->currentInput_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    .line 8397
    :cond_2
    iget-object v2, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$OpenEndedInputRequest;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 8441
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 8442
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 8446
    iget-object v2, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    .line 8447
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->unknownFieldData:Ljava/util/List;

    .line 8450
    :cond_1
    iget-object v2, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v2, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8452
    :sswitch_0
    return-object p0

    .line 8457
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 8458
    .local v1, "temp":I
    if-eq v1, v3, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 8460
    :cond_2
    iput v1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->control_:I

    .line 8461
    iget v2, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->bitField0_:I

    goto :goto_0

    .line 8463
    :cond_3
    iput v3, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->control_:I

    goto :goto_0

    .line 8468
    .end local v1    # "temp":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->prompt_:Ljava/lang/String;

    .line 8469
    iget v2, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->bitField0_:I

    goto :goto_0

    .line 8473
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->currentInput_:Ljava/lang/String;

    .line 8474
    iget v2, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->bitField0_:I

    goto :goto_0

    .line 8442
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 8310
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    move-result-object v0

    return-object v0
.end method

.method public setControl(I)Lcom/google/glass/companion/Proto$OpenEndedInputRequest;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 8324
    iput p1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->control_:I

    .line 8325
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->bitField0_:I

    .line 8326
    return-object p0
.end method

.method public setCurrentInput(Ljava/lang/String;)Lcom/google/glass/companion/Proto$OpenEndedInputRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 8365
    if-nez p1, :cond_0

    .line 8366
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8368
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->currentInput_:Ljava/lang/String;

    .line 8369
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->bitField0_:I

    .line 8370
    return-object p0
.end method

.method public setPrompt(Ljava/lang/String;)Lcom/google/glass/companion/Proto$OpenEndedInputRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 8343
    if-nez p1, :cond_0

    .line 8344
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8346
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->prompt_:Ljava/lang/String;

    .line 8347
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->bitField0_:I

    .line 8348
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
    .line 8403
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 8404
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->control_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8406
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 8407
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->prompt_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 8409
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 8410
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->currentInput_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 8412
    :cond_2
    iget-object v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 8414
    return-void
.end method
