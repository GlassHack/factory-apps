.class public final Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "CarRentalProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/CarRentalProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarRentalEntry"
.end annotation


# static fields
.field public static final TYPE_DROPOFF:I = 0x2

.field public static final TYPE_PICKUP:I = 0x1

.field private static volatile _emptyArray:[Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;


# instance fields
.field private bitField0_:I

.field private confirmationNumber_:Ljava/lang/String;

.field public gmailReference:Lcom/google/majel/proto/AgendaProtos$GmailReference;

.field private manageReservationUrl_:Ljava/lang/String;

.field public pickupLocation:Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;

.field private pickupPhone_:Ljava/lang/String;

.field private providerName_:Ljava/lang/String;

.field private renterName_:Ljava/lang/String;

.field public returnLocation:Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;

.field private returnPhone_:Ljava/lang/String;

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 192
    invoke-virtual {p0}, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->clear()Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;

    .line 193
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;
    .locals 2

    .prologue
    .line 18
    sget-object v0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->_emptyArray:[Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;

    if-nez v0, :cond_1

    .line 19
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 21
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->_emptyArray:[Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;

    if-nez v0, :cond_0

    .line 22
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;

    sput-object v0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->_emptyArray:[Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;

    .line 24
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_1
    sget-object v0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->_emptyArray:[Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 376
    new-instance v0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;

    invoke-direct {v0}, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 370
    new-instance v0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;

    invoke-direct {v0}, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 196
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    .line 197
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->renterName_:Ljava/lang/String;

    .line 198
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->confirmationNumber_:Ljava/lang/String;

    .line 199
    iput-object v1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->pickupLocation:Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;

    .line 200
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->pickupPhone_:Ljava/lang/String;

    .line 201
    iput-object v1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->returnLocation:Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;

    .line 202
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->returnPhone_:Ljava/lang/String;

    .line 203
    iput-object v1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->gmailReference:Lcom/google/majel/proto/AgendaProtos$GmailReference;

    .line 204
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->type_:I

    .line 205
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->manageReservationUrl_:Ljava/lang/String;

    .line 206
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->providerName_:Ljava/lang/String;

    .line 207
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->cachedSize:I

    .line 208
    return-object p0
.end method

.method public clearConfirmationNumber()Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;
    .locals 1

    .prologue
    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->confirmationNumber_:Ljava/lang/String;

    .line 71
    iget v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    .line 72
    return-object p0
.end method

.method public clearManageReservationUrl()Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;
    .locals 1

    .prologue
    .line 164
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->manageReservationUrl_:Ljava/lang/String;

    .line 165
    iget v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    .line 166
    return-object p0
.end method

.method public clearPickupPhone()Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;
    .locals 1

    .prologue
    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->pickupPhone_:Ljava/lang/String;

    .line 96
    iget v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    .line 97
    return-object p0
.end method

.method public clearProviderName()Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;
    .locals 1

    .prologue
    .line 186
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->providerName_:Ljava/lang/String;

    .line 187
    iget v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    .line 188
    return-object p0
.end method

.method public clearRenterName()Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;
    .locals 1

    .prologue
    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->renterName_:Ljava/lang/String;

    .line 49
    iget v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    .line 50
    return-object p0
.end method

.method public clearReturnPhone()Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;
    .locals 1

    .prologue
    .line 120
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->returnPhone_:Ljava/lang/String;

    .line 121
    iget v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    .line 122
    return-object p0
.end method

.method public clearType()Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->type_:I

    .line 143
    iget v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    .line 144
    return-object p0
.end method

.method public getConfirmationNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->confirmationNumber_:Ljava/lang/String;

    return-object v0
.end method

.method public getManageReservationUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->manageReservationUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getPickupPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->pickupPhone_:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->providerName_:Ljava/lang/String;

    return-object v0
.end method

.method public getRenterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->renterName_:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->returnPhone_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 248
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 249
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 250
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->renterName_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 253
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 254
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->confirmationNumber_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 257
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->pickupLocation:Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;

    if-eqz v1, :cond_2

    .line 258
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->pickupLocation:Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 261
    :cond_2
    iget v1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 262
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->pickupPhone_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 265
    :cond_3
    iget-object v1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->returnLocation:Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;

    if-eqz v1, :cond_4

    .line 266
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->returnLocation:Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 269
    :cond_4
    iget v1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_5

    .line 270
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->returnPhone_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 273
    :cond_5
    iget-object v1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->gmailReference:Lcom/google/majel/proto/AgendaProtos$GmailReference;

    if-eqz v1, :cond_6

    .line 274
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->gmailReference:Lcom/google/majel/proto/AgendaProtos$GmailReference;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 277
    :cond_6
    iget v1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_7

    .line 278
    const/16 v1, 0x8

    iget v2, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->type_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 281
    :cond_7
    iget v1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_8

    .line 282
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->manageReservationUrl_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 285
    :cond_8
    iget v1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_9

    .line 286
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->providerName_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 289
    :cond_9
    iput v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->cachedSize:I

    .line 290
    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->type_:I

    return v0
.end method

.method public hasConfirmationNumber()Z
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasManageReservationUrl()Z
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPickupPhone()Z
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasProviderName()Z
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRenterName()Z
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasReturnPhone()Z
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

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
    .line 139
    iget v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

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
    .line 8
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 299
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 303
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 304
    :sswitch_0
    return-object p0

    .line 309
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->renterName_:Ljava/lang/String;

    .line 310
    iget v1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    goto :goto_0

    .line 314
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->confirmationNumber_:Ljava/lang/String;

    .line 315
    iget v1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    goto :goto_0

    .line 319
    :sswitch_3
    iget-object v1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->pickupLocation:Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;

    if-nez v1, :cond_1

    .line 320
    new-instance v1, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;

    invoke-direct {v1}, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->pickupLocation:Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;

    .line 322
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->pickupLocation:Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 326
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->pickupPhone_:Ljava/lang/String;

    .line 327
    iget v1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    goto :goto_0

    .line 331
    :sswitch_5
    iget-object v1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->returnLocation:Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;

    if-nez v1, :cond_2

    .line 332
    new-instance v1, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;

    invoke-direct {v1}, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->returnLocation:Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;

    .line 334
    :cond_2
    iget-object v1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->returnLocation:Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 338
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->returnPhone_:Ljava/lang/String;

    .line 339
    iget v1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    goto :goto_0

    .line 343
    :sswitch_7
    iget-object v1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->gmailReference:Lcom/google/majel/proto/AgendaProtos$GmailReference;

    if-nez v1, :cond_3

    .line 344
    new-instance v1, Lcom/google/majel/proto/AgendaProtos$GmailReference;

    invoke-direct {v1}, Lcom/google/majel/proto/AgendaProtos$GmailReference;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->gmailReference:Lcom/google/majel/proto/AgendaProtos$GmailReference;

    .line 346
    :cond_3
    iget-object v1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->gmailReference:Lcom/google/majel/proto/AgendaProtos$GmailReference;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 350
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->type_:I

    .line 351
    iget v1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    goto/16 :goto_0

    .line 355
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->manageReservationUrl_:Ljava/lang/String;

    .line 356
    iget v1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    goto/16 :goto_0

    .line 360
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->providerName_:Ljava/lang/String;

    .line 361
    iget v1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    goto/16 :goto_0

    .line 299
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
        0x40 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
    .end sparse-switch
.end method

.method public setConfirmationNumber(Ljava/lang/String;)Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 59
    if-nez p1, :cond_0

    .line 60
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 62
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->confirmationNumber_:Ljava/lang/String;

    .line 63
    iget v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    .line 64
    return-object p0
.end method

.method public setManageReservationUrl(Ljava/lang/String;)Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 153
    if-nez p1, :cond_0

    .line 154
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 156
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->manageReservationUrl_:Ljava/lang/String;

    .line 157
    iget v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    .line 158
    return-object p0
.end method

.method public setPickupPhone(Ljava/lang/String;)Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 84
    if-nez p1, :cond_0

    .line 85
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 87
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->pickupPhone_:Ljava/lang/String;

    .line 88
    iget v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    .line 89
    return-object p0
.end method

.method public setProviderName(Ljava/lang/String;)Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 175
    if-nez p1, :cond_0

    .line 176
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 178
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->providerName_:Ljava/lang/String;

    .line 179
    iget v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    .line 180
    return-object p0
.end method

.method public setRenterName(Ljava/lang/String;)Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 37
    if-nez p1, :cond_0

    .line 38
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 40
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->renterName_:Ljava/lang/String;

    .line 41
    iget v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    .line 42
    return-object p0
.end method

.method public setReturnPhone(Ljava/lang/String;)Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 109
    if-nez p1, :cond_0

    .line 110
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 112
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->returnPhone_:Ljava/lang/String;

    .line 113
    iget v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    .line 114
    return-object p0
.end method

.method public setType(I)Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 134
    iput p1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->type_:I

    .line 135
    iget v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    .line 136
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    iget v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 215
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->renterName_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 217
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 218
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->confirmationNumber_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->pickupLocation:Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;

    if-eqz v0, :cond_2

    .line 221
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->pickupLocation:Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 223
    :cond_2
    iget v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 224
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->pickupPhone_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 226
    :cond_3
    iget-object v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->returnLocation:Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;

    if-eqz v0, :cond_4

    .line 227
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->returnLocation:Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 229
    :cond_4
    iget v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    .line 230
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->returnPhone_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 232
    :cond_5
    iget-object v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->gmailReference:Lcom/google/majel/proto/AgendaProtos$GmailReference;

    if-eqz v0, :cond_6

    .line 233
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->gmailReference:Lcom/google/majel/proto/AgendaProtos$GmailReference;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 235
    :cond_6
    iget v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_7

    .line 236
    const/16 v0, 0x8

    iget v1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->type_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 238
    :cond_7
    iget v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    .line 239
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->manageReservationUrl_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 241
    :cond_8
    iget v0, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_9

    .line 242
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;->providerName_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 244
    :cond_9
    return-void
.end method
