.class public final Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;
.super Lcom/google/protobuf/nano/MessageNano;
.source "GCMRegisterNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/GCMRegisterNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GCMRegistration"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;


# instance fields
.field private bitField0_:I

.field private deviceId_:Ljava/lang/String;

.field private id_:Ljava/lang/String;

.field private registrationTime_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 511
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;

    sput-object v0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 512
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 517
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->id_:Ljava/lang/String;

    .line 539
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->registrationTime_:J

    .line 558
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->deviceId_:Ljava/lang/String;

    .line 512
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 671
    new-instance v0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 665
    new-instance v0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;

    return-object v0
.end method


# virtual methods
.method public clearDeviceId()Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;
    .locals 1

    .prologue
    .line 574
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->deviceId_:Ljava/lang/String;

    .line 575
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->bitField0_:I

    .line 576
    return-object p0
.end method

.method public clearId()Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;
    .locals 1

    .prologue
    .line 533
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->id_:Ljava/lang/String;

    .line 534
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->bitField0_:I

    .line 535
    return-object p0
.end method

.method public clearRegistrationTime()Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;
    .locals 2

    .prologue
    .line 552
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->registrationTime_:J

    .line 553
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->bitField0_:I

    .line 554
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 581
    if-ne p1, p0, :cond_1

    .line 586
    :cond_0
    :goto_0
    return v1

    .line 582
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 583
    check-cast v0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;

    .line 584
    .local v0, "other":Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->id_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->id_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->registrationTime_:J

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->registrationTime_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->deviceId_:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->deviceId_:Ljava/lang/String;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 586
    goto :goto_0

    .line 584
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->id_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->id_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->deviceId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->deviceId_:Ljava/lang/String;

    .line 586
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->deviceId_:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getRegistrationTime()J
    .locals 2

    .prologue
    .line 541
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->registrationTime_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 612
    const/4 v0, 0x0

    .line 613
    .local v0, "size":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 614
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->id_:Ljava/lang/String;

    .line 615
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 617
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 618
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->registrationTime_:J

    .line 619
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 621
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 622
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->deviceId_:Ljava/lang/String;

    .line 623
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 625
    :cond_2
    iput v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->cachedSize:I

    .line 626
    return v0
.end method

.method public hasDeviceId()Z
    .locals 1

    .prologue
    .line 571
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 530
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRegistrationTime()Z
    .locals 1

    .prologue
    .line 549
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->bitField0_:I

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
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 590
    const/16 v0, 0x11

    .line 591
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->id_:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 592
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->registrationTime_:J

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->registrationTime_:J

    const/16 v7, 0x20

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v1, v3

    .line 593
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->deviceId_:Ljava/lang/String;

    if-nez v3, :cond_1

    :goto_1
    add-int v0, v1, v2

    .line 594
    return v0

    .line 591
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->id_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 593
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->deviceId_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 634
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 635
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 639
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 640
    :sswitch_0
    return-object p0

    .line 645
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->id_:Ljava/lang/String;

    .line 646
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->bitField0_:I

    goto :goto_0

    .line 650
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->registrationTime_:J

    .line 651
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->bitField0_:I

    goto :goto_0

    .line 655
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->deviceId_:Ljava/lang/String;

    .line 656
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->bitField0_:I

    goto :goto_0

    .line 635
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 508
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;

    move-result-object v0

    return-object v0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 563
    if-nez p1, :cond_0

    .line 564
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 566
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->deviceId_:Ljava/lang/String;

    .line 567
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->bitField0_:I

    .line 568
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 522
    if-nez p1, :cond_0

    .line 523
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 525
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->id_:Ljava/lang/String;

    .line 526
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->bitField0_:I

    .line 527
    return-object p0
.end method

.method public setRegistrationTime(J)Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 544
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->registrationTime_:J

    .line 545
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->bitField0_:I

    .line 546
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
    .line 599
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 600
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->id_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 602
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 603
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->registrationTime_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 605
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 606
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistration;->deviceId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 608
    :cond_2
    return-void
.end method
