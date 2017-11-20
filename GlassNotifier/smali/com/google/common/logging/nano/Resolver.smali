.class public final Lcom/google/common/logging/nano/Resolver;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Resolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/nano/Resolver$IntentAction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Resolver;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Resolver;


# instance fields
.field public activityOption:[Ljava/lang/String;

.field private activitySelected_:Ljava/lang/String;

.field private bitField0_:I

.field private intentAction_:I

.field private intentType_:Ljava/lang/String;

.field private oneof_action_:I

.field public sharing:Lcom/google/common/logging/nano/Sharing;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Resolver;->oneof_action_:I

    .line 105
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Resolver;->clear()Lcom/google/common/logging/nano/Resolver;

    .line 106
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Resolver;
    .locals 2

    .prologue
    .line 20
    sget-object v0, Lcom/google/common/logging/nano/Resolver;->_emptyArray:[Lcom/google/common/logging/nano/Resolver;

    if-nez v0, :cond_1

    .line 21
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 23
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/Resolver;->_emptyArray:[Lcom/google/common/logging/nano/Resolver;

    if-nez v0, :cond_0

    .line 24
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/Resolver;

    sput-object v0, Lcom/google/common/logging/nano/Resolver;->_emptyArray:[Lcom/google/common/logging/nano/Resolver;

    .line 26
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/Resolver;->_emptyArray:[Lcom/google/common/logging/nano/Resolver;

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Resolver;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    new-instance v0, Lcom/google/common/logging/nano/Resolver;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Resolver;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/Resolver;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Resolver;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/Resolver;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 311
    new-instance v0, Lcom/google/common/logging/nano/Resolver;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Resolver;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Resolver;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/Resolver;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 109
    iput v0, p0, Lcom/google/common/logging/nano/Resolver;->bitField0_:I

    .line 110
    iput v0, p0, Lcom/google/common/logging/nano/Resolver;->intentAction_:I

    .line 111
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/nano/Resolver;->intentType_:Ljava/lang/String;

    .line 112
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/common/logging/nano/Resolver;->activityOption:[Ljava/lang/String;

    .line 113
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/nano/Resolver;->activitySelected_:Ljava/lang/String;

    .line 114
    iput-object v1, p0, Lcom/google/common/logging/nano/Resolver;->sharing:Lcom/google/common/logging/nano/Sharing;

    .line 115
    iput-object v1, p0, Lcom/google/common/logging/nano/Resolver;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Resolver;->cachedSize:I

    .line 117
    return-object p0
.end method

.method public clearActivitySelected()Lcom/google/common/logging/nano/Resolver;
    .locals 1

    .prologue
    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/nano/Resolver;->activitySelected_:Ljava/lang/String;

    .line 87
    iget v0, p0, Lcom/google/common/logging/nano/Resolver;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/common/logging/nano/Resolver;->bitField0_:I

    .line 88
    return-object p0
.end method

.method public clearIntentAction()Lcom/google/common/logging/nano/Resolver;
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/google/common/logging/nano/Resolver;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/common/logging/nano/Resolver;->bitField0_:I

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/Resolver;->intentAction_:I

    .line 49
    return-object p0
.end method

.method public clearIntentType()Lcom/google/common/logging/nano/Resolver;
    .locals 1

    .prologue
    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/nano/Resolver;->intentType_:Ljava/lang/String;

    .line 62
    iget v0, p0, Lcom/google/common/logging/nano/Resolver;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/common/logging/nano/Resolver;->bitField0_:I

    .line 63
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 7

    .prologue
    .line 205
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v4

    .line 206
    .local v4, "size":I
    iget v5, p0, Lcom/google/common/logging/nano/Resolver;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 207
    const/4 v5, 0x1

    iget v6, p0, Lcom/google/common/logging/nano/Resolver;->intentAction_:I

    .line 208
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 210
    :cond_0
    iget v5, p0, Lcom/google/common/logging/nano/Resolver;->bitField0_:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    .line 211
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/common/logging/nano/Resolver;->intentType_:Ljava/lang/String;

    .line 212
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 214
    :cond_1
    iget-object v5, p0, Lcom/google/common/logging/nano/Resolver;->activityOption:[Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/google/common/logging/nano/Resolver;->activityOption:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_4

    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, "dataCount":I
    const/4 v1, 0x0

    .line 217
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/common/logging/nano/Resolver;->activityOption:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_3

    .line 218
    iget-object v5, p0, Lcom/google/common/logging/nano/Resolver;->activityOption:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 219
    .local v2, "element":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 220
    add-int/lit8 v0, v0, 0x1

    .line 222
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 217
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 225
    .end local v2    # "element":Ljava/lang/String;
    :cond_3
    add-int/2addr v4, v1

    .line 226
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 228
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_4
    iget v5, p0, Lcom/google/common/logging/nano/Resolver;->bitField0_:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_5

    .line 229
    const/4 v5, 0x4

    iget-object v6, p0, Lcom/google/common/logging/nano/Resolver;->activitySelected_:Ljava/lang/String;

    .line 230
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 232
    :cond_5
    iget-object v5, p0, Lcom/google/common/logging/nano/Resolver;->sharing:Lcom/google/common/logging/nano/Sharing;

    if-eqz v5, :cond_6

    .line 233
    const/4 v5, 0x5

    iget-object v6, p0, Lcom/google/common/logging/nano/Resolver;->sharing:Lcom/google/common/logging/nano/Sharing;

    .line 234
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 236
    :cond_6
    return v4
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 122
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 157
    :cond_0
    :goto_0
    return v1

    .line 125
    :cond_1
    instance-of v3, p1, Lcom/google/common/logging/nano/Resolver;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 128
    check-cast v0, Lcom/google/common/logging/nano/Resolver;

    .line 129
    .local v0, "other":Lcom/google/common/logging/nano/Resolver;
    iget v3, p0, Lcom/google/common/logging/nano/Resolver;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/common/logging/nano/Resolver;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/Resolver;->intentAction_:I

    iget v4, v0, Lcom/google/common/logging/nano/Resolver;->intentAction_:I

    if-ne v3, v4, :cond_0

    .line 133
    iget v3, p0, Lcom/google/common/logging/nano/Resolver;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/common/logging/nano/Resolver;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/common/logging/nano/Resolver;->intentType_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/common/logging/nano/Resolver;->intentType_:Ljava/lang/String;

    .line 134
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    iget-object v3, p0, Lcom/google/common/logging/nano/Resolver;->activityOption:[Ljava/lang/String;

    iget-object v4, v0, Lcom/google/common/logging/nano/Resolver;->activityOption:[Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/InternalNano;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 141
    iget v3, p0, Lcom/google/common/logging/nano/Resolver;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/common/logging/nano/Resolver;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/common/logging/nano/Resolver;->activitySelected_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/common/logging/nano/Resolver;->activitySelected_:Ljava/lang/String;

    .line 142
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 145
    iget-object v3, p0, Lcom/google/common/logging/nano/Resolver;->sharing:Lcom/google/common/logging/nano/Sharing;

    if-nez v3, :cond_5

    .line 146
    iget-object v3, v0, Lcom/google/common/logging/nano/Resolver;->sharing:Lcom/google/common/logging/nano/Sharing;

    if-nez v3, :cond_0

    .line 154
    :cond_2
    iget-object v3, p0, Lcom/google/common/logging/nano/Resolver;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/common/logging/nano/Resolver;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 155
    :cond_3
    iget-object v3, v0, Lcom/google/common/logging/nano/Resolver;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/google/common/logging/nano/Resolver;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .line 150
    :cond_5
    iget-object v3, p0, Lcom/google/common/logging/nano/Resolver;->sharing:Lcom/google/common/logging/nano/Sharing;

    iget-object v4, v0, Lcom/google/common/logging/nano/Resolver;->sharing:Lcom/google/common/logging/nano/Sharing;

    invoke-virtual {v3, v4}, Lcom/google/common/logging/nano/Sharing;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 157
    :cond_6
    iget-object v1, p0, Lcom/google/common/logging/nano/Resolver;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/common/logging/nano/Resolver;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getActivitySelected()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/common/logging/nano/Resolver;->activitySelected_:Ljava/lang/String;

    return-object v0
.end method

.method public getIntentAction()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/google/common/logging/nano/Resolver;->intentAction_:I

    return v0
.end method

.method public getIntentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/common/logging/nano/Resolver;->intentType_:Ljava/lang/String;

    return-object v0
.end method

.method public hasActivitySelected()Z
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/google/common/logging/nano/Resolver;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIntentAction()Z
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/google/common/logging/nano/Resolver;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIntentType()Z
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/google/common/logging/nano/Resolver;->bitField0_:I

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
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 162
    const/16 v0, 0x11

    .line 163
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 164
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/common/logging/nano/Resolver;->intentAction_:I

    add-int v0, v1, v3

    .line 165
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/common/logging/nano/Resolver;->intentType_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 166
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/common/logging/nano/Resolver;->activityOption:[Ljava/lang/String;

    .line 167
    invoke-static {v3}, Lcom/google/protobuf/nano/InternalNano;->hashCode([Ljava/lang/Object;)I

    move-result v3

    add-int v0, v1, v3

    .line 168
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/common/logging/nano/Resolver;->activitySelected_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 169
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/nano/Resolver;->sharing:Lcom/google/common/logging/nano/Sharing;

    if-nez v1, :cond_1

    move v1, v2

    .line 170
    :goto_0
    add-int v0, v3, v1

    .line 171
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/common/logging/nano/Resolver;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/common/logging/nano/Resolver;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 172
    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 173
    :cond_0
    :goto_1
    add-int v0, v1, v2

    .line 174
    return v0

    .line 170
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Resolver;->sharing:Lcom/google/common/logging/nano/Sharing;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Sharing;->hashCode()I

    move-result v1

    goto :goto_0

    .line 173
    :cond_2
    iget-object v2, p0, Lcom/google/common/logging/nano/Resolver;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v2}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Resolver;
    .locals 8
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 244
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v4

    .line 245
    .local v4, "tag":I
    sparse-switch v4, :sswitch_data_0

    .line 249
    invoke-super {p0, p1, v4}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 250
    :sswitch_0
    return-object p0

    .line 255
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 256
    .local v2, "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    .line 257
    .local v5, "value":I
    packed-switch v5, :pswitch_data_0

    .line 265
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 266
    invoke-virtual {p0, p1, v4}, Lcom/google/common/logging/nano/Resolver;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 261
    :pswitch_0
    iput v5, p0, Lcom/google/common/logging/nano/Resolver;->intentAction_:I

    .line 262
    iget v7, p0, Lcom/google/common/logging/nano/Resolver;->bitField0_:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/common/logging/nano/Resolver;->bitField0_:I

    goto :goto_0

    .line 272
    .end local v2    # "initialPos":I
    .end local v5    # "value":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/common/logging/nano/Resolver;->intentType_:Ljava/lang/String;

    .line 273
    iget v7, p0, Lcom/google/common/logging/nano/Resolver;->bitField0_:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/google/common/logging/nano/Resolver;->bitField0_:I

    goto :goto_0

    .line 277
    :sswitch_3
    const/16 v7, 0x1a

    .line 278
    invoke-static {p1, v7}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 279
    .local v0, "arrayLength":I
    iget-object v7, p0, Lcom/google/common/logging/nano/Resolver;->activityOption:[Ljava/lang/String;

    if-nez v7, :cond_2

    move v1, v6

    .line 280
    .local v1, "i":I
    :goto_1
    add-int v7, v1, v0

    new-array v3, v7, [Ljava/lang/String;

    .line 281
    .local v3, "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 282
    iget-object v7, p0, Lcom/google/common/logging/nano/Resolver;->activityOption:[Ljava/lang/String;

    invoke-static {v7, v6, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 284
    :cond_1
    :goto_2
    array-length v7, v3

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_3

    .line 285
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v1

    .line 286
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 284
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 279
    .end local v1    # "i":I
    .end local v3    # "newArray":[Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/google/common/logging/nano/Resolver;->activityOption:[Ljava/lang/String;

    array-length v1, v7

    goto :goto_1

    .line 289
    .restart local v1    # "i":I
    .restart local v3    # "newArray":[Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v1

    .line 290
    iput-object v3, p0, Lcom/google/common/logging/nano/Resolver;->activityOption:[Ljava/lang/String;

    goto :goto_0

    .line 294
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v3    # "newArray":[Ljava/lang/String;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/common/logging/nano/Resolver;->activitySelected_:Ljava/lang/String;

    .line 295
    iget v7, p0, Lcom/google/common/logging/nano/Resolver;->bitField0_:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/google/common/logging/nano/Resolver;->bitField0_:I

    goto :goto_0

    .line 299
    :sswitch_5
    iget-object v7, p0, Lcom/google/common/logging/nano/Resolver;->sharing:Lcom/google/common/logging/nano/Sharing;

    if-nez v7, :cond_4

    .line 300
    new-instance v7, Lcom/google/common/logging/nano/Sharing;

    invoke-direct {v7}, Lcom/google/common/logging/nano/Sharing;-><init>()V

    iput-object v7, p0, Lcom/google/common/logging/nano/Resolver;->sharing:Lcom/google/common/logging/nano/Sharing;

    .line 302
    :cond_4
    iget-object v7, p0, Lcom/google/common/logging/nano/Resolver;->sharing:Lcom/google/common/logging/nano/Sharing;

    invoke-virtual {p1, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 245
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch

    .line 257
    :pswitch_data_0
    .packed-switch 0x0
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
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Resolver;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Resolver;

    move-result-object v0

    return-object v0
.end method

.method public setActivitySelected(Ljava/lang/String;)Lcom/google/common/logging/nano/Resolver;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 91
    if-nez p1, :cond_0

    .line 92
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 94
    :cond_0
    iput-object p1, p0, Lcom/google/common/logging/nano/Resolver;->activitySelected_:Ljava/lang/String;

    .line 95
    iget v0, p0, Lcom/google/common/logging/nano/Resolver;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/logging/nano/Resolver;->bitField0_:I

    .line 96
    return-object p0
.end method

.method public setIntentAction(I)Lcom/google/common/logging/nano/Resolver;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/google/common/logging/nano/Resolver;->intentAction_:I

    .line 40
    iget v0, p0, Lcom/google/common/logging/nano/Resolver;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/logging/nano/Resolver;->bitField0_:I

    .line 41
    return-object p0
.end method

.method public setIntentType(Ljava/lang/String;)Lcom/google/common/logging/nano/Resolver;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 66
    if-nez p1, :cond_0

    .line 67
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 69
    :cond_0
    iput-object p1, p0, Lcom/google/common/logging/nano/Resolver;->intentType_:Ljava/lang/String;

    .line 70
    iget v0, p0, Lcom/google/common/logging/nano/Resolver;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/common/logging/nano/Resolver;->bitField0_:I

    .line 71
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
    .line 180
    iget v2, p0, Lcom/google/common/logging/nano/Resolver;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 181
    const/4 v2, 0x1

    iget v3, p0, Lcom/google/common/logging/nano/Resolver;->intentAction_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 183
    :cond_0
    iget v2, p0, Lcom/google/common/logging/nano/Resolver;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 184
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/common/logging/nano/Resolver;->intentType_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 186
    :cond_1
    iget-object v2, p0, Lcom/google/common/logging/nano/Resolver;->activityOption:[Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/common/logging/nano/Resolver;->activityOption:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 187
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Resolver;->activityOption:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 188
    iget-object v2, p0, Lcom/google/common/logging/nano/Resolver;->activityOption:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 189
    .local v0, "element":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 190
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 187
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_3
    iget v2, p0, Lcom/google/common/logging/nano/Resolver;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_4

    .line 195
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/common/logging/nano/Resolver;->activitySelected_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 197
    :cond_4
    iget-object v2, p0, Lcom/google/common/logging/nano/Resolver;->sharing:Lcom/google/common/logging/nano/Sharing;

    if-eqz v2, :cond_5

    .line 198
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/common/logging/nano/Resolver;->sharing:Lcom/google/common/logging/nano/Sharing;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 200
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 201
    return-void
.end method
