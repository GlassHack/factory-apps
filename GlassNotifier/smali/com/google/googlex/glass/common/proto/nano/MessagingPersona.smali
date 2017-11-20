.class public final Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "MessagingPersona.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;,
        Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;


# instance fields
.field public acceptType:[Ljava/lang/String;

.field private bitField0_:I

.field private displayId_:Ljava/lang/String;

.field public displayMetadata:Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;

.field private isDefault_:Z

.field private personaId_:Ljava/lang/String;

.field public phoneNumberPersona:Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;

.field private phoneNumber_:Ljava/lang/String;

.field public sharingFeature:[I

.field private source_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 550
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 551
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->clear()Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;

    .line 552
    return-void
.end method

.method public static emptyArray()[Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;
    .locals 2

    .prologue
    .line 416
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;

    if-nez v0, :cond_1

    .line 417
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 419
    :try_start_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;

    if-nez v0, :cond_0

    .line 420
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;

    sput-object v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;

    .line 422
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    :cond_1
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;

    return-object v0

    .line 422
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 909
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 903
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 555
    iput v2, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

    .line 556
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->source_:Ljava/lang/String;

    .line 557
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->personaId_:Ljava/lang/String;

    .line 558
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->displayId_:Ljava/lang/String;

    .line 559
    iput-boolean v2, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->isDefault_:Z

    .line 560
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->acceptType:[Ljava/lang/String;

    .line 561
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->sharingFeature:[I

    .line 562
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->phoneNumber_:Ljava/lang/String;

    .line 563
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->phoneNumberPersona:Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;

    .line 564
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->displayMetadata:Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;

    .line 565
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 566
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->cachedSize:I

    .line 567
    return-object p0
.end method

.method public clearDisplayId()Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;
    .locals 1

    .prologue
    .line 482
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->displayId_:Ljava/lang/String;

    .line 483
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

    .line 484
    return-object p0
.end method

.method public clearIsDefault()Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;
    .locals 1

    .prologue
    .line 504
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->isDefault_:Z

    .line 505
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

    .line 506
    return-object p0
.end method

.method public clearPersonaId()Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;
    .locals 1

    .prologue
    .line 460
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->personaId_:Ljava/lang/String;

    .line 461
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

    .line 462
    return-object p0
.end method

.method public clearPhoneNumber()Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;
    .locals 1

    .prologue
    .line 529
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->phoneNumber_:Ljava/lang/String;

    .line 530
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

    .line 531
    return-object p0
.end method

.method public clearSource()Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;
    .locals 1

    .prologue
    .line 438
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->source_:Ljava/lang/String;

    .line 439
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

    .line 440
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 7

    .prologue
    .line 696
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v4

    .line 697
    .local v4, "size":I
    iget v5, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 698
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->source_:Ljava/lang/String;

    .line 699
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 701
    :cond_0
    iget v5, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    .line 702
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->personaId_:Ljava/lang/String;

    .line 703
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 705
    :cond_1
    iget v5, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_2

    .line 706
    const/4 v5, 0x3

    iget-boolean v6, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->isDefault_:Z

    .line 707
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v4, v5

    .line 709
    :cond_2
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->acceptType:[Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->acceptType:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_5

    .line 710
    const/4 v0, 0x0

    .line 711
    .local v0, "dataCount":I
    const/4 v1, 0x0

    .line 712
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->acceptType:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_4

    .line 713
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->acceptType:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 714
    .local v2, "element":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 715
    add-int/lit8 v0, v0, 0x1

    .line 717
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 712
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 720
    .end local v2    # "element":Ljava/lang/String;
    :cond_4
    add-int/2addr v4, v1

    .line 721
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 723
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_5
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->sharingFeature:[I

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->sharingFeature:[I

    array-length v5, v5

    if-lez v5, :cond_7

    .line 724
    const/4 v1, 0x0

    .line 725
    .restart local v1    # "dataSize":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->sharingFeature:[I

    array-length v5, v5

    if-ge v3, v5, :cond_6

    .line 726
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->sharingFeature:[I

    aget v2, v5, v3

    .line 728
    .local v2, "element":I
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v1, v5

    .line 725
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 730
    .end local v2    # "element":I
    :cond_6
    add-int/2addr v4, v1

    .line 731
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->sharingFeature:[I

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    .line 733
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_7
    iget v5, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_8

    .line 734
    const/4 v5, 0x6

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->displayId_:Ljava/lang/String;

    .line 735
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 737
    :cond_8
    iget v5, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_9

    .line 738
    const/4 v5, 0x7

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->phoneNumber_:Ljava/lang/String;

    .line 739
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 741
    :cond_9
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->phoneNumberPersona:Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;

    if-eqz v5, :cond_a

    .line 742
    const/16 v5, 0x8

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->phoneNumberPersona:Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;

    .line 743
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 745
    :cond_a
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->displayMetadata:Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;

    if-eqz v5, :cond_b

    .line 746
    const/16 v5, 0x9

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->displayMetadata:Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;

    .line 747
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 749
    :cond_b
    return v4
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 572
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 628
    :cond_0
    :goto_0
    return v1

    .line 575
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 578
    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;

    .line 579
    .local v0, "other":Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->source_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->source_:Ljava/lang/String;

    .line 580
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 583
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->personaId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->personaId_:Ljava/lang/String;

    .line 584
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 587
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->displayId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->displayId_:Ljava/lang/String;

    .line 588
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 591
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->isDefault_:Z

    iget-boolean v4, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->isDefault_:Z

    if-ne v3, v4, :cond_0

    .line 595
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->acceptType:[Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->acceptType:[Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/InternalNano;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 599
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->sharingFeature:[I

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->sharingFeature:[I

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/InternalNano;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 603
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->phoneNumber_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->phoneNumber_:Ljava/lang/String;

    .line 604
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 607
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->phoneNumberPersona:Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;

    if-nez v3, :cond_6

    .line 608
    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->phoneNumberPersona:Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;

    if-nez v3, :cond_0

    .line 616
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->displayMetadata:Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;

    if-nez v3, :cond_7

    .line 617
    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->displayMetadata:Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;

    if-nez v3, :cond_0

    .line 625
    :cond_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 626
    :cond_4
    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_5
    move v1, v2

    goto/16 :goto_0

    .line 612
    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->phoneNumberPersona:Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->phoneNumberPersona:Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_0

    .line 621
    :cond_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->displayMetadata:Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->displayMetadata:Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_0

    .line 628
    :cond_8
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public getDisplayId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->displayId_:Ljava/lang/String;

    return-object v0
.end method

.method public getIsDefault()Z
    .locals 1

    .prologue
    .line 498
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->isDefault_:Z

    return v0
.end method

.method public getPersonaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->personaId_:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->phoneNumber_:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->source_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDisplayId()Z
    .locals 1

    .prologue
    .line 479
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsDefault()Z
    .locals 1

    .prologue
    .line 501
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPersonaId()Z
    .locals 1

    .prologue
    .line 457
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPhoneNumber()Z
    .locals 1

    .prologue
    .line 526
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSource()Z
    .locals 1

    .prologue
    .line 435
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

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
    const/4 v2, 0x0

    .line 633
    const/16 v0, 0x11

    .line 634
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 635
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->source_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 636
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->personaId_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 637
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->displayId_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 638
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->isDefault_:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x4cf

    :goto_0
    add-int v0, v3, v1

    .line 639
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->acceptType:[Ljava/lang/String;

    .line 640
    invoke-static {v3}, Lcom/google/protobuf/nano/InternalNano;->hashCode([Ljava/lang/Object;)I

    move-result v3

    add-int v0, v1, v3

    .line 641
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->sharingFeature:[I

    .line 642
    invoke-static {v3}, Lcom/google/protobuf/nano/InternalNano;->hashCode([I)I

    move-result v3

    add-int v0, v1, v3

    .line 643
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->phoneNumber_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 644
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->phoneNumberPersona:Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;

    if-nez v1, :cond_2

    move v1, v2

    .line 645
    :goto_1
    add-int v0, v3, v1

    .line 646
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->displayMetadata:Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;

    if-nez v1, :cond_3

    move v1, v2

    .line 647
    :goto_2
    add-int v0, v3, v1

    .line 648
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 649
    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 650
    :cond_0
    :goto_3
    add-int v0, v1, v2

    .line 651
    return v0

    .line 638
    :cond_1
    const/16 v1, 0x4d5

    goto :goto_0

    .line 645
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->phoneNumberPersona:Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->hashCode()I

    move-result v1

    goto :goto_1

    .line 647
    :cond_3
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->displayMetadata:Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;->hashCode()I

    move-result v1

    goto :goto_2

    .line 650
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v2}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v2

    goto :goto_3
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;
    .locals 20
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 757
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v14

    .line 758
    .local v14, "tag":I
    sparse-switch v14, :sswitch_data_0

    .line 762
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super {v0, v1, v14}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v17

    if-nez v17, :cond_0

    .line 763
    :sswitch_0
    return-object p0

    .line 768
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->source_:Ljava/lang/String;

    .line 769
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

    goto :goto_0

    .line 773
    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->personaId_:Ljava/lang/String;

    .line 774
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

    goto :goto_0

    .line 778
    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->isDefault_:Z

    .line 779
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x8

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

    goto :goto_0

    .line 783
    :sswitch_4
    const/16 v17, 0x22

    .line 784
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v3

    .line 785
    .local v3, "arrayLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->acceptType:[Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_2

    const/4 v7, 0x0

    .line 786
    .local v7, "i":I
    :goto_1
    add-int v17, v7, v3

    move/from16 v0, v17

    new-array v12, v0, [Ljava/lang/String;

    .line 787
    .local v12, "newArray":[Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->acceptType:[Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v12, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 790
    :cond_1
    :goto_2
    array-length v0, v12

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v7, v0, :cond_3

    .line 791
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v12, v7

    .line 792
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 790
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 785
    .end local v7    # "i":I
    .end local v12    # "newArray":[Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->acceptType:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v7, v0

    goto :goto_1

    .line 795
    .restart local v7    # "i":I
    .restart local v12    # "newArray":[Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v12, v7

    .line 796
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->acceptType:[Ljava/lang/String;

    goto/16 :goto_0

    .line 800
    .end local v3    # "arrayLength":I
    .end local v7    # "i":I
    .end local v12    # "newArray":[Ljava/lang/String;
    :sswitch_5
    const/16 v17, 0x28

    .line 801
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v10

    .line 802
    .local v10, "length":I
    new-array v0, v10, [I

    move-object/from16 v16, v0

    .line 803
    .local v16, "values":[I
    const/4 v5, 0x0

    .line 804
    .local v5, "count":I
    const/4 v7, 0x0

    .restart local v7    # "i":I
    move v6, v5

    .end local v5    # "count":I
    .local v6, "count":I
    :goto_3
    if-ge v7, v10, :cond_5

    .line 805
    if-eqz v7, :cond_4

    .line 806
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 808
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v9

    .line 809
    .local v9, "initialPos":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v15

    .line 810
    .local v15, "value":I
    packed-switch v15, :pswitch_data_0

    .line 815
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 816
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move v5, v6

    .line 804
    .end local v6    # "count":I
    .restart local v5    # "count":I
    :goto_4
    add-int/lit8 v7, v7, 0x1

    move v6, v5

    .end local v5    # "count":I
    .restart local v6    # "count":I
    goto :goto_3

    .line 812
    :pswitch_0
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "count":I
    .restart local v5    # "count":I
    aput v15, v16, v6

    goto :goto_4

    .line 820
    .end local v5    # "count":I
    .end local v9    # "initialPos":I
    .end local v15    # "value":I
    .restart local v6    # "count":I
    :cond_5
    if-eqz v6, :cond_0

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->sharingFeature:[I

    move-object/from16 v17, v0

    if-nez v17, :cond_6

    const/4 v7, 0x0

    .line 822
    :goto_5
    if-nez v7, :cond_7

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v6, v0, :cond_7

    .line 823
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->sharingFeature:[I

    goto/16 :goto_0

    .line 821
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->sharingFeature:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v7, v0

    goto :goto_5

    .line 825
    :cond_7
    add-int v17, v7, v6

    move/from16 v0, v17

    new-array v12, v0, [I

    .line 826
    .local v12, "newArray":[I
    if-eqz v7, :cond_8

    .line 827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->sharingFeature:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v12, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 829
    :cond_8
    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v0, v1, v12, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 830
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->sharingFeature:[I

    goto/16 :goto_0

    .line 836
    .end local v6    # "count":I
    .end local v7    # "i":I
    .end local v10    # "length":I
    .end local v12    # "newArray":[I
    .end local v16    # "values":[I
    :sswitch_6
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v4

    .line 837
    .local v4, "bytes":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v11

    .line 839
    .local v11, "limit":I
    const/4 v3, 0x0

    .line 840
    .restart local v3    # "arrayLength":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v13

    .line 841
    .local v13, "startPos":I
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v17

    if-lez v17, :cond_9

    .line 842
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    packed-switch v17, :pswitch_data_1

    goto :goto_6

    .line 844
    :pswitch_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 848
    :cond_9
    if-eqz v3, :cond_d

    .line 849
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->sharingFeature:[I

    move-object/from16 v17, v0

    if-nez v17, :cond_b

    const/4 v7, 0x0

    .line 851
    .restart local v7    # "i":I
    :goto_7
    add-int v17, v7, v3

    move/from16 v0, v17

    new-array v12, v0, [I

    .line 852
    .restart local v12    # "newArray":[I
    if-eqz v7, :cond_a

    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->sharingFeature:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v12, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 855
    :cond_a
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v17

    if-lez v17, :cond_c

    .line 856
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v9

    .line 857
    .restart local v9    # "initialPos":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v15

    .line 858
    .restart local v15    # "value":I
    packed-switch v15, :pswitch_data_2

    .line 863
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 864
    const/16 v17, 0x28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_8

    .line 850
    .end local v7    # "i":I
    .end local v9    # "initialPos":I
    .end local v12    # "newArray":[I
    .end local v15    # "value":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->sharingFeature:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v7, v0

    goto :goto_7

    .line 860
    .restart local v7    # "i":I
    .restart local v9    # "initialPos":I
    .restart local v12    # "newArray":[I
    .restart local v15    # "value":I
    :pswitch_2
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "i":I
    .local v8, "i":I
    aput v15, v12, v7

    move v7, v8

    .line 861
    .end local v8    # "i":I
    .restart local v7    # "i":I
    goto :goto_8

    .line 868
    .end local v9    # "initialPos":I
    .end local v15    # "value":I
    :cond_c
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->sharingFeature:[I

    .line 870
    .end local v7    # "i":I
    .end local v12    # "newArray":[I
    :cond_d
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 874
    .end local v3    # "arrayLength":I
    .end local v4    # "bytes":I
    .end local v11    # "limit":I
    .end local v13    # "startPos":I
    :sswitch_7
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->displayId_:Ljava/lang/String;

    .line 875
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

    goto/16 :goto_0

    .line 879
    :sswitch_8
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->phoneNumber_:Ljava/lang/String;

    .line 880
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x10

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

    goto/16 :goto_0

    .line 884
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->phoneNumberPersona:Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;

    move-object/from16 v17, v0

    if-nez v17, :cond_e

    .line 885
    new-instance v17, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;

    invoke-direct/range {v17 .. v17}, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->phoneNumberPersona:Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;

    .line 887
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->phoneNumberPersona:Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 891
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->displayMetadata:Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;

    move-object/from16 v17, v0

    if-nez v17, :cond_f

    .line 892
    new-instance v17, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;

    invoke-direct/range {v17 .. v17}, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->displayMetadata:Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;

    .line 894
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->displayMetadata:Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 758
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x2a -> :sswitch_6
        0x32 -> :sswitch_7
        0x3a -> :sswitch_8
        0x42 -> :sswitch_9
        0x4a -> :sswitch_a
    .end sparse-switch

    .line 810
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 842
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    .line 858
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
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
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;

    move-result-object v0

    return-object v0
.end method

.method public setDisplayId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 487
    if-nez p1, :cond_0

    .line 488
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 490
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->displayId_:Ljava/lang/String;

    .line 491
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

    .line 492
    return-object p0
.end method

.method public setIsDefault(Z)Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 509
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->isDefault_:Z

    .line 510
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

    .line 511
    return-object p0
.end method

.method public setPersonaId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 465
    if-nez p1, :cond_0

    .line 466
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 468
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->personaId_:Ljava/lang/String;

    .line 469
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

    .line 470
    return-object p0
.end method

.method public setPhoneNumber(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 534
    if-nez p1, :cond_0

    .line 535
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 537
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->phoneNumber_:Ljava/lang/String;

    .line 538
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

    .line 539
    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 443
    if-nez p1, :cond_0

    .line 444
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 446
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->source_:Ljava/lang/String;

    .line 447
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

    .line 448
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
    .line 657
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 658
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->source_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 660
    :cond_0
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 661
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->personaId_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 663
    :cond_1
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_2

    .line 664
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->isDefault_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 666
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->acceptType:[Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->acceptType:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_4

    .line 667
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->acceptType:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 668
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->acceptType:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 669
    .local v0, "element":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 670
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 667
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 674
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->sharingFeature:[I

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->sharingFeature:[I

    array-length v2, v2

    if-lez v2, :cond_5

    .line 675
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->sharingFeature:[I

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 676
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->sharingFeature:[I

    aget v3, v3, v1

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 675
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 679
    .end local v1    # "i":I
    :cond_5
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_6

    .line 680
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->displayId_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 682
    :cond_6
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_7

    .line 683
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->phoneNumber_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 685
    :cond_7
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->phoneNumberPersona:Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;

    if-eqz v2, :cond_8

    .line 686
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->phoneNumberPersona:Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 688
    :cond_8
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->displayMetadata:Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;

    if-eqz v2, :cond_9

    .line 689
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->displayMetadata:Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$DisplayMetadata;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 691
    :cond_9
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 692
    return-void
.end method
