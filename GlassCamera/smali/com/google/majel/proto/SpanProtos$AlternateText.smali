.class public final Lcom/google/majel/proto/SpanProtos$AlternateText;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SpanProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/SpanProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlternateText"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/SpanProtos$AlternateText;


# instance fields
.field private bitField0_:I

.field private confidence_:F

.field private text_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 223
    invoke-virtual {p0}, Lcom/google/majel/proto/SpanProtos$AlternateText;->clear()Lcom/google/majel/proto/SpanProtos$AlternateText;

    .line 224
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/SpanProtos$AlternateText;
    .locals 2

    .prologue
    .line 168
    sget-object v0, Lcom/google/majel/proto/SpanProtos$AlternateText;->_emptyArray:[Lcom/google/majel/proto/SpanProtos$AlternateText;

    if-nez v0, :cond_1

    .line 169
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 171
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/SpanProtos$AlternateText;->_emptyArray:[Lcom/google/majel/proto/SpanProtos$AlternateText;

    if-nez v0, :cond_0

    .line 172
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/SpanProtos$AlternateText;

    sput-object v0, Lcom/google/majel/proto/SpanProtos$AlternateText;->_emptyArray:[Lcom/google/majel/proto/SpanProtos$AlternateText;

    .line 174
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :cond_1
    sget-object v0, Lcom/google/majel/proto/SpanProtos$AlternateText;->_emptyArray:[Lcom/google/majel/proto/SpanProtos$AlternateText;

    return-object v0

    .line 174
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/SpanProtos$AlternateText;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    new-instance v0, Lcom/google/majel/proto/SpanProtos$AlternateText;

    invoke-direct {v0}, Lcom/google/majel/proto/SpanProtos$AlternateText;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/SpanProtos$AlternateText;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/SpanProtos$AlternateText;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/SpanProtos$AlternateText;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 291
    new-instance v0, Lcom/google/majel/proto/SpanProtos$AlternateText;

    invoke-direct {v0}, Lcom/google/majel/proto/SpanProtos$AlternateText;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/SpanProtos$AlternateText;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/SpanProtos$AlternateText;
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/SpanProtos$AlternateText;->bitField0_:I

    .line 228
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/SpanProtos$AlternateText;->text_:Ljava/lang/String;

    .line 229
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/SpanProtos$AlternateText;->confidence_:F

    .line 230
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/SpanProtos$AlternateText;->cachedSize:I

    .line 231
    return-object p0
.end method

.method public clearConfidence()Lcom/google/majel/proto/SpanProtos$AlternateText;
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/SpanProtos$AlternateText;->confidence_:F

    .line 218
    iget v0, p0, Lcom/google/majel/proto/SpanProtos$AlternateText;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/SpanProtos$AlternateText;->bitField0_:I

    .line 219
    return-object p0
.end method

.method public clearText()Lcom/google/majel/proto/SpanProtos$AlternateText;
    .locals 1

    .prologue
    .line 198
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/SpanProtos$AlternateText;->text_:Ljava/lang/String;

    .line 199
    iget v0, p0, Lcom/google/majel/proto/SpanProtos$AlternateText;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/SpanProtos$AlternateText;->bitField0_:I

    .line 200
    return-object p0
.end method

.method public getConfidence()F
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/google/majel/proto/SpanProtos$AlternateText;->confidence_:F

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 247
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 248
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/SpanProtos$AlternateText;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 249
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/SpanProtos$AlternateText;->text_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 252
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/SpanProtos$AlternateText;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 253
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/majel/proto/SpanProtos$AlternateText;->confidence_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 256
    :cond_1
    iput v0, p0, Lcom/google/majel/proto/SpanProtos$AlternateText;->cachedSize:I

    .line 257
    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/majel/proto/SpanProtos$AlternateText;->text_:Ljava/lang/String;

    return-object v0
.end method

.method public hasConfidence()Z
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/google/majel/proto/SpanProtos$AlternateText;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/google/majel/proto/SpanProtos$AlternateText;->bitField0_:I

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
    .line 162
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/SpanProtos$AlternateText;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/SpanProtos$AlternateText;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/SpanProtos$AlternateText;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 266
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 270
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 271
    :sswitch_0
    return-object p0

    .line 276
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/SpanProtos$AlternateText;->text_:Ljava/lang/String;

    .line 277
    iget v1, p0, Lcom/google/majel/proto/SpanProtos$AlternateText;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/SpanProtos$AlternateText;->bitField0_:I

    goto :goto_0

    .line 281
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/SpanProtos$AlternateText;->confidence_:F

    .line 282
    iget v1, p0, Lcom/google/majel/proto/SpanProtos$AlternateText;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/SpanProtos$AlternateText;->bitField0_:I

    goto :goto_0

    .line 266
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x15 -> :sswitch_2
    .end sparse-switch
.end method

.method public setConfidence(F)Lcom/google/majel/proto/SpanProtos$AlternateText;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 209
    iput p1, p0, Lcom/google/majel/proto/SpanProtos$AlternateText;->confidence_:F

    .line 210
    iget v0, p0, Lcom/google/majel/proto/SpanProtos$AlternateText;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/SpanProtos$AlternateText;->bitField0_:I

    .line 211
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/google/majel/proto/SpanProtos$AlternateText;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 187
    if-nez p1, :cond_0

    .line 188
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 190
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/SpanProtos$AlternateText;->text_:Ljava/lang/String;

    .line 191
    iget v0, p0, Lcom/google/majel/proto/SpanProtos$AlternateText;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/SpanProtos$AlternateText;->bitField0_:I

    .line 192
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    iget v0, p0, Lcom/google/majel/proto/SpanProtos$AlternateText;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 238
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/SpanProtos$AlternateText;->text_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 240
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/SpanProtos$AlternateText;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 241
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/majel/proto/SpanProtos$AlternateText;->confidence_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 243
    :cond_1
    return-void
.end method
