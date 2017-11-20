.class public final Lcom/google/majel/proto/CalendarProtos$InferredEvent;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "CalendarProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/CalendarProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InferredEvent"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/CalendarProtos$InferredEvent;


# instance fields
.field public attendees:[Ljava/lang/String;

.field private bitField0_:I

.field private description_:Ljava/lang/String;

.field public gmailReference:Lcom/google/majel/proto/AgendaProtos$GmailReference;

.field public location:Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2654
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2655
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$InferredEvent;->clear()Lcom/google/majel/proto/CalendarProtos$InferredEvent;

    .line 2656
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/CalendarProtos$InferredEvent;
    .locals 2

    .prologue
    .line 2610
    sget-object v0, Lcom/google/majel/proto/CalendarProtos$InferredEvent;->_emptyArray:[Lcom/google/majel/proto/CalendarProtos$InferredEvent;

    if-nez v0, :cond_1

    .line 2611
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2613
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/CalendarProtos$InferredEvent;->_emptyArray:[Lcom/google/majel/proto/CalendarProtos$InferredEvent;

    if-nez v0, :cond_0

    .line 2614
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/CalendarProtos$InferredEvent;

    sput-object v0, Lcom/google/majel/proto/CalendarProtos$InferredEvent;->_emptyArray:[Lcom/google/majel/proto/CalendarProtos$InferredEvent;

    .line 2616
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2618
    :cond_1
    sget-object v0, Lcom/google/majel/proto/CalendarProtos$InferredEvent;->_emptyArray:[Lcom/google/majel/proto/CalendarProtos$InferredEvent;

    return-object v0

    .line 2616
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CalendarProtos$InferredEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2786
    new-instance v0, Lcom/google/majel/proto/CalendarProtos$InferredEvent;

    invoke-direct {v0}, Lcom/google/majel/proto/CalendarProtos$InferredEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/CalendarProtos$InferredEvent;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CalendarProtos$InferredEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/CalendarProtos$InferredEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2780
    new-instance v0, Lcom/google/majel/proto/CalendarProtos$InferredEvent;

    invoke-direct {v0}, Lcom/google/majel/proto/CalendarProtos$InferredEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/CalendarProtos$InferredEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/CalendarProtos$InferredEvent;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2659
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$InferredEvent;->bitField0_:I

    .line 2660
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$InferredEvent;->description_:Ljava/lang/String;

    .line 2661
    iput-object v1, p0, Lcom/google/majel/proto/CalendarProtos$InferredEvent;->location:Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;

    .line 2662
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$InferredEvent;->attendees:[Ljava/lang/String;

    .line 2663
    iput-object v1, p0, Lcom/google/majel/proto/CalendarProtos$InferredEvent;->gmailReference:Lcom/google/majel/proto/AgendaProtos$GmailReference;

    .line 2664
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$InferredEvent;->cachedSize:I

    .line 2665
    return-object p0
.end method

.method public clearDescription()Lcom/google/majel/proto/CalendarProtos$InferredEvent;
    .locals 1

    .prologue
    .line 2640
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$InferredEvent;->description_:Ljava/lang/String;

    .line 2641
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$InferredEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$InferredEvent;->bitField0_:I

    .line 2642
    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2626
    iget-object v0, p0, Lcom/google/majel/proto/CalendarProtos$InferredEvent;->description_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 2692
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v4

    .line 2693
    .local v4, "size":I
    iget v5, p0, Lcom/google/majel/proto/CalendarProtos$InferredEvent;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 2694
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/majel/proto/CalendarProtos$InferredEvent;->description_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 2697
    :cond_0
    iget-object v5, p0, Lcom/google/majel/proto/CalendarProtos$InferredEvent;->location:Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;

    if-eqz v5, :cond_1

    .line 2698
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/majel/proto/CalendarProtos$InferredEvent;->location:Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 2701
    :cond_1
    iget-object v5, p0, Lcom/google/majel/proto/CalendarProtos$InferredEvent;->attendees:[Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/google/majel/proto/CalendarProtos$InferredEvent;->attendees:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_4

    .line 2702
    const/4 v0, 0x0

    .line 2703
    .local v0, "dataCount":I
    const/4 v1, 0x0

    .line 2704
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/majel/proto/CalendarProtos$InferredEvent;->attendees:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_3

    .line 2705
    iget-object v5, p0, Lcom/google/majel/proto/CalendarProtos$InferredEvent;->attendees:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 2706
    .local v2, "element":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 2707
    add-int/lit8 v0, v0, 0x1

    .line 2708
    invoke-static {v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 2704
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2712
    .end local v2    # "element":Ljava/lang/String;
    :cond_3
    add-int/2addr v4, v1

    .line 2713
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 2715
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_4
    iget-object v5, p0, Lcom/google/majel/proto/CalendarProtos$InferredEvent;->gmailReference:Lcom/google/majel/proto/AgendaProtos$GmailReference;

    if-eqz v5, :cond_5

    .line 2716
    const/4 v5, 0x4

    iget-object v6, p0, Lcom/google/majel/proto/CalendarProtos$InferredEvent;->gmailReference:Lcom/google/majel/proto/AgendaProtos$GmailReference;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 2719
    :cond_5
    iput v4, p0, Lcom/google/majel/proto/CalendarProtos$InferredEvent;->cachedSize:I

    .line 2720
    return v4
.end method

.method public hasDescription()Z
    .locals 1

    .prologue
    .line 2637
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$InferredEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

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
    .line 2604
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/CalendarProtos$InferredEvent;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CalendarProtos$InferredEvent;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CalendarProtos$InferredEvent;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2728
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 2729
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 2733
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2734
    :sswitch_0
    return-object p0

    .line 2739
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/CalendarProtos$InferredEvent;->description_:Ljava/lang/String;

    .line 2740
    iget v5, p0, Lcom/google/majel/proto/CalendarProtos$InferredEvent;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/majel/proto/CalendarProtos$InferredEvent;->bitField0_:I

    goto :goto_0

    .line 2744
    :sswitch_2
    iget-object v5, p0, Lcom/google/majel/proto/CalendarProtos$InferredEvent;->location:Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;

    if-nez v5, :cond_1

    .line 2745
    new-instance v5, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;

    invoke-direct {v5}, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;-><init>()V

    iput-object v5, p0, Lcom/google/majel/proto/CalendarProtos$InferredEvent;->location:Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;

    .line 2747
    :cond_1
    iget-object v5, p0, Lcom/google/majel/proto/CalendarProtos$InferredEvent;->location:Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2751
    :sswitch_3
    const/16 v5, 0x1a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2753
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/CalendarProtos$InferredEvent;->attendees:[Ljava/lang/String;

    if-nez v5, :cond_3

    move v1, v4

    .line 2754
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    .line 2755
    .local v2, "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 2756
    iget-object v5, p0, Lcom/google/majel/proto/CalendarProtos$InferredEvent;->attendees:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2758
    :cond_2
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_4

    .line 2759
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 2760
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2758
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2753
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/google/majel/proto/CalendarProtos$InferredEvent;->attendees:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_1

    .line 2763
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 2764
    iput-object v2, p0, Lcom/google/majel/proto/CalendarProtos$InferredEvent;->attendees:[Ljava/lang/String;

    goto :goto_0

    .line 2768
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :sswitch_4
    iget-object v5, p0, Lcom/google/majel/proto/CalendarProtos$InferredEvent;->gmailReference:Lcom/google/majel/proto/AgendaProtos$GmailReference;

    if-nez v5, :cond_5

    .line 2769
    new-instance v5, Lcom/google/majel/proto/AgendaProtos$GmailReference;

    invoke-direct {v5}, Lcom/google/majel/proto/AgendaProtos$GmailReference;-><init>()V

    iput-object v5, p0, Lcom/google/majel/proto/CalendarProtos$InferredEvent;->gmailReference:Lcom/google/majel/proto/AgendaProtos$GmailReference;

    .line 2771
    :cond_5
    iget-object v5, p0, Lcom/google/majel/proto/CalendarProtos$InferredEvent;->gmailReference:Lcom/google/majel/proto/AgendaProtos$GmailReference;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2729
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/majel/proto/CalendarProtos$InferredEvent;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2629
    if-nez p1, :cond_0

    .line 2630
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2632
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/CalendarProtos$InferredEvent;->description_:Ljava/lang/String;

    .line 2633
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$InferredEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$InferredEvent;->bitField0_:I

    .line 2634
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2671
    iget v2, p0, Lcom/google/majel/proto/CalendarProtos$InferredEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 2672
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/majel/proto/CalendarProtos$InferredEvent;->description_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2674
    :cond_0
    iget-object v2, p0, Lcom/google/majel/proto/CalendarProtos$InferredEvent;->location:Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;

    if-eqz v2, :cond_1

    .line 2675
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/majel/proto/CalendarProtos$InferredEvent;->location:Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2677
    :cond_1
    iget-object v2, p0, Lcom/google/majel/proto/CalendarProtos$InferredEvent;->attendees:[Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/majel/proto/CalendarProtos$InferredEvent;->attendees:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 2678
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/CalendarProtos$InferredEvent;->attendees:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 2679
    iget-object v2, p0, Lcom/google/majel/proto/CalendarProtos$InferredEvent;->attendees:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 2680
    .local v0, "element":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 2681
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2678
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2685
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/google/majel/proto/CalendarProtos$InferredEvent;->gmailReference:Lcom/google/majel/proto/AgendaProtos$GmailReference;

    if-eqz v2, :cond_4

    .line 2686
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/majel/proto/CalendarProtos$InferredEvent;->gmailReference:Lcom/google/majel/proto/AgendaProtos$GmailReference;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2688
    :cond_4
    return-void
.end method
