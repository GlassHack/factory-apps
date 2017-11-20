.class public final Lcom/google/speech/s3/MobileUser$MobileUserInfo;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "MobileUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/s3/MobileUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MobileUserInfo"
.end annotation


# static fields
.field public static final NETWORK_TYPE_BLUETOOTH:I = 0x11

.field public static final NETWORK_TYPE_CDMA:I = 0x3

.field public static final NETWORK_TYPE_EDGE:I = 0x4

.field public static final NETWORK_TYPE_EHRPD:I = 0x5

.field public static final NETWORK_TYPE_ETHERNET:I = 0x12

.field public static final NETWORK_TYPE_EVDO_0:I = 0x6

.field public static final NETWORK_TYPE_EVDO_A:I = 0x7

.field public static final NETWORK_TYPE_EVDO_B:I = 0x8

.field public static final NETWORK_TYPE_GPRS:I = 0x9

.field public static final NETWORK_TYPE_HSDPA:I = 0xa

.field public static final NETWORK_TYPE_HSPA:I = 0xb

.field public static final NETWORK_TYPE_HSPAP:I = 0xc

.field public static final NETWORK_TYPE_HSUPA:I = 0xd

.field public static final NETWORK_TYPE_IDEN:I = 0xe

.field public static final NETWORK_TYPE_LTE:I = 0xf

.field public static final NETWORK_TYPE_RTT:I = 0x2

.field public static final NETWORK_TYPE_UMTS:I = 0x10

.field public static final NETWORK_TYPE_UNKNOWN:I = 0x0

.field public static final NETWORK_TYPE_UNKNOWN_CELLULAR:I = 0x14

.field public static final NETWORK_TYPE_WIFI:I = 0x1

.field public static final NETWORK_TYPE_WIMAX:I = 0x13

.field private static volatile _emptyArray:[Lcom/google/speech/s3/MobileUser$MobileUserInfo;


# instance fields
.field private bitField0_:I

.field private networkMcc_:I

.field private networkMnc_:I

.field private networkType_:I

.field private simMcc_:I

.field private simMnc_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 146
    invoke-virtual {p0}, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->clear()Lcom/google/speech/s3/MobileUser$MobileUserInfo;

    .line 147
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/s3/MobileUser$MobileUserInfo;
    .locals 2

    .prologue
    .line 37
    sget-object v0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->_emptyArray:[Lcom/google/speech/s3/MobileUser$MobileUserInfo;

    if-nez v0, :cond_1

    .line 38
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->_emptyArray:[Lcom/google/speech/s3/MobileUser$MobileUserInfo;

    if-nez v0, :cond_0

    .line 41
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/s3/MobileUser$MobileUserInfo;

    sput-object v0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->_emptyArray:[Lcom/google/speech/s3/MobileUser$MobileUserInfo;

    .line 43
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_1
    sget-object v0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->_emptyArray:[Lcom/google/speech/s3/MobileUser$MobileUserInfo;

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/MobileUser$MobileUserInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 259
    new-instance v0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;

    invoke-direct {v0}, Lcom/google/speech/s3/MobileUser$MobileUserInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/MobileUser$MobileUserInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/s3/MobileUser$MobileUserInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 253
    new-instance v0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;

    invoke-direct {v0}, Lcom/google/speech/s3/MobileUser$MobileUserInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/s3/MobileUser$MobileUserInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 150
    iput v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->bitField0_:I

    .line 151
    iput v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->networkMcc_:I

    .line 152
    iput v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->networkMnc_:I

    .line 153
    iput v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->simMcc_:I

    .line 154
    iput v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->simMnc_:I

    .line 155
    iput v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->networkType_:I

    .line 156
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->cachedSize:I

    .line 157
    return-object p0
.end method

.method public clearNetworkMcc()Lcom/google/speech/s3/MobileUser$MobileUserInfo;
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->networkMcc_:I

    .line 65
    iget v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->bitField0_:I

    .line 66
    return-object p0
.end method

.method public clearNetworkMnc()Lcom/google/speech/s3/MobileUser$MobileUserInfo;
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->networkMnc_:I

    .line 84
    iget v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->bitField0_:I

    .line 85
    return-object p0
.end method

.method public clearNetworkType()Lcom/google/speech/s3/MobileUser$MobileUserInfo;
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->networkType_:I

    .line 141
    iget v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->bitField0_:I

    .line 142
    return-object p0
.end method

.method public clearSimMcc()Lcom/google/speech/s3/MobileUser$MobileUserInfo;
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->simMcc_:I

    .line 103
    iget v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->bitField0_:I

    .line 104
    return-object p0
.end method

.method public clearSimMnc()Lcom/google/speech/s3/MobileUser$MobileUserInfo;
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->simMnc_:I

    .line 122
    iget v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->bitField0_:I

    .line 123
    return-object p0
.end method

.method public getNetworkMcc()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->networkMcc_:I

    return v0
.end method

.method public getNetworkMnc()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->networkMnc_:I

    return v0
.end method

.method public getNetworkType()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->networkType_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 182
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 183
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 184
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->networkMcc_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 187
    :cond_0
    iget v1, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 188
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->networkMnc_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 191
    :cond_1
    iget v1, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 192
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->simMcc_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 195
    :cond_2
    iget v1, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 196
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->simMnc_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 199
    :cond_3
    iget v1, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 200
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->networkType_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 203
    :cond_4
    iput v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->cachedSize:I

    .line 204
    return v0
.end method

.method public getSimMcc()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->simMcc_:I

    return v0
.end method

.method public getSimMnc()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->simMnc_:I

    return v0
.end method

.method public hasNetworkMcc()Z
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNetworkMnc()Z
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNetworkType()Z
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSimMcc()Z
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSimMnc()Z
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->bitField0_:I

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
    .line 8
    invoke-virtual {p0, p1}, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/MobileUser$MobileUserInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/MobileUser$MobileUserInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 213
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 217
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 218
    :sswitch_0
    return-object p0

    .line 223
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->networkMcc_:I

    .line 224
    iget v1, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->bitField0_:I

    goto :goto_0

    .line 228
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->networkMnc_:I

    .line 229
    iget v1, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->bitField0_:I

    goto :goto_0

    .line 233
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->simMcc_:I

    .line 234
    iget v1, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->bitField0_:I

    goto :goto_0

    .line 238
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->simMnc_:I

    .line 239
    iget v1, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->bitField0_:I

    goto :goto_0

    .line 243
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->networkType_:I

    .line 244
    iget v1, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->bitField0_:I

    goto :goto_0

    .line 213
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public setNetworkMcc(I)Lcom/google/speech/s3/MobileUser$MobileUserInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->networkMcc_:I

    .line 57
    iget v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->bitField0_:I

    .line 58
    return-object p0
.end method

.method public setNetworkMnc(I)Lcom/google/speech/s3/MobileUser$MobileUserInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->networkMnc_:I

    .line 76
    iget v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->bitField0_:I

    .line 77
    return-object p0
.end method

.method public setNetworkType(I)Lcom/google/speech/s3/MobileUser$MobileUserInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 132
    iput p1, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->networkType_:I

    .line 133
    iget v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->bitField0_:I

    .line 134
    return-object p0
.end method

.method public setSimMcc(I)Lcom/google/speech/s3/MobileUser$MobileUserInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->simMcc_:I

    .line 95
    iget v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->bitField0_:I

    .line 96
    return-object p0
.end method

.method public setSimMnc(I)Lcom/google/speech/s3/MobileUser$MobileUserInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 113
    iput p1, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->simMnc_:I

    .line 114
    iget v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->bitField0_:I

    .line 115
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
    .line 163
    iget v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 164
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->networkMcc_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 166
    :cond_0
    iget v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 167
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->networkMnc_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 169
    :cond_1
    iget v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 170
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->simMcc_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 172
    :cond_2
    iget v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 173
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->simMnc_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 175
    :cond_3
    iget v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 176
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->networkType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 178
    :cond_4
    return-void
.end method
