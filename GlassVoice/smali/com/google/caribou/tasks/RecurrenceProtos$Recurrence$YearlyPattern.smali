.class public final Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "RecurrenceProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "YearlyPattern"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;


# instance fields
.field public monthlyPattern:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;

.field public yearMonth:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 898
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 899
    invoke-virtual {p0}, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;->clear()Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;

    .line 900
    return-void
.end method

.method public static emptyArray()[Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;
    .locals 2

    .prologue
    .line 881
    sget-object v0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;->_emptyArray:[Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;

    if-nez v0, :cond_1

    .line 882
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 884
    :try_start_0
    sget-object v0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;->_emptyArray:[Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;

    if-nez v0, :cond_0

    .line 885
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;

    sput-object v0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;->_emptyArray:[Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;

    .line 887
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 889
    :cond_1
    sget-object v0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;->_emptyArray:[Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;

    return-object v0

    .line 887
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1017
    new-instance v0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;

    invoke-direct {v0}, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1011
    new-instance v0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;

    invoke-direct {v0}, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;
    .locals 1

    .prologue
    .line 903
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;->monthlyPattern:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;

    .line 904
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;->yearMonth:[I

    .line 905
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;->cachedSize:I

    .line 906
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 924
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v3

    .line 925
    .local v3, "size":I
    iget-object v4, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;->monthlyPattern:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;

    if-eqz v4, :cond_0

    .line 926
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;->monthlyPattern:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 929
    :cond_0
    iget-object v4, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;->yearMonth:[I

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;->yearMonth:[I

    array-length v4, v4

    if-lez v4, :cond_2

    .line 930
    const/4 v0, 0x0

    .line 931
    .local v0, "dataSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;->yearMonth:[I

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 932
    iget-object v4, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;->yearMonth:[I

    aget v1, v4, v2

    .line 933
    .local v1, "element":I
    invoke-static {v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 931
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 936
    .end local v1    # "element":I
    :cond_1
    add-int/2addr v3, v0

    .line 937
    iget-object v4, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;->yearMonth:[I

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 939
    .end local v0    # "dataSize":I
    .end local v2    # "i":I
    :cond_2
    iput v3, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;->cachedSize:I

    .line 940
    return v3
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;
    .locals 9
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 948
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v6

    .line 949
    .local v6, "tag":I
    sparse-switch v6, :sswitch_data_0

    .line 953
    invoke-static {p1, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 954
    :sswitch_0
    return-object p0

    .line 959
    :sswitch_1
    iget-object v8, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;->monthlyPattern:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;

    if-nez v8, :cond_1

    .line 960
    new-instance v8, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;

    invoke-direct {v8}, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;-><init>()V

    iput-object v8, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;->monthlyPattern:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;

    .line 962
    :cond_1
    iget-object v8, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;->monthlyPattern:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;

    invoke-virtual {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 966
    :sswitch_2
    const/16 v8, 0x10

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 968
    .local v0, "arrayLength":I
    iget-object v8, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;->yearMonth:[I

    if-nez v8, :cond_3

    move v1, v7

    .line 969
    .local v1, "i":I
    :goto_1
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 970
    .local v4, "newArray":[I
    if-eqz v1, :cond_2

    .line 971
    iget-object v8, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;->yearMonth:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 973
    :cond_2
    :goto_2
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_4

    .line 974
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 975
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 973
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 968
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_3
    iget-object v8, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;->yearMonth:[I

    array-length v1, v8

    goto :goto_1

    .line 978
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 979
    iput-object v4, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;->yearMonth:[I

    goto :goto_0

    .line 983
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 984
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 986
    .local v3, "limit":I
    const/4 v0, 0x0

    .line 987
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 988
    .local v5, "startPos":I
    :goto_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_5

    .line 989
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 990
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 992
    :cond_5
    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 993
    iget-object v8, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;->yearMonth:[I

    if-nez v8, :cond_7

    move v1, v7

    .line 994
    .restart local v1    # "i":I
    :goto_4
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 995
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_6

    .line 996
    iget-object v8, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;->yearMonth:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 998
    :cond_6
    :goto_5
    array-length v8, v4

    if-ge v1, v8, :cond_8

    .line 999
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 998
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 993
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_7
    iget-object v8, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;->yearMonth:[I

    array-length v1, v8

    goto :goto_4

    .line 1001
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_8
    iput-object v4, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;->yearMonth:[I

    .line 1002
    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 949
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x12 -> :sswitch_3
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
    .line 875
    invoke-virtual {p0, p1}, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;

    move-result-object v0

    return-object v0
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
    .line 912
    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;->monthlyPattern:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;

    if-eqz v1, :cond_0

    .line 913
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;->monthlyPattern:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 915
    :cond_0
    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;->yearMonth:[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;->yearMonth:[I

    array-length v1, v1

    if-lez v1, :cond_1

    .line 916
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;->yearMonth:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 917
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;->yearMonth:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 916
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 920
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
