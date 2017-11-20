.class public final Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReserveRestaurantAction"
.end annotation


# static fields
.field public static final RESTAURANT_NETWORK_OPENTABLE:I = 0x0

.field public static final RESTAURANT_NETWORK_URBANSPOON:I = 0x1

.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;


# instance fields
.field private bitField0_:I

.field public email:Lcom/google/majel/proto/ActionV2Protos$ContactEmail;

.field private firstName_:Ljava/lang/String;

.field private lastName_:Ljava/lang/String;

.field private numPeople_:I

.field public phoneNumber:Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

.field private restaurantId_:Ljava/lang/String;

.field private restaurantLocation_:Ljava/lang/String;

.field private restaurantName_:Ljava/lang/String;

.field private restaurantNetwork_:I

.field private specialRequests_:Ljava/lang/String;

.field private timeMs_:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12386
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 12387
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->clear()Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;

    .line 12388
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;
    .locals 2

    .prologue
    .line 12178
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;

    if-nez v0, :cond_1

    .line 12179
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 12181
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;

    if-nez v0, :cond_0

    .line 12182
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;

    .line 12184
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12186
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;

    return-object v0

    .line 12184
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12582
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 12576
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 12391
    iput v2, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    .line 12392
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->restaurantName_:Ljava/lang/String;

    .line 12393
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->restaurantLocation_:Ljava/lang/String;

    .line 12394
    iput v2, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->numPeople_:I

    .line 12395
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->timeMs_:J

    .line 12396
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->restaurantId_:Ljava/lang/String;

    .line 12397
    iput v2, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->restaurantNetwork_:I

    .line 12398
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->firstName_:Ljava/lang/String;

    .line 12399
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->lastName_:Ljava/lang/String;

    .line 12400
    iput-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->phoneNumber:Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    .line 12401
    iput-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->email:Lcom/google/majel/proto/ActionV2Protos$ContactEmail;

    .line 12402
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->specialRequests_:Ljava/lang/String;

    .line 12403
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->cachedSize:I

    .line 12404
    return-object p0
.end method

.method public clearFirstName()Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;
    .locals 1

    .prologue
    .line 12331
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->firstName_:Ljava/lang/String;

    .line 12332
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    .line 12333
    return-object p0
.end method

.method public clearLastName()Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;
    .locals 1

    .prologue
    .line 12353
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->lastName_:Ljava/lang/String;

    .line 12354
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    .line 12355
    return-object p0
.end method

.method public clearNumPeople()Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;
    .locals 1

    .prologue
    .line 12249
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->numPeople_:I

    .line 12250
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    .line 12251
    return-object p0
.end method

.method public clearRestaurantId()Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;
    .locals 1

    .prologue
    .line 12290
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->restaurantId_:Ljava/lang/String;

    .line 12291
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    .line 12292
    return-object p0
.end method

.method public clearRestaurantLocation()Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;
    .locals 1

    .prologue
    .line 12230
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->restaurantLocation_:Ljava/lang/String;

    .line 12231
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    .line 12232
    return-object p0
.end method

.method public clearRestaurantName()Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;
    .locals 1

    .prologue
    .line 12208
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->restaurantName_:Ljava/lang/String;

    .line 12209
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    .line 12210
    return-object p0
.end method

.method public clearRestaurantNetwork()Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;
    .locals 1

    .prologue
    .line 12309
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->restaurantNetwork_:I

    .line 12310
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    .line 12311
    return-object p0
.end method

.method public clearSpecialRequests()Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;
    .locals 1

    .prologue
    .line 12381
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->specialRequests_:Ljava/lang/String;

    .line 12382
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    .line 12383
    return-object p0
.end method

.method public clearTimeMs()Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;
    .locals 2

    .prologue
    .line 12268
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->timeMs_:J

    .line 12269
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    .line 12270
    return-object p0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12317
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->firstName_:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12339
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->lastName_:Ljava/lang/String;

    return-object v0
.end method

.method public getNumPeople()I
    .locals 1

    .prologue
    .line 12238
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->numPeople_:I

    return v0
.end method

.method public getRestaurantId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12276
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->restaurantId_:Ljava/lang/String;

    return-object v0
.end method

.method public getRestaurantLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12216
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->restaurantLocation_:Ljava/lang/String;

    return-object v0
.end method

.method public getRestaurantName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12194
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->restaurantName_:Ljava/lang/String;

    return-object v0
.end method

.method public getRestaurantNetwork()I
    .locals 1

    .prologue
    .line 12298
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->restaurantNetwork_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 12447
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 12448
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 12449
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->restaurantName_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12452
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    .line 12453
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->numPeople_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12456
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_2

    .line 12457
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->timeMs_:J

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12460
    :cond_2
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_3

    .line 12461
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->restaurantId_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12464
    :cond_3
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_4

    .line 12465
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->restaurantNetwork_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12468
    :cond_4
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_5

    .line 12469
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->firstName_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12472
    :cond_5
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_6

    .line 12473
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->lastName_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12476
    :cond_6
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->phoneNumber:Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    if-eqz v1, :cond_7

    .line 12477
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->phoneNumber:Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12480
    :cond_7
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->email:Lcom/google/majel/proto/ActionV2Protos$ContactEmail;

    if-eqz v1, :cond_8

    .line 12481
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->email:Lcom/google/majel/proto/ActionV2Protos$ContactEmail;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12484
    :cond_8
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_9

    .line 12485
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->specialRequests_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12488
    :cond_9
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_a

    .line 12489
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->restaurantLocation_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12492
    :cond_a
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->cachedSize:I

    .line 12493
    return v0
.end method

.method public getSpecialRequests()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12367
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->specialRequests_:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeMs()J
    .locals 2

    .prologue
    .line 12257
    iget-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->timeMs_:J

    return-wide v0
.end method

.method public hasFirstName()Z
    .locals 1

    .prologue
    .line 12328
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLastName()Z
    .locals 1

    .prologue
    .line 12350
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNumPeople()Z
    .locals 1

    .prologue
    .line 12246
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRestaurantId()Z
    .locals 1

    .prologue
    .line 12287
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRestaurantLocation()Z
    .locals 1

    .prologue
    .line 12227
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRestaurantName()Z
    .locals 1

    .prologue
    .line 12205
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRestaurantNetwork()Z
    .locals 1

    .prologue
    .line 12306
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSpecialRequests()Z
    .locals 1

    .prologue
    .line 12378
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimeMs()Z
    .locals 1

    .prologue
    .line 12265
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

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
    .line 12168
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;
    .locals 3
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12501
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 12502
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 12506
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 12507
    :sswitch_0
    return-object p0

    .line 12512
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->restaurantName_:Ljava/lang/String;

    .line 12513
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    goto :goto_0

    .line 12517
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->numPeople_:I

    .line 12518
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    goto :goto_0

    .line 12522
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->timeMs_:J

    .line 12523
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    goto :goto_0

    .line 12527
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->restaurantId_:Ljava/lang/String;

    .line 12528
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    goto :goto_0

    .line 12532
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->restaurantNetwork_:I

    .line 12533
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    goto :goto_0

    .line 12537
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->firstName_:Ljava/lang/String;

    .line 12538
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    goto :goto_0

    .line 12542
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->lastName_:Ljava/lang/String;

    .line 12543
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    goto :goto_0

    .line 12547
    :sswitch_8
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->phoneNumber:Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    if-nez v1, :cond_1

    .line 12548
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->phoneNumber:Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    .line 12550
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->phoneNumber:Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 12554
    :sswitch_9
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->email:Lcom/google/majel/proto/ActionV2Protos$ContactEmail;

    if-nez v1, :cond_2

    .line 12555
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->email:Lcom/google/majel/proto/ActionV2Protos$ContactEmail;

    .line 12557
    :cond_2
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->email:Lcom/google/majel/proto/ActionV2Protos$ContactEmail;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 12561
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->specialRequests_:Ljava/lang/String;

    .line 12562
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    goto/16 :goto_0

    .line 12566
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->restaurantLocation_:Ljava/lang/String;

    .line 12567
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    goto/16 :goto_0

    .line 12502
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
    .end sparse-switch
.end method

.method public setFirstName(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 12320
    if-nez p1, :cond_0

    .line 12321
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12323
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->firstName_:Ljava/lang/String;

    .line 12324
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    .line 12325
    return-object p0
.end method

.method public setLastName(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 12342
    if-nez p1, :cond_0

    .line 12343
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12345
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->lastName_:Ljava/lang/String;

    .line 12346
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    .line 12347
    return-object p0
.end method

.method public setNumPeople(I)Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 12241
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->numPeople_:I

    .line 12242
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    .line 12243
    return-object p0
.end method

.method public setRestaurantId(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 12279
    if-nez p1, :cond_0

    .line 12280
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12282
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->restaurantId_:Ljava/lang/String;

    .line 12283
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    .line 12284
    return-object p0
.end method

.method public setRestaurantLocation(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 12219
    if-nez p1, :cond_0

    .line 12220
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12222
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->restaurantLocation_:Ljava/lang/String;

    .line 12223
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    .line 12224
    return-object p0
.end method

.method public setRestaurantName(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 12197
    if-nez p1, :cond_0

    .line 12198
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12200
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->restaurantName_:Ljava/lang/String;

    .line 12201
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    .line 12202
    return-object p0
.end method

.method public setRestaurantNetwork(I)Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 12301
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->restaurantNetwork_:I

    .line 12302
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    .line 12303
    return-object p0
.end method

.method public setSpecialRequests(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 12370
    if-nez p1, :cond_0

    .line 12371
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12373
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->specialRequests_:Ljava/lang/String;

    .line 12374
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    .line 12375
    return-object p0
.end method

.method public setTimeMs(J)Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 12260
    iput-wide p1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->timeMs_:J

    .line 12261
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    .line 12262
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12410
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 12411
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->restaurantName_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 12413
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 12414
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->numPeople_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 12416
    :cond_1
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 12417
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->timeMs_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 12419
    :cond_2
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    .line 12420
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->restaurantId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 12422
    :cond_3
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4

    .line 12423
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->restaurantNetwork_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 12425
    :cond_4
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_5

    .line 12426
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->firstName_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 12428
    :cond_5
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6

    .line 12429
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->lastName_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 12431
    :cond_6
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->phoneNumber:Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    if-eqz v0, :cond_7

    .line 12432
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->phoneNumber:Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 12434
    :cond_7
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->email:Lcom/google/majel/proto/ActionV2Protos$ContactEmail;

    if-eqz v0, :cond_8

    .line 12435
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->email:Lcom/google/majel/proto/ActionV2Protos$ContactEmail;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 12437
    :cond_8
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_9

    .line 12438
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->specialRequests_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 12440
    :cond_9
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_a

    .line 12441
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ReserveRestaurantAction;->restaurantLocation_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 12443
    :cond_a
    return-void
.end method
