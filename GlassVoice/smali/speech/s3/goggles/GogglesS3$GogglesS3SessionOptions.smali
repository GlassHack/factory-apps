.class public final Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "GogglesS3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lspeech/s3/goggles/GogglesS3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GogglesS3SessionOptions"
.end annotation


# static fields
.field public static final DISCLOSED_CAPABILITY_CAPABILITY_ARTWORK:I = 0x1

.field public static final DISCLOSED_CAPABILITY_CAPABILITY_SHOPPING:I = 0x0

.field public static final DISCLOSED_CAPABILITY_CAPABILITY_TRANSLATE:I = 0x2

.field private static volatile _emptyArray:[Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;


# instance fields
.field private annotation_:Ljava/lang/String;

.field private bitField0_:I

.field private canLogImage_:Z

.field private canLogLocation_:Z

.field public disclosedCapabilities:[I

.field private textLanguageHint_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 118
    invoke-virtual {p0}, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->clear()Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;

    .line 119
    return-void
.end method

.method public static emptyArray()[Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->_emptyArray:[Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;

    if-nez v0, :cond_1

    .line 20
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 22
    :try_start_0
    sget-object v0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->_emptyArray:[Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;

    if-nez v0, :cond_0

    .line 23
    const/4 v0, 0x0

    new-array v0, v0, [Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;

    sput-object v0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->_emptyArray:[Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;

    .line 25
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_1
    sget-object v0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->_emptyArray:[Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    new-instance v0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;

    invoke-direct {v0}, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;-><init>()V

    invoke-virtual {v0, p0}, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 268
    new-instance v0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;

    invoke-direct {v0}, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;

    return-object v0
.end method


# virtual methods
.method public clear()Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 122
    iput v1, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->bitField0_:I

    .line 123
    const-string v0, ""

    iput-object v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->annotation_:Ljava/lang/String;

    .line 124
    iput-boolean v1, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->canLogImage_:Z

    .line 125
    iput-boolean v1, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->canLogLocation_:Z

    .line 126
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->disclosedCapabilities:[I

    .line 127
    const-string v0, ""

    iput-object v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->textLanguageHint_:Ljava/lang/String;

    .line 128
    const/4 v0, -0x1

    iput v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->cachedSize:I

    .line 129
    return-object p0
.end method

.method public clearAnnotation()Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;
    .locals 1

    .prologue
    .line 49
    const-string v0, ""

    iput-object v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->annotation_:Ljava/lang/String;

    .line 50
    iget v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->bitField0_:I

    .line 51
    return-object p0
.end method

.method public clearCanLogImage()Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->canLogImage_:Z

    .line 69
    iget v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->bitField0_:I

    .line 70
    return-object p0
.end method

.method public clearCanLogLocation()Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->canLogLocation_:Z

    .line 88
    iget v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->bitField0_:I

    .line 89
    return-object p0
.end method

.method public clearTextLanguageHint()Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;
    .locals 1

    .prologue
    .line 112
    const-string v0, ""

    iput-object v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->textLanguageHint_:Ljava/lang/String;

    .line 113
    iget v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->bitField0_:I

    .line 114
    return-object p0
.end method

.method public getAnnotation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->annotation_:Ljava/lang/String;

    return-object v0
.end method

.method public getCanLogImage()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->canLogImage_:Z

    return v0
.end method

.method public getCanLogLocation()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->canLogLocation_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 156
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v3

    .line 157
    .local v3, "size":I
    iget v4, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 158
    const/4 v4, 0x1

    iget-object v5, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->annotation_:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 161
    :cond_0
    iget v4, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 162
    const/4 v4, 0x2

    iget-boolean v5, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->canLogImage_:Z

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 165
    :cond_1
    iget v4, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    .line 166
    const/4 v4, 0x3

    iget-boolean v5, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->canLogLocation_:Z

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 169
    :cond_2
    iget-object v4, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->disclosedCapabilities:[I

    if-eqz v4, :cond_4

    iget-object v4, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->disclosedCapabilities:[I

    array-length v4, v4

    if-lez v4, :cond_4

    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, "dataSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->disclosedCapabilities:[I

    array-length v4, v4

    if-ge v2, v4, :cond_3

    .line 172
    iget-object v4, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->disclosedCapabilities:[I

    aget v1, v4, v2

    .line 173
    .local v1, "element":I
    invoke-static {v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 171
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 176
    .end local v1    # "element":I
    :cond_3
    add-int/2addr v3, v0

    .line 177
    iget-object v4, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->disclosedCapabilities:[I

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 179
    .end local v0    # "dataSize":I
    .end local v2    # "i":I
    :cond_4
    iget v4, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_5

    .line 180
    const/4 v4, 0x5

    iget-object v5, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->textLanguageHint_:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 183
    :cond_5
    iput v3, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->cachedSize:I

    .line 184
    return v3
.end method

.method public getTextLanguageHint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->textLanguageHint_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAnnotation()Z
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCanLogImage()Z
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCanLogLocation()Z
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTextLanguageHint()Z
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

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
    .line 8
    invoke-virtual {p0, p1}, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;
    .locals 9
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 192
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v6

    .line 193
    .local v6, "tag":I
    sparse-switch v6, :sswitch_data_0

    .line 197
    invoke-static {p1, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 198
    :sswitch_0
    return-object p0

    .line 203
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->annotation_:Ljava/lang/String;

    .line 204
    iget v8, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->bitField0_:I

    goto :goto_0

    .line 208
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->canLogImage_:Z

    .line 209
    iget v8, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->bitField0_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->bitField0_:I

    goto :goto_0

    .line 213
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->canLogLocation_:Z

    .line 214
    iget v8, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->bitField0_:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->bitField0_:I

    goto :goto_0

    .line 218
    :sswitch_4
    const/16 v8, 0x20

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 220
    .local v0, "arrayLength":I
    iget-object v8, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->disclosedCapabilities:[I

    if-nez v8, :cond_2

    move v1, v7

    .line 221
    .local v1, "i":I
    :goto_1
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 222
    .local v4, "newArray":[I
    if-eqz v1, :cond_1

    .line 223
    iget-object v8, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->disclosedCapabilities:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    :cond_1
    :goto_2
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_3

    .line 226
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 227
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 225
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 220
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_2
    iget-object v8, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->disclosedCapabilities:[I

    array-length v1, v8

    goto :goto_1

    .line 230
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 231
    iput-object v4, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->disclosedCapabilities:[I

    goto :goto_0

    .line 235
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 236
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 238
    .local v3, "limit":I
    const/4 v0, 0x0

    .line 239
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 240
    .local v5, "startPos":I
    :goto_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_4

    .line 241
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 244
    :cond_4
    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 245
    iget-object v8, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->disclosedCapabilities:[I

    if-nez v8, :cond_6

    move v1, v7

    .line 246
    .restart local v1    # "i":I
    :goto_4
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 247
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_5

    .line 248
    iget-object v8, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->disclosedCapabilities:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    :cond_5
    :goto_5
    array-length v8, v4

    if-ge v1, v8, :cond_7

    .line 251
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 250
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 245
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_6
    iget-object v8, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->disclosedCapabilities:[I

    array-length v1, v8

    goto :goto_4

    .line 253
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_7
    iput-object v4, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->disclosedCapabilities:[I

    .line 254
    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 258
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[I
    .end local v5    # "startPos":I
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->textLanguageHint_:Ljava/lang/String;

    .line 259
    iget v8, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->bitField0_:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->bitField0_:I

    goto/16 :goto_0

    .line 193
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x22 -> :sswitch_5
        0x2a -> :sswitch_6
    .end sparse-switch
.end method

.method public setAnnotation(Ljava/lang/String;)Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 38
    if-nez p1, :cond_0

    .line 39
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41
    :cond_0
    iput-object p1, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->annotation_:Ljava/lang/String;

    .line 42
    iget v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->bitField0_:I

    .line 43
    return-object p0
.end method

.method public setCanLogImage(Z)Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->canLogImage_:Z

    .line 61
    iget v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->bitField0_:I

    .line 62
    return-object p0
.end method

.method public setCanLogLocation(Z)Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->canLogLocation_:Z

    .line 80
    iget v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->bitField0_:I

    .line 81
    return-object p0
.end method

.method public setTextLanguageHint(Ljava/lang/String;)Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 101
    if-nez p1, :cond_0

    .line 102
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 104
    :cond_0
    iput-object p1, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->textLanguageHint_:Ljava/lang/String;

    .line 105
    iget v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->bitField0_:I

    .line 106
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    iget v1, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 136
    const/4 v1, 0x1

    iget-object v2, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->annotation_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 138
    :cond_0
    iget v1, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 139
    const/4 v1, 0x2

    iget-boolean v2, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->canLogImage_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 141
    :cond_1
    iget v1, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 142
    const/4 v1, 0x3

    iget-boolean v2, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->canLogLocation_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 144
    :cond_2
    iget-object v1, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->disclosedCapabilities:[I

    if-eqz v1, :cond_3

    iget-object v1, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->disclosedCapabilities:[I

    array-length v1, v1

    if-lez v1, :cond_3

    .line 145
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->disclosedCapabilities:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 146
    const/4 v1, 0x4

    iget-object v2, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->disclosedCapabilities:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    .end local v0    # "i":I
    :cond_3
    iget v1, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    .line 150
    const/4 v1, 0x5

    iget-object v2, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->textLanguageHint_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 152
    :cond_4
    return-void
.end method
