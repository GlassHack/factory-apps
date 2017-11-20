.class public final Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ModularActionProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ModularActionProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ArgumentTransformation"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;


# instance fields
.field private bitField0_:I

.field public parameter:[Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;

.field private stringValue_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3129
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 3130
    invoke-virtual {p0}, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;->clear()Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    .line 3131
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;
    .locals 2

    .prologue
    .line 3091
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    if-nez v0, :cond_1

    .line 3092
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3094
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    if-nez v0, :cond_0

    .line 3095
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    sput-object v0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    .line 3097
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3099
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    return-object v0

    .line 3097
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3229
    new-instance v0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    invoke-direct {v0}, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3223
    new-instance v0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    invoke-direct {v0}, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;
    .locals 1

    .prologue
    .line 3134
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;->bitField0_:I

    .line 3135
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;->stringValue_:Ljava/lang/String;

    .line 3136
    invoke-static {}, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->emptyArray()[Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;->parameter:[Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;

    .line 3137
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;->cachedSize:I

    .line 3138
    return-object p0
.end method

.method public clearStringValue()Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;
    .locals 1

    .prologue
    .line 3121
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;->stringValue_:Ljava/lang/String;

    .line 3122
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;->bitField0_:I

    .line 3123
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 3159
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 3160
    .local v2, "size":I
    iget v3, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 3161
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;->stringValue_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3164
    :cond_0
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;->parameter:[Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;->parameter:[Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;

    array-length v3, v3

    if-lez v3, :cond_2

    .line 3165
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;->parameter:[Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 3166
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;->parameter:[Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;

    aget-object v0, v3, v1

    .line 3167
    .local v0, "element":Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;
    if-eqz v0, :cond_1

    .line 3168
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3165
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3173
    .end local v0    # "element":Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;
    .end local v1    # "i":I
    :cond_2
    iput v2, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;->cachedSize:I

    .line 3174
    return v2
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3107
    iget-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;->stringValue_:Ljava/lang/String;

    return-object v0
.end method

.method public hasStringValue()Z
    .locals 1

    .prologue
    .line 3118
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

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
    .line 3085
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3182
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 3183
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 3187
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3188
    :sswitch_0
    return-object p0

    .line 3193
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;->stringValue_:Ljava/lang/String;

    .line 3194
    iget v5, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;->bitField0_:I

    goto :goto_0

    .line 3198
    :sswitch_2
    const/16 v5, 0x12

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 3200
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;->parameter:[Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;

    if-nez v5, :cond_2

    move v1, v4

    .line 3201
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;

    .line 3203
    .local v2, "newArray":[Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;
    if-eqz v1, :cond_1

    .line 3204
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;->parameter:[Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3206
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 3207
    new-instance v5, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;

    invoke-direct {v5}, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;-><init>()V

    aput-object v5, v2, v1

    .line 3208
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3209
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 3206
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3200
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;->parameter:[Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;

    array-length v1, v5

    goto :goto_1

    .line 3212
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;
    :cond_3
    new-instance v5, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;

    invoke-direct {v5}, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;-><init>()V

    aput-object v5, v2, v1

    .line 3213
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3214
    iput-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;->parameter:[Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;

    goto :goto_0

    .line 3183
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setStringValue(Ljava/lang/String;)Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3110
    if-nez p1, :cond_0

    .line 3111
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3113
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;->stringValue_:Ljava/lang/String;

    .line 3114
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;->bitField0_:I

    .line 3115
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3144
    iget v2, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 3145
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;->stringValue_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3147
    :cond_0
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;->parameter:[Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;->parameter:[Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;

    array-length v2, v2

    if-lez v2, :cond_2

    .line 3148
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;->parameter:[Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 3149
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;->parameter:[Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;

    aget-object v0, v2, v1

    .line 3150
    .local v0, "element":Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;
    if-eqz v0, :cond_1

    .line 3151
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3148
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3155
    .end local v0    # "element":Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;
    .end local v1    # "i":I
    :cond_2
    return-void
.end method
