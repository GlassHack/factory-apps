.class public final Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SettingSyncNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/SettingSyncNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SettingSyncResponse"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;


# instance fields
.field private bitField0_:I

.field public setting:[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

.field private syncVersion_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;

    sput-object v0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 233
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->syncVersion_:J

    .line 252
    sget-object v0, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->setting:[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    .line 228
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 368
    new-instance v0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 362
    new-instance v0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;

    return-object v0
.end method


# virtual methods
.method public clearSyncVersion()Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;
    .locals 2

    .prologue
    .line 246
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->syncVersion_:J

    .line 247
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->bitField0_:I

    .line 248
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 256
    if-ne p1, p0, :cond_1

    .line 261
    :cond_0
    :goto_0
    return v1

    .line 257
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 258
    check-cast v0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;

    .line 259
    .local v0, "other":Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->syncVersion_:J

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->syncVersion_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->setting:[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->setting:[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    .line 260
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 261
    goto :goto_0

    .line 260
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->unknownFieldData:Ljava/util/List;

    .line 261
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 295
    const/4 v1, 0x0

    .line 296
    .local v1, "size":I
    iget v2, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 297
    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->syncVersion_:J

    .line 298
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v1, v2

    .line 300
    :cond_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->setting:[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    if-eqz v2, :cond_2

    .line 301
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->setting:[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    .line 302
    .local v0, "element":Lcom/google/googlex/glass/common/proto/SettingNano$Setting;
    if-eqz v0, :cond_1

    .line 303
    const/4 v5, 0x2

    .line 304
    invoke-static {v5, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v1, v5

    .line 301
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 308
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/SettingNano$Setting;
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v2

    add-int/2addr v1, v2

    .line 309
    iput v1, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->cachedSize:I

    .line 310
    return v1
.end method

.method public getSyncVersion()J
    .locals 2

    .prologue
    .line 235
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->syncVersion_:J

    return-wide v0
.end method

.method public hasSyncVersion()Z
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->bitField0_:I

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
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 265
    const/16 v1, 0x11

    .line 266
    .local v1, "result":I
    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->syncVersion_:J

    iget-wide v6, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->syncVersion_:J

    const/16 v2, 0x20

    ushr-long/2addr v6, v2

    xor-long/2addr v4, v6

    long-to-int v2, v4

    add-int/lit16 v1, v2, 0x20f

    .line 267
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->setting:[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    if-nez v2, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 273
    :cond_0
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->unknownFieldData:Ljava/util/List;

    if-nez v4, :cond_3

    :goto_0
    add-int v1, v2, v3

    .line 274
    return v1

    .line 269
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->setting:[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 270
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->setting:[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    aget-object v2, v2, v0

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 270
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->setting:[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->hashCode()I

    move-result v2

    goto :goto_2

    .line 273
    .end local v0    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;
    .locals 7
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 318
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 319
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 323
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->unknownFieldData:Ljava/util/List;

    if-nez v5, :cond_1

    .line 324
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->unknownFieldData:Ljava/util/List;

    .line 327
    :cond_1
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v5, p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 329
    :sswitch_0
    return-object p0

    .line 334
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->syncVersion_:J

    .line 335
    iget v5, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->bitField0_:I

    goto :goto_0

    .line 339
    :sswitch_2
    const/16 v5, 0x12

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 340
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->setting:[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    if-nez v5, :cond_3

    move v1, v4

    .line 341
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    .line 342
    .local v2, "newArray":[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->setting:[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    if-eqz v5, :cond_2

    .line 343
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->setting:[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 345
    :cond_2
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->setting:[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    .line 346
    :goto_2
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->setting:[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_4

    .line 347
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->setting:[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    new-instance v6, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;-><init>()V

    aput-object v6, v5, v1

    .line 348
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->setting:[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 349
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 346
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 340
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;
    :cond_3
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->setting:[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    array-length v1, v5

    goto :goto_1

    .line 352
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;
    :cond_4
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->setting:[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    new-instance v6, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;-><init>()V

    aput-object v6, v5, v1

    .line 353
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->setting:[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 319
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 224
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;

    move-result-object v0

    return-object v0
.end method

.method public setSyncVersion(J)Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 238
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->syncVersion_:J

    .line 239
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->bitField0_:I

    .line 240
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 280
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->syncVersion_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 282
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->setting:[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    if-eqz v1, :cond_2

    .line 283
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->setting:[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 284
    .local v0, "element":Lcom/google/googlex/glass/common/proto/SettingNano$Setting;
    if-eqz v0, :cond_1

    .line 285
    const/4 v4, 0x2

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 283
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 289
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/SettingNano$Setting;
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 291
    return-void
.end method
