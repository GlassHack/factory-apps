.class public final Lcom/google/common/logging/nano/Tts;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Tts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/nano/Tts$ErrorCode;,
        Lcom/google/common/logging/nano/Tts$EventType;,
        Lcom/google/common/logging/nano/Tts$SynthesisProvider;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Tts;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Tts;


# instance fields
.field private bitField0_:I

.field private errorCode_:I

.field private eventType_:I

.field private locale_:Ljava/lang/String;

.field private synthesisProvider_:I

.field private textLength_:J

.field private timeSinceRequest_:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 170
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Tts;->clear()Lcom/google/common/logging/nano/Tts;

    .line 171
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Tts;
    .locals 2

    .prologue
    .line 37
    sget-object v0, Lcom/google/common/logging/nano/Tts;->_emptyArray:[Lcom/google/common/logging/nano/Tts;

    if-nez v0, :cond_1

    .line 38
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/Tts;->_emptyArray:[Lcom/google/common/logging/nano/Tts;

    if-nez v0, :cond_0

    .line 41
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/Tts;

    sput-object v0, Lcom/google/common/logging/nano/Tts;->_emptyArray:[Lcom/google/common/logging/nano/Tts;

    .line 43
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/Tts;->_emptyArray:[Lcom/google/common/logging/nano/Tts;

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Tts;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 392
    new-instance v0, Lcom/google/common/logging/nano/Tts;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Tts;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/Tts;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Tts;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/Tts;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 386
    new-instance v0, Lcom/google/common/logging/nano/Tts;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Tts;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Tts;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/Tts;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 174
    iput v1, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    .line 175
    iput v1, p0, Lcom/google/common/logging/nano/Tts;->eventType_:I

    .line 176
    iput v1, p0, Lcom/google/common/logging/nano/Tts;->synthesisProvider_:I

    .line 177
    iput-wide v2, p0, Lcom/google/common/logging/nano/Tts;->timeSinceRequest_:J

    .line 178
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/nano/Tts;->locale_:Ljava/lang/String;

    .line 179
    iput-wide v2, p0, Lcom/google/common/logging/nano/Tts;->textLength_:J

    .line 180
    iput v1, p0, Lcom/google/common/logging/nano/Tts;->errorCode_:I

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/Tts;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 182
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Tts;->cachedSize:I

    .line 183
    return-object p0
.end method

.method public clearErrorCode()Lcom/google/common/logging/nano/Tts;
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    .line 163
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/Tts;->errorCode_:I

    .line 164
    return-object p0
.end method

.method public clearEventType()Lcom/google/common/logging/nano/Tts;
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/Tts;->eventType_:I

    .line 66
    return-object p0
.end method

.method public clearLocale()Lcom/google/common/logging/nano/Tts;
    .locals 1

    .prologue
    .line 116
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/nano/Tts;->locale_:Ljava/lang/String;

    .line 117
    iget v0, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    .line 118
    return-object p0
.end method

.method public clearSynthesisProvider()Lcom/google/common/logging/nano/Tts;
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/Tts;->synthesisProvider_:I

    .line 85
    return-object p0
.end method

.method public clearTextLength()Lcom/google/common/logging/nano/Tts;
    .locals 2

    .prologue
    .line 138
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/logging/nano/Tts;->textLength_:J

    .line 139
    iget v0, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    .line 140
    return-object p0
.end method

.method public clearTimeSinceRequest()Lcom/google/common/logging/nano/Tts;
    .locals 2

    .prologue
    .line 97
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/logging/nano/Tts;->timeSinceRequest_:J

    .line 98
    iget v0, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    .line 99
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 267
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 268
    .local v0, "size":I
    iget v1, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 269
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/logging/nano/Tts;->synthesisProvider_:I

    .line 270
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 272
    :cond_0
    iget v1, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    .line 273
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/common/logging/nano/Tts;->timeSinceRequest_:J

    .line 274
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 276
    :cond_1
    iget v1, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_2

    .line 277
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/Tts;->locale_:Ljava/lang/String;

    .line 278
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 280
    :cond_2
    iget v1, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 281
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/common/logging/nano/Tts;->eventType_:I

    .line 282
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 284
    :cond_3
    iget v1, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 285
    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/google/common/logging/nano/Tts;->textLength_:J

    .line 286
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 288
    :cond_4
    iget v1, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 289
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/common/logging/nano/Tts;->errorCode_:I

    .line 290
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 292
    :cond_5
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 188
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 222
    :cond_0
    :goto_0
    return v1

    .line 191
    :cond_1
    instance-of v3, p1, Lcom/google/common/logging/nano/Tts;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 194
    check-cast v0, Lcom/google/common/logging/nano/Tts;

    .line 195
    .local v0, "other":Lcom/google/common/logging/nano/Tts;
    iget v3, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/Tts;->eventType_:I

    iget v4, v0, Lcom/google/common/logging/nano/Tts;->eventType_:I

    if-ne v3, v4, :cond_0

    .line 199
    iget v3, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/Tts;->synthesisProvider_:I

    iget v4, v0, Lcom/google/common/logging/nano/Tts;->synthesisProvider_:I

    if-ne v3, v4, :cond_0

    .line 203
    iget v3, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/common/logging/nano/Tts;->timeSinceRequest_:J

    iget-wide v6, v0, Lcom/google/common/logging/nano/Tts;->timeSinceRequest_:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 207
    iget v3, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    iget v4, v0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/common/logging/nano/Tts;->locale_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/common/logging/nano/Tts;->locale_:Ljava/lang/String;

    .line 208
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 211
    iget v3, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    iget v4, v0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/common/logging/nano/Tts;->textLength_:J

    iget-wide v6, v0, Lcom/google/common/logging/nano/Tts;->textLength_:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 215
    iget v3, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    iget v4, v0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/Tts;->errorCode_:I

    iget v4, v0, Lcom/google/common/logging/nano/Tts;->errorCode_:I

    if-ne v3, v4, :cond_0

    .line 219
    iget-object v3, p0, Lcom/google/common/logging/nano/Tts;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/common/logging/nano/Tts;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 220
    :cond_2
    iget-object v3, v0, Lcom/google/common/logging/nano/Tts;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/common/logging/nano/Tts;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto/16 :goto_0

    .line 222
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Tts;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/common/logging/nano/Tts;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/google/common/logging/nano/Tts;->errorCode_:I

    return v0
.end method

.method public getEventType()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/google/common/logging/nano/Tts;->eventType_:I

    return v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/common/logging/nano/Tts;->locale_:Ljava/lang/String;

    return-object v0
.end method

.method public getSynthesisProvider()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/google/common/logging/nano/Tts;->synthesisProvider_:I

    return v0
.end method

.method public getTextLength()J
    .locals 2

    .prologue
    .line 132
    iget-wide v0, p0, Lcom/google/common/logging/nano/Tts;->textLength_:J

    return-wide v0
.end method

.method public getTimeSinceRequest()J
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/google/common/logging/nano/Tts;->timeSinceRequest_:J

    return-wide v0
.end method

.method public hasErrorCode()Z
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

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
    .line 61
    iget v0, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLocale()Z
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSynthesisProvider()Z
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTextLength()Z
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimeSinceRequest()Z
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

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

    .line 227
    const/16 v0, 0x11

    .line 228
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 229
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/nano/Tts;->eventType_:I

    add-int v0, v1, v2

    .line 230
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/nano/Tts;->synthesisProvider_:I

    add-int v0, v1, v2

    .line 231
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/common/logging/nano/Tts;->timeSinceRequest_:J

    iget-wide v4, p0, Lcom/google/common/logging/nano/Tts;->timeSinceRequest_:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 232
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/common/logging/nano/Tts;->locale_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 233
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/common/logging/nano/Tts;->textLength_:J

    iget-wide v4, p0, Lcom/google/common/logging/nano/Tts;->textLength_:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 234
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/nano/Tts;->errorCode_:I

    add-int v0, v1, v2

    .line 235
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/nano/Tts;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/logging/nano/Tts;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 236
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 237
    :goto_0
    add-int v0, v2, v1

    .line 238
    return v0

    .line 237
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Tts;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Tts;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v1

    .line 301
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 305
    invoke-super {p0, p1, v1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 306
    :sswitch_0
    return-object p0

    .line 311
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 312
    .local v0, "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 313
    .local v2, "value":I
    packed-switch v2, :pswitch_data_0

    .line 321
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 322
    invoke-virtual {p0, p1, v1}, Lcom/google/common/logging/nano/Tts;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 317
    :pswitch_0
    iput v2, p0, Lcom/google/common/logging/nano/Tts;->synthesisProvider_:I

    .line 318
    iget v3, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    goto :goto_0

    .line 328
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/common/logging/nano/Tts;->timeSinceRequest_:J

    .line 329
    iget v3, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    goto :goto_0

    .line 333
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/common/logging/nano/Tts;->locale_:Ljava/lang/String;

    .line 334
    iget v3, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    goto :goto_0

    .line 338
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 339
    .restart local v0    # "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 340
    .restart local v2    # "value":I
    packed-switch v2, :pswitch_data_1

    .line 349
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 350
    invoke-virtual {p0, p1, v1}, Lcom/google/common/logging/nano/Tts;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 345
    :pswitch_1
    iput v2, p0, Lcom/google/common/logging/nano/Tts;->eventType_:I

    .line 346
    iget v3, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    goto :goto_0

    .line 356
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/common/logging/nano/Tts;->textLength_:J

    .line 357
    iget v3, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    goto :goto_0

    .line 361
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 362
    .restart local v0    # "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 363
    .restart local v2    # "value":I
    packed-switch v2, :pswitch_data_2

    .line 374
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 375
    invoke-virtual {p0, p1, v1}, Lcom/google/common/logging/nano/Tts;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 370
    :pswitch_2
    iput v2, p0, Lcom/google/common/logging/nano/Tts;->errorCode_:I

    .line 371
    iget v3, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    goto/16 :goto_0

    .line 301
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x28 -> :sswitch_4
        0x30 -> :sswitch_5
        0x38 -> :sswitch_6
    .end sparse-switch

    .line 313
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 340
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 363
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
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
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Tts;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Tts;

    move-result-object v0

    return-object v0
.end method

.method public setErrorCode(I)Lcom/google/common/logging/nano/Tts;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 154
    iput p1, p0, Lcom/google/common/logging/nano/Tts;->errorCode_:I

    .line 155
    iget v0, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    .line 156
    return-object p0
.end method

.method public setEventType(I)Lcom/google/common/logging/nano/Tts;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/google/common/logging/nano/Tts;->eventType_:I

    .line 57
    iget v0, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    .line 58
    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Lcom/google/common/logging/nano/Tts;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 121
    if-nez p1, :cond_0

    .line 122
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 124
    :cond_0
    iput-object p1, p0, Lcom/google/common/logging/nano/Tts;->locale_:Ljava/lang/String;

    .line 125
    iget v0, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    .line 126
    return-object p0
.end method

.method public setSynthesisProvider(I)Lcom/google/common/logging/nano/Tts;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/google/common/logging/nano/Tts;->synthesisProvider_:I

    .line 76
    iget v0, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    .line 77
    return-object p0
.end method

.method public setTextLength(J)Lcom/google/common/logging/nano/Tts;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 143
    iput-wide p1, p0, Lcom/google/common/logging/nano/Tts;->textLength_:J

    .line 144
    iget v0, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    .line 145
    return-object p0
.end method

.method public setTimeSinceRequest(J)Lcom/google/common/logging/nano/Tts;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 102
    iput-wide p1, p0, Lcom/google/common/logging/nano/Tts;->timeSinceRequest_:J

    .line 103
    iget v0, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    .line 104
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
    .line 244
    iget v0, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 245
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/common/logging/nano/Tts;->synthesisProvider_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 247
    :cond_0
    iget v0, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 248
    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/google/common/logging/nano/Tts;->timeSinceRequest_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 250
    :cond_1
    iget v0, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 251
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/logging/nano/Tts;->locale_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 253
    :cond_2
    iget v0, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 254
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/common/logging/nano/Tts;->eventType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 256
    :cond_3
    iget v0, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 257
    const/4 v0, 0x6

    iget-wide v2, p0, Lcom/google/common/logging/nano/Tts;->textLength_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 259
    :cond_4
    iget v0, p0, Lcom/google/common/logging/nano/Tts;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 260
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/common/logging/nano/Tts;->errorCode_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 262
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 263
    return-void
.end method
