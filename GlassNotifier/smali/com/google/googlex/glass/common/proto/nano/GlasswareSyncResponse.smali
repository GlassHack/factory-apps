.class public final Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "GlasswareSyncResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;


# instance fields
.field public account:[Lcom/google/googlex/glass/common/proto/nano/Account;

.field private bitField0_:I

.field private hasCompletedTutorialTask_:Z

.field public installedGlassware:[Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;

.field private syncTimestampUs_:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 72
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->clear()Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;

    .line 73
    return-void
.end method

.method public static emptyArray()[Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;

    sput-object v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;

    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 264
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 76
    iput v2, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->bitField0_:I

    .line 77
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->syncTimestampUs_:J

    .line 78
    invoke-static {}, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->emptyArray()[Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;

    .line 79
    invoke-static {}, Lcom/google/googlex/glass/common/proto/nano/Account;->emptyArray()[Lcom/google/googlex/glass/common/proto/nano/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/nano/Account;

    .line 80
    iput-boolean v2, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->hasCompletedTutorialTask_:Z

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->cachedSize:I

    .line 83
    return-object p0
.end method

.method public clearHasCompletedTutorialTask()Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->hasCompletedTutorialTask_:Z

    .line 60
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->bitField0_:I

    .line 61
    return-object p0
.end method

.method public clearSyncTimestampUs()Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;
    .locals 2

    .prologue
    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->syncTimestampUs_:J

    .line 35
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->bitField0_:I

    .line 36
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .prologue
    .line 163
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v2

    .line 164
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 165
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 166
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;

    aget-object v0, v3, v1

    .line 167
    .local v0, "element":Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;
    if-eqz v0, :cond_0

    .line 168
    const/4 v3, 0x1

    .line 169
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 165
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;
    .end local v1    # "i":I
    :cond_1
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 174
    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->syncTimestampUs_:J

    .line 175
    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 177
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/nano/Account;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/nano/Account;

    array-length v3, v3

    if-lez v3, :cond_4

    .line 178
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/nano/Account;

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 179
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/nano/Account;

    aget-object v0, v3, v1

    .line 180
    .local v0, "element":Lcom/google/googlex/glass/common/proto/nano/Account;
    if-eqz v0, :cond_3

    .line 181
    const/4 v3, 0x3

    .line 182
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 178
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 186
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/nano/Account;
    .end local v1    # "i":I
    :cond_4
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_5

    .line 187
    const/4 v3, 0x4

    iget-boolean v4, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->hasCompletedTutorialTask_:Z

    .line 188
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 190
    :cond_5
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 88
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 114
    :cond_0
    :goto_0
    return v1

    .line 91
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 94
    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;

    .line 95
    .local v0, "other":Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->syncTimestampUs_:J

    iget-wide v6, v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->syncTimestampUs_:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 99
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/InternalNano;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/nano/Account;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/nano/Account;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/InternalNano;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 107
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->hasCompletedTutorialTask_:Z

    iget-boolean v4, v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->hasCompletedTutorialTask_:Z

    if-ne v3, v4, :cond_0

    .line 111
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 112
    :cond_2
    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 114
    :cond_4
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getHasCompletedTutorialTask()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->hasCompletedTutorialTask_:Z

    return v0
.end method

.method public getSyncTimestampUs()J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->syncTimestampUs_:J

    return-wide v0
.end method

.method public hasHasCompletedTutorialTask()Z
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSyncTimestampUs()Z
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

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
    .line 119
    const/16 v0, 0x11

    .line 120
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 121
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->syncTimestampUs_:J

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->syncTimestampUs_:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 122
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;

    .line 123
    invoke-static {v2}, Lcom/google/protobuf/nano/InternalNano;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 124
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/nano/Account;

    .line 125
    invoke-static {v2}, Lcom/google/protobuf/nano/InternalNano;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 126
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->hasCompletedTutorialTask_:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x4cf

    :goto_0
    add-int v0, v2, v1

    .line 127
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 128
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x0

    .line 129
    :goto_1
    add-int v0, v2, v1

    .line 130
    return v0

    .line 126
    :cond_1
    const/16 v1, 0x4d5

    goto :goto_0

    .line 129
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;
    .locals 8
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 198
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 199
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 203
    invoke-super {p0, p1, v3}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 204
    :sswitch_0
    return-object p0

    .line 209
    :sswitch_1
    const/16 v5, 0xa

    .line 210
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 211
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;

    if-nez v5, :cond_2

    move v1, v4

    .line 212
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;

    .line 214
    .local v2, "newArray":[Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;
    if-eqz v1, :cond_1

    .line 215
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 218
    new-instance v5, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;

    invoke-direct {v5}, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;-><init>()V

    aput-object v5, v2, v1

    .line 219
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 220
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 217
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 211
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;
    :cond_2
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;

    array-length v1, v5

    goto :goto_1

    .line 223
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;
    :cond_3
    new-instance v5, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;

    invoke-direct {v5}, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;-><init>()V

    aput-object v5, v2, v1

    .line 224
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 225
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;

    goto :goto_0

    .line 229
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->syncTimestampUs_:J

    .line 230
    iget v5, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->bitField0_:I

    goto :goto_0

    .line 234
    :sswitch_3
    const/16 v5, 0x1a

    .line 235
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 236
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/nano/Account;

    if-nez v5, :cond_5

    move v1, v4

    .line 237
    .restart local v1    # "i":I
    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/googlex/glass/common/proto/nano/Account;

    .line 239
    .local v2, "newArray":[Lcom/google/googlex/glass/common/proto/nano/Account;
    if-eqz v1, :cond_4

    .line 240
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/nano/Account;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 242
    :cond_4
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_6

    .line 243
    new-instance v5, Lcom/google/googlex/glass/common/proto/nano/Account;

    invoke-direct {v5}, Lcom/google/googlex/glass/common/proto/nano/Account;-><init>()V

    aput-object v5, v2, v1

    .line 244
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 245
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 242
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 236
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/nano/Account;
    :cond_5
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/nano/Account;

    array-length v1, v5

    goto :goto_3

    .line 248
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/nano/Account;
    :cond_6
    new-instance v5, Lcom/google/googlex/glass/common/proto/nano/Account;

    invoke-direct {v5}, Lcom/google/googlex/glass/common/proto/nano/Account;-><init>()V

    aput-object v5, v2, v1

    .line 249
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 250
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/nano/Account;

    goto/16 :goto_0

    .line 254
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/nano/Account;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->hasCompletedTutorialTask_:Z

    .line 255
    iget v5, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->bitField0_:I

    goto/16 :goto_0

    .line 199
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;

    move-result-object v0

    return-object v0
.end method

.method public setHasCompletedTutorialTask(Z)Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->hasCompletedTutorialTask_:Z

    .line 65
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->bitField0_:I

    .line 66
    return-object p0
.end method

.method public setSyncTimestampUs(J)Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->syncTimestampUs_:J

    .line 40
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->bitField0_:I

    .line 41
    return-object p0
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
    .line 136
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 137
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 138
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;

    aget-object v0, v2, v1

    .line 139
    .local v0, "element":Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;
    if-eqz v0, :cond_0

    .line 140
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 137
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;
    .end local v1    # "i":I
    :cond_1
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 145
    const/4 v2, 0x2

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->syncTimestampUs_:J

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 147
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/nano/Account;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/nano/Account;

    array-length v2, v2

    if-lez v2, :cond_4

    .line 148
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/nano/Account;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 149
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/nano/Account;

    aget-object v0, v2, v1

    .line 150
    .local v0, "element":Lcom/google/googlex/glass/common/proto/nano/Account;
    if-eqz v0, :cond_3

    .line 151
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 148
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 155
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/nano/Account;
    .end local v1    # "i":I
    :cond_4
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5

    .line 156
    const/4 v2, 0x4

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncResponse;->hasCompletedTutorialTask_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 158
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 159
    return-void
.end method
