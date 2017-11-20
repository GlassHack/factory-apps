.class public final Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Account.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/nano/Account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AuthToken"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;


# instance fields
.field private authToken_:Ljava/lang/String;

.field private bitField0_:I

.field private type_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 255
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->clear()Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;

    .line 256
    return-void
.end method

.method public static emptyArray()[Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;
    .locals 2

    .prologue
    .line 195
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;

    if-nez v0, :cond_1

    .line 196
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 198
    :try_start_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;

    if-nez v0, :cond_0

    .line 199
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;

    sput-object v0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;

    .line 201
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :cond_1
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;

    return-object v0

    .line 201
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 365
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 359
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->bitField0_:I

    .line 260
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->type_:Ljava/lang/String;

    .line 261
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->authToken_:Ljava/lang/String;

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 263
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->cachedSize:I

    .line 264
    return-object p0
.end method

.method public clearAuthToken()Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;
    .locals 1

    .prologue
    .line 239
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->authToken_:Ljava/lang/String;

    .line 240
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->bitField0_:I

    .line 241
    return-object p0
.end method

.method public clearType()Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;
    .locals 1

    .prologue
    .line 217
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->type_:Ljava/lang/String;

    .line 218
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->bitField0_:I

    .line 219
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 316
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 317
    .local v0, "size":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 318
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->type_:Ljava/lang/String;

    .line 319
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 321
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 322
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->authToken_:Ljava/lang/String;

    .line 323
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 325
    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 269
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 287
    :cond_0
    :goto_0
    return v1

    .line 272
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 275
    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;

    .line 276
    .local v0, "other":Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->type_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->type_:Ljava/lang/String;

    .line 277
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 280
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->authToken_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->authToken_:Ljava/lang/String;

    .line 281
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 284
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 285
    :cond_2
    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 287
    :cond_4
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->authToken_:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->type_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAuthToken()Z
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->bitField0_:I

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
    .locals 3

    .prologue
    .line 292
    const/16 v0, 0x11

    .line 293
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 294
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->type_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 295
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->authToken_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 296
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 297
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 298
    :goto_0
    add-int v0, v2, v1

    .line 299
    return v0

    .line 298
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 333
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 334
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 338
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 339
    :sswitch_0
    return-object p0

    .line 344
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->type_:Ljava/lang/String;

    .line 345
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->bitField0_:I

    goto :goto_0

    .line 349
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->authToken_:Ljava/lang/String;

    .line 350
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->bitField0_:I

    goto :goto_0

    .line 334
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
    .line 189
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;

    move-result-object v0

    return-object v0
.end method

.method public setAuthToken(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 244
    if-nez p1, :cond_0

    .line 245
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 247
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->authToken_:Ljava/lang/String;

    .line 248
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->bitField0_:I

    .line 249
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 222
    if-nez p1, :cond_0

    .line 223
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 225
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->type_:Ljava/lang/String;

    .line 226
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->bitField0_:I

    .line 227
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
    .line 305
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 306
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->type_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 308
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 309
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->authToken_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 311
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 312
    return-void
.end method
