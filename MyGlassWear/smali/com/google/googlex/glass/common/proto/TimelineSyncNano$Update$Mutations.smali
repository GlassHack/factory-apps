.class public final Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "TimelineSyncNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mutations"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;


# instance fields
.field public attachmentDeletions:[Ljava/lang/String;

.field public item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field public itemFieldDeletions:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1188
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1189
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 1195
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->itemFieldDeletions:[I

    .line 1198
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    .line 1189
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1202
    if-ne p1, p0, :cond_1

    .line 1208
    :cond_0
    :goto_0
    return v1

    .line 1203
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1204
    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;

    .line 1205
    .local v0, "other":Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->itemFieldDeletions:[I

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->itemFieldDeletions:[I

    .line 1206
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    .line 1207
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 1208
    goto :goto_0

    .line 1205
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 1207
    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->unknownFieldData:Ljava/util/List;

    .line 1208
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 1251
    const/4 v2, 0x0

    .line 1252
    .local v2, "size":I
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v4, :cond_0

    .line 1253
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 1254
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1256
    :cond_0
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->itemFieldDeletions:[I

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->itemFieldDeletions:[I

    array-length v4, v4

    if-lez v4, :cond_2

    .line 1257
    const/4 v0, 0x0

    .line 1258
    .local v0, "dataSize":I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->itemFieldDeletions:[I

    array-length v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_1

    aget v1, v5, v4

    .line 1260
    .local v1, "element":I
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32SizeNoTag(I)I

    move-result v7

    add-int/2addr v0, v7

    .line 1258
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1262
    .end local v1    # "element":I
    :cond_1
    add-int/2addr v2, v0

    .line 1263
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->itemFieldDeletions:[I

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 1265
    .end local v0    # "dataSize":I
    :cond_2
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_4

    .line 1266
    const/4 v0, 0x0

    .line 1267
    .restart local v0    # "dataSize":I
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    array-length v5, v4

    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v1, v4, v3

    .line 1269
    .local v1, "element":Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v0, v6

    .line 1267
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1271
    .end local v1    # "element":Ljava/lang/String;
    :cond_3
    add-int/2addr v2, v0

    .line 1272
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    .line 1274
    .end local v0    # "dataSize":I
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->unknownFieldData:Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1275
    iput v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->cachedSize:I

    .line 1276
    return v2
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1212
    const/16 v1, 0x11

    .line 1213
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v2, :cond_2

    move v2, v3

    :goto_0
    add-int/lit16 v1, v2, 0x20f

    .line 1214
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->itemFieldDeletions:[I

    if-nez v2, :cond_3

    mul-int/lit8 v1, v1, 0x1f

    .line 1220
    :cond_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    if-nez v2, :cond_4

    mul-int/lit8 v1, v1, 0x1f

    .line 1226
    :cond_1
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->unknownFieldData:Ljava/util/List;

    if-nez v4, :cond_6

    :goto_1
    add-int v1, v2, v3

    .line 1227
    return v1

    .line 1213
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hashCode()I

    move-result v2

    goto :goto_0

    .line 1216
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->itemFieldDeletions:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1217
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->itemFieldDeletions:[I

    aget v4, v4, v0

    add-int v1, v2, v4

    .line 1216
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1222
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1223
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_5

    move v2, v3

    :goto_4
    add-int v1, v4, v2

    .line 1222
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1223
    :cond_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    .line 1226
    .end local v0    # "i":I
    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;
    .locals 7
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1284
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 1285
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 1289
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->unknownFieldData:Ljava/util/List;

    if-nez v4, :cond_1

    .line 1290
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->unknownFieldData:Ljava/util/List;

    .line 1293
    :cond_1
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->unknownFieldData:Ljava/util/List;

    invoke-static {v4, p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1295
    :sswitch_0
    return-object p0

    .line 1300
    :sswitch_1
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v4, :cond_2

    .line 1301
    new-instance v4, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;-><init>()V

    iput-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 1303
    :cond_2
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {p1, v4}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1307
    :sswitch_2
    const/16 v4, 0x10

    invoke-static {p1, v4}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1308
    .local v0, "arrayLength":I
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->itemFieldDeletions:[I

    array-length v1, v4

    .line 1309
    .local v1, "i":I
    add-int v4, v1, v0

    new-array v2, v4, [I

    .line 1310
    .local v2, "newArray":[I
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->itemFieldDeletions:[I

    invoke-static {v4, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1311
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->itemFieldDeletions:[I

    .line 1312
    :goto_1
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->itemFieldDeletions:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_3

    .line 1313
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->itemFieldDeletions:[I

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v5

    aput v5, v4, v1

    .line 1314
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1312
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1317
    :cond_3
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->itemFieldDeletions:[I

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v5

    aput v5, v4, v1

    goto :goto_0

    .line 1321
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[I
    :sswitch_3
    const/16 v4, 0x1a

    invoke-static {p1, v4}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1322
    .restart local v0    # "arrayLength":I
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    array-length v1, v4

    .line 1323
    .restart local v1    # "i":I
    add-int v4, v1, v0

    new-array v2, v4, [Ljava/lang/String;

    .line 1324
    .local v2, "newArray":[Ljava/lang/String;
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    invoke-static {v4, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1325
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    .line 1326
    :goto_2
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_4

    .line 1327
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 1328
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1326
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1331
    :cond_4
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    goto/16 :goto_0

    .line 1285
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 1185
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;
    .locals 1
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1346
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;
    .locals 1
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1340
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;-><init>()V

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1232
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v2, :cond_0

    .line 1233
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1235
    :cond_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->itemFieldDeletions:[I

    if-eqz v2, :cond_1

    .line 1236
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->itemFieldDeletions:[I

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget v0, v3, v2

    .line 1237
    .local v0, "element":I
    const/4 v5, 0x2

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 1236
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1240
    .end local v0    # "element":I
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1241
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 1242
    .local v0, "element":Ljava/lang/String;
    const/4 v4, 0x3

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1241
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1245
    .end local v0    # "element":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update$Mutations;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1247
    return-void
.end method
