.class public final Lcom/google/glass/companion/Proto$GlassSetupRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlassSetupRequest"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$GlassSetupRequest;


# instance fields
.field private bitField0_:I

.field private setupString_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6285
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$GlassSetupRequest;

    sput-object v0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$GlassSetupRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6286
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 6291
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->setupString_:Ljava/lang/String;

    .line 6286
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassSetupRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6386
    new-instance v0, Lcom/google/glass/companion/Proto$GlassSetupRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$GlassSetupRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$GlassSetupRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassSetupRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$GlassSetupRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 6380
    new-instance v0, Lcom/google/glass/companion/Proto$GlassSetupRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$GlassSetupRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$GlassSetupRequest;

    return-object v0
.end method


# virtual methods
.method public clearSetupString()Lcom/google/glass/companion/Proto$GlassSetupRequest;
    .locals 1

    .prologue
    .line 6307
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->setupString_:Ljava/lang/String;

    .line 6308
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->bitField0_:I

    .line 6309
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6314
    if-ne p1, p0, :cond_1

    .line 6318
    :cond_0
    :goto_0
    return v1

    .line 6315
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$GlassSetupRequest;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 6316
    check-cast v0, Lcom/google/glass/companion/Proto$GlassSetupRequest;

    .line 6317
    .local v0, "other":Lcom/google/glass/companion/Proto$GlassSetupRequest;
    iget-object v3, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->setupString_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->setupString_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 6318
    goto :goto_0

    .line 6317
    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->setupString_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->setupString_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->unknownFieldData:Ljava/util/List;

    .line 6318
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 6339
    const/4 v0, 0x0

    .line 6340
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 6341
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->setupString_:Ljava/lang/String;

    .line 6342
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6344
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6345
    iput v0, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->cachedSize:I

    .line 6346
    return v0
.end method

.method public getSetupString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6293
    iget-object v0, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->setupString_:Ljava/lang/String;

    return-object v0
.end method

.method public hasSetupString()Z
    .locals 1

    .prologue
    .line 6304
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->bitField0_:I

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

    .line 6322
    const/16 v0, 0x11

    .line 6323
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->setupString_:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 6324
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_1

    :goto_1
    add-int v0, v1, v2

    .line 6325
    return v0

    .line 6323
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->setupString_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 6324
    :cond_1
    iget-object v2, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassSetupRequest;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6354
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 6355
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 6359
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 6360
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->unknownFieldData:Ljava/util/List;

    .line 6363
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6365
    :sswitch_0
    return-object p0

    .line 6370
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->setupString_:Ljava/lang/String;

    .line 6371
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->bitField0_:I

    goto :goto_0

    .line 6355
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
    .line 6282
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$GlassSetupRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassSetupRequest;

    move-result-object v0

    return-object v0
.end method

.method public setSetupString(Ljava/lang/String;)Lcom/google/glass/companion/Proto$GlassSetupRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6296
    if-nez p1, :cond_0

    .line 6297
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6299
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->setupString_:Ljava/lang/String;

    .line 6300
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->bitField0_:I

    .line 6301
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
    .line 6330
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 6331
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->setupString_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6333
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 6335
    return-void
.end method
