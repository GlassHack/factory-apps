.class public final Lcom/google/common/logging/Cw$CwRankingEvent;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Cw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/Cw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CwRankingEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;
    }
.end annotation


# static fields
.field public static final CW_FORCE_REFRESH:I = 0x2

.field public static final CW_ITEM_POSTED:I = 0x0

.field public static final CW_ITEM_REMOVED:I = 0x1

.field private static volatile _emptyArray:[Lcom/google/common/logging/Cw$CwRankingEvent;


# instance fields
.field public changedItem:Lcom/google/common/logging/Cw$CwStreamItemId;

.field public items:[Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;

.field public reason:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 613
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 614
    invoke-virtual {p0}, Lcom/google/common/logging/Cw$CwRankingEvent;->clear()Lcom/google/common/logging/Cw$CwRankingEvent;

    .line 615
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/Cw$CwRankingEvent;
    .locals 2

    .prologue
    .line 593
    sget-object v0, Lcom/google/common/logging/Cw$CwRankingEvent;->_emptyArray:[Lcom/google/common/logging/Cw$CwRankingEvent;

    if-nez v0, :cond_1

    .line 594
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 596
    :try_start_0
    sget-object v0, Lcom/google/common/logging/Cw$CwRankingEvent;->_emptyArray:[Lcom/google/common/logging/Cw$CwRankingEvent;

    if-nez v0, :cond_0

    .line 597
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/Cw$CwRankingEvent;

    sput-object v0, Lcom/google/common/logging/Cw$CwRankingEvent;->_emptyArray:[Lcom/google/common/logging/Cw$CwRankingEvent;

    .line 599
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    :cond_1
    sget-object v0, Lcom/google/common/logging/Cw$CwRankingEvent;->_emptyArray:[Lcom/google/common/logging/Cw$CwRankingEvent;

    return-object v0

    .line 599
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/Cw$CwRankingEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 733
    new-instance v0, Lcom/google/common/logging/Cw$CwRankingEvent;

    invoke-direct {v0}, Lcom/google/common/logging/Cw$CwRankingEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/Cw$CwRankingEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/Cw$CwRankingEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/Cw$CwRankingEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 727
    new-instance v0, Lcom/google/common/logging/Cw$CwRankingEvent;

    invoke-direct {v0}, Lcom/google/common/logging/Cw$CwRankingEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/Cw$CwRankingEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/Cw$CwRankingEvent;
    .locals 1

    .prologue
    .line 618
    invoke-static {}, Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;->emptyArray()[Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/Cw$CwRankingEvent;->items:[Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;

    .line 619
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/Cw$CwRankingEvent;->reason:I

    .line 620
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/Cw$CwRankingEvent;->changedItem:Lcom/google/common/logging/Cw$CwStreamItemId;

    .line 621
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/Cw$CwRankingEvent;->cachedSize:I

    .line 622
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    .prologue
    .line 647
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v2

    .line 648
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/common/logging/Cw$CwRankingEvent;->items:[Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/common/logging/Cw$CwRankingEvent;->items:[Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 649
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/common/logging/Cw$CwRankingEvent;->items:[Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 650
    iget-object v3, p0, Lcom/google/common/logging/Cw$CwRankingEvent;->items:[Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;

    aget-object v0, v3, v1

    .line 651
    .local v0, "element":Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;
    if-eqz v0, :cond_0

    .line 652
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 649
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 657
    .end local v0    # "element":Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;
    .end local v1    # "i":I
    :cond_1
    iget v3, p0, Lcom/google/common/logging/Cw$CwRankingEvent;->reason:I

    if-eqz v3, :cond_2

    .line 658
    const/4 v3, 0x2

    iget v4, p0, Lcom/google/common/logging/Cw$CwRankingEvent;->reason:I

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 661
    :cond_2
    iget-object v3, p0, Lcom/google/common/logging/Cw$CwRankingEvent;->changedItem:Lcom/google/common/logging/Cw$CwStreamItemId;

    if-eqz v3, :cond_3

    .line 662
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/common/logging/Cw$CwRankingEvent;->changedItem:Lcom/google/common/logging/Cw$CwStreamItemId;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 665
    :cond_3
    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/Cw$CwRankingEvent;
    .locals 7
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 673
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 674
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 678
    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 679
    :sswitch_0
    return-object p0

    .line 684
    :sswitch_1
    const/16 v6, 0xa

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 686
    .local v0, "arrayLength":I
    iget-object v6, p0, Lcom/google/common/logging/Cw$CwRankingEvent;->items:[Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;

    if-nez v6, :cond_2

    move v1, v5

    .line 687
    .local v1, "i":I
    :goto_1
    add-int v6, v1, v0

    new-array v2, v6, [Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;

    .line 689
    .local v2, "newArray":[Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;
    if-eqz v1, :cond_1

    .line 690
    iget-object v6, p0, Lcom/google/common/logging/Cw$CwRankingEvent;->items:[Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 692
    :cond_1
    :goto_2
    array-length v6, v2

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_3

    .line 693
    new-instance v6, Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;

    invoke-direct {v6}, Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;-><init>()V

    aput-object v6, v2, v1

    .line 694
    aget-object v6, v2, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 695
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 692
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 686
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;
    :cond_2
    iget-object v6, p0, Lcom/google/common/logging/Cw$CwRankingEvent;->items:[Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;

    array-length v1, v6

    goto :goto_1

    .line 698
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;
    :cond_3
    new-instance v6, Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;

    invoke-direct {v6}, Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;-><init>()V

    aput-object v6, v2, v1

    .line 699
    aget-object v6, v2, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 700
    iput-object v2, p0, Lcom/google/common/logging/Cw$CwRankingEvent;->items:[Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;

    goto :goto_0

    .line 704
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 705
    .local v4, "value":I
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 709
    :pswitch_0
    iput v4, p0, Lcom/google/common/logging/Cw$CwRankingEvent;->reason:I

    goto :goto_0

    .line 715
    .end local v4    # "value":I
    :sswitch_3
    iget-object v6, p0, Lcom/google/common/logging/Cw$CwRankingEvent;->changedItem:Lcom/google/common/logging/Cw$CwStreamItemId;

    if-nez v6, :cond_4

    .line 716
    new-instance v6, Lcom/google/common/logging/Cw$CwStreamItemId;

    invoke-direct {v6}, Lcom/google/common/logging/Cw$CwStreamItemId;-><init>()V

    iput-object v6, p0, Lcom/google/common/logging/Cw$CwRankingEvent;->changedItem:Lcom/google/common/logging/Cw$CwStreamItemId;

    .line 718
    :cond_4
    iget-object v6, p0, Lcom/google/common/logging/Cw$CwRankingEvent;->changedItem:Lcom/google/common/logging/Cw$CwStreamItemId;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 674
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch

    .line 705
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 480
    invoke-virtual {p0, p1}, Lcom/google/common/logging/Cw$CwRankingEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/Cw$CwRankingEvent;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 628
    iget-object v2, p0, Lcom/google/common/logging/Cw$CwRankingEvent;->items:[Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/common/logging/Cw$CwRankingEvent;->items:[Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 629
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/Cw$CwRankingEvent;->items:[Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 630
    iget-object v2, p0, Lcom/google/common/logging/Cw$CwRankingEvent;->items:[Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;

    aget-object v0, v2, v1

    .line 631
    .local v0, "element":Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;
    if-eqz v0, :cond_0

    .line 632
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 629
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 636
    .end local v0    # "element":Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;
    .end local v1    # "i":I
    :cond_1
    iget v2, p0, Lcom/google/common/logging/Cw$CwRankingEvent;->reason:I

    if-eqz v2, :cond_2

    .line 637
    const/4 v2, 0x2

    iget v3, p0, Lcom/google/common/logging/Cw$CwRankingEvent;->reason:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 639
    :cond_2
    iget-object v2, p0, Lcom/google/common/logging/Cw$CwRankingEvent;->changedItem:Lcom/google/common/logging/Cw$CwStreamItemId;

    if-eqz v2, :cond_3

    .line 640
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/common/logging/Cw$CwRankingEvent;->changedItem:Lcom/google/common/logging/Cw$CwStreamItemId;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 642
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 643
    return-void
.end method
