.class public final Lcom/google/glass/companion/Proto$UpdateCredentialRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateCredentialRequest"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$UpdateCredentialRequest;


# instance fields
.field private accountName_:Ljava/lang/String;

.field private accountType_:Ljava/lang/String;

.field private bitField0_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7479
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

    sput-object v0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7480
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 7485
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->accountName_:Ljava/lang/String;

    .line 7507
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->accountType_:Ljava/lang/String;

    .line 7480
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$UpdateCredentialRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7616
    new-instance v0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$UpdateCredentialRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 7610
    new-instance v0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

    return-object v0
.end method


# virtual methods
.method public clearAccountName()Lcom/google/glass/companion/Proto$UpdateCredentialRequest;
    .locals 1

    .prologue
    .line 7501
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->accountName_:Ljava/lang/String;

    .line 7502
    iget v0, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->bitField0_:I

    .line 7503
    return-object p0
.end method

.method public clearAccountType()Lcom/google/glass/companion/Proto$UpdateCredentialRequest;
    .locals 1

    .prologue
    .line 7523
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->accountType_:Ljava/lang/String;

    .line 7524
    iget v0, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->bitField0_:I

    .line 7525
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 7530
    if-ne p1, p0, :cond_1

    .line 7535
    :cond_0
    :goto_0
    return v1

    .line 7531
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 7532
    check-cast v0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

    .line 7533
    .local v0, "other":Lcom/google/glass/companion/Proto$UpdateCredentialRequest;
    iget-object v3, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->accountName_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->accountName_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->accountType_:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->accountType_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 7534
    :goto_2
    iget-object v3, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 7535
    goto :goto_0

    .line 7533
    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->accountName_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->accountName_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->accountType_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->accountType_:Ljava/lang/String;

    .line 7534
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->unknownFieldData:Ljava/util/List;

    .line 7535
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7487
    iget-object v0, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->accountName_:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7509
    iget-object v0, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->accountType_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 7560
    const/4 v0, 0x0

    .line 7561
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 7562
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->accountName_:Ljava/lang/String;

    .line 7563
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7565
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 7566
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->accountType_:Ljava/lang/String;

    .line 7567
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7569
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7570
    iput v0, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->cachedSize:I

    .line 7571
    return v0
.end method

.method public hasAccountName()Z
    .locals 1

    .prologue
    .line 7498
    iget v0, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAccountType()Z
    .locals 1

    .prologue
    .line 7520
    iget v0, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

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

    .line 7539
    const/16 v0, 0x11

    .line 7540
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->accountName_:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 7541
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->accountType_:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 7542
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_2

    :goto_2
    add-int v0, v1, v2

    .line 7543
    return v0

    .line 7540
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->accountName_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 7541
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->accountType_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    .line 7542
    :cond_2
    iget-object v2, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$UpdateCredentialRequest;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7579
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 7580
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 7584
    iget-object v1, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 7585
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->unknownFieldData:Ljava/util/List;

    .line 7588
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7590
    :sswitch_0
    return-object p0

    .line 7595
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->accountName_:Ljava/lang/String;

    .line 7596
    iget v1, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->bitField0_:I

    goto :goto_0

    .line 7600
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->accountType_:Ljava/lang/String;

    .line 7601
    iget v1, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->bitField0_:I

    goto :goto_0

    .line 7580
    nop

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
    .line 7476
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

    move-result-object v0

    return-object v0
.end method

.method public setAccountName(Ljava/lang/String;)Lcom/google/glass/companion/Proto$UpdateCredentialRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7490
    if-nez p1, :cond_0

    .line 7491
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7493
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->accountName_:Ljava/lang/String;

    .line 7494
    iget v0, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->bitField0_:I

    .line 7495
    return-object p0
.end method

.method public setAccountType(Ljava/lang/String;)Lcom/google/glass/companion/Proto$UpdateCredentialRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7512
    if-nez p1, :cond_0

    .line 7513
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7515
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->accountType_:Ljava/lang/String;

    .line 7516
    iget v0, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->bitField0_:I

    .line 7517
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
    .line 7548
    iget v0, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7549
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->accountName_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7551
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 7552
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->accountType_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7554
    :cond_1
    iget-object v0, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 7556
    return-void
.end method
