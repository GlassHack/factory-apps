.class public final Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "TimelineNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/TimelineNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Location"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Location;


# instance fields
.field private accuracy_:D

.field private address_:Ljava/lang/String;

.field private bitField0_:I

.field private displayName_:Ljava/lang/String;

.field private id_:Ljava/lang/String;

.field private latitude_:D

.field private levelId_:Ljava/lang/String;

.field private levelNumber_:F

.field private longitude_:D

.field private source_:Ljava/lang/String;

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2152
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 2153
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2158
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->id_:Ljava/lang/String;

    .line 2180
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->source_:Ljava/lang/String;

    .line 2202
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->timestamp_:J

    .line 2221
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->latitude_:D

    .line 2240
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->longitude_:D

    .line 2259
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->accuracy_:D

    .line 2278
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelId_:Ljava/lang/String;

    .line 2300
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelNumber_:F

    .line 2319
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->displayName_:Ljava/lang/String;

    .line 2341
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->address_:Ljava/lang/String;

    .line 2153
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2562
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2556
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    return-object v0
.end method


# virtual methods
.method public clearAccuracy()Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 2

    .prologue
    .line 2272
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->accuracy_:D

    .line 2273
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    .line 2274
    return-object p0
.end method

.method public clearAddress()Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 1

    .prologue
    .line 2357
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->address_:Ljava/lang/String;

    .line 2358
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    .line 2359
    return-object p0
.end method

.method public clearDisplayName()Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 1

    .prologue
    .line 2335
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->displayName_:Ljava/lang/String;

    .line 2336
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    .line 2337
    return-object p0
.end method

.method public clearId()Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 1

    .prologue
    .line 2174
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->id_:Ljava/lang/String;

    .line 2175
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    .line 2176
    return-object p0
.end method

.method public clearLatitude()Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 2

    .prologue
    .line 2234
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->latitude_:D

    .line 2235
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    .line 2236
    return-object p0
.end method

.method public clearLevelId()Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 1

    .prologue
    .line 2294
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelId_:Ljava/lang/String;

    .line 2295
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    .line 2296
    return-object p0
.end method

.method public clearLevelNumber()Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 1

    .prologue
    .line 2313
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelNumber_:F

    .line 2314
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    .line 2315
    return-object p0
.end method

.method public clearLongitude()Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 2

    .prologue
    .line 2253
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->longitude_:D

    .line 2254
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    .line 2255
    return-object p0
.end method

.method public clearSource()Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 1

    .prologue
    .line 2196
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->source_:Ljava/lang/String;

    .line 2197
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    .line 2198
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 2

    .prologue
    .line 2215
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->timestamp_:J

    .line 2216
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    .line 2217
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2364
    if-ne p1, p0, :cond_1

    .line 2377
    :cond_0
    :goto_0
    return v1

    .line 2365
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 2366
    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    .line 2367
    .local v0, "other":Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->id_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->id_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->source_:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->source_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 2368
    :goto_2
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->timestamp_:J

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->timestamp_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->latitude_:D

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->latitude_:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->longitude_:D

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->longitude_:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->accuracy_:D

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->accuracy_:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelId_:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelId_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 2373
    :goto_3
    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelNumber_:F

    iget v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelNumber_:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->displayName_:Ljava/lang/String;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->displayName_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 2375
    :goto_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->address_:Ljava/lang/String;

    if-nez v3, :cond_8

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->address_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 2376
    :goto_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_9

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 2377
    goto :goto_0

    .line 2367
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->id_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->id_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->source_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->source_:Ljava/lang/String;

    .line 2368
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelId_:Ljava/lang/String;

    .line 2373
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->displayName_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->displayName_:Ljava/lang/String;

    .line 2375
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->address_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->address_:Ljava/lang/String;

    .line 2376
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_5

    :cond_9
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->unknownFieldData:Ljava/util/List;

    .line 2377
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_0
.end method

.method public getAccuracy()D
    .locals 2

    .prologue
    .line 2261
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->accuracy_:D

    return-wide v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2343
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->address_:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2321
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->displayName_:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2160
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 2223
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->latitude_:D

    return-wide v0
.end method

.method public getLevelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2280
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelId_:Ljava/lang/String;

    return-object v0
.end method

.method public getLevelNumber()F
    .locals 1

    .prologue
    .line 2302
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelNumber_:F

    return v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 2242
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->longitude_:D

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 2434
    const/4 v0, 0x0

    .line 2435
    .local v0, "size":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    .line 2436
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->latitude_:D

    .line 2437
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 2439
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_1

    .line 2440
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->longitude_:D

    .line 2441
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 2443
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_2

    .line 2444
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->displayName_:Ljava/lang/String;

    .line 2445
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2447
    :cond_2
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_3

    .line 2448
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->address_:Ljava/lang/String;

    .line 2449
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2451
    :cond_3
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    .line 2452
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->timestamp_:J

    .line 2453
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2455
    :cond_4
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 2456
    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->accuracy_:D

    .line 2457
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 2459
    :cond_5
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_6

    .line 2460
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->id_:Ljava/lang/String;

    .line 2461
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2463
    :cond_6
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_7

    .line 2464
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelId_:Ljava/lang/String;

    .line 2465
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2467
    :cond_7
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_8

    .line 2468
    const/16 v1, 0x9

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelNumber_:F

    .line 2469
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 2471
    :cond_8
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_9

    .line 2472
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->source_:Ljava/lang/String;

    .line 2473
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2475
    :cond_9
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2476
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->cachedSize:I

    .line 2477
    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2182
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->source_:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 2204
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->timestamp_:J

    return-wide v0
.end method

.method public hasAccuracy()Z
    .locals 1

    .prologue
    .line 2269
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAddress()Z
    .locals 1

    .prologue
    .line 2354
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

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
    .line 2332
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 2171
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLatitude()Z
    .locals 1

    .prologue
    .line 2231
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLevelId()Z
    .locals 1

    .prologue
    .line 2291
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLevelNumber()Z
    .locals 1

    .prologue
    .line 2310
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLongitude()Z
    .locals 1

    .prologue
    .line 2250
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

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
    .line 2193
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 2212
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

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
    const/16 v7, 0x20

    const/4 v2, 0x0

    .line 2381
    const/16 v0, 0x11

    .line 2382
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->id_:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 2383
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->source_:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 2384
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->timestamp_:J

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->timestamp_:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v1, v3

    .line 2385
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->latitude_:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->latitude_:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v1, v3

    .line 2386
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->longitude_:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->longitude_:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v1, v3

    .line 2387
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->accuracy_:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->accuracy_:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v1, v3

    .line 2388
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelId_:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    add-int v0, v3, v1

    .line 2389
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelNumber_:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int v0, v1, v3

    .line 2390
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->displayName_:Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v2

    :goto_3
    add-int v0, v3, v1

    .line 2391
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->address_:Ljava/lang/String;

    if-nez v1, :cond_4

    move v1, v2

    :goto_4
    add-int v0, v3, v1

    .line 2392
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_5

    :goto_5
    add-int v0, v1, v2

    .line 2393
    return v0

    .line 2382
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->id_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto/16 :goto_0

    .line 2383
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->source_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto/16 :goto_1

    .line 2388
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelId_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    .line 2390
    :cond_3
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->displayName_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    .line 2391
    :cond_4
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->address_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    .line 2392
    :cond_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_5
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2485
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2486
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2490
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 2491
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->unknownFieldData:Ljava/util/List;

    .line 2494
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2496
    :sswitch_0
    return-object p0

    .line 2501
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->latitude_:D

    .line 2502
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    goto :goto_0

    .line 2506
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->longitude_:D

    .line 2507
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    goto :goto_0

    .line 2511
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->displayName_:Ljava/lang/String;

    .line 2512
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    goto :goto_0

    .line 2516
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->address_:Ljava/lang/String;

    .line 2517
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    goto :goto_0

    .line 2521
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->timestamp_:J

    .line 2522
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    goto :goto_0

    .line 2526
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->accuracy_:D

    .line 2527
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    goto :goto_0

    .line 2531
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->id_:Ljava/lang/String;

    .line 2532
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    goto :goto_0

    .line 2536
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelId_:Ljava/lang/String;

    .line 2537
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    goto/16 :goto_0

    .line 2541
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelNumber_:F

    .line 2542
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    goto/16 :goto_0

    .line 2546
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->source_:Ljava/lang/String;

    .line 2547
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    goto/16 :goto_0

    .line 2486
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
        0x11 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x31 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4d -> :sswitch_9
        0x52 -> :sswitch_a
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
    .line 2149
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    move-result-object v0

    return-object v0
.end method

.method public setAccuracy(D)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 2264
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->accuracy_:D

    .line 2265
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    .line 2266
    return-object p0
.end method

.method public setAddress(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2346
    if-nez p1, :cond_0

    .line 2347
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2349
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->address_:Ljava/lang/String;

    .line 2350
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    .line 2351
    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2324
    if-nez p1, :cond_0

    .line 2325
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2327
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->displayName_:Ljava/lang/String;

    .line 2328
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    .line 2329
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2163
    if-nez p1, :cond_0

    .line 2164
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2166
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->id_:Ljava/lang/String;

    .line 2167
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    .line 2168
    return-object p0
.end method

.method public setLatitude(D)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 2226
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->latitude_:D

    .line 2227
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    .line 2228
    return-object p0
.end method

.method public setLevelId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2283
    if-nez p1, :cond_0

    .line 2284
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2286
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelId_:Ljava/lang/String;

    .line 2287
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    .line 2288
    return-object p0
.end method

.method public setLevelNumber(F)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 2305
    iput p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelNumber_:F

    .line 2306
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    .line 2307
    return-object p0
.end method

.method public setLongitude(D)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 2245
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->longitude_:D

    .line 2246
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    .line 2247
    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2185
    if-nez p1, :cond_0

    .line 2186
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2188
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->source_:Ljava/lang/String;

    .line 2189
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    .line 2190
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 2207
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->timestamp_:J

    .line 2208
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    .line 2209
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2398
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 2399
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->latitude_:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 2401
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 2402
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->longitude_:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 2404
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_2

    .line 2405
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->displayName_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2407
    :cond_2
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_3

    .line 2408
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->address_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2410
    :cond_3
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 2411
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->timestamp_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 2413
    :cond_4
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 2414
    const/4 v0, 0x6

    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->accuracy_:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 2416
    :cond_5
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    .line 2417
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->id_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2419
    :cond_6
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7

    .line 2420
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2422
    :cond_7
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    .line 2423
    const/16 v0, 0x9

    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelNumber_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2425
    :cond_8
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_9

    .line 2426
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->source_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2428
    :cond_9
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2430
    return-void
.end method
