.class public final Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "TimelineSyncNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/TimelineSyncNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InsertReplaceOnConflict"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;


# instance fields
.field private timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field public userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1033
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1034
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1056
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 1034
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1174
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1168
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;

    return-object v0
.end method


# virtual methods
.method public clearTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;
    .locals 1

    .prologue
    .line 1052
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 1053
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1060
    if-ne p1, p0, :cond_1

    .line 1065
    :cond_0
    :goto_0
    return v1

    .line 1061
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1062
    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;

    .line 1063
    .local v0, "other":Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 1064
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 1065
    goto :goto_0

    .line 1063
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 1064
    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->unknownFieldData:Ljava/util/List;

    .line 1065
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 1099
    const/4 v1, 0x0

    .line 1100
    .local v1, "size":I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v2, :cond_0

    .line 1101
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 1102
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1104
    :cond_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    if-eqz v2, :cond_2

    .line 1105
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    .line 1106
    .local v0, "element":Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    if-eqz v0, :cond_1

    .line 1107
    const/4 v5, 0x2

    .line 1108
    invoke-static {v5, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v1, v5

    .line 1105
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1112
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->unknownFieldData:Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1113
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->cachedSize:I

    .line 1114
    return v1
.end method

.method public getTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    return-object v0
.end method

.method public hasTimelineItem()Z
    .locals 1

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1069
    const/16 v1, 0x11

    .line 1070
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    add-int/lit16 v1, v2, 0x20f

    .line 1071
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    if-nez v2, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    .line 1077
    :cond_0
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->unknownFieldData:Ljava/util/List;

    if-nez v4, :cond_4

    :goto_1
    add-int v1, v2, v3

    .line 1078
    return v1

    .line 1070
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hashCode()I

    move-result v2

    goto :goto_0

    .line 1073
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1074
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    aget-object v2, v2, v0

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v1, v4, v2

    .line 1073
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1074
    :cond_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->hashCode()I

    move-result v2

    goto :goto_3

    .line 1077
    .end local v0    # "i":I
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;
    .locals 7
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1122
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 1123
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 1127
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->unknownFieldData:Ljava/util/List;

    if-nez v5, :cond_1

    .line 1128
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->unknownFieldData:Ljava/util/List;

    .line 1131
    :cond_1
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->unknownFieldData:Ljava/util/List;

    invoke-static {v5, p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1133
    :sswitch_0
    return-object p0

    .line 1138
    :sswitch_1
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v5, :cond_2

    .line 1139
    new-instance v5, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;-><init>()V

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 1141
    :cond_2
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1145
    :sswitch_2
    const/16 v5, 0x12

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1146
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    if-nez v5, :cond_4

    move v1, v4

    .line 1147
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 1148
    .local v2, "newArray":[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    if-eqz v5, :cond_3

    .line 1149
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1151
    :cond_3
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 1152
    :goto_2
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_5

    .line 1153
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    new-instance v6, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;-><init>()V

    aput-object v6, v5, v1

    .line 1154
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1155
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1152
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1146
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    :cond_4
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    array-length v1, v5

    goto :goto_1

    .line 1158
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    :cond_5
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    new-instance v6, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;-><init>()V

    aput-object v6, v5, v1

    .line 1159
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1123
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 1030
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;

    move-result-object v0

    return-object v0
.end method

.method public setTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;
    .locals 1
    .param p1, "value"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 1042
    if-nez p1, :cond_0

    .line 1043
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1045
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 1046
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1083
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v1, :cond_0

    .line 1084
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1086
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    if-eqz v1, :cond_2

    .line 1087
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 1088
    .local v0, "element":Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    if-eqz v0, :cond_1

    .line 1089
    const/4 v4, 0x2

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1087
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1093
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1095
    return-void
.end method
