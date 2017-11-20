.class public final Lcom/google/glass/companion/Proto$Notification$NotificationId;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto$Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NotificationId"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$Notification$NotificationId;


# instance fields
.field private bitField0_:I

.field private notificationKey_:J

.field private notificationTag_:Ljava/lang/String;

.field private packageName_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9451
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$Notification$NotificationId;

    sput-object v0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$Notification$NotificationId;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9452
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 9457
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->packageName_:Ljava/lang/String;

    .line 9479
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->notificationKey_:J

    .line 9498
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->notificationTag_:Ljava/lang/String;

    .line 9452
    return-void
.end method


# virtual methods
.method public clearNotificationKey()Lcom/google/glass/companion/Proto$Notification$NotificationId;
    .locals 2

    .prologue
    .line 9492
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->notificationKey_:J

    .line 9493
    iget v0, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->bitField0_:I

    .line 9494
    return-object p0
.end method

.method public clearNotificationTag()Lcom/google/glass/companion/Proto$Notification$NotificationId;
    .locals 1

    .prologue
    .line 9514
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->notificationTag_:Ljava/lang/String;

    .line 9515
    iget v0, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->bitField0_:I

    .line 9516
    return-object p0
.end method

.method public clearPackageName()Lcom/google/glass/companion/Proto$Notification$NotificationId;
    .locals 1

    .prologue
    .line 9473
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->packageName_:Ljava/lang/String;

    .line 9474
    iget v0, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->bitField0_:I

    .line 9475
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 9521
    if-ne p1, p0, :cond_1

    .line 9527
    :cond_0
    :goto_0
    return v1

    .line 9522
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$Notification$NotificationId;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 9523
    check-cast v0, Lcom/google/glass/companion/Proto$Notification$NotificationId;

    .line 9524
    .local v0, "other":Lcom/google/glass/companion/Proto$Notification$NotificationId;
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->packageName_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->packageName_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-wide v3, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->notificationKey_:J

    iget-wide v5, v0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->notificationKey_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->notificationTag_:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->notificationTag_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 9526
    :goto_2
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 9527
    goto :goto_0

    .line 9524
    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->packageName_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->packageName_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->notificationTag_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->notificationTag_:Ljava/lang/String;

    .line 9526
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->unknownFieldData:Ljava/util/List;

    .line 9527
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getNotificationKey()J
    .locals 2

    .prologue
    .line 9481
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->notificationKey_:J

    return-wide v0
.end method

.method public getNotificationTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9500
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->notificationTag_:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9459
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->packageName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 9556
    const/4 v0, 0x0

    .line 9557
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 9558
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->packageName_:Ljava/lang/String;

    .line 9559
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9561
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 9562
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->notificationKey_:J

    .line 9563
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 9565
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 9566
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->notificationTag_:Ljava/lang/String;

    .line 9567
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9569
    :cond_2
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9570
    iput v0, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->cachedSize:I

    .line 9571
    return v0
.end method

.method public hasNotificationKey()Z
    .locals 1

    .prologue
    .line 9489
    iget v0, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNotificationTag()Z
    .locals 1

    .prologue
    .line 9511
    iget v0, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPackageName()Z
    .locals 1

    .prologue
    .line 9470
    iget v0, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->bitField0_:I

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
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 9531
    const/16 v0, 0x11

    .line 9532
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->packageName_:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 9533
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v3, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->notificationKey_:J

    iget-wide v5, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->notificationKey_:J

    const/16 v7, 0x20

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v1, v3

    .line 9534
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->notificationTag_:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 9535
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_2

    :goto_2
    add-int v0, v1, v2

    .line 9536
    return v0

    .line 9532
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->packageName_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 9534
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->notificationTag_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    .line 9535
    :cond_2
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Notification$NotificationId;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9579
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 9580
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 9584
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 9585
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->unknownFieldData:Ljava/util/List;

    .line 9588
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9590
    :sswitch_0
    return-object p0

    .line 9595
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->packageName_:Ljava/lang/String;

    .line 9596
    iget v1, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->bitField0_:I

    goto :goto_0

    .line 9600
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->notificationKey_:J

    .line 9601
    iget v1, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->bitField0_:I

    goto :goto_0

    .line 9605
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->notificationTag_:Ljava/lang/String;

    .line 9606
    iget v1, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->bitField0_:I

    goto :goto_0

    .line 9580
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
    .line 9448
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$Notification$NotificationId;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Notification$NotificationId;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Notification$NotificationId;
    .locals 1
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9621
    new-instance v0, Lcom/google/glass/companion/Proto$Notification$NotificationId;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Notification$NotificationId;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/glass/companion/Proto$Notification$NotificationId;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Notification$NotificationId;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([B)Lcom/google/glass/companion/Proto$Notification$NotificationId;
    .locals 1
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 9615
    new-instance v0, Lcom/google/glass/companion/Proto$Notification$NotificationId;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Notification$NotificationId;-><init>()V

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Notification$NotificationId;

    return-object v0
.end method

.method public setNotificationKey(J)Lcom/google/glass/companion/Proto$Notification$NotificationId;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 9484
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->notificationKey_:J

    .line 9485
    iget v0, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->bitField0_:I

    .line 9486
    return-object p0
.end method

.method public setNotificationTag(Ljava/lang/String;)Lcom/google/glass/companion/Proto$Notification$NotificationId;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 9503
    if-nez p1, :cond_0

    .line 9504
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9506
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->notificationTag_:Ljava/lang/String;

    .line 9507
    iget v0, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->bitField0_:I

    .line 9508
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/google/glass/companion/Proto$Notification$NotificationId;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 9462
    if-nez p1, :cond_0

    .line 9463
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9465
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->packageName_:Ljava/lang/String;

    .line 9466
    iget v0, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->bitField0_:I

    .line 9467
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
    .line 9541
    iget v0, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 9542
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->packageName_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9544
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 9545
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->notificationKey_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 9547
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 9548
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->notificationTag_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9550
    :cond_2
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Notification$NotificationId;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 9552
    return-void
.end method
