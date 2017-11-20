.class public final Lcom/google/majel/proto/ReservationProtos$Reservation;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ReservationProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ReservationProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Reservation"
.end annotation


# static fields
.field public static final TYPE_EVENT_RESERVATION:I = 0x4

.field public static final TYPE_HOTEL_CHECKIN:I = 0x1

.field public static final TYPE_HOTEL_CHECKOUT:I = 0x2

.field public static final TYPE_PRIVATE_HOTEL_RESERVATION:I = 0x5

.field public static final TYPE_RESTAURANT_RESERVATION:I = 0x3

.field private static volatile _emptyArray:[Lcom/google/majel/proto/ReservationProtos$Reservation;


# instance fields
.field private bitField0_:I

.field public gmailReference:[Lcom/google/majel/proto/AgendaProtos$GmailReference;

.field public location:Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;

.field private partySize_:I

.field private reservationUrl_:Ljava/lang/String;

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 101
    invoke-virtual {p0}, Lcom/google/majel/proto/ReservationProtos$Reservation;->clear()Lcom/google/majel/proto/ReservationProtos$Reservation;

    .line 102
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ReservationProtos$Reservation;
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/google/majel/proto/ReservationProtos$Reservation;->_emptyArray:[Lcom/google/majel/proto/ReservationProtos$Reservation;

    if-nez v0, :cond_1

    .line 22
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ReservationProtos$Reservation;->_emptyArray:[Lcom/google/majel/proto/ReservationProtos$Reservation;

    if-nez v0, :cond_0

    .line 25
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ReservationProtos$Reservation;

    sput-object v0, Lcom/google/majel/proto/ReservationProtos$Reservation;->_emptyArray:[Lcom/google/majel/proto/ReservationProtos$Reservation;

    .line 27
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ReservationProtos$Reservation;->_emptyArray:[Lcom/google/majel/proto/ReservationProtos$Reservation;

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ReservationProtos$Reservation;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    new-instance v0, Lcom/google/majel/proto/ReservationProtos$Reservation;

    invoke-direct {v0}, Lcom/google/majel/proto/ReservationProtos$Reservation;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ReservationProtos$Reservation;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ReservationProtos$Reservation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ReservationProtos$Reservation;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 235
    new-instance v0, Lcom/google/majel/proto/ReservationProtos$Reservation;

    invoke-direct {v0}, Lcom/google/majel/proto/ReservationProtos$Reservation;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ReservationProtos$Reservation;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ReservationProtos$Reservation;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    iput v1, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->bitField0_:I

    .line 106
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->type_:I

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->location:Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;

    .line 108
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->reservationUrl_:Ljava/lang/String;

    .line 109
    invoke-static {}, Lcom/google/majel/proto/AgendaProtos$GmailReference;->emptyArray()[Lcom/google/majel/proto/AgendaProtos$GmailReference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->gmailReference:[Lcom/google/majel/proto/AgendaProtos$GmailReference;

    .line 110
    iput v1, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->partySize_:I

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->cachedSize:I

    .line 112
    return-object p0
.end method

.method public clearPartySize()Lcom/google/majel/proto/ReservationProtos$Reservation;
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->partySize_:I

    .line 96
    iget v0, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->bitField0_:I

    .line 97
    return-object p0
.end method

.method public clearReservationUrl()Lcom/google/majel/proto/ReservationProtos$Reservation;
    .locals 1

    .prologue
    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->reservationUrl_:Ljava/lang/String;

    .line 74
    iget v0, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->bitField0_:I

    .line 75
    return-object p0
.end method

.method public clearType()Lcom/google/majel/proto/ReservationProtos$Reservation;
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->type_:I

    .line 49
    iget v0, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->bitField0_:I

    .line 50
    return-object p0
.end method

.method public getPartySize()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->partySize_:I

    return v0
.end method

.method public getReservationUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->reservationUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 142
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 143
    .local v2, "size":I
    iget v3, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 144
    const/4 v3, 0x1

    iget v4, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->type_:I

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 147
    :cond_0
    iget-object v3, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->location:Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;

    if-eqz v3, :cond_1

    .line 148
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->location:Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 151
    :cond_1
    iget v3, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    .line 152
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->reservationUrl_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 155
    :cond_2
    iget-object v3, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->gmailReference:[Lcom/google/majel/proto/AgendaProtos$GmailReference;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->gmailReference:[Lcom/google/majel/proto/AgendaProtos$GmailReference;

    array-length v3, v3

    if-lez v3, :cond_4

    .line 156
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->gmailReference:[Lcom/google/majel/proto/AgendaProtos$GmailReference;

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 157
    iget-object v3, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->gmailReference:[Lcom/google/majel/proto/AgendaProtos$GmailReference;

    aget-object v0, v3, v1

    .line 158
    .local v0, "element":Lcom/google/majel/proto/AgendaProtos$GmailReference;
    if-eqz v0, :cond_3

    .line 159
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 156
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    .end local v0    # "element":Lcom/google/majel/proto/AgendaProtos$GmailReference;
    .end local v1    # "i":I
    :cond_4
    iget v3, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_5

    .line 165
    const/4 v3, 0x5

    iget v4, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->partySize_:I

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 168
    :cond_5
    iput v2, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->cachedSize:I

    .line 169
    return v2
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->type_:I

    return v0
.end method

.method public hasPartySize()Z
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasReservationUrl()Z
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

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
    .line 45
    iget v0, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

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
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ReservationProtos$Reservation;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ReservationProtos$Reservation;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ReservationProtos$Reservation;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 177
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 178
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 182
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 183
    :sswitch_0
    return-object p0

    .line 188
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->type_:I

    .line 189
    iget v5, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->bitField0_:I

    goto :goto_0

    .line 193
    :sswitch_2
    iget-object v5, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->location:Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;

    if-nez v5, :cond_1

    .line 194
    new-instance v5, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;

    invoke-direct {v5}, Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;-><init>()V

    iput-object v5, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->location:Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;

    .line 196
    :cond_1
    iget-object v5, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->location:Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 200
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->reservationUrl_:Ljava/lang/String;

    .line 201
    iget v5, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->bitField0_:I

    goto :goto_0

    .line 205
    :sswitch_4
    const/16 v5, 0x22

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 207
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->gmailReference:[Lcom/google/majel/proto/AgendaProtos$GmailReference;

    if-nez v5, :cond_3

    move v1, v4

    .line 208
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/AgendaProtos$GmailReference;

    .line 210
    .local v2, "newArray":[Lcom/google/majel/proto/AgendaProtos$GmailReference;
    if-eqz v1, :cond_2

    .line 211
    iget-object v5, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->gmailReference:[Lcom/google/majel/proto/AgendaProtos$GmailReference;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    :cond_2
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_4

    .line 214
    new-instance v5, Lcom/google/majel/proto/AgendaProtos$GmailReference;

    invoke-direct {v5}, Lcom/google/majel/proto/AgendaProtos$GmailReference;-><init>()V

    aput-object v5, v2, v1

    .line 215
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 216
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 213
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 207
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/AgendaProtos$GmailReference;
    :cond_3
    iget-object v5, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->gmailReference:[Lcom/google/majel/proto/AgendaProtos$GmailReference;

    array-length v1, v5

    goto :goto_1

    .line 219
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/AgendaProtos$GmailReference;
    :cond_4
    new-instance v5, Lcom/google/majel/proto/AgendaProtos$GmailReference;

    invoke-direct {v5}, Lcom/google/majel/proto/AgendaProtos$GmailReference;-><init>()V

    aput-object v5, v2, v1

    .line 220
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 221
    iput-object v2, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->gmailReference:[Lcom/google/majel/proto/AgendaProtos$GmailReference;

    goto :goto_0

    .line 225
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/AgendaProtos$GmailReference;
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v5

    iput v5, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->partySize_:I

    .line 226
    iget v5, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->bitField0_:I

    goto/16 :goto_0

    .line 178
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public setPartySize(I)Lcom/google/majel/proto/ReservationProtos$Reservation;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->partySize_:I

    .line 88
    iget v0, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->bitField0_:I

    .line 89
    return-object p0
.end method

.method public setReservationUrl(Ljava/lang/String;)Lcom/google/majel/proto/ReservationProtos$Reservation;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 62
    if-nez p1, :cond_0

    .line 63
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 65
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->reservationUrl_:Ljava/lang/String;

    .line 66
    iget v0, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->bitField0_:I

    .line 67
    return-object p0
.end method

.method public setType(I)Lcom/google/majel/proto/ReservationProtos$Reservation;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->type_:I

    .line 41
    iget v0, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->bitField0_:I

    .line 42
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
    .line 118
    iget v2, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 119
    const/4 v2, 0x1

    iget v3, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->type_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 121
    :cond_0
    iget-object v2, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->location:Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;

    if-eqz v2, :cond_1

    .line 122
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->location:Lcom/google/majel/proto/AgendaProtos$AgendaItemLocation;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 124
    :cond_1
    iget v2, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 125
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->reservationUrl_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 127
    :cond_2
    iget-object v2, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->gmailReference:[Lcom/google/majel/proto/AgendaProtos$GmailReference;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->gmailReference:[Lcom/google/majel/proto/AgendaProtos$GmailReference;

    array-length v2, v2

    if-lez v2, :cond_4

    .line 128
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->gmailReference:[Lcom/google/majel/proto/AgendaProtos$GmailReference;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 129
    iget-object v2, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->gmailReference:[Lcom/google/majel/proto/AgendaProtos$GmailReference;

    aget-object v0, v2, v1

    .line 130
    .local v0, "element":Lcom/google/majel/proto/AgendaProtos$GmailReference;
    if-eqz v0, :cond_3

    .line 131
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 128
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    .end local v0    # "element":Lcom/google/majel/proto/AgendaProtos$GmailReference;
    .end local v1    # "i":I
    :cond_4
    iget v2, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_5

    .line 136
    const/4 v2, 0x5

    iget v3, p0, Lcom/google/majel/proto/ReservationProtos$Reservation;->partySize_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 138
    :cond_5
    return-void
.end method
