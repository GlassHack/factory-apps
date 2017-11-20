.class public final Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "GlassUserEventFrequencyStat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;


# instance fields
.field public durationMs:J

.field public frequencyHz:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 32
    invoke-virtual {p0}, Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;->clear()Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;

    .line 33
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;->_emptyArray:[Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;->_emptyArray:[Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;

    sput-object v0, Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;->_emptyArray:[Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;->_emptyArray:[Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;

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

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    new-instance v0, Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;

    invoke-direct {v0}, Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 125
    new-instance v0, Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;

    invoke-direct {v0}, Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 36
    iput-wide v0, p0, Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;->frequencyHz:J

    .line 37
    iput-wide v0, p0, Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;->durationMs:J

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;->cachedSize:I

    .line 40
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 88
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 89
    .local v0, "size":I
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;->frequencyHz:J

    .line 90
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 91
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;->durationMs:J

    .line 92
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 93
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 45
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 61
    :cond_0
    :goto_0
    return v1

    .line 48
    :cond_1
    instance-of v3, p1, Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 51
    check-cast v0, Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;

    .line 52
    .local v0, "other":Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;
    iget-wide v4, p0, Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;->frequencyHz:J

    iget-wide v6, v0, Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;->frequencyHz:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 55
    iget-wide v4, p0, Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;->durationMs:J

    iget-wide v6, v0, Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;->durationMs:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 58
    iget-object v3, p0, Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 59
    :cond_2
    iget-object v3, v0, Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 61
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 66
    const/16 v0, 0x11

    .line 67
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 68
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;->frequencyHz:J

    iget-wide v4, p0, Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;->frequencyHz:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 70
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;->durationMs:J

    iget-wide v4, p0, Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;->durationMs:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 72
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 73
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 74
    :goto_0
    add-int v0, v2, v1

    .line 75
    return v0

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 102
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 106
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    :sswitch_0
    return-object p0

    .line 112
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;->frequencyHz:J

    goto :goto_0

    .line 116
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;->durationMs:J

    goto :goto_0

    .line 102
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
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
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;

    move-result-object v0

    return-object v0
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
    .line 81
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;->frequencyHz:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 82
    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;->durationMs:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 83
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 84
    return-void
.end method
