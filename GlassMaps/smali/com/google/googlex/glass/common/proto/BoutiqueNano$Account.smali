.class public final Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;


# instance fields
.field public authToken:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;

.field private bitField0_:I

.field public features:[Ljava/lang/String;

.field private name_:Ljava/lang/String;

.field private packageName_:Ljava/lang/String;

.field private password_:Ljava/lang/String;

.field private type_:Ljava/lang/String;

.field public userData:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1039
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    sput-object v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1040
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1335
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->packageName_:Ljava/lang/String;

    .line 1357
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->type_:Ljava/lang/String;

    .line 1379
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->features:[Ljava/lang/String;

    .line 1382
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->name_:Ljava/lang/String;

    .line 1404
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->password_:Ljava/lang/String;

    .line 1426
    sget-object v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->userData:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;

    .line 1429
    sget-object v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->authToken:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;

    .line 1040
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;
    .locals 1

    .prologue
    .line 1662
    new-instance v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;
    .locals 1

    .prologue
    .line 1656
    new-instance v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    return-object v0
.end method


# virtual methods
.method public final clearName()Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;
    .locals 1

    .prologue
    .line 1398
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->name_:Ljava/lang/String;

    .line 1399
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->bitField0_:I

    .line 1400
    return-object p0
.end method

.method public final clearPackageName()Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;
    .locals 1

    .prologue
    .line 1351
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->packageName_:Ljava/lang/String;

    .line 1352
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->bitField0_:I

    .line 1353
    return-object p0
.end method

.method public final clearPassword()Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;
    .locals 1

    .prologue
    .line 1420
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->password_:Ljava/lang/String;

    .line 1421
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->bitField0_:I

    .line 1422
    return-object p0
.end method

.method public final clearType()Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;
    .locals 1

    .prologue
    .line 1373
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->type_:Ljava/lang/String;

    .line 1374
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->bitField0_:I

    .line 1375
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1433
    if-ne p1, p0, :cond_1

    .line 1443
    :cond_0
    :goto_0
    return v0

    .line 1434
    :cond_1
    instance-of v2, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 1435
    :cond_2
    check-cast p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    .line 1436
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->packageName_:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->packageName_:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->type_:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->type_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 1437
    :goto_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->features:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->features:[Ljava/lang/String;

    .line 1438
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->name_:Ljava/lang/String;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->name_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 1439
    :goto_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->password_:Ljava/lang/String;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->password_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 1440
    :goto_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->userData:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->userData:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;

    .line 1441
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->authToken:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->authToken:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;

    .line 1442
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_8

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 1443
    goto :goto_0

    .line 1436
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->packageName_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->packageName_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->type_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->type_:Ljava/lang/String;

    .line 1437
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    .line 1438
    :cond_6
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->name_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->name_:Ljava/lang/String;

    .line 1439
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->password_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->password_:Ljava/lang/String;

    .line 1440
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_4

    .line 1442
    :cond_8
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->unknownFieldData:Ljava/util/List;

    .line 1443
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1384
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->packageName_:Ljava/lang/String;

    return-object v0
.end method

.method public final getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->password_:Ljava/lang/String;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1513
    .line 1514
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_9

    .line 1515
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->packageName_:Ljava/lang/String;

    .line 1516
    invoke-static {v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    .line 1518
    :goto_0
    iget v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 1519
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->type_:Ljava/lang/String;

    .line 1520
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1522
    :cond_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->features:[Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->features:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_2

    .line 1524
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->features:[Ljava/lang/String;

    array-length v5, v4

    move v2, v1

    move v3, v1

    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v6, v4, v2

    .line 1526
    invoke-static {v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v3, v6

    .line 1524
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1528
    :cond_1
    add-int/2addr v0, v3

    .line 1529
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->features:[Ljava/lang/String;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 1531
    :cond_2
    iget v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    .line 1532
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->name_:Ljava/lang/String;

    .line 1533
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1535
    :cond_3
    iget v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_4

    .line 1536
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->password_:Ljava/lang/String;

    .line 1537
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1539
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->userData:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;

    if-eqz v2, :cond_6

    .line 1540
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->userData:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;

    array-length v4, v3

    move v2, v1

    :goto_2
    if-ge v2, v4, :cond_6

    aget-object v5, v3, v2

    .line 1541
    if-eqz v5, :cond_5

    .line 1542
    const/4 v6, 0x6

    .line 1543
    invoke-static {v6, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v0, v5

    .line 1540
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1547
    :cond_6
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->authToken:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;

    if-eqz v2, :cond_8

    .line 1548
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->authToken:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;

    array-length v3, v2

    :goto_3
    if-ge v1, v3, :cond_8

    aget-object v4, v2, v1

    .line 1549
    if-eqz v4, :cond_7

    .line 1550
    const/4 v5, 0x7

    .line 1551
    invoke-static {v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v0, v4

    .line 1548
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1555
    :cond_8
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1556
    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->cachedSize:I

    .line 1557
    return v0

    :cond_9
    move v0, v1

    goto/16 :goto_0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->type_:Ljava/lang/String;

    return-object v0
.end method

.method public final hasName()Z
    .locals 1

    .prologue
    .line 1395
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasPackageName()Z
    .locals 1

    .prologue
    .line 1348
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasPassword()Z
    .locals 1

    .prologue
    .line 1417
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasType()Z
    .locals 1

    .prologue
    .line 1370
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1447
    .line 1448
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->packageName_:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 1449
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->type_:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 1450
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->features:[Ljava/lang/String;

    if-nez v2, :cond_5

    mul-int/lit8 v2, v0, 0x1f

    .line 1456
    :cond_0
    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->name_:Ljava/lang/String;

    if-nez v0, :cond_7

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 1457
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->password_:Ljava/lang/String;

    if-nez v0, :cond_8

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 1458
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->userData:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;

    if-nez v2, :cond_9

    mul-int/lit8 v2, v0, 0x1f

    .line 1464
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->authToken:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;

    if-nez v0, :cond_b

    mul-int/lit8 v2, v2, 0x1f

    .line 1470
    :cond_2
    mul-int/lit8 v0, v2, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_d

    :goto_4
    add-int/2addr v0, v1

    .line 1471
    return v0

    .line 1448
    :cond_3
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->packageName_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 1449
    :cond_4
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->type_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_5
    move v2, v0

    move v0, v1

    .line 1452
    :goto_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->features:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 1453
    mul-int/lit8 v3, v2, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->features:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_6

    move v2, v1

    :goto_6
    add-int/2addr v2, v3

    .line 1452
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1453
    :cond_6
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->features:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_6

    .line 1456
    :cond_7
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->name_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 1457
    :cond_8
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->password_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_9
    move v2, v0

    move v0, v1

    .line 1460
    :goto_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->userData:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 1461
    mul-int/lit8 v3, v2, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->userData:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;

    aget-object v2, v2, v0

    if-nez v2, :cond_a

    move v2, v1

    :goto_8
    add-int/2addr v2, v3

    .line 1460
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1461
    :cond_a
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->userData:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_b
    move v0, v1

    .line 1466
    :goto_9
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->authToken:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 1467
    mul-int/lit8 v3, v2, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->authToken:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;

    aget-object v2, v2, v0

    if-nez v2, :cond_c

    move v2, v1

    :goto_a
    add-int/2addr v2, v3

    .line 1466
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1467
    :cond_c
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->authToken:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->hashCode()I

    move-result v2

    goto :goto_a

    .line 1470
    :cond_d
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_4
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1565
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1566
    sparse-switch v0, :sswitch_data_0

    .line 1570
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    .line 1571
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->unknownFieldData:Ljava/util/List;

    .line 1574
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->unknownFieldData:Ljava/util/List;

    invoke-static {v2, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1576
    :sswitch_0
    return-object p0

    .line 1581
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->packageName_:Ljava/lang/String;

    .line 1582
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->bitField0_:I

    goto :goto_0

    .line 1586
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->type_:Ljava/lang/String;

    .line 1587
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->bitField0_:I

    goto :goto_0

    .line 1591
    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1592
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->features:[Ljava/lang/String;

    array-length v0, v0

    .line 1593
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 1594
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->features:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1595
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->features:[Ljava/lang/String;

    .line 1596
    :goto_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->features:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    .line 1597
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->features:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1598
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1596
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1601
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->features:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_0

    .line 1605
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->name_:Ljava/lang/String;

    .line 1606
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->bitField0_:I

    goto :goto_0

    .line 1610
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->password_:Ljava/lang/String;

    .line 1611
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->bitField0_:I

    goto :goto_0

    .line 1615
    :sswitch_6
    const/16 v0, 0x32

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1616
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->userData:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;

    if-nez v0, :cond_4

    move v0, v1

    .line 1617
    :goto_2
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;

    .line 1618
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->userData:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;

    if-eqz v3, :cond_3

    .line 1619
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->userData:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1621
    :cond_3
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->userData:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;

    .line 1622
    :goto_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->userData:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_5

    .line 1623
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->userData:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;

    new-instance v3, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;-><init>()V

    aput-object v3, v2, v0

    .line 1624
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->userData:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1625
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1622
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1616
    :cond_4
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->userData:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;

    array-length v0, v0

    goto :goto_2

    .line 1628
    :cond_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->userData:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;

    new-instance v3, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;-><init>()V

    aput-object v3, v2, v0

    .line 1629
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->userData:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1633
    :sswitch_7
    const/16 v0, 0x3a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1634
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->authToken:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;

    if-nez v0, :cond_7

    move v0, v1

    .line 1635
    :goto_4
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;

    .line 1636
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->authToken:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;

    if-eqz v3, :cond_6

    .line 1637
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->authToken:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1639
    :cond_6
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->authToken:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;

    .line 1640
    :goto_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->authToken:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_8

    .line 1641
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->authToken:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;

    new-instance v3, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;-><init>()V

    aput-object v3, v2, v0

    .line 1642
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->authToken:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1643
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1640
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1634
    :cond_7
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->authToken:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;

    array-length v0, v0

    goto :goto_4

    .line 1646
    :cond_8
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->authToken:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;

    new-instance v3, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;-><init>()V

    aput-object v3, v2, v0

    .line 1647
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->authToken:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1566
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

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 1036
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    move-result-object v0

    return-object v0
.end method

.method public final setName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;
    .locals 1

    .prologue
    .line 1387
    if-nez p1, :cond_0

    .line 1388
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1390
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->name_:Ljava/lang/String;

    .line 1391
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->bitField0_:I

    .line 1392
    return-object p0
.end method

.method public final setPackageName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;
    .locals 1

    .prologue
    .line 1340
    if-nez p1, :cond_0

    .line 1341
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1343
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->packageName_:Ljava/lang/String;

    .line 1344
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->bitField0_:I

    .line 1345
    return-object p0
.end method

.method public final setPassword(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;
    .locals 1

    .prologue
    .line 1409
    if-nez p1, :cond_0

    .line 1410
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1412
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->password_:Ljava/lang/String;

    .line 1413
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->bitField0_:I

    .line 1414
    return-object p0
.end method

.method public final setType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;
    .locals 1

    .prologue
    .line 1362
    if-nez p1, :cond_0

    .line 1363
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1365
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->type_:Ljava/lang/String;

    .line 1366
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->bitField0_:I

    .line 1367
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1476
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1477
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->packageName_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1479
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1480
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->type_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1482
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->features:[Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1483
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->features:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 1484
    const/4 v5, 0x3

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1483
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1487
    :cond_2
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 1488
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->name_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1490
    :cond_3
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    .line 1491
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->password_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1493
    :cond_4
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->userData:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;

    if-eqz v1, :cond_6

    .line 1494
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->userData:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_6

    aget-object v4, v2, v1

    .line 1495
    if-eqz v4, :cond_5

    .line 1496
    const/4 v5, 0x6

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1494
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1500
    :cond_6
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->authToken:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;

    if-eqz v1, :cond_8

    .line 1501
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->authToken:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;

    array-length v2, v1

    :goto_2
    if-ge v0, v2, :cond_8

    aget-object v3, v1, v0

    .line 1502
    if-eqz v3, :cond_7

    .line 1503
    const/4 v4, 0x7

    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1501
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1507
    :cond_8
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1509
    return-void
.end method
