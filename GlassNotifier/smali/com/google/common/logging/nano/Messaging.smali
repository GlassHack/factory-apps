.class public final Lcom/google/common/logging/nano/Messaging;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Messaging.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/nano/Messaging$MenuEvent;,
        Lcom/google/common/logging/nano/Messaging$MessageEvent;,
        Lcom/google/common/logging/nano/Messaging$App;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Messaging;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Messaging;


# instance fields
.field private app_:I

.field private bitField0_:I

.field public menuEvent:Lcom/google/common/logging/nano/Messaging$MenuEvent;

.field public messageEvent:Lcom/google/common/logging/nano/Messaging$MessageEvent;

.field private oneof_event_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 649
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Messaging;->oneof_event_:I

    .line 650
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Messaging;->clear()Lcom/google/common/logging/nano/Messaging;

    .line 651
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Messaging;
    .locals 2

    .prologue
    .line 609
    sget-object v0, Lcom/google/common/logging/nano/Messaging;->_emptyArray:[Lcom/google/common/logging/nano/Messaging;

    if-nez v0, :cond_1

    .line 610
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 612
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/Messaging;->_emptyArray:[Lcom/google/common/logging/nano/Messaging;

    if-nez v0, :cond_0

    .line 613
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/Messaging;

    sput-object v0, Lcom/google/common/logging/nano/Messaging;->_emptyArray:[Lcom/google/common/logging/nano/Messaging;

    .line 615
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 617
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/Messaging;->_emptyArray:[Lcom/google/common/logging/nano/Messaging;

    return-object v0

    .line 615
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Messaging;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 805
    new-instance v0, Lcom/google/common/logging/nano/Messaging;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Messaging;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/Messaging;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Messaging;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/Messaging;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 799
    new-instance v0, Lcom/google/common/logging/nano/Messaging;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Messaging;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Messaging;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/Messaging;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 654
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/Messaging;->bitField0_:I

    .line 655
    iput-object v1, p0, Lcom/google/common/logging/nano/Messaging;->messageEvent:Lcom/google/common/logging/nano/Messaging$MessageEvent;

    .line 656
    iput-object v1, p0, Lcom/google/common/logging/nano/Messaging;->menuEvent:Lcom/google/common/logging/nano/Messaging$MenuEvent;

    .line 657
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/common/logging/nano/Messaging;->app_:I

    .line 658
    iput-object v1, p0, Lcom/google/common/logging/nano/Messaging;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 659
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Messaging;->cachedSize:I

    .line 660
    return-object p0
.end method

.method public clearApp()Lcom/google/common/logging/nano/Messaging;
    .locals 1

    .prologue
    .line 642
    iget v0, p0, Lcom/google/common/logging/nano/Messaging;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/common/logging/nano/Messaging;->bitField0_:I

    .line 643
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/common/logging/nano/Messaging;->app_:I

    .line 644
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 732
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 733
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/common/logging/nano/Messaging;->messageEvent:Lcom/google/common/logging/nano/Messaging$MessageEvent;

    if-eqz v1, :cond_0

    .line 734
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Messaging;->messageEvent:Lcom/google/common/logging/nano/Messaging$MessageEvent;

    .line 735
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 737
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Messaging;->menuEvent:Lcom/google/common/logging/nano/Messaging$MenuEvent;

    if-eqz v1, :cond_1

    .line 738
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Messaging;->menuEvent:Lcom/google/common/logging/nano/Messaging$MenuEvent;

    .line 739
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 741
    :cond_1
    iget v1, p0, Lcom/google/common/logging/nano/Messaging;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 742
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/common/logging/nano/Messaging;->app_:I

    .line 743
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 745
    :cond_2
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 665
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 697
    :cond_0
    :goto_0
    return v1

    .line 668
    :cond_1
    instance-of v3, p1, Lcom/google/common/logging/nano/Messaging;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 671
    check-cast v0, Lcom/google/common/logging/nano/Messaging;

    .line 672
    .local v0, "other":Lcom/google/common/logging/nano/Messaging;
    iget-object v3, p0, Lcom/google/common/logging/nano/Messaging;->messageEvent:Lcom/google/common/logging/nano/Messaging$MessageEvent;

    if-nez v3, :cond_6

    .line 673
    iget-object v3, v0, Lcom/google/common/logging/nano/Messaging;->messageEvent:Lcom/google/common/logging/nano/Messaging$MessageEvent;

    if-nez v3, :cond_0

    .line 681
    :cond_2
    iget-object v3, p0, Lcom/google/common/logging/nano/Messaging;->menuEvent:Lcom/google/common/logging/nano/Messaging$MenuEvent;

    if-nez v3, :cond_7

    .line 682
    iget-object v3, v0, Lcom/google/common/logging/nano/Messaging;->menuEvent:Lcom/google/common/logging/nano/Messaging$MenuEvent;

    if-nez v3, :cond_0

    .line 690
    :cond_3
    iget v3, p0, Lcom/google/common/logging/nano/Messaging;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/common/logging/nano/Messaging;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/Messaging;->app_:I

    iget v4, v0, Lcom/google/common/logging/nano/Messaging;->app_:I

    if-ne v3, v4, :cond_0

    .line 694
    iget-object v3, p0, Lcom/google/common/logging/nano/Messaging;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/common/logging/nano/Messaging;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 695
    :cond_4
    iget-object v3, v0, Lcom/google/common/logging/nano/Messaging;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/google/common/logging/nano/Messaging;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0

    .line 677
    :cond_6
    iget-object v3, p0, Lcom/google/common/logging/nano/Messaging;->messageEvent:Lcom/google/common/logging/nano/Messaging$MessageEvent;

    iget-object v4, v0, Lcom/google/common/logging/nano/Messaging;->messageEvent:Lcom/google/common/logging/nano/Messaging$MessageEvent;

    invoke-virtual {v3, v4}, Lcom/google/common/logging/nano/Messaging$MessageEvent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 686
    :cond_7
    iget-object v3, p0, Lcom/google/common/logging/nano/Messaging;->menuEvent:Lcom/google/common/logging/nano/Messaging$MenuEvent;

    iget-object v4, v0, Lcom/google/common/logging/nano/Messaging;->menuEvent:Lcom/google/common/logging/nano/Messaging$MenuEvent;

    invoke-virtual {v3, v4}, Lcom/google/common/logging/nano/Messaging$MenuEvent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 697
    :cond_8
    iget-object v1, p0, Lcom/google/common/logging/nano/Messaging;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/common/logging/nano/Messaging;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getApp()I
    .locals 1

    .prologue
    .line 631
    iget v0, p0, Lcom/google/common/logging/nano/Messaging;->app_:I

    return v0
.end method

.method public hasApp()Z
    .locals 1

    .prologue
    .line 639
    iget v0, p0, Lcom/google/common/logging/nano/Messaging;->bitField0_:I

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

    .line 702
    const/16 v0, 0x11

    .line 703
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 704
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/nano/Messaging;->messageEvent:Lcom/google/common/logging/nano/Messaging$MessageEvent;

    if-nez v1, :cond_1

    move v1, v2

    .line 705
    :goto_0
    add-int v0, v3, v1

    .line 706
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/nano/Messaging;->menuEvent:Lcom/google/common/logging/nano/Messaging$MenuEvent;

    if-nez v1, :cond_2

    move v1, v2

    .line 707
    :goto_1
    add-int v0, v3, v1

    .line 708
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/common/logging/nano/Messaging;->app_:I

    add-int v0, v1, v3

    .line 709
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/common/logging/nano/Messaging;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/common/logging/nano/Messaging;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 710
    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 711
    :cond_0
    :goto_2
    add-int v0, v1, v2

    .line 712
    return v0

    .line 705
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Messaging;->messageEvent:Lcom/google/common/logging/nano/Messaging$MessageEvent;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Messaging$MessageEvent;->hashCode()I

    move-result v1

    goto :goto_0

    .line 707
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Messaging;->menuEvent:Lcom/google/common/logging/nano/Messaging$MenuEvent;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Messaging$MenuEvent;->hashCode()I

    move-result v1

    goto :goto_1

    .line 711
    :cond_3
    iget-object v2, p0, Lcom/google/common/logging/nano/Messaging;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v2}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v2

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Messaging;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 753
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v1

    .line 754
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 758
    invoke-super {p0, p1, v1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 759
    :sswitch_0
    return-object p0

    .line 764
    :sswitch_1
    iget-object v3, p0, Lcom/google/common/logging/nano/Messaging;->messageEvent:Lcom/google/common/logging/nano/Messaging$MessageEvent;

    if-nez v3, :cond_1

    .line 765
    new-instance v3, Lcom/google/common/logging/nano/Messaging$MessageEvent;

    invoke-direct {v3}, Lcom/google/common/logging/nano/Messaging$MessageEvent;-><init>()V

    iput-object v3, p0, Lcom/google/common/logging/nano/Messaging;->messageEvent:Lcom/google/common/logging/nano/Messaging$MessageEvent;

    .line 767
    :cond_1
    iget-object v3, p0, Lcom/google/common/logging/nano/Messaging;->messageEvent:Lcom/google/common/logging/nano/Messaging$MessageEvent;

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 771
    :sswitch_2
    iget-object v3, p0, Lcom/google/common/logging/nano/Messaging;->menuEvent:Lcom/google/common/logging/nano/Messaging$MenuEvent;

    if-nez v3, :cond_2

    .line 772
    new-instance v3, Lcom/google/common/logging/nano/Messaging$MenuEvent;

    invoke-direct {v3}, Lcom/google/common/logging/nano/Messaging$MenuEvent;-><init>()V

    iput-object v3, p0, Lcom/google/common/logging/nano/Messaging;->menuEvent:Lcom/google/common/logging/nano/Messaging$MenuEvent;

    .line 774
    :cond_2
    iget-object v3, p0, Lcom/google/common/logging/nano/Messaging;->menuEvent:Lcom/google/common/logging/nano/Messaging$MenuEvent;

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 778
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 779
    .local v0, "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 780
    .local v2, "value":I
    packed-switch v2, :pswitch_data_0

    .line 787
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 788
    invoke-virtual {p0, p1, v1}, Lcom/google/common/logging/nano/Messaging;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 783
    :pswitch_0
    iput v2, p0, Lcom/google/common/logging/nano/Messaging;->app_:I

    .line 784
    iget v3, p0, Lcom/google/common/logging/nano/Messaging;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/common/logging/nano/Messaging;->bitField0_:I

    goto :goto_0

    .line 754
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x20 -> :sswitch_3
    .end sparse-switch

    .line 780
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Messaging;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Messaging;

    move-result-object v0

    return-object v0
.end method

.method public setApp(I)Lcom/google/common/logging/nano/Messaging;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 634
    iput p1, p0, Lcom/google/common/logging/nano/Messaging;->app_:I

    .line 635
    iget v0, p0, Lcom/google/common/logging/nano/Messaging;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/logging/nano/Messaging;->bitField0_:I

    .line 636
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
    .line 718
    iget-object v0, p0, Lcom/google/common/logging/nano/Messaging;->messageEvent:Lcom/google/common/logging/nano/Messaging$MessageEvent;

    if-eqz v0, :cond_0

    .line 719
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Messaging;->messageEvent:Lcom/google/common/logging/nano/Messaging$MessageEvent;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 721
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Messaging;->menuEvent:Lcom/google/common/logging/nano/Messaging$MenuEvent;

    if-eqz v0, :cond_1

    .line 722
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Messaging;->menuEvent:Lcom/google/common/logging/nano/Messaging$MenuEvent;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 724
    :cond_1
    iget v0, p0, Lcom/google/common/logging/nano/Messaging;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 725
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/common/logging/nano/Messaging;->app_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 727
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 728
    return-void
.end method
