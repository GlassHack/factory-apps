.class public final Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "AttachmentGetRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;


# instance fields
.field private attachmentId_:Ljava/lang/String;

.field private bitField0_:I

.field public screenDimensions:Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 227
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->clear()Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;

    .line 228
    return-void
.end method

.method public static emptyArray()[Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;
    .locals 2

    .prologue
    .line 186
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;

    if-nez v0, :cond_1

    .line 187
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 189
    :try_start_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;

    if-nez v0, :cond_0

    .line 190
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;

    sput-object v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;

    .line 192
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :cond_1
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;

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

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 345
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 339
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 231
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->bitField0_:I

    .line 232
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->attachmentId_:Ljava/lang/String;

    .line 233
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->screenDimensions:Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;

    .line 234
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 235
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->cachedSize:I

    .line 236
    return-object p0
.end method

.method public clearAttachmentId()Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;
    .locals 1

    .prologue
    .line 208
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->attachmentId_:Ljava/lang/String;

    .line 209
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->bitField0_:I

    .line 210
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 294
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 295
    .local v0, "size":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 296
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->attachmentId_:Ljava/lang/String;

    .line 297
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 299
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->screenDimensions:Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;

    if-eqz v1, :cond_1

    .line 300
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->screenDimensions:Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;

    .line 301
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 303
    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 241
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 264
    :cond_0
    :goto_0
    return v1

    .line 244
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 247
    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;

    .line 248
    .local v0, "other":Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->attachmentId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->attachmentId_:Ljava/lang/String;

    .line 249
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 252
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->screenDimensions:Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;

    if-nez v3, :cond_5

    .line 253
    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->screenDimensions:Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;

    if-nez v3, :cond_0

    .line 261
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 262
    :cond_3
    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .line 257
    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->screenDimensions:Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->screenDimensions:Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 264
    :cond_6
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getAttachmentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->attachmentId_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAttachmentId()Z
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->bitField0_:I

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
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 269
    const/16 v0, 0x11

    .line 270
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 271
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->attachmentId_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 272
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->screenDimensions:Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;

    if-nez v1, :cond_1

    move v1, v2

    .line 273
    :goto_0
    add-int v0, v3, v1

    .line 274
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 275
    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 276
    :cond_0
    :goto_1
    add-int v0, v1, v2

    .line 277
    return v0

    .line 273
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->screenDimensions:Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->hashCode()I

    move-result v1

    goto :goto_0

    .line 276
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v2}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 312
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 316
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 317
    :sswitch_0
    return-object p0

    .line 322
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->attachmentId_:Ljava/lang/String;

    .line 323
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->bitField0_:I

    goto :goto_0

    .line 327
    :sswitch_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->screenDimensions:Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;

    if-nez v1, :cond_1

    .line 328
    new-instance v1, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;

    invoke-direct {v1}, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;-><init>()V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->screenDimensions:Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;

    .line 330
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->screenDimensions:Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 312
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;

    move-result-object v0

    return-object v0
.end method

.method public setAttachmentId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 213
    if-nez p1, :cond_0

    .line 214
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 216
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->attachmentId_:Ljava/lang/String;

    .line 217
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->bitField0_:I

    .line 218
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 284
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->attachmentId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->screenDimensions:Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;

    if-eqz v0, :cond_1

    .line 287
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;->screenDimensions:Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 289
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 290
    return-void
.end method
