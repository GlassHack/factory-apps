.class public final Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "LogsAnnotations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llogs_proto/nano/LogsAnnotations$MessageDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;


# instance fields
.field public logType:Ljava/lang/String;

.field public sourceType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 242
    invoke-virtual {p0}, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;->clear()Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;

    .line 243
    return-void
.end method

.method public static emptyArray()[Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;
    .locals 2

    .prologue
    .line 222
    sget-object v0, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;->_emptyArray:[Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;

    if-nez v0, :cond_1

    .line 223
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 225
    :try_start_0
    sget-object v0, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;->_emptyArray:[Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;

    if-nez v0, :cond_0

    .line 226
    const/4 v0, 0x0

    new-array v0, v0, [Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;

    sput-object v0, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;->_emptyArray:[Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;

    .line 228
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    :cond_1
    sget-object v0, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;->_emptyArray:[Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;

    return-object v0

    .line 228
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 349
    new-instance v0, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;

    invoke-direct {v0}, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;-><init>()V

    invoke-virtual {v0, p0}, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 343
    new-instance v0, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;

    invoke-direct {v0}, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;

    return-object v0
.end method


# virtual methods
.method public clear()Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;
    .locals 1

    .prologue
    .line 246
    const-string v0, ""

    iput-object v0, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;->sourceType:Ljava/lang/String;

    .line 247
    const-string v0, ""

    iput-object v0, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;->logType:Ljava/lang/String;

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 249
    const/4 v0, -0x1

    iput v0, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;->cachedSize:I

    .line 250
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 306
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 307
    .local v0, "size":I
    const/4 v1, 0x1

    iget-object v2, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;->sourceType:Ljava/lang/String;

    .line 308
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 309
    const/4 v1, 0x2

    iget-object v2, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;->logType:Ljava/lang/String;

    .line 310
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 311
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 255
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 279
    :cond_0
    :goto_0
    return v1

    .line 258
    :cond_1
    instance-of v3, p1, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 261
    check-cast v0, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;

    .line 262
    .local v0, "other":Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;
    iget-object v3, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;->sourceType:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 263
    iget-object v3, v0, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;->sourceType:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 269
    :cond_2
    iget-object v3, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;->logType:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 270
    iget-object v3, v0, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;->logType:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 276
    :cond_3
    iget-object v3, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_4

    iget-object v3, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 277
    :cond_4
    iget-object v3, v0, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_5

    iget-object v3, v0, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0

    .line 266
    :cond_6
    iget-object v3, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;->sourceType:Ljava/lang/String;

    iget-object v4, v0, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;->sourceType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 273
    :cond_7
    iget-object v3, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;->logType:Ljava/lang/String;

    iget-object v4, v0, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;->logType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 279
    :cond_8
    iget-object v1, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 284
    const/16 v0, 0x11

    .line 285
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 286
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;->sourceType:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    .line 287
    :goto_0
    add-int v0, v3, v1

    .line 288
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;->logType:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    .line 289
    :goto_1
    add-int v0, v3, v1

    .line 290
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_0

    iget-object v3, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 291
    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 292
    :cond_0
    :goto_2
    add-int v0, v1, v2

    .line 293
    return v0

    .line 287
    :cond_1
    iget-object v1, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;->sourceType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 289
    :cond_2
    iget-object v1, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;->logType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    .line 292
    :cond_3
    iget-object v2, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v2}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v2

    goto :goto_2
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 319
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 320
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 324
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 325
    :sswitch_0
    return-object p0

    .line 330
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;->sourceType:Ljava/lang/String;

    goto :goto_0

    .line 334
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;->logType:Ljava/lang/String;

    goto :goto_0

    .line 320
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
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
    .line 299
    const/4 v0, 0x1

    iget-object v1, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;->sourceType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 300
    const/4 v0, 0x2

    iget-object v1, p0, Llogs_proto/nano/LogsAnnotations$MessageDetails$Type;->logType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 301
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 302
    return-void
.end method
