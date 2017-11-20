.class public final Lcom/google/glass/companion/Proto$NavigationRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$NavigationRequest;


# instance fields
.field private bitField0_:I

.field private uri_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3518
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$NavigationRequest;

    sput-object v0, Lcom/google/glass/companion/Proto$NavigationRequest;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$NavigationRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3519
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3524
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->uri_:Ljava/lang/String;

    .line 3519
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$NavigationRequest;
    .locals 1

    .prologue
    .line 3619
    new-instance v0, Lcom/google/glass/companion/Proto$NavigationRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$NavigationRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$NavigationRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$NavigationRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$NavigationRequest;
    .locals 1

    .prologue
    .line 3613
    new-instance v0, Lcom/google/glass/companion/Proto$NavigationRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$NavigationRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$NavigationRequest;

    return-object v0
.end method


# virtual methods
.method public final clearUri()Lcom/google/glass/companion/Proto$NavigationRequest;
    .locals 1

    .prologue
    .line 3540
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->uri_:Ljava/lang/String;

    .line 3541
    iget v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->bitField0_:I

    .line 3542
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3547
    if-ne p1, p0, :cond_1

    .line 3551
    :cond_0
    :goto_0
    return v0

    .line 3548
    :cond_1
    instance-of v2, p1, Lcom/google/glass/companion/Proto$NavigationRequest;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 3549
    :cond_2
    check-cast p1, Lcom/google/glass/companion/Proto$NavigationRequest;

    .line 3550
    iget-object v2, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->uri_:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/glass/companion/Proto$NavigationRequest;->uri_:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_1
    iget-object v2, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/glass/companion/Proto$NavigationRequest;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 3551
    goto :goto_0

    .line 3550
    :cond_4
    iget-object v2, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->uri_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$NavigationRequest;->uri_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$NavigationRequest;->unknownFieldData:Ljava/util/List;

    .line 3551
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 3572
    const/4 v0, 0x0

    .line 3573
    iget v1, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 3574
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->uri_:Ljava/lang/String;

    .line 3575
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3577
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3578
    iput v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->cachedSize:I

    .line 3579
    return v0
.end method

.method public final getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3526
    iget-object v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->uri_:Ljava/lang/String;

    return-object v0
.end method

.method public final hasUri()Z
    .locals 1

    .prologue
    .line 3537
    iget v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3555
    .line 3556
    iget-object v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->uri_:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 3557
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 3558
    return v0

    .line 3556
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->uri_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 3557
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$NavigationRequest;
    .locals 2

    .prologue
    .line 3587
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3588
    sparse-switch v0, :sswitch_data_0

    .line 3592
    iget-object v1, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 3593
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->unknownFieldData:Ljava/util/List;

    .line 3596
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3598
    :sswitch_0
    return-object p0

    .line 3603
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->uri_:Ljava/lang/String;

    .line 3604
    iget v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->bitField0_:I

    goto :goto_0

    .line 3588
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 3515
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$NavigationRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$NavigationRequest;

    move-result-object v0

    return-object v0
.end method

.method public final setUri(Ljava/lang/String;)Lcom/google/glass/companion/Proto$NavigationRequest;
    .locals 1

    .prologue
    .line 3529
    if-nez p1, :cond_0

    .line 3530
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3532
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->uri_:Ljava/lang/String;

    .line 3533
    iget v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->bitField0_:I

    .line 3534
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 3563
    iget v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3564
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->uri_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3566
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 3568
    return-void
.end method
