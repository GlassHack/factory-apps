.class public final Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyRequest;
.super Lcom/google/protobuf/nano/MessageNano;
.source "SetupNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/SetupNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetupSharedKeyRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyRequest$RequestSource;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyRequest;


# instance fields
.field private bitField0_:I

.field private requestSource_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 452
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyRequest;

    sput-object v0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyRequest;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 453
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 464
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyRequest;->requestSource_:I

    .line 453
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 553
    new-instance v0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 547
    new-instance v0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyRequest;

    return-object v0
.end method


# virtual methods
.method public clearRequestSource()Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyRequest;
    .locals 1

    .prologue
    .line 477
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyRequest;->requestSource_:I

    .line 478
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyRequest;->bitField0_:I

    .line 479
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 484
    if-ne p1, p0, :cond_1

    .line 487
    :cond_0
    :goto_0
    return v1

    .line 485
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyRequest;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 486
    check-cast v0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyRequest;

    .line 487
    .local v0, "other":Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyRequest;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyRequest;->requestSource_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyRequest;->requestSource_:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getRequestSource()I
    .locals 1

    .prologue
    .line 466
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyRequest;->requestSource_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 505
    const/4 v0, 0x0

    .line 506
    .local v0, "size":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 507
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyRequest;->requestSource_:I

    .line 508
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 510
    :cond_0
    iput v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyRequest;->cachedSize:I

    .line 511
    return v0
.end method

.method public hasRequestSource()Z
    .locals 1

    .prologue
    .line 474
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyRequest;->bitField0_:I

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
    .line 491
    const/16 v0, 0x11

    .line 492
    .local v0, "result":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyRequest;->requestSource_:I

    add-int/lit16 v0, v1, 0x20f

    .line 493
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyRequest;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 519
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 520
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 524
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 525
    :sswitch_0
    return-object p0

    .line 530
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 531
    .local v1, "temp":I
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 534
    :cond_1
    iput v1, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyRequest;->requestSource_:I

    .line 535
    iget v2, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyRequest;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyRequest;->bitField0_:I

    goto :goto_0

    .line 537
    :cond_2
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyRequest;->requestSource_:I

    goto :goto_0

    .line 520
    nop

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
    .line 449
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyRequest;

    move-result-object v0

    return-object v0
.end method

.method public setRequestSource(I)Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyRequest;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 469
    iput p1, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyRequest;->requestSource_:I

    .line 470
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyRequest;->bitField0_:I

    .line 471
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
    .line 498
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 499
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyRequest;->requestSource_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 501
    :cond_0
    return-void
.end method
