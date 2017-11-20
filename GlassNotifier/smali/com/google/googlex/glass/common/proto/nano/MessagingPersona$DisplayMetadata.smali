.class public final Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "MessagingPersona.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisplayMetadata"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;


# instance fields
.field private bitField0_:I

.field private profileEmail_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 317
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;->clear()Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;

    .line 318
    return-void
.end method

.method public static emptyArray()[Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;
    .locals 2

    .prologue
    .line 279
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;

    if-nez v0, :cond_1

    .line 280
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 282
    :try_start_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;

    if-nez v0, :cond_0

    .line 283
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;

    sput-object v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;

    .line 285
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    :cond_1
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;

    return-object v0

    .line 285
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 409
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 403
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;->bitField0_:I

    .line 322
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;->profileEmail_:Ljava/lang/String;

    .line 323
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 324
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;->cachedSize:I

    .line 325
    return-object p0
.end method

.method public clearProfileEmail()Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;
    .locals 1

    .prologue
    .line 301
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;->profileEmail_:Ljava/lang/String;

    .line 302
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;->bitField0_:I

    .line 303
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 369
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 370
    .local v0, "size":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 371
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;->profileEmail_:Ljava/lang/String;

    .line 372
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 374
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 330
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 344
    :cond_0
    :goto_0
    return v1

    .line 333
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 336
    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;

    .line 337
    .local v0, "other":Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;->profileEmail_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;->profileEmail_:Ljava/lang/String;

    .line 338
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 341
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 342
    :cond_2
    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 344
    :cond_4
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getProfileEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;->profileEmail_:Ljava/lang/String;

    return-object v0
.end method

.method public hasProfileEmail()Z
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;->bitField0_:I

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
    .line 349
    const/16 v0, 0x11

    .line 350
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 351
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;->profileEmail_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 352
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 353
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 354
    :goto_0
    add-int v0, v2, v1

    .line 355
    return v0

    .line 354
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 382
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 383
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 387
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 388
    :sswitch_0
    return-object p0

    .line 393
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;->profileEmail_:Ljava/lang/String;

    .line 394
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;->bitField0_:I

    goto :goto_0

    .line 383
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 273
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;

    move-result-object v0

    return-object v0
.end method

.method public setProfileEmail(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 306
    if-nez p1, :cond_0

    .line 307
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 309
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;->profileEmail_:Ljava/lang/String;

    .line 310
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;->bitField0_:I

    .line 311
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
    .line 361
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 362
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;->profileEmail_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 364
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 365
    return-void
.end method
