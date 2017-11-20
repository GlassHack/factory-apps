.class public final Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "GlasswareUsageLogNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/GlasswareUsageLogNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ItemViewed"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;


# instance fields
.field private bitField0_:I

.field private position_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 515
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;

    sput-object v0, Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;->EMPTY_ARRAY:[Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 516
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 521
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;->position_:I

    .line 516
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 613
    new-instance v0, Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;

    invoke-direct {v0}, Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 607
    new-instance v0, Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;

    invoke-direct {v0}, Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;

    return-object v0
.end method


# virtual methods
.method public clearPosition()Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;
    .locals 1

    .prologue
    .line 534
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;->position_:I

    .line 535
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;->bitField0_:I

    .line 536
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 541
    if-ne p1, p0, :cond_1

    .line 545
    :cond_0
    :goto_0
    return v1

    .line 542
    :cond_1
    instance-of v3, p1, Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 543
    check-cast v0, Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;

    .line 544
    .local v0, "other":Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;
    iget v3, p0, Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;->position_:I

    iget v4, v0, Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;->position_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 545
    goto :goto_0

    .line 544
    :cond_4
    iget-object v3, p0, Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;->unknownFieldData:Ljava/util/List;

    .line 545
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 523
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;->position_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 566
    const/4 v0, 0x0

    .line 567
    .local v0, "size":I
    iget v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 568
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;->position_:I

    .line 569
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 571
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 572
    iput v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;->cachedSize:I

    .line 573
    return v0
.end method

.method public hasPosition()Z
    .locals 1

    .prologue
    .line 531
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;->bitField0_:I

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
    .line 549
    const/16 v0, 0x11

    .line 550
    .local v0, "result":I
    iget v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;->position_:I

    add-int/lit16 v0, v1, 0x20f

    .line 551
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int v0, v2, v1

    .line 552
    return v0

    .line 551
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 581
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 582
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 586
    iget-object v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 587
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;->unknownFieldData:Ljava/util/List;

    .line 590
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 592
    :sswitch_0
    return-object p0

    .line 597
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;->position_:I

    .line 598
    iget v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;->bitField0_:I

    goto :goto_0

    .line 582
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
    .line 512
    invoke-virtual {p0, p1}, Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;

    move-result-object v0

    return-object v0
.end method

.method public setPosition(I)Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 526
    iput p1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;->position_:I

    .line 527
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;->bitField0_:I

    .line 528
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
    .line 557
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 558
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;->position_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 562
    return-void
.end method
