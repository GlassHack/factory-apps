.class public final Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "GstaticConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/voicesearch/proto/GstaticConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Language"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;


# instance fields
.field private bitField0_:I

.field public dialect:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

.field private displayName_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3105
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 3106
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    .line 3107
    return-void
.end method

.method public static emptyArray()[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    .locals 2

    .prologue
    .line 3067
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    if-nez v0, :cond_1

    .line 3068
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3070
    :try_start_0
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    if-nez v0, :cond_0

    .line 3071
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    sput-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    .line 3073
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3075
    :cond_1
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    return-object v0

    .line 3073
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3205
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3199
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    .locals 1

    .prologue
    .line 3110
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->bitField0_:I

    .line 3111
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->displayName_:Ljava/lang/String;

    .line 3112
    invoke-static {}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->emptyArray()[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->dialect:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    .line 3113
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->cachedSize:I

    .line 3114
    return-object p0
.end method

.method public clearDisplayName()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    .locals 1

    .prologue
    .line 3097
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->displayName_:Ljava/lang/String;

    .line 3098
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->bitField0_:I

    .line 3099
    return-object p0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3083
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->displayName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 3135
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 3136
    .local v2, "size":I
    iget v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 3137
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->displayName_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3140
    :cond_0
    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->dialect:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->dialect:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    array-length v3, v3

    if-lez v3, :cond_2

    .line 3141
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->dialect:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 3142
    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->dialect:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    aget-object v0, v3, v1

    .line 3143
    .local v0, "element":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    if-eqz v0, :cond_1

    .line 3144
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3141
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3149
    .end local v0    # "element":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .end local v1    # "i":I
    :cond_2
    iput v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->cachedSize:I

    .line 3150
    return v2
.end method

.method public hasDisplayName()Z
    .locals 1

    .prologue
    .line 3094
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->bitField0_:I

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
    .line 3061
    invoke-virtual {p0, p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3158
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 3159
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 3163
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3164
    :sswitch_0
    return-object p0

    .line 3169
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->displayName_:Ljava/lang/String;

    .line 3170
    iget v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->bitField0_:I

    goto :goto_0

    .line 3174
    :sswitch_2
    const/16 v5, 0x12

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 3176
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->dialect:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    if-nez v5, :cond_2

    move v1, v4

    .line 3177
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    .line 3179
    .local v2, "newArray":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    if-eqz v1, :cond_1

    .line 3180
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->dialect:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3182
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 3183
    new-instance v5, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    invoke-direct {v5}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;-><init>()V

    aput-object v5, v2, v1

    .line 3184
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3185
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 3182
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3176
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    :cond_2
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->dialect:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    array-length v1, v5

    goto :goto_1

    .line 3188
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    :cond_3
    new-instance v5, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    invoke-direct {v5}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;-><init>()V

    aput-object v5, v2, v1

    .line 3189
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3190
    iput-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->dialect:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    goto :goto_0

    .line 3159
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3086
    if-nez p1, :cond_0

    .line 3087
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3089
    :cond_0
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->displayName_:Ljava/lang/String;

    .line 3090
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->bitField0_:I

    .line 3091
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
    .line 3120
    iget v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 3121
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->displayName_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3123
    :cond_0
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->dialect:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->dialect:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    array-length v2, v2

    if-lez v2, :cond_2

    .line 3124
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->dialect:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 3125
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->dialect:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    aget-object v0, v2, v1

    .line 3126
    .local v0, "element":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    if-eqz v0, :cond_1

    .line 3127
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3124
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3131
    .end local v0    # "element":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .end local v1    # "i":I
    :cond_2
    return-void
.end method
