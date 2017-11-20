.class public final Lcom/google/speech/s3/S3$S3ExperimentInfo;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "S3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/s3/S3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "S3ExperimentInfo"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/s3/S3$S3ExperimentInfo;


# instance fields
.field public applicableExperiments:[I

.field public enabledExperiments:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1090
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1091
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ExperimentInfo;->clear()Lcom/google/speech/s3/S3$S3ExperimentInfo;

    .line 1092
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/s3/S3$S3ExperimentInfo;
    .locals 2

    .prologue
    .line 1073
    sget-object v0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->_emptyArray:[Lcom/google/speech/s3/S3$S3ExperimentInfo;

    if-nez v0, :cond_1

    .line 1074
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1076
    :try_start_0
    sget-object v0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->_emptyArray:[Lcom/google/speech/s3/S3$S3ExperimentInfo;

    if-nez v0, :cond_0

    .line 1077
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/s3/S3$S3ExperimentInfo;

    sput-object v0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->_emptyArray:[Lcom/google/speech/s3/S3$S3ExperimentInfo;

    .line 1079
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1081
    :cond_1
    sget-object v0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->_emptyArray:[Lcom/google/speech/s3/S3$S3ExperimentInfo;

    return-object v0

    .line 1079
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/S3$S3ExperimentInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1250
    new-instance v0, Lcom/google/speech/s3/S3$S3ExperimentInfo;

    invoke-direct {v0}, Lcom/google/speech/s3/S3$S3ExperimentInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/S3$S3ExperimentInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/S3$S3ExperimentInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/s3/S3$S3ExperimentInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1244
    new-instance v0, Lcom/google/speech/s3/S3$S3ExperimentInfo;

    invoke-direct {v0}, Lcom/google/speech/s3/S3$S3ExperimentInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/S3$S3ExperimentInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/s3/S3$S3ExperimentInfo;
    .locals 1

    .prologue
    .line 1095
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->applicableExperiments:[I

    .line 1096
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->enabledExperiments:[I

    .line 1097
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->cachedSize:I

    .line 1098
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 1118
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v3

    .line 1119
    .local v3, "size":I
    iget-object v4, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->applicableExperiments:[I

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->applicableExperiments:[I

    array-length v4, v4

    if-lez v4, :cond_1

    .line 1120
    const/4 v0, 0x0

    .line 1121
    .local v0, "dataSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->applicableExperiments:[I

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 1122
    iget-object v4, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->applicableExperiments:[I

    aget v1, v4, v2

    .line 1123
    .local v1, "element":I
    invoke-static {v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 1121
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1126
    .end local v1    # "element":I
    :cond_0
    add-int/2addr v3, v0

    .line 1127
    iget-object v4, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->applicableExperiments:[I

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 1129
    .end local v0    # "dataSize":I
    .end local v2    # "i":I
    :cond_1
    iget-object v4, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->enabledExperiments:[I

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->enabledExperiments:[I

    array-length v4, v4

    if-lez v4, :cond_3

    .line 1130
    const/4 v0, 0x0

    .line 1131
    .restart local v0    # "dataSize":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    iget-object v4, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->enabledExperiments:[I

    array-length v4, v4

    if-ge v2, v4, :cond_2

    .line 1132
    iget-object v4, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->enabledExperiments:[I

    aget v1, v4, v2

    .line 1133
    .restart local v1    # "element":I
    invoke-static {v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 1131
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1136
    .end local v1    # "element":I
    :cond_2
    add-int/2addr v3, v0

    .line 1137
    iget-object v4, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->enabledExperiments:[I

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 1139
    .end local v0    # "dataSize":I
    .end local v2    # "i":I
    :cond_3
    iput v3, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->cachedSize:I

    .line 1140
    return v3
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
    .line 1067
    invoke-virtual {p0, p1}, Lcom/google/speech/s3/S3$S3ExperimentInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/S3$S3ExperimentInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/S3$S3ExperimentInfo;
    .locals 9
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1148
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v6

    .line 1149
    .local v6, "tag":I
    sparse-switch v6, :sswitch_data_0

    .line 1153
    invoke-static {p1, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1154
    :sswitch_0
    return-object p0

    .line 1159
    :sswitch_1
    const/16 v8, 0x8

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1161
    .local v0, "arrayLength":I
    iget-object v8, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->applicableExperiments:[I

    if-nez v8, :cond_2

    move v1, v7

    .line 1162
    .local v1, "i":I
    :goto_1
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 1163
    .local v4, "newArray":[I
    if-eqz v1, :cond_1

    .line 1164
    iget-object v8, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->applicableExperiments:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1166
    :cond_1
    :goto_2
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_3

    .line 1167
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 1168
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1166
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1161
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_2
    iget-object v8, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->applicableExperiments:[I

    array-length v1, v8

    goto :goto_1

    .line 1171
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 1172
    iput-object v4, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->applicableExperiments:[I

    goto :goto_0

    .line 1176
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 1177
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 1179
    .local v3, "limit":I
    const/4 v0, 0x0

    .line 1180
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 1181
    .local v5, "startPos":I
    :goto_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_4

    .line 1182
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 1183
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1185
    :cond_4
    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 1186
    iget-object v8, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->applicableExperiments:[I

    if-nez v8, :cond_6

    move v1, v7

    .line 1187
    .restart local v1    # "i":I
    :goto_4
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 1188
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_5

    .line 1189
    iget-object v8, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->applicableExperiments:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1191
    :cond_5
    :goto_5
    array-length v8, v4

    if-ge v1, v8, :cond_7

    .line 1192
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 1191
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1186
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_6
    iget-object v8, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->applicableExperiments:[I

    array-length v1, v8

    goto :goto_4

    .line 1194
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_7
    iput-object v4, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->applicableExperiments:[I

    .line 1195
    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 1199
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[I
    .end local v5    # "startPos":I
    :sswitch_3
    const/16 v8, 0x10

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1201
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->enabledExperiments:[I

    if-nez v8, :cond_9

    move v1, v7

    .line 1202
    .restart local v1    # "i":I
    :goto_6
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 1203
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_8

    .line 1204
    iget-object v8, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->enabledExperiments:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1206
    :cond_8
    :goto_7
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_a

    .line 1207
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 1208
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1206
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1201
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_9
    iget-object v8, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->enabledExperiments:[I

    array-length v1, v8

    goto :goto_6

    .line 1211
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 1212
    iput-object v4, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->enabledExperiments:[I

    goto/16 :goto_0

    .line 1216
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 1217
    .restart local v2    # "length":I
    invoke-virtual {p1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 1219
    .restart local v3    # "limit":I
    const/4 v0, 0x0

    .line 1220
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 1221
    .restart local v5    # "startPos":I
    :goto_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_b

    .line 1222
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 1223
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1225
    :cond_b
    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 1226
    iget-object v8, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->enabledExperiments:[I

    if-nez v8, :cond_d

    move v1, v7

    .line 1227
    .restart local v1    # "i":I
    :goto_9
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 1228
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_c

    .line 1229
    iget-object v8, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->enabledExperiments:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1231
    :cond_c
    :goto_a
    array-length v8, v4

    if-ge v1, v8, :cond_e

    .line 1232
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 1231
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1226
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_d
    iget-object v8, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->enabledExperiments:[I

    array-length v1, v8

    goto :goto_9

    .line 1234
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_e
    iput-object v4, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->enabledExperiments:[I

    .line 1235
    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 1149
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_2
        0x10 -> :sswitch_3
        0x12 -> :sswitch_4
    .end sparse-switch
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
    .line 1104
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->applicableExperiments:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->applicableExperiments:[I

    array-length v1, v1

    if-lez v1, :cond_0

    .line 1105
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->applicableExperiments:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1106
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->applicableExperiments:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1109
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->enabledExperiments:[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->enabledExperiments:[I

    array-length v1, v1

    if-lez v1, :cond_1

    .line 1110
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->enabledExperiments:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1111
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->enabledExperiments:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1110
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1114
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
