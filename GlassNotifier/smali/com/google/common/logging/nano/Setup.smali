.class public final Lcom/google/common/logging/nano/Setup;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Setup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/nano/Setup$SigningInState;,
        Lcom/google/common/logging/nano/Setup$SetupState;,
        Lcom/google/common/logging/nano/Setup$ErrorCode;,
        Lcom/google/common/logging/nano/Setup$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Setup;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Setup;


# instance fields
.field private bitField0_:I

.field private currentState_:I

.field private errorCode_:I

.field private networkType_:I

.field private previousState_:I

.field private setupProgressTimestampMs_:J

.field private signingInProgressTimestampMs_:J

.field private signingInState_:I

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 235
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Setup;->clear()Lcom/google/common/logging/nano/Setup;

    .line 236
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Setup;
    .locals 2

    .prologue
    .line 67
    sget-object v0, Lcom/google/common/logging/nano/Setup;->_emptyArray:[Lcom/google/common/logging/nano/Setup;

    if-nez v0, :cond_1

    .line 68
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 70
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/Setup;->_emptyArray:[Lcom/google/common/logging/nano/Setup;

    if-nez v0, :cond_0

    .line 71
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/Setup;

    sput-object v0, Lcom/google/common/logging/nano/Setup;->_emptyArray:[Lcom/google/common/logging/nano/Setup;

    .line 73
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/Setup;->_emptyArray:[Lcom/google/common/logging/nano/Setup;

    return-object v0

    .line 73
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Setup;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 574
    new-instance v0, Lcom/google/common/logging/nano/Setup;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Setup;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/Setup;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Setup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/Setup;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 568
    new-instance v0, Lcom/google/common/logging/nano/Setup;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Setup;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Setup;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/Setup;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 239
    iput v0, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    .line 240
    iput v0, p0, Lcom/google/common/logging/nano/Setup;->type_:I

    .line 241
    iput v0, p0, Lcom/google/common/logging/nano/Setup;->errorCode_:I

    .line 242
    iput v0, p0, Lcom/google/common/logging/nano/Setup;->previousState_:I

    .line 243
    iput v0, p0, Lcom/google/common/logging/nano/Setup;->currentState_:I

    .line 244
    iput v0, p0, Lcom/google/common/logging/nano/Setup;->signingInState_:I

    .line 245
    iput-wide v2, p0, Lcom/google/common/logging/nano/Setup;->setupProgressTimestampMs_:J

    .line 246
    iput-wide v2, p0, Lcom/google/common/logging/nano/Setup;->signingInProgressTimestampMs_:J

    .line 247
    iput v0, p0, Lcom/google/common/logging/nano/Setup;->networkType_:I

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/Setup;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 249
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Setup;->cachedSize:I

    .line 250
    return-object p0
.end method

.method public clearCurrentState()Lcom/google/common/logging/nano/Setup;
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    .line 152
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/Setup;->currentState_:I

    .line 153
    return-object p0
.end method

.method public clearErrorCode()Lcom/google/common/logging/nano/Setup;
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/Setup;->errorCode_:I

    .line 115
    return-object p0
.end method

.method public clearNetworkType()Lcom/google/common/logging/nano/Setup;
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    .line 228
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/Setup;->networkType_:I

    .line 229
    return-object p0
.end method

.method public clearPreviousState()Lcom/google/common/logging/nano/Setup;
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/Setup;->previousState_:I

    .line 134
    return-object p0
.end method

.method public clearSetupProgressTimestampMs()Lcom/google/common/logging/nano/Setup;
    .locals 2

    .prologue
    .line 184
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/logging/nano/Setup;->setupProgressTimestampMs_:J

    .line 185
    iget v0, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    .line 186
    return-object p0
.end method

.method public clearSigningInProgressTimestampMs()Lcom/google/common/logging/nano/Setup;
    .locals 2

    .prologue
    .line 203
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/logging/nano/Setup;->signingInProgressTimestampMs_:J

    .line 204
    iget v0, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    .line 205
    return-object p0
.end method

.method public clearSigningInState()Lcom/google/common/logging/nano/Setup;
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    .line 171
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/Setup;->signingInState_:I

    .line 172
    return-object p0
.end method

.method public clearType()Lcom/google/common/logging/nano/Setup;
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/Setup;->type_:I

    .line 96
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 350
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 351
    .local v0, "size":I
    iget v1, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 352
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/logging/nano/Setup;->type_:I

    .line 353
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 355
    :cond_0
    iget v1, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 356
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/common/logging/nano/Setup;->errorCode_:I

    .line 357
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 359
    :cond_1
    iget v1, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 360
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/common/logging/nano/Setup;->previousState_:I

    .line 361
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 363
    :cond_2
    iget v1, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 364
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/common/logging/nano/Setup;->currentState_:I

    .line 365
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 367
    :cond_3
    iget v1, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 368
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/common/logging/nano/Setup;->signingInState_:I

    .line 369
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 371
    :cond_4
    iget v1, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 372
    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/google/common/logging/nano/Setup;->setupProgressTimestampMs_:J

    .line 373
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 375
    :cond_5
    iget v1, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 376
    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/common/logging/nano/Setup;->signingInProgressTimestampMs_:J

    .line 377
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 379
    :cond_6
    iget v1, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 380
    const/16 v1, 0x8

    iget v2, p0, Lcom/google/common/logging/nano/Setup;->networkType_:I

    .line 381
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 383
    :cond_7
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 255
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 297
    :cond_0
    :goto_0
    return v1

    .line 258
    :cond_1
    instance-of v3, p1, Lcom/google/common/logging/nano/Setup;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 261
    check-cast v0, Lcom/google/common/logging/nano/Setup;

    .line 262
    .local v0, "other":Lcom/google/common/logging/nano/Setup;
    iget v3, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/Setup;->type_:I

    iget v4, v0, Lcom/google/common/logging/nano/Setup;->type_:I

    if-ne v3, v4, :cond_0

    .line 266
    iget v3, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/Setup;->errorCode_:I

    iget v4, v0, Lcom/google/common/logging/nano/Setup;->errorCode_:I

    if-ne v3, v4, :cond_0

    .line 270
    iget v3, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/Setup;->previousState_:I

    iget v4, v0, Lcom/google/common/logging/nano/Setup;->previousState_:I

    if-ne v3, v4, :cond_0

    .line 274
    iget v3, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    iget v4, v0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/Setup;->currentState_:I

    iget v4, v0, Lcom/google/common/logging/nano/Setup;->currentState_:I

    if-ne v3, v4, :cond_0

    .line 278
    iget v3, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    iget v4, v0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/Setup;->signingInState_:I

    iget v4, v0, Lcom/google/common/logging/nano/Setup;->signingInState_:I

    if-ne v3, v4, :cond_0

    .line 282
    iget v3, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    iget v4, v0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/common/logging/nano/Setup;->setupProgressTimestampMs_:J

    iget-wide v6, v0, Lcom/google/common/logging/nano/Setup;->setupProgressTimestampMs_:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 286
    iget v3, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    iget v4, v0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/common/logging/nano/Setup;->signingInProgressTimestampMs_:J

    iget-wide v6, v0, Lcom/google/common/logging/nano/Setup;->signingInProgressTimestampMs_:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 290
    iget v3, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    iget v4, v0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/Setup;->networkType_:I

    iget v4, v0, Lcom/google/common/logging/nano/Setup;->networkType_:I

    if-ne v3, v4, :cond_0

    .line 294
    iget-object v3, p0, Lcom/google/common/logging/nano/Setup;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/common/logging/nano/Setup;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 295
    :cond_2
    iget-object v3, v0, Lcom/google/common/logging/nano/Setup;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/common/logging/nano/Setup;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto/16 :goto_0

    .line 297
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Setup;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/common/logging/nano/Setup;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public getCurrentState()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/google/common/logging/nano/Setup;->currentState_:I

    return v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/google/common/logging/nano/Setup;->errorCode_:I

    return v0
.end method

.method public getNetworkType()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/google/common/logging/nano/Setup;->networkType_:I

    return v0
.end method

.method public getPreviousState()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/google/common/logging/nano/Setup;->previousState_:I

    return v0
.end method

.method public getSetupProgressTimestampMs()J
    .locals 2

    .prologue
    .line 178
    iget-wide v0, p0, Lcom/google/common/logging/nano/Setup;->setupProgressTimestampMs_:J

    return-wide v0
.end method

.method public getSigningInProgressTimestampMs()J
    .locals 2

    .prologue
    .line 197
    iget-wide v0, p0, Lcom/google/common/logging/nano/Setup;->signingInProgressTimestampMs_:J

    return-wide v0
.end method

.method public getSigningInState()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/google/common/logging/nano/Setup;->signingInState_:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/google/common/logging/nano/Setup;->type_:I

    return v0
.end method

.method public hasCurrentState()Z
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasErrorCode()Z
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNetworkType()Z
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPreviousState()Z
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSetupProgressTimestampMs()Z
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSigningInProgressTimestampMs()Z
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSigningInState()Z
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

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
    .line 91
    iget v0, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

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
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 302
    const/16 v0, 0x11

    .line 303
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 304
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/nano/Setup;->type_:I

    add-int v0, v1, v2

    .line 305
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/nano/Setup;->errorCode_:I

    add-int v0, v1, v2

    .line 306
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/nano/Setup;->previousState_:I

    add-int v0, v1, v2

    .line 307
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/nano/Setup;->currentState_:I

    add-int v0, v1, v2

    .line 308
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/nano/Setup;->signingInState_:I

    add-int v0, v1, v2

    .line 309
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/common/logging/nano/Setup;->setupProgressTimestampMs_:J

    iget-wide v4, p0, Lcom/google/common/logging/nano/Setup;->setupProgressTimestampMs_:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 310
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/common/logging/nano/Setup;->signingInProgressTimestampMs_:J

    iget-wide v4, p0, Lcom/google/common/logging/nano/Setup;->signingInProgressTimestampMs_:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 311
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/nano/Setup;->networkType_:I

    add-int v0, v1, v2

    .line 312
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/nano/Setup;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/logging/nano/Setup;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 313
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 314
    :goto_0
    add-int v0, v2, v1

    .line 315
    return v0

    .line 314
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Setup;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Setup;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 391
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v1

    .line 392
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 396
    invoke-super {p0, p1, v1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 397
    :sswitch_0
    return-object p0

    .line 402
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 403
    .local v0, "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 404
    .local v2, "value":I
    packed-switch v2, :pswitch_data_0

    .line 413
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 414
    invoke-virtual {p0, p1, v1}, Lcom/google/common/logging/nano/Setup;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 409
    :pswitch_0
    iput v2, p0, Lcom/google/common/logging/nano/Setup;->type_:I

    .line 410
    iget v3, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    goto :goto_0

    .line 420
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 421
    .restart local v0    # "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 422
    .restart local v2    # "value":I
    packed-switch v2, :pswitch_data_1

    .line 433
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 434
    invoke-virtual {p0, p1, v1}, Lcom/google/common/logging/nano/Setup;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 429
    :pswitch_1
    iput v2, p0, Lcom/google/common/logging/nano/Setup;->errorCode_:I

    .line 430
    iget v3, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    goto :goto_0

    .line 440
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 441
    .restart local v0    # "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 442
    .restart local v2    # "value":I
    packed-switch v2, :pswitch_data_2

    .line 468
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 469
    invoke-virtual {p0, p1, v1}, Lcom/google/common/logging/nano/Setup;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 464
    :pswitch_2
    iput v2, p0, Lcom/google/common/logging/nano/Setup;->previousState_:I

    .line 465
    iget v3, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    goto :goto_0

    .line 475
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 476
    .restart local v0    # "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 477
    .restart local v2    # "value":I
    packed-switch v2, :pswitch_data_3

    .line 503
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 504
    invoke-virtual {p0, p1, v1}, Lcom/google/common/logging/nano/Setup;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 499
    :pswitch_3
    iput v2, p0, Lcom/google/common/logging/nano/Setup;->currentState_:I

    .line 500
    iget v3, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    goto :goto_0

    .line 510
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 511
    .restart local v0    # "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 512
    .restart local v2    # "value":I
    packed-switch v2, :pswitch_data_4

    .line 525
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 526
    invoke-virtual {p0, p1, v1}, Lcom/google/common/logging/nano/Setup;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 521
    :pswitch_4
    iput v2, p0, Lcom/google/common/logging/nano/Setup;->signingInState_:I

    .line 522
    iget v3, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    goto/16 :goto_0

    .line 532
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/common/logging/nano/Setup;->setupProgressTimestampMs_:J

    .line 533
    iget v3, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    goto/16 :goto_0

    .line 537
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/common/logging/nano/Setup;->signingInProgressTimestampMs_:J

    .line 538
    iget v3, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    goto/16 :goto_0

    .line 542
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 543
    .restart local v0    # "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 544
    .restart local v2    # "value":I
    packed-switch v2, :pswitch_data_5

    .line 556
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 557
    invoke-virtual {p0, p1, v1}, Lcom/google/common/logging/nano/Setup;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 552
    :pswitch_5
    iput v2, p0, Lcom/google/common/logging/nano/Setup;->networkType_:I

    .line 553
    iget v3, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    goto/16 :goto_0

    .line 392
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
    .end sparse-switch

    .line 404
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 422
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 442
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 477
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 512
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 544
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
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
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Setup;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Setup;

    move-result-object v0

    return-object v0
.end method

.method public setCurrentState(I)Lcom/google/common/logging/nano/Setup;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 143
    iput p1, p0, Lcom/google/common/logging/nano/Setup;->currentState_:I

    .line 144
    iget v0, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    .line 145
    return-object p0
.end method

.method public setErrorCode(I)Lcom/google/common/logging/nano/Setup;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/google/common/logging/nano/Setup;->errorCode_:I

    .line 106
    iget v0, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    .line 107
    return-object p0
.end method

.method public setNetworkType(I)Lcom/google/common/logging/nano/Setup;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 219
    iput p1, p0, Lcom/google/common/logging/nano/Setup;->networkType_:I

    .line 220
    iget v0, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    .line 221
    return-object p0
.end method

.method public setPreviousState(I)Lcom/google/common/logging/nano/Setup;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 124
    iput p1, p0, Lcom/google/common/logging/nano/Setup;->previousState_:I

    .line 125
    iget v0, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    .line 126
    return-object p0
.end method

.method public setSetupProgressTimestampMs(J)Lcom/google/common/logging/nano/Setup;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 189
    iput-wide p1, p0, Lcom/google/common/logging/nano/Setup;->setupProgressTimestampMs_:J

    .line 190
    iget v0, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    .line 191
    return-object p0
.end method

.method public setSigningInProgressTimestampMs(J)Lcom/google/common/logging/nano/Setup;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 208
    iput-wide p1, p0, Lcom/google/common/logging/nano/Setup;->signingInProgressTimestampMs_:J

    .line 209
    iget v0, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    .line 210
    return-object p0
.end method

.method public setSigningInState(I)Lcom/google/common/logging/nano/Setup;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 162
    iput p1, p0, Lcom/google/common/logging/nano/Setup;->signingInState_:I

    .line 163
    iget v0, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    .line 164
    return-object p0
.end method

.method public setType(I)Lcom/google/common/logging/nano/Setup;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/google/common/logging/nano/Setup;->type_:I

    .line 87
    iget v0, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    .line 88
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 321
    iget v0, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 322
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/common/logging/nano/Setup;->type_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 324
    :cond_0
    iget v0, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 325
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/common/logging/nano/Setup;->errorCode_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 327
    :cond_1
    iget v0, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 328
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/common/logging/nano/Setup;->previousState_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 330
    :cond_2
    iget v0, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 331
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/common/logging/nano/Setup;->currentState_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 333
    :cond_3
    iget v0, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 334
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/common/logging/nano/Setup;->signingInState_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 336
    :cond_4
    iget v0, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 337
    const/4 v0, 0x6

    iget-wide v2, p0, Lcom/google/common/logging/nano/Setup;->setupProgressTimestampMs_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 339
    :cond_5
    iget v0, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 340
    const/4 v0, 0x7

    iget-wide v2, p0, Lcom/google/common/logging/nano/Setup;->signingInProgressTimestampMs_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 342
    :cond_6
    iget v0, p0, Lcom/google/common/logging/nano/Setup;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 343
    const/16 v0, 0x8

    iget v1, p0, Lcom/google/common/logging/nano/Setup;->networkType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 345
    :cond_7
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 346
    return-void
.end method
