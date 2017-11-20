.class public final Lcom/google/glass/companion/nano/Proto$Notification;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/nano/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Notification"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/glass/companion/nano/Proto$Notification;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/glass/companion/nano/Proto$Notification;


# instance fields
.field private bitField0_:I

.field private dismiss_:Z

.field public notificationId:Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;

.field private packageIcon_:[B

.field private text_:Ljava/lang/String;

.field private title_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11291
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 11292
    invoke-virtual {p0}, Lcom/google/glass/companion/nano/Proto$Notification;->clear()Lcom/google/glass/companion/nano/Proto$Notification;

    .line 11293
    return-void
.end method

.method public static emptyArray()[Lcom/google/glass/companion/nano/Proto$Notification;
    .locals 2

    .prologue
    .line 11188
    sget-object v0, Lcom/google/glass/companion/nano/Proto$Notification;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$Notification;

    if-nez v0, :cond_1

    .line 11189
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 11191
    :try_start_0
    sget-object v0, Lcom/google/glass/companion/nano/Proto$Notification;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$Notification;

    if-nez v0, :cond_0

    .line 11192
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/nano/Proto$Notification;

    sput-object v0, Lcom/google/glass/companion/nano/Proto$Notification;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$Notification;

    .line 11194
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11196
    :cond_1
    sget-object v0, Lcom/google/glass/companion/nano/Proto$Notification;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$Notification;

    return-object v0

    .line 11194
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$Notification;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11464
    new-instance v0, Lcom/google/glass/companion/nano/Proto$Notification;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$Notification;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/nano/Proto$Notification;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$Notification;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/nano/Proto$Notification;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 11458
    new-instance v0, Lcom/google/glass/companion/nano/Proto$Notification;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$Notification;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/nano/Proto$Notification;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/glass/companion/nano/Proto$Notification;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 11296
    iput v1, p0, Lcom/google/glass/companion/nano/Proto$Notification;->bitField0_:I

    .line 11297
    iput-object v2, p0, Lcom/google/glass/companion/nano/Proto$Notification;->notificationId:Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;

    .line 11298
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$Notification;->title_:Ljava/lang/String;

    .line 11299
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$Notification;->text_:Ljava/lang/String;

    .line 11300
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$Notification;->packageIcon_:[B

    .line 11301
    iput-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$Notification;->dismiss_:Z

    .line 11302
    iput-object v2, p0, Lcom/google/glass/companion/nano/Proto$Notification;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 11303
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Notification;->cachedSize:I

    .line 11304
    return-object p0
.end method

.method public clearDismiss()Lcom/google/glass/companion/nano/Proto$Notification;
    .locals 1

    .prologue
    .line 11279
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$Notification;->dismiss_:Z

    .line 11280
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Notification;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Notification;->bitField0_:I

    .line 11281
    return-object p0
.end method

.method public clearPackageIcon()Lcom/google/glass/companion/nano/Proto$Notification;
    .locals 1

    .prologue
    .line 11257
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$Notification;->packageIcon_:[B

    .line 11258
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Notification;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Notification;->bitField0_:I

    .line 11259
    return-object p0
.end method

.method public clearText()Lcom/google/glass/companion/nano/Proto$Notification;
    .locals 1

    .prologue
    .line 11235
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$Notification;->text_:Ljava/lang/String;

    .line 11236
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Notification;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Notification;->bitField0_:I

    .line 11237
    return-object p0
.end method

.method public clearTitle()Lcom/google/glass/companion/nano/Proto$Notification;
    .locals 1

    .prologue
    .line 11213
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$Notification;->title_:Ljava/lang/String;

    .line 11214
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Notification;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Notification;->bitField0_:I

    .line 11215
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 11386
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 11387
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Notification;->notificationId:Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;

    if-eqz v1, :cond_0

    .line 11388
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Notification;->notificationId:Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;

    .line 11389
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11391
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Notification;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 11392
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Notification;->title_:Ljava/lang/String;

    .line 11393
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11395
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Notification;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 11396
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Notification;->text_:Ljava/lang/String;

    .line 11397
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11399
    :cond_2
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Notification;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 11400
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Notification;->packageIcon_:[B

    .line 11401
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 11403
    :cond_3
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Notification;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    .line 11404
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/glass/companion/nano/Proto$Notification;->dismiss_:Z

    .line 11405
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 11407
    :cond_4
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 11309
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 11344
    :cond_0
    :goto_0
    return v1

    .line 11312
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/nano/Proto$Notification;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 11315
    check-cast v0, Lcom/google/glass/companion/nano/Proto$Notification;

    .line 11316
    .local v0, "other":Lcom/google/glass/companion/nano/Proto$Notification;
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Notification;->notificationId:Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;

    if-nez v3, :cond_5

    .line 11317
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$Notification;->notificationId:Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;

    if-nez v3, :cond_0

    .line 11325
    :cond_2
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Notification;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$Notification;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Notification;->title_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$Notification;->title_:Ljava/lang/String;

    .line 11326
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 11329
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Notification;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$Notification;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Notification;->text_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$Notification;->text_:Ljava/lang/String;

    .line 11330
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 11333
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Notification;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$Notification;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Notification;->packageIcon_:[B

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$Notification;->packageIcon_:[B

    .line 11334
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 11337
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Notification;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$Notification;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/glass/companion/nano/Proto$Notification;->dismiss_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/nano/Proto$Notification;->dismiss_:Z

    if-ne v3, v4, :cond_0

    .line 11341
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Notification;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Notification;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 11342
    :cond_3
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$Notification;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$Notification;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .line 11321
    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Notification;->notificationId:Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$Notification;->notificationId:Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 11344
    :cond_6
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Notification;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/glass/companion/nano/Proto$Notification;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public getDismiss()Z
    .locals 1

    .prologue
    .line 11273
    iget-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$Notification;->dismiss_:Z

    return v0
.end method

.method public getPackageIcon()[B
    .locals 1

    .prologue
    .line 11251
    iget-object v0, p0, Lcom/google/glass/companion/nano/Proto$Notification;->packageIcon_:[B

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11229
    iget-object v0, p0, Lcom/google/glass/companion/nano/Proto$Notification;->text_:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11207
    iget-object v0, p0, Lcom/google/glass/companion/nano/Proto$Notification;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDismiss()Z
    .locals 1

    .prologue
    .line 11276
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Notification;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPackageIcon()Z
    .locals 1

    .prologue
    .line 11254
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Notification;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

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
    .line 11232
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Notification;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 11210
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Notification;->bitField0_:I

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

    .line 11349
    const/16 v0, 0x11

    .line 11350
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 11351
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Notification;->notificationId:Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;

    if-nez v1, :cond_1

    move v1, v2

    .line 11352
    :goto_0
    add-int v0, v3, v1

    .line 11353
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Notification;->title_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 11354
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Notification;->text_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 11355
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Notification;->packageIcon_:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int v0, v1, v3

    .line 11356
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$Notification;->dismiss_:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x4cf

    :goto_1
    add-int v0, v3, v1

    .line 11357
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Notification;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Notification;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 11358
    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11359
    :cond_0
    :goto_2
    add-int v0, v1, v2

    .line 11360
    return v0

    .line 11352
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Notification;->notificationId:Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;

    invoke-virtual {v1}, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->hashCode()I

    move-result v1

    goto :goto_0

    .line 11356
    :cond_2
    const/16 v1, 0x4d5

    goto :goto_1

    .line 11359
    :cond_3
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Notification;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v2}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v2

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$Notification;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11415
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 11416
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 11420
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 11421
    :sswitch_0
    return-object p0

    .line 11426
    :sswitch_1
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Notification;->notificationId:Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;

    if-nez v1, :cond_1

    .line 11427
    new-instance v1, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;

    invoke-direct {v1}, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$Notification;->notificationId:Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;

    .line 11429
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Notification;->notificationId:Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 11433
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$Notification;->title_:Ljava/lang/String;

    .line 11434
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Notification;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$Notification;->bitField0_:I

    goto :goto_0

    .line 11438
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$Notification;->text_:Ljava/lang/String;

    .line 11439
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Notification;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$Notification;->bitField0_:I

    goto :goto_0

    .line 11443
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$Notification;->packageIcon_:[B

    .line 11444
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Notification;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$Notification;->bitField0_:I

    goto :goto_0

    .line 11448
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$Notification;->dismiss_:Z

    .line 11449
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Notification;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$Notification;->bitField0_:I

    goto :goto_0

    .line 11416
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
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
    .line 10965
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/nano/Proto$Notification;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$Notification;

    move-result-object v0

    return-object v0
.end method

.method public setDismiss(Z)Lcom/google/glass/companion/nano/Proto$Notification;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 11284
    iput-boolean p1, p0, Lcom/google/glass/companion/nano/Proto$Notification;->dismiss_:Z

    .line 11285
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Notification;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Notification;->bitField0_:I

    .line 11286
    return-object p0
.end method

.method public setPackageIcon([B)Lcom/google/glass/companion/nano/Proto$Notification;
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 11262
    if-nez p1, :cond_0

    .line 11263
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11265
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/nano/Proto$Notification;->packageIcon_:[B

    .line 11266
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Notification;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Notification;->bitField0_:I

    .line 11267
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/google/glass/companion/nano/Proto$Notification;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 11240
    if-nez p1, :cond_0

    .line 11241
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11243
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/nano/Proto$Notification;->text_:Ljava/lang/String;

    .line 11244
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Notification;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Notification;->bitField0_:I

    .line 11245
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/glass/companion/nano/Proto$Notification;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 11218
    if-nez p1, :cond_0

    .line 11219
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11221
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/nano/Proto$Notification;->title_:Ljava/lang/String;

    .line 11222
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Notification;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Notification;->bitField0_:I

    .line 11223
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
    .line 11366
    iget-object v0, p0, Lcom/google/glass/companion/nano/Proto$Notification;->notificationId:Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;

    if-eqz v0, :cond_0

    .line 11367
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Notification;->notificationId:Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 11369
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Notification;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 11370
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Notification;->title_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 11372
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Notification;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 11373
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Notification;->text_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 11375
    :cond_2
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Notification;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 11376
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Notification;->packageIcon_:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 11378
    :cond_3
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Notification;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 11379
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$Notification;->dismiss_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 11381
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 11382
    return-void
.end method
