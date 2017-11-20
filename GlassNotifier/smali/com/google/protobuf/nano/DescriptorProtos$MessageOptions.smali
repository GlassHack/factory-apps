.class public final Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageOptions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;


# instance fields
.field public deprecated:Z

.field public experimentalJavaBuilderInterface:[Ljava/lang/String;

.field public experimentalJavaInterfaceExtends:[Ljava/lang/String;

.field public experimentalJavaMessageInterface:[Ljava/lang/String;

.field public mapEntry:Z

.field public messageSetWireFormat:Z

.field public noStandardDescriptorAccessor:Z

.field public uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3035
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3036
    invoke-virtual {p0}, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->clear()Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    .line 3037
    return-void
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;
    .locals 2

    .prologue
    .line 2998
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    if-nez v0, :cond_1

    .line 2999
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3001
    :try_start_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    if-nez v0, :cond_0

    .line 3002
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    sput-object v0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    .line 3004
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3006
    :cond_1
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    return-object v0

    .line 3004
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3290
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3284
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3040
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaMessageInterface:[Ljava/lang/String;

    .line 3041
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaBuilderInterface:[Ljava/lang/String;

    .line 3042
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaInterfaceExtends:[Ljava/lang/String;

    .line 3043
    iput-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->messageSetWireFormat:Z

    .line 3044
    iput-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->noStandardDescriptorAccessor:Z

    .line 3045
    iput-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->deprecated:Z

    .line 3046
    iput-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->mapEntry:Z

    .line 3047
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    .line 3048
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 3049
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->cachedSize:I

    .line 3050
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 7

    .prologue
    .line 3105
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v4

    .line 3106
    .local v4, "size":I
    iget-boolean v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->messageSetWireFormat:Z

    if-eqz v5, :cond_0

    .line 3107
    const/4 v5, 0x1

    iget-boolean v6, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->messageSetWireFormat:Z

    .line 3108
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v4, v5

    .line 3110
    :cond_0
    iget-boolean v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->noStandardDescriptorAccessor:Z

    if-eqz v5, :cond_1

    .line 3111
    const/4 v5, 0x2

    iget-boolean v6, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->noStandardDescriptorAccessor:Z

    .line 3112
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v4, v5

    .line 3114
    :cond_1
    iget-boolean v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->deprecated:Z

    if-eqz v5, :cond_2

    .line 3115
    const/4 v5, 0x3

    iget-boolean v6, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->deprecated:Z

    .line 3116
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v4, v5

    .line 3118
    :cond_2
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaMessageInterface:[Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaMessageInterface:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_5

    .line 3119
    const/4 v0, 0x0

    .line 3120
    .local v0, "dataCount":I
    const/4 v1, 0x0

    .line 3121
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaMessageInterface:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_4

    .line 3122
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaMessageInterface:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 3123
    .local v2, "element":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 3124
    add-int/lit8 v0, v0, 0x1

    .line 3126
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 3121
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3129
    .end local v2    # "element":Ljava/lang/String;
    :cond_4
    add-int/2addr v4, v1

    .line 3130
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 3132
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_5
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaBuilderInterface:[Ljava/lang/String;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaBuilderInterface:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_8

    .line 3133
    const/4 v0, 0x0

    .line 3134
    .restart local v0    # "dataCount":I
    const/4 v1, 0x0

    .line 3135
    .restart local v1    # "dataSize":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaBuilderInterface:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_7

    .line 3136
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaBuilderInterface:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 3137
    .restart local v2    # "element":Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 3138
    add-int/lit8 v0, v0, 0x1

    .line 3140
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 3135
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3143
    .end local v2    # "element":Ljava/lang/String;
    :cond_7
    add-int/2addr v4, v1

    .line 3144
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 3146
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_8
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaInterfaceExtends:[Ljava/lang/String;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaInterfaceExtends:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_b

    .line 3147
    const/4 v0, 0x0

    .line 3148
    .restart local v0    # "dataCount":I
    const/4 v1, 0x0

    .line 3149
    .restart local v1    # "dataSize":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaInterfaceExtends:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_a

    .line 3150
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaInterfaceExtends:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 3151
    .restart local v2    # "element":Ljava/lang/String;
    if-eqz v2, :cond_9

    .line 3152
    add-int/lit8 v0, v0, 0x1

    .line 3154
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 3149
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3157
    .end local v2    # "element":Ljava/lang/String;
    :cond_a
    add-int/2addr v4, v1

    .line 3158
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 3160
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_b
    iget-boolean v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->mapEntry:Z

    if-eqz v5, :cond_c

    .line 3161
    const/4 v5, 0x7

    iget-boolean v6, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->mapEntry:Z

    .line 3162
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v4, v5

    .line 3164
    :cond_c
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v5, v5

    if-lez v5, :cond_e

    .line 3165
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v5, v5

    if-ge v3, v5, :cond_e

    .line 3166
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    aget-object v2, v5, v3

    .line 3167
    .local v2, "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    if-eqz v2, :cond_d

    .line 3168
    const/16 v5, 0x3e7

    .line 3169
    invoke-static {v5, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 3165
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 3173
    .end local v2    # "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    .end local v3    # "i":I
    :cond_e
    return v4
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3181
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 3182
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 3186
    invoke-super {p0, p1, v3}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3187
    :sswitch_0
    return-object p0

    .line 3192
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->messageSetWireFormat:Z

    goto :goto_0

    .line 3196
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->noStandardDescriptorAccessor:Z

    goto :goto_0

    .line 3200
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->deprecated:Z

    goto :goto_0

    .line 3204
    :sswitch_4
    const/16 v5, 0x22

    .line 3205
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 3206
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaMessageInterface:[Ljava/lang/String;

    if-nez v5, :cond_2

    move v1, v4

    .line 3207
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    .line 3208
    .local v2, "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 3209
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaMessageInterface:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3211
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 3212
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 3213
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 3211
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3206
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaMessageInterface:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_1

    .line 3216
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 3217
    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaMessageInterface:[Ljava/lang/String;

    goto :goto_0

    .line 3221
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :sswitch_5
    const/16 v5, 0x2a

    .line 3222
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 3223
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaBuilderInterface:[Ljava/lang/String;

    if-nez v5, :cond_5

    move v1, v4

    .line 3224
    .restart local v1    # "i":I
    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    .line 3225
    .restart local v2    # "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 3226
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaBuilderInterface:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3228
    :cond_4
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_6

    .line 3229
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 3230
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 3228
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3223
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaBuilderInterface:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_3

    .line 3233
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Ljava/lang/String;
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 3234
    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaBuilderInterface:[Ljava/lang/String;

    goto/16 :goto_0

    .line 3238
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :sswitch_6
    const/16 v5, 0x32

    .line 3239
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 3240
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaInterfaceExtends:[Ljava/lang/String;

    if-nez v5, :cond_8

    move v1, v4

    .line 3241
    .restart local v1    # "i":I
    :goto_5
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    .line 3242
    .restart local v2    # "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_7

    .line 3243
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaInterfaceExtends:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3245
    :cond_7
    :goto_6
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_9

    .line 3246
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 3247
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 3245
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 3240
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :cond_8
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaInterfaceExtends:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_5

    .line 3250
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Ljava/lang/String;
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 3251
    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaInterfaceExtends:[Ljava/lang/String;

    goto/16 :goto_0

    .line 3255
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->mapEntry:Z

    goto/16 :goto_0

    .line 3259
    :sswitch_8
    const/16 v5, 0x1f3a

    .line 3260
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 3261
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-nez v5, :cond_b

    move v1, v4

    .line 3262
    .restart local v1    # "i":I
    :goto_7
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    .line 3264
    .local v2, "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    if-eqz v1, :cond_a

    .line 3265
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3267
    :cond_a
    :goto_8
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_c

    .line 3268
    new-instance v5, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-direct {v5}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;-><init>()V

    aput-object v5, v2, v1

    .line 3269
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 3270
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 3267
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 3261
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    :cond_b
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v1, v5

    goto :goto_7

    .line 3273
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    :cond_c
    new-instance v5, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-direct {v5}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;-><init>()V

    aput-object v5, v2, v1

    .line 3274
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 3275
    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    goto/16 :goto_0

    .line 3182
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x1f3a -> :sswitch_8
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
    .line 2992
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

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
    .line 3056
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->messageSetWireFormat:Z

    if-eqz v2, :cond_0

    .line 3057
    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->messageSetWireFormat:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3059
    :cond_0
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->noStandardDescriptorAccessor:Z

    if-eqz v2, :cond_1

    .line 3060
    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->noStandardDescriptorAccessor:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3062
    :cond_1
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->deprecated:Z

    if-eqz v2, :cond_2

    .line 3063
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->deprecated:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3065
    :cond_2
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaMessageInterface:[Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaMessageInterface:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_4

    .line 3066
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaMessageInterface:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 3067
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaMessageInterface:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 3068
    .local v0, "element":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 3069
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3066
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3073
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaBuilderInterface:[Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaBuilderInterface:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_6

    .line 3074
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaBuilderInterface:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_6

    .line 3075
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaBuilderInterface:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 3076
    .restart local v0    # "element":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 3077
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3074
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3081
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_6
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaInterfaceExtends:[Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaInterfaceExtends:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_8

    .line 3082
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaInterfaceExtends:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_8

    .line 3083
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaInterfaceExtends:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 3084
    .restart local v0    # "element":Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 3085
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3082
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3089
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_8
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->mapEntry:Z

    if-eqz v2, :cond_9

    .line 3090
    const/4 v2, 0x7

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->mapEntry:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3092
    :cond_9
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v2, v2

    if-lez v2, :cond_b

    .line 3093
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v2, v2

    if-ge v1, v2, :cond_b

    .line 3094
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    aget-object v0, v2, v1

    .line 3095
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    if-eqz v0, :cond_a

    .line 3096
    const/16 v2, 0x3e7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 3093
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3100
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    .end local v1    # "i":I
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 3101
    return-void
.end method
