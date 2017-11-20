.class public final Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ModularActionProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ModularActionProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ArgumentTransformationParam"
.end annotation


# static fields
.field public static final TRANSFORMATION_CONSTANT_PREFERRED_APP_NAME:I = 0x7

.field public static final TRANSFORMATION_CONSTANT_PREFERRED_APP_PACKAGE:I = 0xe

.field public static final TRANSFORMATION_CONTACT_EMAIL_ADDRESS:I = 0x1

.field public static final TRANSFORMATION_CONTACT_ENDPOINT_TYPE:I = 0x5

.field public static final TRANSFORMATION_CONTACT_GPLUS_PROFILE_ID:I = 0x13

.field public static final TRANSFORMATION_CONTACT_NAME:I = 0x4

.field public static final TRANSFORMATION_CONTACT_PHONE_NUMBER:I = 0x2

.field public static final TRANSFORMATION_CONTACT_QUERY:I = 0x9

.field public static final TRANSFORMATION_CONTACT_RELATIONSHIP_NAME:I = 0x8

.field public static final TRANSFORMATION_CONTACT_URI:I = 0xd

.field public static final TRANSFORMATION_DATE_TIME_HOUR:I = 0x10

.field public static final TRANSFORMATION_DATE_TIME_MINUTE:I = 0x11

.field public static final TRANSFORMATION_DATE_TIME_MS:I = 0x12

.field public static final TRANSFORMATION_DOCUMENT_URI:I = 0xc

.field public static final TRANSFORMATION_ENTITY_TITLE:I = 0x6

.field public static final TRANSFORMATION_ENTITY_VALUE:I = 0x3

.field public static final TRANSFORMATION_LOCATION_MARKER_URL:I = 0xa

.field public static final TRANSFORMATION_LOCATION_PHONE_NUMBER:I = 0xb

.field public static final TRANSFORMATION_NONE:I

.field private static volatile _emptyArray:[Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;


# instance fields
.field private argumentId_:I

.field private bitField0_:I

.field public listFormat:Lcom/google/majel/proto/ModularActionProtos$ListFormat;

.field private listItemPosition_:I

.field private transformation_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3333
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 3334
    invoke-virtual {p0}, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->clear()Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;

    .line 3335
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;
    .locals 2

    .prologue
    .line 3260
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;

    if-nez v0, :cond_1

    .line 3261
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3263
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;

    if-nez v0, :cond_0

    .line 3264
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;

    sput-object v0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;

    .line 3266
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3268
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;

    return-object v0

    .line 3266
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3436
    new-instance v0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;

    invoke-direct {v0}, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3430
    new-instance v0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;

    invoke-direct {v0}, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3338
    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->bitField0_:I

    .line 3339
    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->argumentId_:I

    .line 3340
    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->transformation_:I

    .line 3341
    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->listItemPosition_:I

    .line 3342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->listFormat:Lcom/google/majel/proto/ModularActionProtos$ListFormat;

    .line 3343
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->cachedSize:I

    .line 3344
    return-object p0
.end method

.method public clearArgumentId()Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;
    .locals 1

    .prologue
    .line 3287
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->argumentId_:I

    .line 3288
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->bitField0_:I

    .line 3289
    return-object p0
.end method

.method public clearListItemPosition()Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;
    .locals 1

    .prologue
    .line 3325
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->listItemPosition_:I

    .line 3326
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->bitField0_:I

    .line 3327
    return-object p0
.end method

.method public clearTransformation()Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;
    .locals 1

    .prologue
    .line 3306
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->transformation_:I

    .line 3307
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->bitField0_:I

    .line 3308
    return-object p0
.end method

.method public getArgumentId()I
    .locals 1

    .prologue
    .line 3276
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->argumentId_:I

    return v0
.end method

.method public getListItemPosition()I
    .locals 1

    .prologue
    .line 3314
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->listItemPosition_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 3366
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 3367
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 3368
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->argumentId_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3371
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 3372
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->transformation_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3375
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 3376
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->listItemPosition_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3379
    :cond_2
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->listFormat:Lcom/google/majel/proto/ModularActionProtos$ListFormat;

    if-eqz v1, :cond_3

    .line 3380
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->listFormat:Lcom/google/majel/proto/ModularActionProtos$ListFormat;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3383
    :cond_3
    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->cachedSize:I

    .line 3384
    return v0
.end method

.method public getTransformation()I
    .locals 1

    .prologue
    .line 3295
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->transformation_:I

    return v0
.end method

.method public hasArgumentId()Z
    .locals 1

    .prologue
    .line 3284
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasListItemPosition()Z
    .locals 1

    .prologue
    .line 3322
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTransformation()Z
    .locals 1

    .prologue
    .line 3303
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

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
    .line 3233
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3392
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3393
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 3397
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3398
    :sswitch_0
    return-object p0

    .line 3403
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->argumentId_:I

    .line 3404
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->bitField0_:I

    goto :goto_0

    .line 3408
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->transformation_:I

    .line 3409
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->bitField0_:I

    goto :goto_0

    .line 3413
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->listItemPosition_:I

    .line 3414
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->bitField0_:I

    goto :goto_0

    .line 3418
    :sswitch_4
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->listFormat:Lcom/google/majel/proto/ModularActionProtos$ListFormat;

    if-nez v1, :cond_1

    .line 3419
    new-instance v1, Lcom/google/majel/proto/ModularActionProtos$ListFormat;

    invoke-direct {v1}, Lcom/google/majel/proto/ModularActionProtos$ListFormat;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->listFormat:Lcom/google/majel/proto/ModularActionProtos$ListFormat;

    .line 3421
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->listFormat:Lcom/google/majel/proto/ModularActionProtos$ListFormat;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 3393
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public setArgumentId(I)Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3279
    iput p1, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->argumentId_:I

    .line 3280
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->bitField0_:I

    .line 3281
    return-object p0
.end method

.method public setListItemPosition(I)Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3317
    iput p1, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->listItemPosition_:I

    .line 3318
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->bitField0_:I

    .line 3319
    return-object p0
.end method

.method public setTransformation(I)Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3298
    iput p1, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->transformation_:I

    .line 3299
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->bitField0_:I

    .line 3300
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
    .line 3350
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3351
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->argumentId_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3353
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 3354
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->transformation_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3356
    :cond_1
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 3357
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->listItemPosition_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3359
    :cond_2
    iget-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->listFormat:Lcom/google/majel/proto/ModularActionProtos$ListFormat;

    if-eqz v0, :cond_3

    .line 3360
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformationParam;->listFormat:Lcom/google/majel/proto/ModularActionProtos$ListFormat;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3362
    :cond_3
    return-void
.end method
