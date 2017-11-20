.class public final Lcom/google/majel/proto/CalendarProtos$CalendarQuery;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "CalendarProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/CalendarProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CalendarQuery"
.end annotation


# static fields
.field public static final SEARCH_TYPE_NEXT:I = 0x3

.field public static final SEARCH_TYPE_NONE:I = 0x0

.field public static final SEARCH_TYPE_WHEN:I = 0x2

.field public static final SEARCH_TYPE_WHERE:I = 0x1

.field private static volatile _emptyArray:[Lcom/google/majel/proto/CalendarProtos$CalendarQuery;


# instance fields
.field private bitField0_:I

.field private content_:Ljava/lang/String;

.field private earliestStartTimeMs_:J

.field private latestStartTimeMs_:J

.field private maxResults_:I

.field private searchType_:I

.field private titleOnly_:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1202
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1203
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->clear()Lcom/google/majel/proto/CalendarProtos$CalendarQuery;

    .line 1204
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/CalendarProtos$CalendarQuery;
    .locals 2

    .prologue
    .line 1072
    sget-object v0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->_emptyArray:[Lcom/google/majel/proto/CalendarProtos$CalendarQuery;

    if-nez v0, :cond_1

    .line 1073
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1075
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->_emptyArray:[Lcom/google/majel/proto/CalendarProtos$CalendarQuery;

    if-nez v0, :cond_0

    .line 1076
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/CalendarProtos$CalendarQuery;

    sput-object v0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->_emptyArray:[Lcom/google/majel/proto/CalendarProtos$CalendarQuery;

    .line 1078
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1080
    :cond_1
    sget-object v0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->_emptyArray:[Lcom/google/majel/proto/CalendarProtos$CalendarQuery;

    return-object v0

    .line 1078
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CalendarProtos$CalendarQuery;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1329
    new-instance v0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;

    invoke-direct {v0}, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CalendarProtos$CalendarQuery;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/CalendarProtos$CalendarQuery;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1323
    new-instance v0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;

    invoke-direct {v0}, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/CalendarProtos$CalendarQuery;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 1207
    iput v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->bitField0_:I

    .line 1208
    iput-wide v2, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->earliestStartTimeMs_:J

    .line 1209
    iput-wide v2, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->latestStartTimeMs_:J

    .line 1210
    iput v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->maxResults_:I

    .line 1211
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->content_:Ljava/lang/String;

    .line 1212
    iput-boolean v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->titleOnly_:Z

    .line 1213
    iput v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->searchType_:I

    .line 1214
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->cachedSize:I

    .line 1215
    return-object p0
.end method

.method public clearContent()Lcom/google/majel/proto/CalendarProtos$CalendarQuery;
    .locals 1

    .prologue
    .line 1159
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->content_:Ljava/lang/String;

    .line 1160
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->bitField0_:I

    .line 1161
    return-object p0
.end method

.method public clearEarliestStartTimeMs()Lcom/google/majel/proto/CalendarProtos$CalendarQuery;
    .locals 2

    .prologue
    .line 1099
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->earliestStartTimeMs_:J

    .line 1100
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->bitField0_:I

    .line 1101
    return-object p0
.end method

.method public clearLatestStartTimeMs()Lcom/google/majel/proto/CalendarProtos$CalendarQuery;
    .locals 2

    .prologue
    .line 1118
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->latestStartTimeMs_:J

    .line 1119
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->bitField0_:I

    .line 1120
    return-object p0
.end method

.method public clearMaxResults()Lcom/google/majel/proto/CalendarProtos$CalendarQuery;
    .locals 1

    .prologue
    .line 1137
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->maxResults_:I

    .line 1138
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->bitField0_:I

    .line 1139
    return-object p0
.end method

.method public clearSearchType()Lcom/google/majel/proto/CalendarProtos$CalendarQuery;
    .locals 1

    .prologue
    .line 1197
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->searchType_:I

    .line 1198
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->bitField0_:I

    .line 1199
    return-object p0
.end method

.method public clearTitleOnly()Lcom/google/majel/proto/CalendarProtos$CalendarQuery;
    .locals 1

    .prologue
    .line 1178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->titleOnly_:Z

    .line 1179
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->bitField0_:I

    .line 1180
    return-object p0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->content_:Ljava/lang/String;

    return-object v0
.end method

.method public getEarliestStartTimeMs()J
    .locals 2

    .prologue
    .line 1088
    iget-wide v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->earliestStartTimeMs_:J

    return-wide v0
.end method

.method public getLatestStartTimeMs()J
    .locals 2

    .prologue
    .line 1107
    iget-wide v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->latestStartTimeMs_:J

    return-wide v0
.end method

.method public getMaxResults()I
    .locals 1

    .prologue
    .line 1126
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->maxResults_:I

    return v0
.end method

.method public getSearchType()I
    .locals 1

    .prologue
    .line 1186
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->searchType_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 1243
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1244
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1245
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->earliestStartTimeMs_:J

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1248
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1249
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->latestStartTimeMs_:J

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1252
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 1253
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->maxResults_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1256
    :cond_2
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 1257
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->content_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1260
    :cond_3
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 1261
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->titleOnly_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1264
    :cond_4
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 1265
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->searchType_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1268
    :cond_5
    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->cachedSize:I

    .line 1269
    return v0
.end method

.method public getTitleOnly()Z
    .locals 1

    .prologue
    .line 1167
    iget-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->titleOnly_:Z

    return v0
.end method

.method public hasContent()Z
    .locals 1

    .prologue
    .line 1156
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEarliestStartTimeMs()Z
    .locals 1

    .prologue
    .line 1096
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLatestStartTimeMs()Z
    .locals 1

    .prologue
    .line 1115
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMaxResults()Z
    .locals 1

    .prologue
    .line 1134
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSearchType()Z
    .locals 1

    .prologue
    .line 1194
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTitleOnly()Z
    .locals 1

    .prologue
    .line 1175
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

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
    .line 1060
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CalendarProtos$CalendarQuery;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CalendarProtos$CalendarQuery;
    .locals 3
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1277
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1278
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1282
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1283
    :sswitch_0
    return-object p0

    .line 1288
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->earliestStartTimeMs_:J

    .line 1289
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->bitField0_:I

    goto :goto_0

    .line 1293
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->latestStartTimeMs_:J

    .line 1294
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->bitField0_:I

    goto :goto_0

    .line 1298
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->maxResults_:I

    .line 1299
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->bitField0_:I

    goto :goto_0

    .line 1303
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->content_:Ljava/lang/String;

    .line 1304
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->bitField0_:I

    goto :goto_0

    .line 1308
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->titleOnly_:Z

    .line 1309
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->bitField0_:I

    goto :goto_0

    .line 1313
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->searchType_:I

    .line 1314
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->bitField0_:I

    goto :goto_0

    .line 1278
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

.method public setContent(Ljava/lang/String;)Lcom/google/majel/proto/CalendarProtos$CalendarQuery;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1148
    if-nez p1, :cond_0

    .line 1149
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1151
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->content_:Ljava/lang/String;

    .line 1152
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->bitField0_:I

    .line 1153
    return-object p0
.end method

.method public setEarliestStartTimeMs(J)Lcom/google/majel/proto/CalendarProtos$CalendarQuery;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1091
    iput-wide p1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->earliestStartTimeMs_:J

    .line 1092
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->bitField0_:I

    .line 1093
    return-object p0
.end method

.method public setLatestStartTimeMs(J)Lcom/google/majel/proto/CalendarProtos$CalendarQuery;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1110
    iput-wide p1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->latestStartTimeMs_:J

    .line 1111
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->bitField0_:I

    .line 1112
    return-object p0
.end method

.method public setMaxResults(I)Lcom/google/majel/proto/CalendarProtos$CalendarQuery;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1129
    iput p1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->maxResults_:I

    .line 1130
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->bitField0_:I

    .line 1131
    return-object p0
.end method

.method public setSearchType(I)Lcom/google/majel/proto/CalendarProtos$CalendarQuery;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1189
    iput p1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->searchType_:I

    .line 1190
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->bitField0_:I

    .line 1191
    return-object p0
.end method

.method public setTitleOnly(Z)Lcom/google/majel/proto/CalendarProtos$CalendarQuery;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1170
    iput-boolean p1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->titleOnly_:Z

    .line 1171
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->bitField0_:I

    .line 1172
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
    .line 1221
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1222
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->earliestStartTimeMs_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1224
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1225
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->latestStartTimeMs_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1227
    :cond_1
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 1228
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->maxResults_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1230
    :cond_2
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 1231
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->content_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1233
    :cond_3
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 1234
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->titleOnly_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1236
    :cond_4
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 1237
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarQuery;->searchType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1239
    :cond_5
    return-void
.end method
