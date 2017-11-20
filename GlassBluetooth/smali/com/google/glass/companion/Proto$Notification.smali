.class public final Lcom/google/glass/companion/Proto$Notification;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Notification"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/Proto$Notification$NotificationId;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$Notification;


# instance fields
.field private bitField0_:I

.field private dismiss_:Z

.field public notificationId:Lcom/google/glass/companion/Proto$Notification$NotificationId;

.field private packageIcon_:[B

.field private text_:Ljava/lang/String;

.field private title_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9445
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$Notification;

    sput-object v0, Lcom/google/glass/companion/Proto$Notification;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$Notification;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9446
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 9629
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Notification;->notificationId:Lcom/google/glass/companion/Proto$Notification$NotificationId;

    .line 9632
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Notification;->title_:Ljava/lang/String;

    .line 9654
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Notification;->text_:Ljava/lang/String;

    .line 9676
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Notification;->packageIcon_:[B

    .line 9698
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$Notification;->dismiss_:Z

    .line 9446
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Notification;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9853
    new-instance v0, Lcom/google/glass/companion/Proto$Notification;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Notification;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$Notification;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Notification;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$Notification;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 9847
    new-instance v0, Lcom/google/glass/companion/Proto$Notification;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Notification;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Notification;

    return-object v0
.end method


# virtual methods
.method public clearDismiss()Lcom/google/glass/companion/Proto$Notification;
    .locals 1

    .prologue
    .line 9711
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$Notification;->dismiss_:Z

    .line 9712
    iget v0, p0, Lcom/google/glass/companion/Proto$Notification;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$Notification;->bitField0_:I

    .line 9713
    return-object p0
.end method

.method public clearPackageIcon()Lcom/google/glass/companion/Proto$Notification;
    .locals 1

    .prologue
    .line 9692
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Notification;->packageIcon_:[B

    .line 9693
    iget v0, p0, Lcom/google/glass/companion/Proto$Notification;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$Notification;->bitField0_:I

    .line 9694
    return-object p0
.end method

.method public clearText()Lcom/google/glass/companion/Proto$Notification;
    .locals 1

    .prologue
    .line 9670
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Notification;->text_:Ljava/lang/String;

    .line 9671
    iget v0, p0, Lcom/google/glass/companion/Proto$Notification;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$Notification;->bitField0_:I

    .line 9672
    return-object p0
.end method

.method public clearTitle()Lcom/google/glass/companion/Proto$Notification;
    .locals 1

    .prologue
    .line 9648
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Notification;->title_:Ljava/lang/String;

    .line 9649
    iget v0, p0, Lcom/google/glass/companion/Proto$Notification;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$Notification;->bitField0_:I

    .line 9650
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 9718
    if-ne p1, p0, :cond_1

    .line 9726
    :cond_0
    :goto_0
    return v1

    .line 9719
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$Notification;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 9720
    check-cast v0, Lcom/google/glass/companion/Proto$Notification;

    .line 9721
    .local v0, "other":Lcom/google/glass/companion/Proto$Notification;
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Notification;->notificationId:Lcom/google/glass/companion/Proto$Notification$NotificationId;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Notification;->notificationId:Lcom/google/glass/companion/Proto$Notification$NotificationId;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Notification;->title_:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Notification;->title_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 9722
    :goto_2
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Notification;->text_:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Notification;->text_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 9723
    :goto_3
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Notification;->packageIcon_:[B

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Notification;->packageIcon_:[B

    .line 9724
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$Notification;->dismiss_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/Proto$Notification;->dismiss_:Z

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Notification;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Notification;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 9726
    goto :goto_0

    .line 9721
    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Notification;->notificationId:Lcom/google/glass/companion/Proto$Notification$NotificationId;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Notification;->notificationId:Lcom/google/glass/companion/Proto$Notification$NotificationId;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$Notification$NotificationId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Notification;->title_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Notification;->title_:Ljava/lang/String;

    .line 9722
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Notification;->text_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Notification;->text_:Ljava/lang/String;

    .line 9723
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    .line 9724
    :cond_7
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Notification;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Notification;->unknownFieldData:Ljava/util/List;

    .line 9726
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getDismiss()Z
    .locals 1

    .prologue
    .line 9700
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$Notification;->dismiss_:Z

    return v0
.end method

.method public getPackageIcon()[B
    .locals 1

    .prologue
    .line 9678
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Notification;->packageIcon_:[B

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 9768
    const/4 v0, 0x0

    .line 9769
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Notification;->notificationId:Lcom/google/glass/companion/Proto$Notification$NotificationId;

    if-eqz v1, :cond_0

    .line 9770
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Notification;->notificationId:Lcom/google/glass/companion/Proto$Notification$NotificationId;

    .line 9771
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9773
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$Notification;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 9774
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Notification;->title_:Ljava/lang/String;

    .line 9775
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9777
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/Proto$Notification;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 9778
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Notification;->text_:Ljava/lang/String;

    .line 9779
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9781
    :cond_2
    iget v1, p0, Lcom/google/glass/companion/Proto$Notification;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 9782
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Notification;->packageIcon_:[B

    .line 9783
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 9785
    :cond_3
    iget v1, p0, Lcom/google/glass/companion/Proto$Notification;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    .line 9786
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$Notification;->dismiss_:Z

    .line 9787
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 9789
    :cond_4
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Notification;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9790
    iput v0, p0, Lcom/google/glass/companion/Proto$Notification;->cachedSize:I

    .line 9791
    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9656
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Notification;->text_:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9634
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Notification;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDismiss()Z
    .locals 1

    .prologue
    .line 9708
    iget v0, p0, Lcom/google/glass/companion/Proto$Notification;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPackageIcon()Z
    .locals 1

    .prologue
    .line 9689
    iget v0, p0, Lcom/google/glass/companion/Proto$Notification;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 9667
    iget v0, p0, Lcom/google/glass/companion/Proto$Notification;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 9645
    iget v0, p0, Lcom/google/glass/companion/Proto$Notification;->bitField0_:I

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
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 9730
    const/16 v1, 0x11

    .line 9731
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Notification;->notificationId:Lcom/google/glass/companion/Proto$Notification$NotificationId;

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    add-int/lit16 v1, v2, 0x20f

    .line 9732
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Notification;->title_:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 9733
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Notification;->text_:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 9734
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Notification;->packageIcon_:[B

    if-nez v2, :cond_4

    mul-int/lit8 v1, v1, 0x1f

    .line 9740
    :cond_0
    mul-int/lit8 v4, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$Notification;->dismiss_:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    :goto_3
    add-int v1, v4, v2

    .line 9741
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Notification;->unknownFieldData:Ljava/util/List;

    if-nez v4, :cond_6

    :goto_4
    add-int v1, v2, v3

    .line 9742
    return v1

    .line 9731
    :cond_1
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Notification;->notificationId:Lcom/google/glass/companion/Proto$Notification$NotificationId;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Notification$NotificationId;->hashCode()I

    move-result v2

    goto :goto_0

    .line 9732
    :cond_2
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Notification;->title_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 9733
    :cond_3
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Notification;->text_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 9736
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Notification;->packageIcon_:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 9737
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Notification;->packageIcon_:[B

    aget-byte v4, v4, v0

    add-int v1, v2, v4

    .line 9736
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 9740
    .end local v0    # "i":I
    :cond_5
    const/4 v2, 0x2

    goto :goto_3

    .line 9741
    :cond_6
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Notification;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    goto :goto_4
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Notification;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9799
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 9800
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 9804
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Notification;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 9805
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/Proto$Notification;->unknownFieldData:Ljava/util/List;

    .line 9808
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Notification;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9810
    :sswitch_0
    return-object p0

    .line 9815
    :sswitch_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Notification;->notificationId:Lcom/google/glass/companion/Proto$Notification$NotificationId;

    if-nez v1, :cond_2

    .line 9816
    new-instance v1, Lcom/google/glass/companion/Proto$Notification$NotificationId;

    invoke-direct {v1}, Lcom/google/glass/companion/Proto$Notification$NotificationId;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/Proto$Notification;->notificationId:Lcom/google/glass/companion/Proto$Notification$NotificationId;

    .line 9818
    :cond_2
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Notification;->notificationId:Lcom/google/glass/companion/Proto$Notification$NotificationId;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 9822
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$Notification;->title_:Ljava/lang/String;

    .line 9823
    iget v1, p0, Lcom/google/glass/companion/Proto$Notification;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/Proto$Notification;->bitField0_:I

    goto :goto_0

    .line 9827
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$Notification;->text_:Ljava/lang/String;

    .line 9828
    iget v1, p0, Lcom/google/glass/companion/Proto$Notification;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/glass/companion/Proto$Notification;->bitField0_:I

    goto :goto_0

    .line 9832
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$Notification;->packageIcon_:[B

    .line 9833
    iget v1, p0, Lcom/google/glass/companion/Proto$Notification;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/glass/companion/Proto$Notification;->bitField0_:I

    goto :goto_0

    .line 9837
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/Proto$Notification;->dismiss_:Z

    .line 9838
    iget v1, p0, Lcom/google/glass/companion/Proto$Notification;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/glass/companion/Proto$Notification;->bitField0_:I

    goto :goto_0

    .line 9800
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
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
    .line 9442
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$Notification;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Notification;

    move-result-object v0

    return-object v0
.end method

.method public setDismiss(Z)Lcom/google/glass/companion/Proto$Notification;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 9703
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$Notification;->dismiss_:Z

    .line 9704
    iget v0, p0, Lcom/google/glass/companion/Proto$Notification;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$Notification;->bitField0_:I

    .line 9705
    return-object p0
.end method

.method public setPackageIcon([B)Lcom/google/glass/companion/Proto$Notification;
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 9681
    if-nez p1, :cond_0

    .line 9682
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9684
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Notification;->packageIcon_:[B

    .line 9685
    iget v0, p0, Lcom/google/glass/companion/Proto$Notification;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$Notification;->bitField0_:I

    .line 9686
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/google/glass/companion/Proto$Notification;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 9659
    if-nez p1, :cond_0

    .line 9660
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9662
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Notification;->text_:Ljava/lang/String;

    .line 9663
    iget v0, p0, Lcom/google/glass/companion/Proto$Notification;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$Notification;->bitField0_:I

    .line 9664
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/glass/companion/Proto$Notification;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 9637
    if-nez p1, :cond_0

    .line 9638
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9640
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Notification;->title_:Ljava/lang/String;

    .line 9641
    iget v0, p0, Lcom/google/glass/companion/Proto$Notification;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$Notification;->bitField0_:I

    .line 9642
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
    .line 9747
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Notification;->notificationId:Lcom/google/glass/companion/Proto$Notification$NotificationId;

    if-eqz v0, :cond_0

    .line 9748
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Notification;->notificationId:Lcom/google/glass/companion/Proto$Notification$NotificationId;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 9750
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$Notification;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 9751
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Notification;->title_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9753
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/Proto$Notification;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 9754
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Notification;->text_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9756
    :cond_2
    iget v0, p0, Lcom/google/glass/companion/Proto$Notification;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 9757
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Notification;->packageIcon_:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 9759
    :cond_3
    iget v0, p0, Lcom/google/glass/companion/Proto$Notification;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 9760
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$Notification;->dismiss_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 9762
    :cond_4
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Notification;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 9764
    return-void
.end method
