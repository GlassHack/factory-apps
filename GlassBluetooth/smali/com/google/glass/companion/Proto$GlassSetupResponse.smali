.class public final Lcom/google/glass/companion/Proto$GlassSetupResponse;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlassSetupResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/Proto$GlassSetupResponse$SetupStatus;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$GlassSetupResponse;


# instance fields
.field private bitField0_:I

.field private setupStatus_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6542
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$GlassSetupResponse;

    sput-object v0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$GlassSetupResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6543
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 6553
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->setupStatus_:I

    .line 6543
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassSetupResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6651
    new-instance v0, Lcom/google/glass/companion/Proto$GlassSetupResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$GlassSetupResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$GlassSetupResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassSetupResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$GlassSetupResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 6645
    new-instance v0, Lcom/google/glass/companion/Proto$GlassSetupResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$GlassSetupResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$GlassSetupResponse;

    return-object v0
.end method


# virtual methods
.method public clearSetupStatus()Lcom/google/glass/companion/Proto$GlassSetupResponse;
    .locals 1

    .prologue
    .line 6566
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->setupStatus_:I

    .line 6567
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->bitField0_:I

    .line 6568
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6573
    if-ne p1, p0, :cond_1

    .line 6577
    :cond_0
    :goto_0
    return v1

    .line 6574
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$GlassSetupResponse;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 6575
    check-cast v0, Lcom/google/glass/companion/Proto$GlassSetupResponse;

    .line 6576
    .local v0, "other":Lcom/google/glass/companion/Proto$GlassSetupResponse;
    iget v3, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->setupStatus_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->setupStatus_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 6577
    goto :goto_0

    .line 6576
    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->unknownFieldData:Ljava/util/List;

    .line 6577
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 6598
    const/4 v0, 0x0

    .line 6599
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 6600
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->setupStatus_:I

    .line 6601
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6603
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6604
    iput v0, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->cachedSize:I

    .line 6605
    return v0
.end method

.method public getSetupStatus()I
    .locals 1

    .prologue
    .line 6555
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->setupStatus_:I

    return v0
.end method

.method public hasSetupStatus()Z
    .locals 1

    .prologue
    .line 6563
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->bitField0_:I

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
    .line 6581
    const/16 v0, 0x11

    .line 6582
    .local v0, "result":I
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->setupStatus_:I

    add-int/lit16 v0, v1, 0x20f

    .line 6583
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int v0, v2, v1

    .line 6584
    return v0

    .line 6583
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassSetupResponse;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 6613
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 6614
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 6618
    iget-object v2, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    .line 6619
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->unknownFieldData:Ljava/util/List;

    .line 6622
    :cond_1
    iget-object v2, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v2, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6624
    :sswitch_0
    return-object p0

    .line 6629
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 6630
    .local v1, "temp":I
    if-eq v1, v3, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 6632
    :cond_2
    iput v1, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->setupStatus_:I

    .line 6633
    iget v2, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->bitField0_:I

    goto :goto_0

    .line 6635
    :cond_3
    iput v3, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->setupStatus_:I

    goto :goto_0

    .line 6614
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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
    .line 6539
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$GlassSetupResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassSetupResponse;

    move-result-object v0

    return-object v0
.end method

.method public setSetupStatus(I)Lcom/google/glass/companion/Proto$GlassSetupResponse;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6558
    iput p1, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->setupStatus_:I

    .line 6559
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->bitField0_:I

    .line 6560
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
    .line 6589
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 6590
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->setupStatus_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6592
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 6594
    return-void
.end method
