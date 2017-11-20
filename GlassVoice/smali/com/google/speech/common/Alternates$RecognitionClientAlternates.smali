.class public final Lcom/google/speech/common/Alternates$RecognitionClientAlternates;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "Alternates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/common/Alternates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognitionClientAlternates"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/common/Alternates$RecognitionClientAlternates;


# instance fields
.field private bitField0_:I

.field public maxSpanLength:I

.field public span:[Lcom/google/speech/common/Alternates$AlternateSpan;

.field private unit_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 225
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->clear()Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    .line 226
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/common/Alternates$RecognitionClientAlternates;
    .locals 2

    .prologue
    .line 186
    sget-object v0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->_emptyArray:[Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    if-nez v0, :cond_1

    .line 187
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 189
    :try_start_0
    sget-object v0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->_emptyArray:[Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    if-nez v0, :cond_0

    .line 190
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    sput-object v0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->_emptyArray:[Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    .line 192
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :cond_1
    sget-object v0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->_emptyArray:[Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    return-object v0

    .line 192
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/common/Alternates$RecognitionClientAlternates;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 332
    new-instance v0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    invoke-direct {v0}, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/common/Alternates$RecognitionClientAlternates;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 326
    new-instance v0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    invoke-direct {v0}, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/common/Alternates$RecognitionClientAlternates;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 229
    iput v1, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->bitField0_:I

    .line 230
    invoke-static {}, Lcom/google/speech/common/Alternates$AlternateSpan;->emptyArray()[Lcom/google/speech/common/Alternates$AlternateSpan;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->span:[Lcom/google/speech/common/Alternates$AlternateSpan;

    .line 231
    iput v1, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->maxSpanLength:I

    .line 232
    iput v1, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->unit_:I

    .line 233
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->cachedSize:I

    .line 234
    return-object p0
.end method

.method public clearUnit()Lcom/google/speech/common/Alternates$RecognitionClientAlternates;
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->unit_:I

    .line 220
    iget v0, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->bitField0_:I

    .line 221
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 256
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 257
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->span:[Lcom/google/speech/common/Alternates$AlternateSpan;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->span:[Lcom/google/speech/common/Alternates$AlternateSpan;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 258
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->span:[Lcom/google/speech/common/Alternates$AlternateSpan;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 259
    iget-object v3, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->span:[Lcom/google/speech/common/Alternates$AlternateSpan;

    aget-object v0, v3, v1

    .line 260
    .local v0, "element":Lcom/google/speech/common/Alternates$AlternateSpan;
    if-eqz v0, :cond_0

    .line 261
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 258
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 266
    .end local v0    # "element":Lcom/google/speech/common/Alternates$AlternateSpan;
    .end local v1    # "i":I
    :cond_1
    const/4 v3, 0x2

    iget v4, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->maxSpanLength:I

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 268
    iget v3, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 269
    const/4 v3, 0x3

    iget v4, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->unit_:I

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 272
    :cond_2
    iput v2, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->cachedSize:I

    .line 273
    return v2
.end method

.method public getUnit()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->unit_:I

    return v0
.end method

.method public hasUnit()Z
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->bitField0_:I

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
    .line 180
    invoke-virtual {p0, p1}, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/common/Alternates$RecognitionClientAlternates;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 281
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 282
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 286
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 287
    :sswitch_0
    return-object p0

    .line 292
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 294
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->span:[Lcom/google/speech/common/Alternates$AlternateSpan;

    if-nez v5, :cond_2

    move v1, v4

    .line 295
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/speech/common/Alternates$AlternateSpan;

    .line 297
    .local v2, "newArray":[Lcom/google/speech/common/Alternates$AlternateSpan;
    if-eqz v1, :cond_1

    .line 298
    iget-object v5, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->span:[Lcom/google/speech/common/Alternates$AlternateSpan;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 301
    new-instance v5, Lcom/google/speech/common/Alternates$AlternateSpan;

    invoke-direct {v5}, Lcom/google/speech/common/Alternates$AlternateSpan;-><init>()V

    aput-object v5, v2, v1

    .line 302
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 303
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 300
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 294
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/speech/common/Alternates$AlternateSpan;
    :cond_2
    iget-object v5, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->span:[Lcom/google/speech/common/Alternates$AlternateSpan;

    array-length v1, v5

    goto :goto_1

    .line 306
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/speech/common/Alternates$AlternateSpan;
    :cond_3
    new-instance v5, Lcom/google/speech/common/Alternates$AlternateSpan;

    invoke-direct {v5}, Lcom/google/speech/common/Alternates$AlternateSpan;-><init>()V

    aput-object v5, v2, v1

    .line 307
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 308
    iput-object v2, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->span:[Lcom/google/speech/common/Alternates$AlternateSpan;

    goto :goto_0

    .line 312
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/speech/common/Alternates$AlternateSpan;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->maxSpanLength:I

    goto :goto_0

    .line 316
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->unit_:I

    .line 317
    iget v5, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->bitField0_:I

    goto :goto_0

    .line 282
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public setUnit(I)Lcom/google/speech/common/Alternates$RecognitionClientAlternates;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 211
    iput p1, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->unit_:I

    .line 212
    iget v0, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->bitField0_:I

    .line 213
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
    .line 240
    iget-object v2, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->span:[Lcom/google/speech/common/Alternates$AlternateSpan;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->span:[Lcom/google/speech/common/Alternates$AlternateSpan;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 241
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->span:[Lcom/google/speech/common/Alternates$AlternateSpan;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 242
    iget-object v2, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->span:[Lcom/google/speech/common/Alternates$AlternateSpan;

    aget-object v0, v2, v1

    .line 243
    .local v0, "element":Lcom/google/speech/common/Alternates$AlternateSpan;
    if-eqz v0, :cond_0

    .line 244
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 241
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    .end local v0    # "element":Lcom/google/speech/common/Alternates$AlternateSpan;
    .end local v1    # "i":I
    :cond_1
    const/4 v2, 0x2

    iget v3, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->maxSpanLength:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 249
    iget v2, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 250
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->unit_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 252
    :cond_2
    return-void
.end method
