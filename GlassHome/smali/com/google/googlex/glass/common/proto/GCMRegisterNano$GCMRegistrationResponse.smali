.class public final Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse;
.super Lcom/google/protobuf/nano/MessageNano;
.source "GCMRegisterNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/GCMRegisterNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GCMRegistrationResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse$ResponseCode;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse;


# instance fields
.field private bitField0_:I

.field private responseCode_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 400
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse;

    sput-object v0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 401
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 413
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse;->responseCode_:I

    .line 401
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 503
    new-instance v0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 497
    new-instance v0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse;

    return-object v0
.end method


# virtual methods
.method public clearResponseCode()Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse;
    .locals 1

    .prologue
    .line 426
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse;->responseCode_:I

    .line 427
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse;->bitField0_:I

    .line 428
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 433
    if-ne p1, p0, :cond_1

    .line 436
    :cond_0
    :goto_0
    return v1

    .line 434
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 435
    check-cast v0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse;

    .line 436
    .local v0, "other":Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse;->responseCode_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse;->responseCode_:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getResponseCode()I
    .locals 1

    .prologue
    .line 415
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse;->responseCode_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 454
    const/4 v0, 0x0

    .line 455
    .local v0, "size":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 456
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse;->responseCode_:I

    .line 457
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 459
    :cond_0
    iput v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse;->cachedSize:I

    .line 460
    return v0
.end method

.method public hasResponseCode()Z
    .locals 1

    .prologue
    .line 423
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse;->bitField0_:I

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
    .locals 2

    .prologue
    .line 440
    const/16 v0, 0x11

    .line 441
    .local v0, "result":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse;->responseCode_:I

    add-int/lit16 v0, v1, 0x20f

    .line 442
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 468
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 469
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 473
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 474
    :sswitch_0
    return-object p0

    .line 479
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 480
    .local v1, "temp":I
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 484
    :cond_1
    iput v1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse;->responseCode_:I

    .line 485
    iget v2, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse;->bitField0_:I

    goto :goto_0

    .line 487
    :cond_2
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse;->responseCode_:I

    goto :goto_0

    .line 469
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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
    .line 397
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse;

    move-result-object v0

    return-object v0
.end method

.method public setResponseCode(I)Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 418
    iput p1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse;->responseCode_:I

    .line 419
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse;->bitField0_:I

    .line 420
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
    .line 447
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 448
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse;->responseCode_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 450
    :cond_0
    return-void
.end method
