.class public final Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "PronsNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/PronsNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetPronsResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse$PhrasePron;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;


# instance fields
.field public phrasePron:[Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse$PhrasePron;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;

    sput-object v0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 340
    sget-object v0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse$PhrasePron;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse$PhrasePron;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;->phrasePron:[Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse$PhrasePron;

    .line 190
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 442
    new-instance v0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 436
    new-instance v0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 344
    if-ne p1, p0, :cond_1

    .line 348
    :cond_0
    :goto_0
    return v1

    .line 345
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 346
    check-cast v0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;

    .line 347
    .local v0, "other":Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;->phrasePron:[Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse$PhrasePron;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;->phrasePron:[Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse$PhrasePron;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 348
    goto :goto_0

    .line 347
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;->unknownFieldData:Ljava/util/List;

    .line 348
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 378
    const/4 v1, 0x0

    .line 379
    .local v1, "size":I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;->phrasePron:[Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse$PhrasePron;

    if-eqz v2, :cond_1

    .line 380
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;->phrasePron:[Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse$PhrasePron;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 381
    .local v0, "element":Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse$PhrasePron;
    if-eqz v0, :cond_0

    .line 382
    const/4 v5, 0x1

    .line 383
    invoke-static {v5, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v1, v5

    .line 380
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 387
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse$PhrasePron;
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v2

    add-int/2addr v1, v2

    .line 388
    iput v1, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;->cachedSize:I

    .line 389
    return v1
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 352
    const/16 v1, 0x11

    .line 353
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;->phrasePron:[Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse$PhrasePron;

    if-nez v2, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 359
    :cond_0
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;->unknownFieldData:Ljava/util/List;

    if-nez v4, :cond_3

    :goto_0
    add-int v1, v2, v3

    .line 360
    return v1

    .line 355
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;->phrasePron:[Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse$PhrasePron;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 356
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;->phrasePron:[Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse$PhrasePron;

    aget-object v2, v2, v0

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 355
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 356
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;->phrasePron:[Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse$PhrasePron;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse$PhrasePron;->hashCode()I

    move-result v2

    goto :goto_2

    .line 359
    .end local v0    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;
    .locals 7
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 397
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 398
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 402
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;->unknownFieldData:Ljava/util/List;

    if-nez v5, :cond_1

    .line 403
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;->unknownFieldData:Ljava/util/List;

    .line 406
    :cond_1
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v5, p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 408
    :sswitch_0
    return-object p0

    .line 413
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 414
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;->phrasePron:[Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse$PhrasePron;

    if-nez v5, :cond_3

    move v1, v4

    .line 415
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse$PhrasePron;

    .line 416
    .local v2, "newArray":[Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse$PhrasePron;
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;->phrasePron:[Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse$PhrasePron;

    if-eqz v5, :cond_2

    .line 417
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;->phrasePron:[Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse$PhrasePron;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 419
    :cond_2
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;->phrasePron:[Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse$PhrasePron;

    .line 420
    :goto_2
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;->phrasePron:[Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse$PhrasePron;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_4

    .line 421
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;->phrasePron:[Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse$PhrasePron;

    new-instance v6, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse$PhrasePron;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse$PhrasePron;-><init>()V

    aput-object v6, v5, v1

    .line 422
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;->phrasePron:[Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse$PhrasePron;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 423
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 420
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 414
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse$PhrasePron;
    :cond_3
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;->phrasePron:[Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse$PhrasePron;

    array-length v1, v5

    goto :goto_1

    .line 426
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse$PhrasePron;
    :cond_4
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;->phrasePron:[Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse$PhrasePron;

    new-instance v6, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse$PhrasePron;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse$PhrasePron;-><init>()V

    aput-object v6, v5, v1

    .line 427
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;->phrasePron:[Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse$PhrasePron;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 398
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
    .line 186
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 365
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;->phrasePron:[Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse$PhrasePron;

    if-eqz v1, :cond_1

    .line 366
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;->phrasePron:[Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse$PhrasePron;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 367
    .local v0, "element":Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse$PhrasePron;
    if-eqz v0, :cond_0

    .line 368
    const/4 v4, 0x1

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 366
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 372
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse$PhrasePron;
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 374
    return-void
.end method
