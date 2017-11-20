.class public final Lcom/google/common/logging/nano/UseGalleryEvent;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "UseGalleryEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/UseGalleryEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/UseGalleryEvent;


# instance fields
.field private bitField0_:I

.field private usageDurationMs_:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 47
    invoke-virtual {p0}, Lcom/google/common/logging/nano/UseGalleryEvent;->clear()Lcom/google/common/logging/nano/UseGalleryEvent;

    .line 48
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/UseGalleryEvent;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/common/logging/nano/UseGalleryEvent;->_emptyArray:[Lcom/google/common/logging/nano/UseGalleryEvent;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/UseGalleryEvent;->_emptyArray:[Lcom/google/common/logging/nano/UseGalleryEvent;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/UseGalleryEvent;

    sput-object v0, Lcom/google/common/logging/nano/UseGalleryEvent;->_emptyArray:[Lcom/google/common/logging/nano/UseGalleryEvent;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/UseGalleryEvent;->_emptyArray:[Lcom/google/common/logging/nano/UseGalleryEvent;

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

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/UseGalleryEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    new-instance v0, Lcom/google/common/logging/nano/UseGalleryEvent;

    invoke-direct {v0}, Lcom/google/common/logging/nano/UseGalleryEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/UseGalleryEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/UseGalleryEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/UseGalleryEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 133
    new-instance v0, Lcom/google/common/logging/nano/UseGalleryEvent;

    invoke-direct {v0}, Lcom/google/common/logging/nano/UseGalleryEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/UseGalleryEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/UseGalleryEvent;
    .locals 2

    .prologue
    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/UseGalleryEvent;->bitField0_:I

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/logging/nano/UseGalleryEvent;->usageDurationMs_:J

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/UseGalleryEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/UseGalleryEvent;->cachedSize:I

    .line 55
    return-object p0
.end method

.method public clearUsageDurationMs()Lcom/google/common/logging/nano/UseGalleryEvent;
    .locals 2

    .prologue
    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/logging/nano/UseGalleryEvent;->usageDurationMs_:J

    .line 35
    iget v0, p0, Lcom/google/common/logging/nano/UseGalleryEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/common/logging/nano/UseGalleryEvent;->bitField0_:I

    .line 36
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 99
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 100
    .local v0, "size":I
    iget v1, p0, Lcom/google/common/logging/nano/UseGalleryEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 101
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/common/logging/nano/UseGalleryEvent;->usageDurationMs_:J

    .line 102
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 104
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 60
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 74
    :cond_0
    :goto_0
    return v1

    .line 63
    :cond_1
    instance-of v3, p1, Lcom/google/common/logging/nano/UseGalleryEvent;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 66
    check-cast v0, Lcom/google/common/logging/nano/UseGalleryEvent;

    .line 67
    .local v0, "other":Lcom/google/common/logging/nano/UseGalleryEvent;
    iget v3, p0, Lcom/google/common/logging/nano/UseGalleryEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/common/logging/nano/UseGalleryEvent;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/common/logging/nano/UseGalleryEvent;->usageDurationMs_:J

    iget-wide v6, v0, Lcom/google/common/logging/nano/UseGalleryEvent;->usageDurationMs_:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 71
    iget-object v3, p0, Lcom/google/common/logging/nano/UseGalleryEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/common/logging/nano/UseGalleryEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 72
    :cond_2
    iget-object v3, v0, Lcom/google/common/logging/nano/UseGalleryEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/common/logging/nano/UseGalleryEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 74
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/UseGalleryEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/common/logging/nano/UseGalleryEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getUsageDurationMs()J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/google/common/logging/nano/UseGalleryEvent;->usageDurationMs_:J

    return-wide v0
.end method

.method public hasUsageDurationMs()Z
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/google/common/logging/nano/UseGalleryEvent;->bitField0_:I

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
    .line 79
    const/16 v0, 0x11

    .line 80
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 81
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/common/logging/nano/UseGalleryEvent;->usageDurationMs_:J

    iget-wide v4, p0, Lcom/google/common/logging/nano/UseGalleryEvent;->usageDurationMs_:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 82
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/nano/UseGalleryEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/logging/nano/UseGalleryEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 83
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 84
    :goto_0
    add-int v0, v2, v1

    .line 85
    return v0

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/UseGalleryEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/UseGalleryEvent;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 113
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 117
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    :sswitch_0
    return-object p0

    .line 123
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/common/logging/nano/UseGalleryEvent;->usageDurationMs_:J

    .line 124
    iget v1, p0, Lcom/google/common/logging/nano/UseGalleryEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/logging/nano/UseGalleryEvent;->bitField0_:I

    goto :goto_0

    .line 113
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/UseGalleryEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/UseGalleryEvent;

    move-result-object v0

    return-object v0
.end method

.method public setUsageDurationMs(J)Lcom/google/common/logging/nano/UseGalleryEvent;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/google/common/logging/nano/UseGalleryEvent;->usageDurationMs_:J

    .line 40
    iget v0, p0, Lcom/google/common/logging/nano/UseGalleryEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/logging/nano/UseGalleryEvent;->bitField0_:I

    .line 41
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
    .line 91
    iget v0, p0, Lcom/google/common/logging/nano/UseGalleryEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 92
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/common/logging/nano/UseGalleryEvent;->usageDurationMs_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 94
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 95
    return-void
.end method
