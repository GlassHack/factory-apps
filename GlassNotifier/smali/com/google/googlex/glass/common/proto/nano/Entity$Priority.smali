.class public final Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Entity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/nano/Entity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Priority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;


# instance fields
.field private bitField0_:I

.field private contentUsageTimestampMs_:J

.field private glasswareAffinity_:I

.field private phoneUsageTimestampMs_:J

.field private usageCount_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 127
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->clear()Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;

    .line 128
    return-void
.end method

.method public static emptyArray()[Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;
    .locals 2

    .prologue
    .line 35
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;

    if-nez v0, :cond_1

    .line 36
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 38
    :try_start_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;

    if-nez v0, :cond_0

    .line 39
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;

    sput-object v0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;

    .line 41
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_1
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;

    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 267
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 131
    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->bitField0_:I

    .line 132
    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->glasswareAffinity_:I

    .line 133
    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->usageCount_:I

    .line 134
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->contentUsageTimestampMs_:J

    .line 135
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->phoneUsageTimestampMs_:J

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 137
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->cachedSize:I

    .line 138
    return-object p0
.end method

.method public clearContentUsageTimestampMs()Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;
    .locals 2

    .prologue
    .line 95
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->contentUsageTimestampMs_:J

    .line 96
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->bitField0_:I

    .line 97
    return-object p0
.end method

.method public clearGlasswareAffinity()Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->glasswareAffinity_:I

    .line 58
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->bitField0_:I

    .line 59
    return-object p0
.end method

.method public clearPhoneUsageTimestampMs()Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;
    .locals 2

    .prologue
    .line 114
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->phoneUsageTimestampMs_:J

    .line 115
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->bitField0_:I

    .line 116
    return-object p0
.end method

.method public clearUsageCount()Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->usageCount_:I

    .line 77
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->bitField0_:I

    .line 78
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 206
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 207
    .local v0, "size":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 208
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->glasswareAffinity_:I

    .line 209
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 211
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 212
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->usageCount_:I

    .line 213
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 215
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 216
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->contentUsageTimestampMs_:J

    .line 217
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 219
    :cond_2
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 220
    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->phoneUsageTimestampMs_:J

    .line 221
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 223
    :cond_3
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 143
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 169
    :cond_0
    :goto_0
    return v1

    .line 146
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 149
    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;

    .line 150
    .local v0, "other":Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->glasswareAffinity_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->glasswareAffinity_:I

    if-ne v3, v4, :cond_0

    .line 154
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->usageCount_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->usageCount_:I

    if-ne v3, v4, :cond_0

    .line 158
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->contentUsageTimestampMs_:J

    iget-wide v6, v0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->contentUsageTimestampMs_:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 162
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->phoneUsageTimestampMs_:J

    iget-wide v6, v0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->phoneUsageTimestampMs_:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 166
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 167
    :cond_2
    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 169
    :cond_4
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getContentUsageTimestampMs()J
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->contentUsageTimestampMs_:J

    return-wide v0
.end method

.method public getGlasswareAffinity()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->glasswareAffinity_:I

    return v0
.end method

.method public getPhoneUsageTimestampMs()J
    .locals 2

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->phoneUsageTimestampMs_:J

    return-wide v0
.end method

.method public getUsageCount()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->usageCount_:I

    return v0
.end method

.method public hasContentUsageTimestampMs()Z
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGlasswareAffinity()Z
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPhoneUsageTimestampMs()Z
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUsageCount()Z
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 174
    const/16 v0, 0x11

    .line 175
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 176
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->glasswareAffinity_:I

    add-int v0, v1, v2

    .line 177
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->usageCount_:I

    add-int v0, v1, v2

    .line 178
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->contentUsageTimestampMs_:J

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->contentUsageTimestampMs_:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 179
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->phoneUsageTimestampMs_:J

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->phoneUsageTimestampMs_:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 180
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 181
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 182
    :goto_0
    add-int v0, v2, v1

    .line 183
    return v0

    .line 182
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 232
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 236
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 237
    :sswitch_0
    return-object p0

    .line 242
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->glasswareAffinity_:I

    .line 243
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->bitField0_:I

    goto :goto_0

    .line 247
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->usageCount_:I

    .line 248
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->bitField0_:I

    goto :goto_0

    .line 252
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->contentUsageTimestampMs_:J

    .line 253
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->bitField0_:I

    goto :goto_0

    .line 257
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->phoneUsageTimestampMs_:J

    .line 258
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->bitField0_:I

    goto :goto_0

    .line 232
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
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
    .line 29
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;

    move-result-object v0

    return-object v0
.end method

.method public setContentUsageTimestampMs(J)Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 100
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->contentUsageTimestampMs_:J

    .line 101
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->bitField0_:I

    .line 102
    return-object p0
.end method

.method public setGlasswareAffinity(I)Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->glasswareAffinity_:I

    .line 63
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->bitField0_:I

    .line 64
    return-object p0
.end method

.method public setPhoneUsageTimestampMs(J)Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 119
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->phoneUsageTimestampMs_:J

    .line 120
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->bitField0_:I

    .line 121
    return-object p0
.end method

.method public setUsageCount(I)Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->usageCount_:I

    .line 82
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->bitField0_:I

    .line 83
    return-object p0
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
    .line 189
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 190
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->glasswareAffinity_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 192
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 193
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->usageCount_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 195
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 196
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->contentUsageTimestampMs_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 198
    :cond_2
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 199
    const/4 v0, 0x4

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->phoneUsageTimestampMs_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 201
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 202
    return-void
.end method
