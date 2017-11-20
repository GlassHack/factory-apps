.class public final Lcom/google/googlex/glass/common/proto/nano/Account;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Account.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;,
        Lcom/google/googlex/glass/common/proto/nano/Account$UserData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/googlex/glass/common/proto/nano/Account;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/googlex/glass/common/proto/nano/Account;


# instance fields
.field public authToken:[Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;

.field private bitField0_:I

.field public features:[Ljava/lang/String;

.field private name_:Ljava/lang/String;

.field private packageName_:Ljava/lang/String;

.field private password_:Ljava/lang/String;

.field private type_:Ljava/lang/String;

.field public userData:[Lcom/google/googlex/glass/common/proto/nano/Account$UserData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 484
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 485
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/Account;->clear()Lcom/google/googlex/glass/common/proto/nano/Account;

    .line 486
    return-void
.end method

.method public static emptyArray()[Lcom/google/googlex/glass/common/proto/nano/Account;
    .locals 2

    .prologue
    .line 372
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/Account;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/Account;

    if-nez v0, :cond_1

    .line 373
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 375
    :try_start_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/Account;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/Account;

    if-nez v0, :cond_0

    .line 376
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/nano/Account;

    sput-object v0, Lcom/google/googlex/glass/common/proto/nano/Account;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/Account;

    .line 378
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    :cond_1
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/Account;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/Account;

    return-object v0

    .line 378
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/Account;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 765
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/Account;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/Account;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/nano/Account;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/Account;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/nano/Account;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 759
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/Account;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/Account;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/Account;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/googlex/glass/common/proto/nano/Account;
    .locals 1

    .prologue
    .line 489
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->bitField0_:I

    .line 490
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->packageName_:Ljava/lang/String;

    .line 491
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->type_:Ljava/lang/String;

    .line 492
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->features:[Ljava/lang/String;

    .line 493
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->name_:Ljava/lang/String;

    .line 494
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->password_:Ljava/lang/String;

    .line 495
    invoke-static {}, Lcom/google/googlex/glass/common/proto/nano/Account$UserData;->emptyArray()[Lcom/google/googlex/glass/common/proto/nano/Account$UserData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->userData:[Lcom/google/googlex/glass/common/proto/nano/Account$UserData;

    .line 496
    invoke-static {}, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;->emptyArray()[Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->authToken:[Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;

    .line 497
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 498
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->cachedSize:I

    .line 499
    return-object p0
.end method

.method public clearName()Lcom/google/googlex/glass/common/proto/nano/Account;
    .locals 1

    .prologue
    .line 441
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->name_:Ljava/lang/String;

    .line 442
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->bitField0_:I

    .line 443
    return-object p0
.end method

.method public clearPackageName()Lcom/google/googlex/glass/common/proto/nano/Account;
    .locals 1

    .prologue
    .line 394
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->packageName_:Ljava/lang/String;

    .line 395
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->bitField0_:I

    .line 396
    return-object p0
.end method

.method public clearPassword()Lcom/google/googlex/glass/common/proto/nano/Account;
    .locals 1

    .prologue
    .line 463
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->password_:Ljava/lang/String;

    .line 464
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->bitField0_:I

    .line 465
    return-object p0
.end method

.method public clearType()Lcom/google/googlex/glass/common/proto/nano/Account;
    .locals 1

    .prologue
    .line 416
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->type_:Ljava/lang/String;

    .line 417
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->bitField0_:I

    .line 418
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 7

    .prologue
    .line 609
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v4

    .line 610
    .local v4, "size":I
    iget v5, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 611
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->packageName_:Ljava/lang/String;

    .line 612
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 614
    :cond_0
    iget v5, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->bitField0_:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    .line 615
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->type_:Ljava/lang/String;

    .line 616
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 618
    :cond_1
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->features:[Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->features:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_4

    .line 619
    const/4 v0, 0x0

    .line 620
    .local v0, "dataCount":I
    const/4 v1, 0x0

    .line 621
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->features:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_3

    .line 622
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->features:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 623
    .local v2, "element":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 624
    add-int/lit8 v0, v0, 0x1

    .line 626
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 621
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 629
    .end local v2    # "element":Ljava/lang/String;
    :cond_3
    add-int/2addr v4, v1

    .line 630
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 632
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_4
    iget v5, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->bitField0_:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_5

    .line 633
    const/4 v5, 0x4

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->name_:Ljava/lang/String;

    .line 634
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 636
    :cond_5
    iget v5, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->bitField0_:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_6

    .line 637
    const/4 v5, 0x5

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->password_:Ljava/lang/String;

    .line 638
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 640
    :cond_6
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->userData:[Lcom/google/googlex/glass/common/proto/nano/Account$UserData;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->userData:[Lcom/google/googlex/glass/common/proto/nano/Account$UserData;

    array-length v5, v5

    if-lez v5, :cond_8

    .line 641
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->userData:[Lcom/google/googlex/glass/common/proto/nano/Account$UserData;

    array-length v5, v5

    if-ge v3, v5, :cond_8

    .line 642
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->userData:[Lcom/google/googlex/glass/common/proto/nano/Account$UserData;

    aget-object v2, v5, v3

    .line 643
    .local v2, "element":Lcom/google/googlex/glass/common/proto/nano/Account$UserData;
    if-eqz v2, :cond_7

    .line 644
    const/4 v5, 0x6

    .line 645
    invoke-static {v5, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 641
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 649
    .end local v2    # "element":Lcom/google/googlex/glass/common/proto/nano/Account$UserData;
    .end local v3    # "i":I
    :cond_8
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->authToken:[Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->authToken:[Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;

    array-length v5, v5

    if-lez v5, :cond_a

    .line 650
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->authToken:[Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;

    array-length v5, v5

    if-ge v3, v5, :cond_a

    .line 651
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->authToken:[Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;

    aget-object v2, v5, v3

    .line 652
    .local v2, "element":Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;
    if-eqz v2, :cond_9

    .line 653
    const/4 v5, 0x7

    .line 654
    invoke-static {v5, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 650
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 658
    .end local v2    # "element":Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;
    .end local v3    # "i":I
    :cond_a
    return v4
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 504
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 542
    :cond_0
    :goto_0
    return v1

    .line 507
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/nano/Account;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 510
    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/Account;

    .line 511
    .local v0, "other":Lcom/google/googlex/glass/common/proto/nano/Account;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Account;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->packageName_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/Account;->packageName_:Ljava/lang/String;

    .line 512
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 515
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Account;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->type_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/Account;->type_:Ljava/lang/String;

    .line 516
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 519
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->features:[Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/Account;->features:[Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/InternalNano;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 523
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Account;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->name_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/Account;->name_:Ljava/lang/String;

    .line 524
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 527
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Account;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->password_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/Account;->password_:Ljava/lang/String;

    .line 528
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 531
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->userData:[Lcom/google/googlex/glass/common/proto/nano/Account$UserData;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/Account;->userData:[Lcom/google/googlex/glass/common/proto/nano/Account$UserData;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/InternalNano;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 535
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->authToken:[Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/Account;->authToken:[Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/InternalNano;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 539
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 540
    :cond_2
    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/Account;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/Account;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto/16 :goto_0

    .line 542
    :cond_4
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/googlex/glass/common/proto/nano/Account;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->packageName_:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->password_:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->type_:Ljava/lang/String;

    return-object v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 438
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->bitField0_:I

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
    .line 391
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPassword()Z
    .locals 1

    .prologue
    .line 460
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->bitField0_:I

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
    .locals 3

    .prologue
    .line 547
    const/16 v0, 0x11

    .line 548
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 549
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->packageName_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 550
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->type_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 551
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->features:[Ljava/lang/String;

    .line 552
    invoke-static {v2}, Lcom/google/protobuf/nano/InternalNano;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 553
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->name_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 554
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->password_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 555
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->userData:[Lcom/google/googlex/glass/common/proto/nano/Account$UserData;

    .line 556
    invoke-static {v2}, Lcom/google/protobuf/nano/InternalNano;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 557
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->authToken:[Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;

    .line 558
    invoke-static {v2}, Lcom/google/protobuf/nano/InternalNano;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 559
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 560
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 561
    :goto_0
    add-int v0, v2, v1

    .line 562
    return v0

    .line 561
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/Account;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 666
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 667
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 671
    invoke-super {p0, p1, v3}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 672
    :sswitch_0
    return-object p0

    .line 677
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->packageName_:Ljava/lang/String;

    .line 678
    iget v5, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->bitField0_:I

    goto :goto_0

    .line 682
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->type_:Ljava/lang/String;

    .line 683
    iget v5, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->bitField0_:I

    goto :goto_0

    .line 687
    :sswitch_3
    const/16 v5, 0x1a

    .line 688
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 689
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->features:[Ljava/lang/String;

    if-nez v5, :cond_2

    move v1, v4

    .line 690
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    .line 691
    .local v2, "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 692
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->features:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 694
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 695
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 696
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 694
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 689
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->features:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_1

    .line 699
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 700
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->features:[Ljava/lang/String;

    goto :goto_0

    .line 704
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->name_:Ljava/lang/String;

    .line 705
    iget v5, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->bitField0_:I

    goto :goto_0

    .line 709
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->password_:Ljava/lang/String;

    .line 710
    iget v5, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->bitField0_:I

    goto :goto_0

    .line 714
    :sswitch_6
    const/16 v5, 0x32

    .line 715
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 716
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->userData:[Lcom/google/googlex/glass/common/proto/nano/Account$UserData;

    if-nez v5, :cond_5

    move v1, v4

    .line 717
    .restart local v1    # "i":I
    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/googlex/glass/common/proto/nano/Account$UserData;

    .line 719
    .local v2, "newArray":[Lcom/google/googlex/glass/common/proto/nano/Account$UserData;
    if-eqz v1, :cond_4

    .line 720
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->userData:[Lcom/google/googlex/glass/common/proto/nano/Account$UserData;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 722
    :cond_4
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_6

    .line 723
    new-instance v5, Lcom/google/googlex/glass/common/proto/nano/Account$UserData;

    invoke-direct {v5}, Lcom/google/googlex/glass/common/proto/nano/Account$UserData;-><init>()V

    aput-object v5, v2, v1

    .line 724
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 725
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 722
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 716
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/nano/Account$UserData;
    :cond_5
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->userData:[Lcom/google/googlex/glass/common/proto/nano/Account$UserData;

    array-length v1, v5

    goto :goto_3

    .line 728
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/nano/Account$UserData;
    :cond_6
    new-instance v5, Lcom/google/googlex/glass/common/proto/nano/Account$UserData;

    invoke-direct {v5}, Lcom/google/googlex/glass/common/proto/nano/Account$UserData;-><init>()V

    aput-object v5, v2, v1

    .line 729
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 730
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->userData:[Lcom/google/googlex/glass/common/proto/nano/Account$UserData;

    goto/16 :goto_0

    .line 734
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/nano/Account$UserData;
    :sswitch_7
    const/16 v5, 0x3a

    .line 735
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 736
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->authToken:[Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;

    if-nez v5, :cond_8

    move v1, v4

    .line 737
    .restart local v1    # "i":I
    :goto_5
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;

    .line 739
    .local v2, "newArray":[Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;
    if-eqz v1, :cond_7

    .line 740
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->authToken:[Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 742
    :cond_7
    :goto_6
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_9

    .line 743
    new-instance v5, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;

    invoke-direct {v5}, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;-><init>()V

    aput-object v5, v2, v1

    .line 744
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 745
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 742
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 736
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;
    :cond_8
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->authToken:[Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;

    array-length v1, v5

    goto :goto_5

    .line 748
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;
    :cond_9
    new-instance v5, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;

    invoke-direct {v5}, Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;-><init>()V

    aput-object v5, v2, v1

    .line 749
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 750
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->authToken:[Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;

    goto/16 :goto_0

    .line 667
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
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
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/nano/Account;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/Account;

    move-result-object v0

    return-object v0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Account;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 446
    if-nez p1, :cond_0

    .line 447
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 449
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->name_:Ljava/lang/String;

    .line 450
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->bitField0_:I

    .line 451
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Account;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 399
    if-nez p1, :cond_0

    .line 400
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 402
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->packageName_:Ljava/lang/String;

    .line 403
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->bitField0_:I

    .line 404
    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Account;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 468
    if-nez p1, :cond_0

    .line 469
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 471
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->password_:Ljava/lang/String;

    .line 472
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->bitField0_:I

    .line 473
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Account;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 421
    if-nez p1, :cond_0

    .line 422
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 424
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->type_:Ljava/lang/String;

    .line 425
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->bitField0_:I

    .line 426
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
    .line 568
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 569
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->packageName_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 571
    :cond_0
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 572
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->type_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 574
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->features:[Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->features:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 575
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->features:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 576
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->features:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 577
    .local v0, "element":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 578
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 575
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 582
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_3
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_4

    .line 583
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->name_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 585
    :cond_4
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_5

    .line 586
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->password_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 588
    :cond_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->userData:[Lcom/google/googlex/glass/common/proto/nano/Account$UserData;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->userData:[Lcom/google/googlex/glass/common/proto/nano/Account$UserData;

    array-length v2, v2

    if-lez v2, :cond_7

    .line 589
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->userData:[Lcom/google/googlex/glass/common/proto/nano/Account$UserData;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    .line 590
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->userData:[Lcom/google/googlex/glass/common/proto/nano/Account$UserData;

    aget-object v0, v2, v1

    .line 591
    .local v0, "element":Lcom/google/googlex/glass/common/proto/nano/Account$UserData;
    if-eqz v0, :cond_6

    .line 592
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 589
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 596
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/nano/Account$UserData;
    .end local v1    # "i":I
    :cond_7
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->authToken:[Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->authToken:[Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;

    array-length v2, v2

    if-lez v2, :cond_9

    .line 597
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->authToken:[Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;

    array-length v2, v2

    if-ge v1, v2, :cond_9

    .line 598
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Account;->authToken:[Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;

    aget-object v0, v2, v1

    .line 599
    .local v0, "element":Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;
    if-eqz v0, :cond_8

    .line 600
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 597
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 604
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/nano/Account$AuthToken;
    .end local v1    # "i":I
    :cond_9
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 605
    return-void
.end method
