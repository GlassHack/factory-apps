.class public final Lcom/google/majel/proto/ActionV2Protos$AgendaAction;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AgendaAction"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$AgendaAction;


# instance fields
.field public agenda:[Lcom/google/majel/proto/CalendarProtos$AgendaItem;

.field private autoExpandFirstResult_:Z

.field private bitField0_:I

.field private itemBatchSize_:I

.field private learnMoreUrl_:Ljava/lang/String;

.field public query:Lcom/google/majel/proto/CalendarProtos$CalendarQuery;

.field private sortReverseChronological_:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12010
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 12011
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->clear()Lcom/google/majel/proto/ActionV2Protos$AgendaAction;

    .line 12012
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$AgendaAction;
    .locals 2

    .prologue
    .line 11912
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$AgendaAction;

    if-nez v0, :cond_1

    .line 11913
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 11915
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$AgendaAction;

    if-nez v0, :cond_0

    .line 11916
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$AgendaAction;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$AgendaAction;

    .line 11918
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11920
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$AgendaAction;

    return-object v0

    .line 11918
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$AgendaAction;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12164
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$AgendaAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$AgendaAction;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 12158
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$AgendaAction;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12015
    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->bitField0_:I

    .line 12016
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->query:Lcom/google/majel/proto/CalendarProtos$CalendarQuery;

    .line 12017
    invoke-static {}, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->emptyArray()[Lcom/google/majel/proto/CalendarProtos$AgendaItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->agenda:[Lcom/google/majel/proto/CalendarProtos$AgendaItem;

    .line 12018
    iput-boolean v1, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->autoExpandFirstResult_:Z

    .line 12019
    iput-boolean v1, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->sortReverseChronological_:Z

    .line 12020
    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->itemBatchSize_:I

    .line 12021
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->learnMoreUrl_:Ljava/lang/String;

    .line 12022
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->cachedSize:I

    .line 12023
    return-object p0
.end method

.method public clearAutoExpandFirstResult()Lcom/google/majel/proto/ActionV2Protos$AgendaAction;
    .locals 1

    .prologue
    .line 11945
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->autoExpandFirstResult_:Z

    .line 11946
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->bitField0_:I

    .line 11947
    return-object p0
.end method

.method public clearItemBatchSize()Lcom/google/majel/proto/ActionV2Protos$AgendaAction;
    .locals 1

    .prologue
    .line 11983
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->itemBatchSize_:I

    .line 11984
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->bitField0_:I

    .line 11985
    return-object p0
.end method

.method public clearLearnMoreUrl()Lcom/google/majel/proto/ActionV2Protos$AgendaAction;
    .locals 1

    .prologue
    .line 12005
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->learnMoreUrl_:Ljava/lang/String;

    .line 12006
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->bitField0_:I

    .line 12007
    return-object p0
.end method

.method public clearSortReverseChronological()Lcom/google/majel/proto/ActionV2Protos$AgendaAction;
    .locals 1

    .prologue
    .line 11964
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->sortReverseChronological_:Z

    .line 11965
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->bitField0_:I

    .line 11966
    return-object p0
.end method

.method public getAutoExpandFirstResult()Z
    .locals 1

    .prologue
    .line 11934
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->autoExpandFirstResult_:Z

    return v0
.end method

.method public getItemBatchSize()I
    .locals 1

    .prologue
    .line 11972
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->itemBatchSize_:I

    return v0
.end method

.method public getLearnMoreUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11991
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->learnMoreUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 12056
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 12057
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->query:Lcom/google/majel/proto/CalendarProtos$CalendarQuery;

    if-eqz v3, :cond_0

    .line 12058
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->query:Lcom/google/majel/proto/CalendarProtos$CalendarQuery;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 12061
    :cond_0
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->agenda:[Lcom/google/majel/proto/CalendarProtos$AgendaItem;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->agenda:[Lcom/google/majel/proto/CalendarProtos$AgendaItem;

    array-length v3, v3

    if-lez v3, :cond_2

    .line 12062
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->agenda:[Lcom/google/majel/proto/CalendarProtos$AgendaItem;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 12063
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->agenda:[Lcom/google/majel/proto/CalendarProtos$AgendaItem;

    aget-object v0, v3, v1

    .line 12064
    .local v0, "element":Lcom/google/majel/proto/CalendarProtos$AgendaItem;
    if-eqz v0, :cond_1

    .line 12065
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 12062
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12070
    .end local v0    # "element":Lcom/google/majel/proto/CalendarProtos$AgendaItem;
    .end local v1    # "i":I
    :cond_2
    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    .line 12071
    const/4 v3, 0x3

    iget-boolean v4, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->autoExpandFirstResult_:Z

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 12074
    :cond_3
    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4

    .line 12075
    const/4 v3, 0x4

    iget-boolean v4, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->sortReverseChronological_:Z

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 12078
    :cond_4
    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_5

    .line 12079
    const/4 v3, 0x5

    iget v4, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->itemBatchSize_:I

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 12082
    :cond_5
    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_6

    .line 12083
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->learnMoreUrl_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 12086
    :cond_6
    iput v2, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->cachedSize:I

    .line 12087
    return v2
.end method

.method public getSortReverseChronological()Z
    .locals 1

    .prologue
    .line 11953
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->sortReverseChronological_:Z

    return v0
.end method

.method public hasAutoExpandFirstResult()Z
    .locals 1

    .prologue
    .line 11942
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasItemBatchSize()Z
    .locals 1

    .prologue
    .line 11980
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLearnMoreUrl()Z
    .locals 1

    .prologue
    .line 12002
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSortReverseChronological()Z
    .locals 1

    .prologue
    .line 11961
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

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
    .line 11906
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$AgendaAction;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$AgendaAction;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 12095
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 12096
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 12100
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 12101
    :sswitch_0
    return-object p0

    .line 12106
    :sswitch_1
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->query:Lcom/google/majel/proto/CalendarProtos$CalendarQuery;

    if-nez v5, :cond_1

    .line 12107
    new-instance v5, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;

    invoke-direct {v5}, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;-><init>()V

    iput-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->query:Lcom/google/majel/proto/CalendarProtos$CalendarQuery;

    .line 12109
    :cond_1
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->query:Lcom/google/majel/proto/CalendarProtos$CalendarQuery;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 12113
    :sswitch_2
    const/16 v5, 0x12

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 12115
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->agenda:[Lcom/google/majel/proto/CalendarProtos$AgendaItem;

    if-nez v5, :cond_3

    move v1, v4

    .line 12116
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/CalendarProtos$AgendaItem;

    .line 12118
    .local v2, "newArray":[Lcom/google/majel/proto/CalendarProtos$AgendaItem;
    if-eqz v1, :cond_2

    .line 12119
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->agenda:[Lcom/google/majel/proto/CalendarProtos$AgendaItem;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12121
    :cond_2
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_4

    .line 12122
    new-instance v5, Lcom/google/majel/proto/CalendarProtos$AgendaItem;

    invoke-direct {v5}, Lcom/google/majel/proto/CalendarProtos$AgendaItem;-><init>()V

    aput-object v5, v2, v1

    .line 12123
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 12124
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 12121
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 12115
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/CalendarProtos$AgendaItem;
    :cond_3
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->agenda:[Lcom/google/majel/proto/CalendarProtos$AgendaItem;

    array-length v1, v5

    goto :goto_1

    .line 12127
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/CalendarProtos$AgendaItem;
    :cond_4
    new-instance v5, Lcom/google/majel/proto/CalendarProtos$AgendaItem;

    invoke-direct {v5}, Lcom/google/majel/proto/CalendarProtos$AgendaItem;-><init>()V

    aput-object v5, v2, v1

    .line 12128
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 12129
    iput-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->agenda:[Lcom/google/majel/proto/CalendarProtos$AgendaItem;

    goto :goto_0

    .line 12133
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/CalendarProtos$AgendaItem;
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->autoExpandFirstResult_:Z

    .line 12134
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->bitField0_:I

    goto :goto_0

    .line 12138
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->sortReverseChronological_:Z

    .line 12139
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->bitField0_:I

    goto :goto_0

    .line 12143
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->itemBatchSize_:I

    .line 12144
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->bitField0_:I

    goto/16 :goto_0

    .line 12148
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->learnMoreUrl_:Ljava/lang/String;

    .line 12149
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->bitField0_:I

    goto/16 :goto_0

    .line 12096
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public setAutoExpandFirstResult(Z)Lcom/google/majel/proto/ActionV2Protos$AgendaAction;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 11937
    iput-boolean p1, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->autoExpandFirstResult_:Z

    .line 11938
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->bitField0_:I

    .line 11939
    return-object p0
.end method

.method public setItemBatchSize(I)Lcom/google/majel/proto/ActionV2Protos$AgendaAction;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 11975
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->itemBatchSize_:I

    .line 11976
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->bitField0_:I

    .line 11977
    return-object p0
.end method

.method public setLearnMoreUrl(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$AgendaAction;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 11994
    if-nez p1, :cond_0

    .line 11995
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11997
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->learnMoreUrl_:Ljava/lang/String;

    .line 11998
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->bitField0_:I

    .line 11999
    return-object p0
.end method

.method public setSortReverseChronological(Z)Lcom/google/majel/proto/ActionV2Protos$AgendaAction;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 11956
    iput-boolean p1, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->sortReverseChronological_:Z

    .line 11957
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->bitField0_:I

    .line 11958
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
    .line 12029
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->query:Lcom/google/majel/proto/CalendarProtos$CalendarQuery;

    if-eqz v2, :cond_0

    .line 12030
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->query:Lcom/google/majel/proto/CalendarProtos$CalendarQuery;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 12032
    :cond_0
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->agenda:[Lcom/google/majel/proto/CalendarProtos$AgendaItem;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->agenda:[Lcom/google/majel/proto/CalendarProtos$AgendaItem;

    array-length v2, v2

    if-lez v2, :cond_2

    .line 12033
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->agenda:[Lcom/google/majel/proto/CalendarProtos$AgendaItem;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 12034
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->agenda:[Lcom/google/majel/proto/CalendarProtos$AgendaItem;

    aget-object v0, v2, v1

    .line 12035
    .local v0, "element":Lcom/google/majel/proto/CalendarProtos$AgendaItem;
    if-eqz v0, :cond_1

    .line 12036
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 12033
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12040
    .end local v0    # "element":Lcom/google/majel/proto/CalendarProtos$AgendaItem;
    .end local v1    # "i":I
    :cond_2
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 12041
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->autoExpandFirstResult_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 12043
    :cond_3
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    .line 12044
    const/4 v2, 0x4

    iget-boolean v3, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->sortReverseChronological_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 12046
    :cond_4
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_5

    .line 12047
    const/4 v2, 0x5

    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->itemBatchSize_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 12049
    :cond_5
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_6

    .line 12050
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$AgendaAction;->learnMoreUrl_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 12052
    :cond_6
    return-void
.end method
