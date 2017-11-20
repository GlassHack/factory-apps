.class public final Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "TimelineNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/TimelineNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoggingAnnotations"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;


# instance fields
.field private bitField0_:I

.field private cardType_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6250
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6251
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 6256
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;->cardType_:I

    .line 6251
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6348
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 6342
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;

    return-object v0
.end method


# virtual methods
.method public clearCardType()Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;
    .locals 1

    .prologue
    .line 6269
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;->cardType_:I

    .line 6270
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;->bitField0_:I

    .line 6271
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6276
    if-ne p1, p0, :cond_1

    .line 6280
    :cond_0
    :goto_0
    return v1

    .line 6277
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 6278
    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;

    .line 6279
    .local v0, "other":Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;->cardType_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;->cardType_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 6280
    goto :goto_0

    .line 6279
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;->unknownFieldData:Ljava/util/List;

    .line 6280
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getCardType()I
    .locals 1

    .prologue
    .line 6258
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;->cardType_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 6301
    const/4 v0, 0x0

    .line 6302
    .local v0, "size":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 6303
    const/16 v1, 0x33

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;->cardType_:I

    .line 6304
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6306
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6307
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;->cachedSize:I

    .line 6308
    return v0
.end method

.method public hasCardType()Z
    .locals 1

    .prologue
    .line 6266
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;->bitField0_:I

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
    .line 6284
    const/16 v0, 0x11

    .line 6285
    .local v0, "result":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;->cardType_:I

    add-int/lit16 v0, v1, 0x20f

    .line 6286
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int v0, v2, v1

    .line 6287
    return v0

    .line 6286
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6316
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 6317
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 6321
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 6322
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;->unknownFieldData:Ljava/util/List;

    .line 6325
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6327
    :sswitch_0
    return-object p0

    .line 6332
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;->cardType_:I

    .line 6333
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;->bitField0_:I

    goto :goto_0

    .line 6317
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x198 -> :sswitch_1
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
    .line 6247
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;

    move-result-object v0

    return-object v0
.end method

.method public setCardType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6261
    iput p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;->cardType_:I

    .line 6262
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;->bitField0_:I

    .line 6263
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
    .line 6292
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 6293
    const/16 v0, 0x33

    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;->cardType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6295
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 6297
    return-void
.end method
