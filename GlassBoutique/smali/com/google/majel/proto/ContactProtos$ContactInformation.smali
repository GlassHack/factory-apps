.class public final Lcom/google/majel/proto/ContactProtos$ContactInformation;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ContactProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ContactProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContactInformation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;,
        Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;,
        Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;,
        Lcom/google/majel/proto/ContactProtos$ContactInformation$PhoneNumber;
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ContactProtos$ContactInformation;


# instance fields
.field private bitField0_:I

.field private clientEntityId_:Ljava/lang/String;

.field private displayName_:Ljava/lang/String;

.field public emailAddress:[Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;

.field public googleAccount:[Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;

.field private imageUri_:Ljava/lang/String;

.field private isInferredMatch_:Z

.field private lookupKey_:Ljava/lang/String;

.field public phoneNumber:[Lcom/google/majel/proto/ContactProtos$ContactInformation$PhoneNumber;

.field public postalAddress:[Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1427
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1428
    invoke-virtual {p0}, Lcom/google/majel/proto/ContactProtos$ContactInformation;->clear()Lcom/google/majel/proto/ContactProtos$ContactInformation;

    .line 1429
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ContactProtos$ContactInformation;
    .locals 2

    .prologue
    .line 1295
    sget-object v0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->_emptyArray:[Lcom/google/majel/proto/ContactProtos$ContactInformation;

    if-nez v0, :cond_1

    .line 1296
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1298
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->_emptyArray:[Lcom/google/majel/proto/ContactProtos$ContactInformation;

    if-nez v0, :cond_0

    .line 1299
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ContactProtos$ContactInformation;

    sput-object v0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->_emptyArray:[Lcom/google/majel/proto/ContactProtos$ContactInformation;

    .line 1301
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1303
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->_emptyArray:[Lcom/google/majel/proto/ContactProtos$ContactInformation;

    return-object v0

    .line 1301
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ContactProtos$ContactInformation;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1693
    new-instance v0, Lcom/google/majel/proto/ContactProtos$ContactInformation;

    invoke-direct {v0}, Lcom/google/majel/proto/ContactProtos$ContactInformation;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ContactProtos$ContactInformation;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ContactProtos$ContactInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ContactProtos$ContactInformation;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1687
    new-instance v0, Lcom/google/majel/proto/ContactProtos$ContactInformation;

    invoke-direct {v0}, Lcom/google/majel/proto/ContactProtos$ContactInformation;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ContactProtos$ContactInformation;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ContactProtos$ContactInformation;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1432
    iput v1, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->bitField0_:I

    .line 1433
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->displayName_:Ljava/lang/String;

    .line 1434
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->lookupKey_:Ljava/lang/String;

    .line 1435
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->imageUri_:Ljava/lang/String;

    .line 1436
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->clientEntityId_:Ljava/lang/String;

    .line 1437
    invoke-static {}, Lcom/google/majel/proto/ContactProtos$ContactInformation$PhoneNumber;->emptyArray()[Lcom/google/majel/proto/ContactProtos$ContactInformation$PhoneNumber;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->phoneNumber:[Lcom/google/majel/proto/ContactProtos$ContactInformation$PhoneNumber;

    .line 1438
    invoke-static {}, Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;->emptyArray()[Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->emailAddress:[Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;

    .line 1439
    invoke-static {}, Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;->emptyArray()[Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->postalAddress:[Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;

    .line 1440
    invoke-static {}, Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;->emptyArray()[Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->googleAccount:[Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;

    .line 1441
    iput-boolean v1, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->isInferredMatch_:Z

    .line 1442
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->cachedSize:I

    .line 1443
    return-object p0
.end method

.method public clearClientEntityId()Lcom/google/majel/proto/ContactProtos$ContactInformation;
    .locals 1

    .prologue
    .line 1391
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->clientEntityId_:Ljava/lang/String;

    .line 1392
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->bitField0_:I

    .line 1393
    return-object p0
.end method

.method public clearDisplayName()Lcom/google/majel/proto/ContactProtos$ContactInformation;
    .locals 1

    .prologue
    .line 1325
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->displayName_:Ljava/lang/String;

    .line 1326
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->bitField0_:I

    .line 1327
    return-object p0
.end method

.method public clearImageUri()Lcom/google/majel/proto/ContactProtos$ContactInformation;
    .locals 1

    .prologue
    .line 1369
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->imageUri_:Ljava/lang/String;

    .line 1370
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->bitField0_:I

    .line 1371
    return-object p0
.end method

.method public clearIsInferredMatch()Lcom/google/majel/proto/ContactProtos$ContactInformation;
    .locals 1

    .prologue
    .line 1422
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->isInferredMatch_:Z

    .line 1423
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->bitField0_:I

    .line 1424
    return-object p0
.end method

.method public clearLookupKey()Lcom/google/majel/proto/ContactProtos$ContactInformation;
    .locals 1

    .prologue
    .line 1347
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->lookupKey_:Ljava/lang/String;

    .line 1348
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->bitField0_:I

    .line 1349
    return-object p0
.end method

.method public getClientEntityId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1377
    iget-object v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->clientEntityId_:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->displayName_:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1355
    iget-object v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->imageUri_:Ljava/lang/String;

    return-object v0
.end method

.method public getIsInferredMatch()Z
    .locals 1

    .prologue
    .line 1411
    iget-boolean v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->isInferredMatch_:Z

    return v0
.end method

.method public getLookupKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->lookupKey_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 1500
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 1501
    .local v2, "size":I
    iget v3, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 1502
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->displayName_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1505
    :cond_0
    iget v3, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1

    .line 1506
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->imageUri_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1509
    :cond_1
    iget v3, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_2

    .line 1510
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->clientEntityId_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1513
    :cond_2
    iget-object v3, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->phoneNumber:[Lcom/google/majel/proto/ContactProtos$ContactInformation$PhoneNumber;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->phoneNumber:[Lcom/google/majel/proto/ContactProtos$ContactInformation$PhoneNumber;

    array-length v3, v3

    if-lez v3, :cond_4

    .line 1514
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->phoneNumber:[Lcom/google/majel/proto/ContactProtos$ContactInformation$PhoneNumber;

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 1515
    iget-object v3, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->phoneNumber:[Lcom/google/majel/proto/ContactProtos$ContactInformation$PhoneNumber;

    aget-object v0, v3, v1

    .line 1516
    .local v0, "element":Lcom/google/majel/proto/ContactProtos$ContactInformation$PhoneNumber;
    if-eqz v0, :cond_3

    .line 1517
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1514
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1522
    .end local v0    # "element":Lcom/google/majel/proto/ContactProtos$ContactInformation$PhoneNumber;
    .end local v1    # "i":I
    :cond_4
    iget-object v3, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->emailAddress:[Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->emailAddress:[Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;

    array-length v3, v3

    if-lez v3, :cond_6

    .line 1523
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->emailAddress:[Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;

    array-length v3, v3

    if-ge v1, v3, :cond_6

    .line 1524
    iget-object v3, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->emailAddress:[Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;

    aget-object v0, v3, v1

    .line 1525
    .local v0, "element":Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;
    if-eqz v0, :cond_5

    .line 1526
    const/4 v3, 0x5

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1523
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1531
    .end local v0    # "element":Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;
    .end local v1    # "i":I
    :cond_6
    iget-object v3, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->postalAddress:[Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->postalAddress:[Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;

    array-length v3, v3

    if-lez v3, :cond_8

    .line 1532
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v3, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->postalAddress:[Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;

    array-length v3, v3

    if-ge v1, v3, :cond_8

    .line 1533
    iget-object v3, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->postalAddress:[Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;

    aget-object v0, v3, v1

    .line 1534
    .local v0, "element":Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;
    if-eqz v0, :cond_7

    .line 1535
    const/4 v3, 0x6

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1532
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1540
    .end local v0    # "element":Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;
    .end local v1    # "i":I
    :cond_8
    iget v3, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_9

    .line 1541
    const/4 v3, 0x7

    iget-boolean v4, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->isInferredMatch_:Z

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 1544
    :cond_9
    iget-object v3, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->googleAccount:[Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->googleAccount:[Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;

    array-length v3, v3

    if-lez v3, :cond_b

    .line 1545
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v3, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->googleAccount:[Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;

    array-length v3, v3

    if-ge v1, v3, :cond_b

    .line 1546
    iget-object v3, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->googleAccount:[Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;

    aget-object v0, v3, v1

    .line 1547
    .local v0, "element":Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;
    if-eqz v0, :cond_a

    .line 1548
    const/16 v3, 0x9

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1545
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1553
    .end local v0    # "element":Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;
    .end local v1    # "i":I
    :cond_b
    iget v3, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_c

    .line 1554
    const/16 v3, 0xa

    iget-object v4, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->lookupKey_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1557
    :cond_c
    iput v2, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->cachedSize:I

    .line 1558
    return v2
.end method

.method public hasClientEntityId()Z
    .locals 1

    .prologue
    .line 1388
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDisplayName()Z
    .locals 1

    .prologue
    .line 1322
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasImageUri()Z
    .locals 1

    .prologue
    .line 1366
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsInferredMatch()Z
    .locals 1

    .prologue
    .line 1419
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLookupKey()Z
    .locals 1

    .prologue
    .line 1344
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "x0"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 738
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ContactProtos$ContactInformation;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ContactProtos$ContactInformation;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ContactProtos$ContactInformation;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1566
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 1567
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 1571
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1572
    :sswitch_0
    return-object p0

    .line 1577
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->displayName_:Ljava/lang/String;

    .line 1578
    iget v5, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->bitField0_:I

    goto :goto_0

    .line 1582
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->imageUri_:Ljava/lang/String;

    .line 1583
    iget v5, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->bitField0_:I

    goto :goto_0

    .line 1587
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->clientEntityId_:Ljava/lang/String;

    .line 1588
    iget v5, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->bitField0_:I

    goto :goto_0

    .line 1592
    :sswitch_4
    const/16 v5, 0x22

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1594
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->phoneNumber:[Lcom/google/majel/proto/ContactProtos$ContactInformation$PhoneNumber;

    if-nez v5, :cond_2

    move v1, v4

    .line 1595
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/ContactProtos$ContactInformation$PhoneNumber;

    .line 1597
    .local v2, "newArray":[Lcom/google/majel/proto/ContactProtos$ContactInformation$PhoneNumber;
    if-eqz v1, :cond_1

    .line 1598
    iget-object v5, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->phoneNumber:[Lcom/google/majel/proto/ContactProtos$ContactInformation$PhoneNumber;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1600
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 1601
    new-instance v5, Lcom/google/majel/proto/ContactProtos$ContactInformation$PhoneNumber;

    invoke-direct {v5}, Lcom/google/majel/proto/ContactProtos$ContactInformation$PhoneNumber;-><init>()V

    aput-object v5, v2, v1

    .line 1602
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1603
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1600
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1594
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ContactProtos$ContactInformation$PhoneNumber;
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->phoneNumber:[Lcom/google/majel/proto/ContactProtos$ContactInformation$PhoneNumber;

    array-length v1, v5

    goto :goto_1

    .line 1606
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ContactProtos$ContactInformation$PhoneNumber;
    :cond_3
    new-instance v5, Lcom/google/majel/proto/ContactProtos$ContactInformation$PhoneNumber;

    invoke-direct {v5}, Lcom/google/majel/proto/ContactProtos$ContactInformation$PhoneNumber;-><init>()V

    aput-object v5, v2, v1

    .line 1607
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1608
    iput-object v2, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->phoneNumber:[Lcom/google/majel/proto/ContactProtos$ContactInformation$PhoneNumber;

    goto :goto_0

    .line 1612
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ContactProtos$ContactInformation$PhoneNumber;
    :sswitch_5
    const/16 v5, 0x2a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1614
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->emailAddress:[Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;

    if-nez v5, :cond_5

    move v1, v4

    .line 1615
    .restart local v1    # "i":I
    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;

    .line 1617
    .local v2, "newArray":[Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;
    if-eqz v1, :cond_4

    .line 1618
    iget-object v5, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->emailAddress:[Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1620
    :cond_4
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_6

    .line 1621
    new-instance v5, Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;

    invoke-direct {v5}, Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;-><init>()V

    aput-object v5, v2, v1

    .line 1622
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1623
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1620
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1614
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;
    :cond_5
    iget-object v5, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->emailAddress:[Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;

    array-length v1, v5

    goto :goto_3

    .line 1626
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;
    :cond_6
    new-instance v5, Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;

    invoke-direct {v5}, Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;-><init>()V

    aput-object v5, v2, v1

    .line 1627
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1628
    iput-object v2, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->emailAddress:[Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;

    goto/16 :goto_0

    .line 1632
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;
    :sswitch_6
    const/16 v5, 0x32

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1634
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->postalAddress:[Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;

    if-nez v5, :cond_8

    move v1, v4

    .line 1635
    .restart local v1    # "i":I
    :goto_5
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;

    .line 1637
    .local v2, "newArray":[Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;
    if-eqz v1, :cond_7

    .line 1638
    iget-object v5, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->postalAddress:[Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1640
    :cond_7
    :goto_6
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_9

    .line 1641
    new-instance v5, Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;

    invoke-direct {v5}, Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;-><init>()V

    aput-object v5, v2, v1

    .line 1642
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1643
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1640
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1634
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;
    :cond_8
    iget-object v5, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->postalAddress:[Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;

    array-length v1, v5

    goto :goto_5

    .line 1646
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;
    :cond_9
    new-instance v5, Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;

    invoke-direct {v5}, Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;-><init>()V

    aput-object v5, v2, v1

    .line 1647
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1648
    iput-object v2, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->postalAddress:[Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;

    goto/16 :goto_0

    .line 1652
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->isInferredMatch_:Z

    .line 1653
    iget v5, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->bitField0_:I

    goto/16 :goto_0

    .line 1657
    :sswitch_8
    const/16 v5, 0x4a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1659
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->googleAccount:[Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;

    if-nez v5, :cond_b

    move v1, v4

    .line 1660
    .restart local v1    # "i":I
    :goto_7
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;

    .line 1662
    .local v2, "newArray":[Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;
    if-eqz v1, :cond_a

    .line 1663
    iget-object v5, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->googleAccount:[Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1665
    :cond_a
    :goto_8
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_c

    .line 1666
    new-instance v5, Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;

    invoke-direct {v5}, Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;-><init>()V

    aput-object v5, v2, v1

    .line 1667
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1668
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1665
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1659
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;
    :cond_b
    iget-object v5, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->googleAccount:[Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;

    array-length v1, v5

    goto :goto_7

    .line 1671
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;
    :cond_c
    new-instance v5, Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;

    invoke-direct {v5}, Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;-><init>()V

    aput-object v5, v2, v1

    .line 1672
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1673
    iput-object v2, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->googleAccount:[Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;

    goto/16 :goto_0

    .line 1677
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->lookupKey_:Ljava/lang/String;

    .line 1678
    iget v5, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->bitField0_:I

    goto/16 :goto_0

    .line 1567
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
        0x38 -> :sswitch_7
        0x4a -> :sswitch_8
        0x52 -> :sswitch_9
    .end sparse-switch
.end method

.method public setClientEntityId(Ljava/lang/String;)Lcom/google/majel/proto/ContactProtos$ContactInformation;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1380
    if-nez p1, :cond_0

    .line 1381
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1383
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->clientEntityId_:Ljava/lang/String;

    .line 1384
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->bitField0_:I

    .line 1385
    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/majel/proto/ContactProtos$ContactInformation;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1314
    if-nez p1, :cond_0

    .line 1315
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1317
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->displayName_:Ljava/lang/String;

    .line 1318
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->bitField0_:I

    .line 1319
    return-object p0
.end method

.method public setImageUri(Ljava/lang/String;)Lcom/google/majel/proto/ContactProtos$ContactInformation;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1358
    if-nez p1, :cond_0

    .line 1359
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1361
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->imageUri_:Ljava/lang/String;

    .line 1362
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->bitField0_:I

    .line 1363
    return-object p0
.end method

.method public setIsInferredMatch(Z)Lcom/google/majel/proto/ContactProtos$ContactInformation;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1414
    iput-boolean p1, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->isInferredMatch_:Z

    .line 1415
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->bitField0_:I

    .line 1416
    return-object p0
.end method

.method public setLookupKey(Ljava/lang/String;)Lcom/google/majel/proto/ContactProtos$ContactInformation;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1336
    if-nez p1, :cond_0

    .line 1337
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1339
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->lookupKey_:Ljava/lang/String;

    .line 1340
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->bitField0_:I

    .line 1341
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1449
    iget v2, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 1450
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->displayName_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1452
    :cond_0
    iget v2, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    .line 1453
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->imageUri_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1455
    :cond_1
    iget v2, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_2

    .line 1456
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->clientEntityId_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1458
    :cond_2
    iget-object v2, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->phoneNumber:[Lcom/google/majel/proto/ContactProtos$ContactInformation$PhoneNumber;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->phoneNumber:[Lcom/google/majel/proto/ContactProtos$ContactInformation$PhoneNumber;

    array-length v2, v2

    if-lez v2, :cond_4

    .line 1459
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->phoneNumber:[Lcom/google/majel/proto/ContactProtos$ContactInformation$PhoneNumber;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 1460
    iget-object v2, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->phoneNumber:[Lcom/google/majel/proto/ContactProtos$ContactInformation$PhoneNumber;

    aget-object v0, v2, v1

    .line 1461
    .local v0, "element":Lcom/google/majel/proto/ContactProtos$ContactInformation$PhoneNumber;
    if-eqz v0, :cond_3

    .line 1462
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1459
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1466
    .end local v0    # "element":Lcom/google/majel/proto/ContactProtos$ContactInformation$PhoneNumber;
    .end local v1    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->emailAddress:[Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->emailAddress:[Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;

    array-length v2, v2

    if-lez v2, :cond_6

    .line 1467
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->emailAddress:[Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;

    array-length v2, v2

    if-ge v1, v2, :cond_6

    .line 1468
    iget-object v2, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->emailAddress:[Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;

    aget-object v0, v2, v1

    .line 1469
    .local v0, "element":Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;
    if-eqz v0, :cond_5

    .line 1470
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1467
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1474
    .end local v0    # "element":Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;
    .end local v1    # "i":I
    :cond_6
    iget-object v2, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->postalAddress:[Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->postalAddress:[Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;

    array-length v2, v2

    if-lez v2, :cond_8

    .line 1475
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->postalAddress:[Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;

    array-length v2, v2

    if-ge v1, v2, :cond_8

    .line 1476
    iget-object v2, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->postalAddress:[Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;

    aget-object v0, v2, v1

    .line 1477
    .local v0, "element":Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;
    if-eqz v0, :cond_7

    .line 1478
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1475
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1482
    .end local v0    # "element":Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;
    .end local v1    # "i":I
    :cond_8
    iget v2, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_9

    .line 1483
    const/4 v2, 0x7

    iget-boolean v3, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->isInferredMatch_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1485
    :cond_9
    iget-object v2, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->googleAccount:[Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->googleAccount:[Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;

    array-length v2, v2

    if-lez v2, :cond_b

    .line 1486
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v2, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->googleAccount:[Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;

    array-length v2, v2

    if-ge v1, v2, :cond_b

    .line 1487
    iget-object v2, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->googleAccount:[Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;

    aget-object v0, v2, v1

    .line 1488
    .local v0, "element":Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;
    if-eqz v0, :cond_a

    .line 1489
    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1486
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1493
    .end local v0    # "element":Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;
    .end local v1    # "i":I
    :cond_b
    iget v2, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_c

    .line 1494
    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation;->lookupKey_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1496
    :cond_c
    return-void
.end method
