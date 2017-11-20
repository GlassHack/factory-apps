.class public final Lcom/google/common/logging/nano/Messaging$MessageEvent;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Messaging.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/nano/Messaging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/nano/Messaging$MessageEvent$ContentType;,
        Lcom/google/common/logging/nano/Messaging$MessageEvent$EventType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Messaging$MessageEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Messaging$MessageEvent;


# instance fields
.field private bitField0_:I

.field private contentType_:J

.field private eventType_:I

.field private isFromGlass_:Z

.field private latencyMs_:J

.field private viewTimeMs_:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 151
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Messaging$MessageEvent;->clear()Lcom/google/common/logging/nano/Messaging$MessageEvent;

    .line 152
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Messaging$MessageEvent;
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->_emptyArray:[Lcom/google/common/logging/nano/Messaging$MessageEvent;

    if-nez v0, :cond_1

    .line 41
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 43
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->_emptyArray:[Lcom/google/common/logging/nano/Messaging$MessageEvent;

    if-nez v0, :cond_0

    .line 44
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/Messaging$MessageEvent;

    sput-object v0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->_emptyArray:[Lcom/google/common/logging/nano/Messaging$MessageEvent;

    .line 46
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->_emptyArray:[Lcom/google/common/logging/nano/Messaging$MessageEvent;

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Messaging$MessageEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 328
    new-instance v0, Lcom/google/common/logging/nano/Messaging$MessageEvent;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Messaging$MessageEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/Messaging$MessageEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Messaging$MessageEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/Messaging$MessageEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 322
    new-instance v0, Lcom/google/common/logging/nano/Messaging$MessageEvent;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Messaging$MessageEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Messaging$MessageEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/Messaging$MessageEvent;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 155
    iput v0, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    .line 156
    iput v0, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->eventType_:I

    .line 157
    iput-wide v2, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->contentType_:J

    .line 158
    iput-wide v2, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->latencyMs_:J

    .line 159
    iput-wide v2, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->viewTimeMs_:J

    .line 160
    iput-boolean v0, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->isFromGlass_:Z

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 162
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->cachedSize:I

    .line 163
    return-object p0
.end method

.method public clearContentType()Lcom/google/common/logging/nano/Messaging$MessageEvent;
    .locals 2

    .prologue
    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->contentType_:J

    .line 82
    iget v0, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    .line 83
    return-object p0
.end method

.method public clearEventType()Lcom/google/common/logging/nano/Messaging$MessageEvent;
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->eventType_:I

    .line 69
    return-object p0
.end method

.method public clearIsFromGlass()Lcom/google/common/logging/nano/Messaging$MessageEvent;
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->isFromGlass_:Z

    .line 139
    iget v0, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    .line 140
    return-object p0
.end method

.method public clearLatencyMs()Lcom/google/common/logging/nano/Messaging$MessageEvent;
    .locals 2

    .prologue
    .line 100
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->latencyMs_:J

    .line 101
    iget v0, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    .line 102
    return-object p0
.end method

.method public clearViewTimeMs()Lcom/google/common/logging/nano/Messaging$MessageEvent;
    .locals 2

    .prologue
    .line 119
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->viewTimeMs_:J

    .line 120
    iget v0, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    .line 121
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 239
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 240
    .local v0, "size":I
    iget v1, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 241
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->eventType_:I

    .line 242
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 244
    :cond_0
    iget v1, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 245
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->contentType_:J

    .line 246
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 248
    :cond_1
    iget v1, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 249
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->latencyMs_:J

    .line 250
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 252
    :cond_2
    iget v1, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 253
    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->viewTimeMs_:J

    .line 254
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 256
    :cond_3
    iget v1, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 257
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->isFromGlass_:Z

    .line 258
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 260
    :cond_4
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 168
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 198
    :cond_0
    :goto_0
    return v1

    .line 171
    :cond_1
    instance-of v3, p1, Lcom/google/common/logging/nano/Messaging$MessageEvent;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 174
    check-cast v0, Lcom/google/common/logging/nano/Messaging$MessageEvent;

    .line 175
    .local v0, "other":Lcom/google/common/logging/nano/Messaging$MessageEvent;
    iget v3, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->eventType_:I

    iget v4, v0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->eventType_:I

    if-ne v3, v4, :cond_0

    .line 179
    iget v3, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->contentType_:J

    iget-wide v6, v0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->contentType_:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 183
    iget v3, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->latencyMs_:J

    iget-wide v6, v0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->latencyMs_:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 187
    iget v3, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    iget v4, v0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->viewTimeMs_:J

    iget-wide v6, v0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->viewTimeMs_:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 191
    iget v3, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    iget v4, v0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->isFromGlass_:Z

    iget-boolean v4, v0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->isFromGlass_:Z

    if-ne v3, v4, :cond_0

    .line 195
    iget-object v3, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 196
    :cond_2
    iget-object v3, v0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 198
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getContentType()J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->contentType_:J

    return-wide v0
.end method

.method public getEventType()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->eventType_:I

    return v0
.end method

.method public getIsFromGlass()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->isFromGlass_:Z

    return v0
.end method

.method public getLatencyMs()J
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->latencyMs_:J

    return-wide v0
.end method

.method public getViewTimeMs()J
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->viewTimeMs_:J

    return-wide v0
.end method

.method public hasContentType()Z
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEventType()Z
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsFromGlass()Z
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLatencyMs()Z
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasViewTimeMs()Z
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

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

    .line 203
    const/16 v0, 0x11

    .line 204
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 205
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->eventType_:I

    add-int v0, v1, v2

    .line 206
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->contentType_:J

    iget-wide v4, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->contentType_:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 207
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->latencyMs_:J

    iget-wide v4, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->latencyMs_:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 208
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->viewTimeMs_:J

    iget-wide v4, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->viewTimeMs_:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 209
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->isFromGlass_:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x4cf

    :goto_0
    add-int v0, v2, v1

    .line 210
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 211
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x0

    .line 212
    :goto_1
    add-int v0, v2, v1

    .line 213
    return v0

    .line 209
    :cond_1
    const/16 v1, 0x4d5

    goto :goto_0

    .line 212
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Messaging$MessageEvent;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v1

    .line 269
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 273
    invoke-super {p0, p1, v1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 274
    :sswitch_0
    return-object p0

    .line 279
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 280
    .local v0, "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 281
    .local v2, "value":I
    packed-switch v2, :pswitch_data_0

    .line 290
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 291
    invoke-virtual {p0, p1, v1}, Lcom/google/common/logging/nano/Messaging$MessageEvent;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 286
    :pswitch_0
    iput v2, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->eventType_:I

    .line 287
    iget v3, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    goto :goto_0

    .line 297
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->contentType_:J

    .line 298
    iget v3, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    goto :goto_0

    .line 302
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->latencyMs_:J

    .line 303
    iget v3, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    goto :goto_0

    .line 307
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->viewTimeMs_:J

    .line 308
    iget v3, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    goto :goto_0

    .line 312
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->isFromGlass_:Z

    .line 313
    iget v3, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    goto :goto_0

    .line 269
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch

    .line 281
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Messaging$MessageEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Messaging$MessageEvent;

    move-result-object v0

    return-object v0
.end method

.method public setContentType(J)Lcom/google/common/logging/nano/Messaging$MessageEvent;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 86
    iput-wide p1, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->contentType_:J

    .line 87
    iget v0, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    .line 88
    return-object p0
.end method

.method public setEventType(I)Lcom/google/common/logging/nano/Messaging$MessageEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->eventType_:I

    .line 60
    iget v0, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    .line 61
    return-object p0
.end method

.method public setIsFromGlass(Z)Lcom/google/common/logging/nano/Messaging$MessageEvent;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->isFromGlass_:Z

    .line 144
    iget v0, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    .line 145
    return-object p0
.end method

.method public setLatencyMs(J)Lcom/google/common/logging/nano/Messaging$MessageEvent;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 105
    iput-wide p1, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->latencyMs_:J

    .line 106
    iget v0, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    .line 107
    return-object p0
.end method

.method public setViewTimeMs(J)Lcom/google/common/logging/nano/Messaging$MessageEvent;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 124
    iput-wide p1, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->viewTimeMs_:J

    .line 125
    iget v0, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    .line 126
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
    .line 219
    iget v0, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 220
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->eventType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 222
    :cond_0
    iget v0, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 223
    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->contentType_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 225
    :cond_1
    iget v0, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 226
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->latencyMs_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 228
    :cond_2
    iget v0, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 229
    const/4 v0, 0x4

    iget-wide v2, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->viewTimeMs_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 231
    :cond_3
    iget v0, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 232
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/common/logging/nano/Messaging$MessageEvent;->isFromGlass_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 234
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 235
    return-void
.end method
