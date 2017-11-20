.class public final Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "RecurrenceProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MonthlyPattern"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;


# instance fields
.field private bitField0_:I

.field private lastDay_:Z

.field private lastWeek_:Z

.field public monthDay:[I

.field private weekDayNumber_:I

.field private weekDay_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 714
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 715
    invoke-virtual {p0}, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->clear()Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;

    .line 716
    return-void
.end method

.method public static emptyArray()[Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;
    .locals 2

    .prologue
    .line 622
    sget-object v0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->_emptyArray:[Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;

    if-nez v0, :cond_1

    .line 623
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 625
    :try_start_0
    sget-object v0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->_emptyArray:[Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;

    if-nez v0, :cond_0

    .line 626
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;

    sput-object v0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->_emptyArray:[Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;

    .line 628
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 630
    :cond_1
    sget-object v0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->_emptyArray:[Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;

    return-object v0

    .line 628
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 871
    new-instance v0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;

    invoke-direct {v0}, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 865
    new-instance v0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;

    invoke-direct {v0}, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 719
    iput v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->bitField0_:I

    .line 720
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->monthDay:[I

    .line 721
    iput-boolean v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->lastDay_:Z

    .line 722
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->weekDay_:I

    .line 723
    iput v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->weekDayNumber_:I

    .line 724
    iput-boolean v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->lastWeek_:Z

    .line 725
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->cachedSize:I

    .line 726
    return-object p0
.end method

.method public clearLastDay()Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;
    .locals 1

    .prologue
    .line 652
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->lastDay_:Z

    .line 653
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->bitField0_:I

    .line 654
    return-object p0
.end method

.method public clearLastWeek()Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;
    .locals 1

    .prologue
    .line 709
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->lastWeek_:Z

    .line 710
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->bitField0_:I

    .line 711
    return-object p0
.end method

.method public clearWeekDay()Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;
    .locals 1

    .prologue
    .line 671
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->weekDay_:I

    .line 672
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->bitField0_:I

    .line 673
    return-object p0
.end method

.method public clearWeekDayNumber()Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;
    .locals 1

    .prologue
    .line 690
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->weekDayNumber_:I

    .line 691
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->bitField0_:I

    .line 692
    return-object p0
.end method

.method public getLastDay()Z
    .locals 1

    .prologue
    .line 641
    iget-boolean v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->lastDay_:Z

    return v0
.end method

.method public getLastWeek()Z
    .locals 1

    .prologue
    .line 698
    iget-boolean v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->lastWeek_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 753
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v3

    .line 754
    .local v3, "size":I
    iget-object v4, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->monthDay:[I

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->monthDay:[I

    array-length v4, v4

    if-lez v4, :cond_1

    .line 755
    const/4 v0, 0x0

    .line 756
    .local v0, "dataSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->monthDay:[I

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 757
    iget-object v4, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->monthDay:[I

    aget v1, v4, v2

    .line 758
    .local v1, "element":I
    invoke-static {v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 756
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 761
    .end local v1    # "element":I
    :cond_0
    add-int/2addr v3, v0

    .line 762
    iget-object v4, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->monthDay:[I

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 764
    .end local v0    # "dataSize":I
    .end local v2    # "i":I
    :cond_1
    iget v4, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    .line 765
    const/4 v4, 0x2

    iget-boolean v5, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->lastDay_:Z

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 768
    :cond_2
    iget v4, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_3

    .line 769
    const/4 v4, 0x3

    iget v5, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->weekDay_:I

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 772
    :cond_3
    iget v4, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_4

    .line 773
    const/4 v4, 0x4

    iget v5, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->weekDayNumber_:I

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 776
    :cond_4
    iget v4, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_5

    .line 777
    const/4 v4, 0x5

    iget-boolean v5, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->lastWeek_:Z

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 780
    :cond_5
    iput v3, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->cachedSize:I

    .line 781
    return v3
.end method

.method public getWeekDay()I
    .locals 1

    .prologue
    .line 660
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->weekDay_:I

    return v0
.end method

.method public getWeekDayNumber()I
    .locals 1

    .prologue
    .line 679
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->weekDayNumber_:I

    return v0
.end method

.method public hasLastDay()Z
    .locals 1

    .prologue
    .line 649
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLastWeek()Z
    .locals 1

    .prologue
    .line 706
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWeekDay()Z
    .locals 1

    .prologue
    .line 668
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWeekDayNumber()Z
    .locals 1

    .prologue
    .line 687
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;
    .locals 9
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 789
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v6

    .line 790
    .local v6, "tag":I
    sparse-switch v6, :sswitch_data_0

    .line 794
    invoke-static {p1, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 795
    :sswitch_0
    return-object p0

    .line 800
    :sswitch_1
    const/16 v8, 0x8

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 802
    .local v0, "arrayLength":I
    iget-object v8, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->monthDay:[I

    if-nez v8, :cond_2

    move v1, v7

    .line 803
    .local v1, "i":I
    :goto_1
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 804
    .local v4, "newArray":[I
    if-eqz v1, :cond_1

    .line 805
    iget-object v8, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->monthDay:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 807
    :cond_1
    :goto_2
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_3

    .line 808
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 809
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 807
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 802
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_2
    iget-object v8, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->monthDay:[I

    array-length v1, v8

    goto :goto_1

    .line 812
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 813
    iput-object v4, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->monthDay:[I

    goto :goto_0

    .line 817
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 818
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 820
    .local v3, "limit":I
    const/4 v0, 0x0

    .line 821
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 822
    .local v5, "startPos":I
    :goto_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_4

    .line 823
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 824
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 826
    :cond_4
    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 827
    iget-object v8, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->monthDay:[I

    if-nez v8, :cond_6

    move v1, v7

    .line 828
    .restart local v1    # "i":I
    :goto_4
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 829
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_5

    .line 830
    iget-object v8, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->monthDay:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 832
    :cond_5
    :goto_5
    array-length v8, v4

    if-ge v1, v8, :cond_7

    .line 833
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 832
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 827
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_6
    iget-object v8, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->monthDay:[I

    array-length v1, v8

    goto :goto_4

    .line 835
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_7
    iput-object v4, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->monthDay:[I

    .line 836
    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 840
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[I
    .end local v5    # "startPos":I
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->lastDay_:Z

    .line 841
    iget v8, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->bitField0_:I

    goto/16 :goto_0

    .line 845
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->weekDay_:I

    .line 846
    iget v8, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->bitField0_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->bitField0_:I

    goto/16 :goto_0

    .line 850
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->weekDayNumber_:I

    .line 851
    iget v8, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->bitField0_:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->bitField0_:I

    goto/16 :goto_0

    .line 855
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->lastWeek_:Z

    .line 856
    iget v8, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->bitField0_:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->bitField0_:I

    goto/16 :goto_0

    .line 790
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_2
        0x10 -> :sswitch_3
        0x18 -> :sswitch_4
        0x20 -> :sswitch_5
        0x28 -> :sswitch_6
    .end sparse-switch
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
    .line 616
    invoke-virtual {p0, p1}, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;

    move-result-object v0

    return-object v0
.end method

.method public setLastDay(Z)Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 644
    iput-boolean p1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->lastDay_:Z

    .line 645
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->bitField0_:I

    .line 646
    return-object p0
.end method

.method public setLastWeek(Z)Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 701
    iput-boolean p1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->lastWeek_:Z

    .line 702
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->bitField0_:I

    .line 703
    return-object p0
.end method

.method public setWeekDay(I)Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 663
    iput p1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->weekDay_:I

    .line 664
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->bitField0_:I

    .line 665
    return-object p0
.end method

.method public setWeekDayNumber(I)Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 682
    iput p1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->weekDayNumber_:I

    .line 683
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->bitField0_:I

    .line 684
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 732
    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->monthDay:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->monthDay:[I

    array-length v1, v1

    if-lez v1, :cond_0

    .line 733
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->monthDay:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 734
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->monthDay:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 733
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 737
    .end local v0    # "i":I
    :cond_0
    iget v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 738
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->lastDay_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 740
    :cond_1
    iget v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 741
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->weekDay_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 743
    :cond_2
    iget v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 744
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->weekDayNumber_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 746
    :cond_3
    iget v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    .line 747
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;->lastWeek_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 749
    :cond_4
    return-void
.end method
