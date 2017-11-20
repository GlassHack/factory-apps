.class public final Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyResponse;
.super Lcom/google/protobuf/nano/MessageNano;
.source "SetupNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/SetupNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetupSharedKeyResponse"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyResponse;


# instance fields
.field private bitField0_:I

.field private key_:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 561
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyResponse;

    sput-object v0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyResponse;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 562
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 567
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyResponse;->key_:[B

    .line 562
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 657
    new-instance v0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 651
    new-instance v0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyResponse;

    return-object v0
.end method


# virtual methods
.method public clearKey()Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyResponse;
    .locals 1

    .prologue
    .line 583
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyResponse;->key_:[B

    .line 584
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyResponse;->bitField0_:I

    .line 585
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 590
    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    .line 593
    :goto_0
    return v1

    .line 591
    :cond_0
    instance-of v1, p1, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyResponse;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 592
    check-cast v0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyResponse;

    .line 593
    .local v0, "other":Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyResponse;
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyResponse;->key_:[B

    iget-object v2, v0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyResponse;->key_:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    goto :goto_0
.end method

.method public getKey()[B
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyResponse;->key_:[B

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 616
    const/4 v0, 0x0

    .line 617
    .local v0, "size":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 618
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyResponse;->key_:[B

    .line 619
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 621
    :cond_0
    iput v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyResponse;->cachedSize:I

    .line 622
    return v0
.end method

.method public hasKey()Z
    .locals 1

    .prologue
    .line 580
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyResponse;->bitField0_:I

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
    .line 597
    const/16 v1, 0x11

    .line 598
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyResponse;->key_:[B

    if-nez v2, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 604
    :cond_0
    return v1

    .line 600
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyResponse;->key_:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 601
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyResponse;->key_:[B

    aget-byte v3, v3, v0

    add-int v1, v2, v3

    .line 600
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyResponse;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 630
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 631
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 635
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 636
    :sswitch_0
    return-object p0

    .line 641
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyResponse;->key_:[B

    .line 642
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyResponse;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyResponse;->bitField0_:I

    goto :goto_0

    .line 631
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
    .line 558
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyResponse;

    move-result-object v0

    return-object v0
.end method

.method public setKey([B)Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyResponse;
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 572
    if-nez p1, :cond_0

    .line 573
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 575
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyResponse;->key_:[B

    .line 576
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyResponse;->bitField0_:I

    .line 577
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
    .line 609
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 610
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyResponse;->key_:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 612
    :cond_0
    return-void
.end method
