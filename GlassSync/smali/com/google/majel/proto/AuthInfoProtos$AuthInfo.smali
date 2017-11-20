.class public final Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "AuthInfoProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/AuthInfoProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AuthInfo"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;


# instance fields
.field public additionalGaiaId:[J

.field private bitField0_:I

.field public cookie:[Lcom/google/majel/proto/CookieProtos$MajelCookie;

.field private email_:Ljava/lang/String;

.field private gaiaId_:J

.field private zwiebackUid_:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 94
    invoke-virtual {p0}, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->clear()Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    .line 95
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->_emptyArray:[Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    if-nez v0, :cond_1

    .line 15
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->_emptyArray:[Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    if-nez v0, :cond_0

    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    sput-object v0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->_emptyArray:[Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    .line 20
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_1
    sget-object v0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->_emptyArray:[Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    new-instance v0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    invoke-direct {v0}, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 269
    new-instance v0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    invoke-direct {v0}, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->bitField0_:I

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->email_:Ljava/lang/String;

    .line 100
    iput-wide v1, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->gaiaId_:J

    .line 101
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_LONG_ARRAY:[J

    iput-object v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->additionalGaiaId:[J

    .line 102
    iput-wide v1, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->zwiebackUid_:J

    .line 103
    invoke-static {}, Lcom/google/majel/proto/CookieProtos$MajelCookie;->emptyArray()[Lcom/google/majel/proto/CookieProtos$MajelCookie;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->cookie:[Lcom/google/majel/proto/CookieProtos$MajelCookie;

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->cachedSize:I

    .line 105
    return-object p0
.end method

.method public clearEmail()Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;
    .locals 1

    .prologue
    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->email_:Ljava/lang/String;

    .line 45
    iget v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->bitField0_:I

    .line 46
    return-object p0
.end method

.method public clearGaiaId()Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;
    .locals 2

    .prologue
    .line 63
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->gaiaId_:J

    .line 64
    iget v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->bitField0_:I

    .line 65
    return-object p0
.end method

.method public clearZwiebackUid()Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;
    .locals 2

    .prologue
    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->zwiebackUid_:J

    .line 86
    iget v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->bitField0_:I

    .line 87
    return-object p0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->email_:Ljava/lang/String;

    return-object v0
.end method

.method public getGaiaId()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->gaiaId_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    .line 137
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v4

    .line 138
    .local v4, "size":I
    iget v5, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 139
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->email_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 142
    :cond_0
    iget v5, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->bitField0_:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    .line 143
    const/4 v5, 0x2

    iget-wide v6, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->gaiaId_:J

    invoke-static {v5, v6, v7}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    .line 146
    :cond_1
    iget v5, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->bitField0_:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_2

    .line 147
    const/4 v5, 0x3

    iget-wide v6, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->zwiebackUid_:J

    invoke-static {v5, v6, v7}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    .line 150
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->cookie:[Lcom/google/majel/proto/CookieProtos$MajelCookie;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->cookie:[Lcom/google/majel/proto/CookieProtos$MajelCookie;

    array-length v5, v5

    if-lez v5, :cond_4

    .line 151
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->cookie:[Lcom/google/majel/proto/CookieProtos$MajelCookie;

    array-length v5, v5

    if-ge v3, v5, :cond_4

    .line 152
    iget-object v5, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->cookie:[Lcom/google/majel/proto/CookieProtos$MajelCookie;

    aget-object v1, v5, v3

    .line 153
    .local v1, "element":Lcom/google/majel/proto/CookieProtos$MajelCookie;
    if-eqz v1, :cond_3

    .line 154
    const/4 v5, 0x4

    invoke-static {v5, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 151
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 159
    .end local v1    # "element":Lcom/google/majel/proto/CookieProtos$MajelCookie;
    .end local v3    # "i":I
    :cond_4
    iget-object v5, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->additionalGaiaId:[J

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->additionalGaiaId:[J

    array-length v5, v5

    if-lez v5, :cond_6

    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, "dataSize":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->additionalGaiaId:[J

    array-length v5, v5

    if-ge v3, v5, :cond_5

    .line 162
    iget-object v5, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->additionalGaiaId:[J

    aget-wide v1, v5, v3

    .line 163
    .local v1, "element":J
    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64SizeNoTag(J)I

    move-result v5

    add-int/2addr v0, v5

    .line 161
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 166
    .end local v1    # "element":J
    :cond_5
    add-int/2addr v4, v0

    .line 167
    iget-object v5, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->additionalGaiaId:[J

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    .line 169
    .end local v0    # "dataSize":I
    .end local v3    # "i":I
    :cond_6
    iput v4, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->cachedSize:I

    .line 170
    return v4
.end method

.method public getZwiebackUid()J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->zwiebackUid_:J

    return-wide v0
.end method

.method public hasEmail()Z
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGaiaId()Z
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasZwiebackUid()Z
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

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
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;
    .locals 10
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 178
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v6

    .line 179
    .local v6, "tag":I
    sparse-switch v6, :sswitch_data_0

    .line 183
    invoke-static {p1, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 184
    :sswitch_0
    return-object p0

    .line 189
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->email_:Ljava/lang/String;

    .line 190
    iget v8, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->bitField0_:I

    goto :goto_0

    .line 194
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->gaiaId_:J

    .line 195
    iget v8, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->bitField0_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->bitField0_:I

    goto :goto_0

    .line 199
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->zwiebackUid_:J

    .line 200
    iget v8, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->bitField0_:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->bitField0_:I

    goto :goto_0

    .line 204
    :sswitch_4
    const/16 v8, 0x22

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 206
    .local v0, "arrayLength":I
    iget-object v8, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->cookie:[Lcom/google/majel/proto/CookieProtos$MajelCookie;

    if-nez v8, :cond_2

    move v1, v7

    .line 207
    .local v1, "i":I
    :goto_1
    add-int v8, v1, v0

    new-array v4, v8, [Lcom/google/majel/proto/CookieProtos$MajelCookie;

    .line 209
    .local v4, "newArray":[Lcom/google/majel/proto/CookieProtos$MajelCookie;
    if-eqz v1, :cond_1

    .line 210
    iget-object v8, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->cookie:[Lcom/google/majel/proto/CookieProtos$MajelCookie;

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    :cond_1
    :goto_2
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_3

    .line 213
    new-instance v8, Lcom/google/majel/proto/CookieProtos$MajelCookie;

    invoke-direct {v8}, Lcom/google/majel/proto/CookieProtos$MajelCookie;-><init>()V

    aput-object v8, v4, v1

    .line 214
    aget-object v8, v4, v1

    invoke-virtual {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 215
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 206
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/google/majel/proto/CookieProtos$MajelCookie;
    :cond_2
    iget-object v8, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->cookie:[Lcom/google/majel/proto/CookieProtos$MajelCookie;

    array-length v1, v8

    goto :goto_1

    .line 218
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Lcom/google/majel/proto/CookieProtos$MajelCookie;
    :cond_3
    new-instance v8, Lcom/google/majel/proto/CookieProtos$MajelCookie;

    invoke-direct {v8}, Lcom/google/majel/proto/CookieProtos$MajelCookie;-><init>()V

    aput-object v8, v4, v1

    .line 219
    aget-object v8, v4, v1

    invoke-virtual {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 220
    iput-object v4, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->cookie:[Lcom/google/majel/proto/CookieProtos$MajelCookie;

    goto :goto_0

    .line 224
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/google/majel/proto/CookieProtos$MajelCookie;
    :sswitch_5
    const/16 v8, 0x28

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 226
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->additionalGaiaId:[J

    if-nez v8, :cond_5

    move v1, v7

    .line 227
    .restart local v1    # "i":I
    :goto_3
    add-int v8, v1, v0

    new-array v4, v8, [J

    .line 228
    .local v4, "newArray":[J
    if-eqz v1, :cond_4

    .line 229
    iget-object v8, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->additionalGaiaId:[J

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 231
    :cond_4
    :goto_4
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_6

    .line 232
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v8

    aput-wide v8, v4, v1

    .line 233
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 231
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 226
    .end local v1    # "i":I
    .end local v4    # "newArray":[J
    :cond_5
    iget-object v8, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->additionalGaiaId:[J

    array-length v1, v8

    goto :goto_3

    .line 236
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[J
    :cond_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v8

    aput-wide v8, v4, v1

    .line 237
    iput-object v4, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->additionalGaiaId:[J

    goto/16 :goto_0

    .line 241
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[J
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 242
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 244
    .local v3, "limit":I
    const/4 v0, 0x0

    .line 245
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 246
    .local v5, "startPos":I
    :goto_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_7

    .line 247
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    .line 248
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 250
    :cond_7
    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 251
    iget-object v8, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->additionalGaiaId:[J

    if-nez v8, :cond_9

    move v1, v7

    .line 252
    .restart local v1    # "i":I
    :goto_6
    add-int v8, v1, v0

    new-array v4, v8, [J

    .line 253
    .restart local v4    # "newArray":[J
    if-eqz v1, :cond_8

    .line 254
    iget-object v8, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->additionalGaiaId:[J

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    :cond_8
    :goto_7
    array-length v8, v4

    if-ge v1, v8, :cond_a

    .line 257
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v8

    aput-wide v8, v4, v1

    .line 256
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 251
    .end local v1    # "i":I
    .end local v4    # "newArray":[J
    :cond_9
    iget-object v8, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->additionalGaiaId:[J

    array-length v1, v8

    goto :goto_6

    .line 259
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[J
    :cond_a
    iput-object v4, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->additionalGaiaId:[J

    .line 260
    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 179
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x2a -> :sswitch_6
    .end sparse-switch
.end method

.method public setEmail(Ljava/lang/String;)Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 33
    if-nez p1, :cond_0

    .line 34
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 36
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->email_:Ljava/lang/String;

    .line 37
    iget v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->bitField0_:I

    .line 38
    return-object p0
.end method

.method public setGaiaId(J)Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->gaiaId_:J

    .line 56
    iget v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->bitField0_:I

    .line 57
    return-object p0
.end method

.method public setZwiebackUid(J)Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 77
    iput-wide p1, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->zwiebackUid_:J

    .line 78
    iget v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->bitField0_:I

    .line 79
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    iget v2, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 112
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->email_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 114
    :cond_0
    iget v2, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 115
    const/4 v2, 0x2

    iget-wide v3, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->gaiaId_:J

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 117
    :cond_1
    iget v2, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 118
    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->zwiebackUid_:J

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 120
    :cond_2
    iget-object v2, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->cookie:[Lcom/google/majel/proto/CookieProtos$MajelCookie;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->cookie:[Lcom/google/majel/proto/CookieProtos$MajelCookie;

    array-length v2, v2

    if-lez v2, :cond_4

    .line 121
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->cookie:[Lcom/google/majel/proto/CookieProtos$MajelCookie;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 122
    iget-object v2, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->cookie:[Lcom/google/majel/proto/CookieProtos$MajelCookie;

    aget-object v0, v2, v1

    .line 123
    .local v0, "element":Lcom/google/majel/proto/CookieProtos$MajelCookie;
    if-eqz v0, :cond_3

    .line 124
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 121
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    .end local v0    # "element":Lcom/google/majel/proto/CookieProtos$MajelCookie;
    .end local v1    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->additionalGaiaId:[J

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->additionalGaiaId:[J

    array-length v2, v2

    if-lez v2, :cond_5

    .line 129
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->additionalGaiaId:[J

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 130
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->additionalGaiaId:[J

    aget-wide v3, v3, v1

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 133
    .end local v1    # "i":I
    :cond_5
    return-void
.end method
