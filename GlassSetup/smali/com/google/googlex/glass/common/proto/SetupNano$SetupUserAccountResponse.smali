.class public final Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;
.super Lcom/google/protobuf/nano/MessageNano;
.source "SetupNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/SetupNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetupUserAccountResponse"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;


# instance fields
.field private bitField0_:I

.field private displayName_:Ljava/lang/String;

.field private lockCode_:J

.field private photoUrl_:Ljava/lang/String;

.field private useGoogleVoiceSms_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;

    sput-object v0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 257
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->displayName_:Ljava/lang/String;

    .line 279
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->photoUrl_:Ljava/lang/String;

    .line 301
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->useGoogleVoiceSms_:Z

    .line 320
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->lockCode_:J

    .line 252
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 444
    new-instance v0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 438
    new-instance v0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;

    return-object v0
.end method


# virtual methods
.method public clearDisplayName()Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;
    .locals 1

    .prologue
    .line 273
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->displayName_:Ljava/lang/String;

    .line 274
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->bitField0_:I

    .line 275
    return-object p0
.end method

.method public clearLockCode()Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;
    .locals 2

    .prologue
    .line 333
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->lockCode_:J

    .line 334
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->bitField0_:I

    .line 335
    return-object p0
.end method

.method public clearPhotoUrl()Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;
    .locals 1

    .prologue
    .line 295
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->photoUrl_:Ljava/lang/String;

    .line 296
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->bitField0_:I

    .line 297
    return-object p0
.end method

.method public clearUseGoogleVoiceSms()Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->useGoogleVoiceSms_:Z

    .line 315
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->bitField0_:I

    .line 316
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 340
    if-ne p1, p0, :cond_1

    .line 344
    :cond_0
    :goto_0
    return v1

    .line 341
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 342
    check-cast v0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;

    .line 343
    .local v0, "other":Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->displayName_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->displayName_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->photoUrl_:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->photoUrl_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 344
    :goto_2
    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->useGoogleVoiceSms_:Z

    iget-boolean v4, v0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->useGoogleVoiceSms_:Z

    if-ne v3, v4, :cond_3

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->lockCode_:J

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->lockCode_:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 343
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->displayName_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->displayName_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->photoUrl_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->photoUrl_:Ljava/lang/String;

    .line 344
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->displayName_:Ljava/lang/String;

    return-object v0
.end method

.method public getLockCode()J
    .locals 2

    .prologue
    .line 322
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->lockCode_:J

    return-wide v0
.end method

.method public getPhotoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->photoUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 376
    const/4 v0, 0x0

    .line 377
    .local v0, "size":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 378
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->displayName_:Ljava/lang/String;

    .line 379
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 381
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 382
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->photoUrl_:Ljava/lang/String;

    .line 383
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 385
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 386
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->useGoogleVoiceSms_:Z

    .line 387
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 389
    :cond_2
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 390
    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->lockCode_:J

    .line 391
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 393
    :cond_3
    iput v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->cachedSize:I

    .line 394
    return v0
.end method

.method public getUseGoogleVoiceSms()Z
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->useGoogleVoiceSms_:Z

    return v0
.end method

.method public hasDisplayName()Z
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLockCode()Z
    .locals 1

    .prologue
    .line 330
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPhotoUrl()Z
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUseGoogleVoiceSms()Z
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

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
    const/4 v2, 0x0

    .line 350
    const/16 v0, 0x11

    .line 351
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->displayName_:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 352
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->photoUrl_:Ljava/lang/String;

    if-nez v3, :cond_1

    :goto_1
    add-int v0, v1, v2

    .line 353
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->useGoogleVoiceSms_:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_2
    add-int v0, v2, v1

    .line 354
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->lockCode_:J

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->lockCode_:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 355
    return v0

    .line 351
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->displayName_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 352
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->photoUrl_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 353
    :cond_2
    const/4 v1, 0x2

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 402
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 403
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 407
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 408
    :sswitch_0
    return-object p0

    .line 413
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->displayName_:Ljava/lang/String;

    .line 414
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->bitField0_:I

    goto :goto_0

    .line 418
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->photoUrl_:Ljava/lang/String;

    .line 419
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->bitField0_:I

    goto :goto_0

    .line 423
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->useGoogleVoiceSms_:Z

    .line 424
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->bitField0_:I

    goto :goto_0

    .line 428
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->lockCode_:J

    .line 429
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->bitField0_:I

    goto :goto_0

    .line 403
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
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
    .line 248
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 262
    if-nez p1, :cond_0

    .line 263
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 265
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->displayName_:Ljava/lang/String;

    .line 266
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->bitField0_:I

    .line 267
    return-object p0
.end method

.method public setLockCode(J)Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 325
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->lockCode_:J

    .line 326
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->bitField0_:I

    .line 327
    return-object p0
.end method

.method public setPhotoUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 284
    if-nez p1, :cond_0

    .line 285
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 287
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->photoUrl_:Ljava/lang/String;

    .line 288
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->bitField0_:I

    .line 289
    return-object p0
.end method

.method public setUseGoogleVoiceSms(Z)Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 306
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->useGoogleVoiceSms_:Z

    .line 307
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->bitField0_:I

    .line 308
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 360
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 361
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->displayName_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 363
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 364
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->photoUrl_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 366
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 367
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->useGoogleVoiceSms_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 369
    :cond_2
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 370
    const/4 v0, 0x4

    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->lockCode_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 372
    :cond_3
    return-void
.end method
